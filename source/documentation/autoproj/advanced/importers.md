---
title: Package import
sort_info: 250
--- name:content

As [we already mentioned](creating_pkg_set.html), the source.yml file contains information
on where to import the source packages from. This information is included in the
version\_control field of the source.yml, and is of the general form:

~~~ yaml
version_control:
    package_name:
        vcs_def
    package_name:
        vcs_def:
~~~

Autoproj follows the following rules to find the importer definition for a given
package:
 
 - it loads the information contained in the version_control section of the
   package set that defines the considered package
 - it will apply any modification that is contained in the overrides section by
   the package sets listed *after* the aforementionned package set

For both the version_control and overrides section, autoproj will match the
package's name with the package\_name fields. It will consider every matching
block (i.e. every package\_name that matches), overriding earlier setup by later
ones.

As an example, let's consider the following manifest:

~~~ ruby
package_sets:
    - tools:
        - orocos.toolchain
    - rock.toolchain
~~~

The rock.toolchain package uses its own repository for
the typelib library. So, while the orocos.toolchain has the following source.yml:

~~~ yaml
version_control:
    - .*:
        type: git
        url: git://gitorious.com/orocos-toolchain/$PACKAGE.git
~~~

rock.toolchain has

~~~ yaml
overrides:
    - typelib:
        url: git://gitorious.com/orocos-toolchain/rock-$PACKAGE.git
~~~

Another common use for overrides is to change the branch, for instance:

~~~ yaml
overrides:
    - typelib:
        url: git://gitorious.com/orocos-toolchain/rock-$PACKAGE.git
    - rtt:
        branch: experimental
~~~

The remaining of this page will detail the various options that exist to import
a source package.

Common Importer Options
-----------------------
All importers support the following options:

~~~ yaml
version_control:
    - .*:
        retry_count: 2
~~~

It specifies the number of time the importer should retry before giving up. This
is useful for remote servers (svn, git) that are not as reliable as one would
like.

Git {#all_importers}
\--- 

The general setup for git imports is:

~~~ yaml
version_control:
    package_name:
        type: git
        url: repository_url_or_path
        branch: branch_name
        tag: tag_name # it is branch OR tag
~~~

Autoproj will maintain an 'autobuild' remote on the checked out repository:
i.e., it will make sure that the URL of this remote is always linked to the
right URL from the config file, and will update the relevant branch on update
(beware: the other branches won't get updated).

Moreover, autoproj will make sure that updating your local repository always
resolves as a fast-forward (i.e., it will never create a merge)

Subversion
----------

The general setup for subversion imports is:

~~~ yaml
version_control:
    package_name:
        type: svn
        url: repository_url_or_path
~~~

Note that the repository *must* be accessible without any password - the
import will fail if a password is needed.
{: .warning}

CVS
----------

The general setup for CVS imports is:

~~~ yaml
version_control:
    package_name:
        type: cvs
        url: cvs_root
        module: modulename
~~~

Note that the repository *must* be accessible without any password - the
import will fail if a password is needed.
{: .warning}

In case a :pserver: is used, it must be quoted - YAML would interpret it
the wrong way otherwise:

~~~ yaml
version_control:
    package_name:
        type: cvs
        url: ":pserver:cvs@blabla:/"
        module: modulename
~~~

Tar archives
------------

~~~ yaml
version_control:
    package_name:
        type: archive
        url: http://sourceforge.net/blablabla.tar.gz?option=value
        filename: blabla.tar.gz # Optional: if the file name cannot be inferred from the URL
        no_subdirectory: false # Optional. Set to true if there is not a leading directory in the archive
        update_cached_file: false # Optional. Set to false to disable automatic updates
~~~

The importer expects that there is a leading subdirectory in the archive, under
which all files. If that is not the case, i.e. if all files are in the root of
the archive, do not forget to set the no\_subdirectory option.

Autoproj tries to guess what is the name of the downloaded file by extracting it
out of the URL. Sometimes, this does not work as the URL does not fit the
expected scheme -- in these cases you will get a tar error on update. To
override this autodetection behaviour, set the filename option to the actual
downloaded file name.

By default, autoproj will check if the downloaded file has been updated on the
server, and will download it again if it is the case. If you are downloading
release tarballs, this is unneeded as the archive should not be updated. In that
case, set the update\_cached\_file option to false to save the time needed to
check for the update (can be long on, for instance, sourceforge). The source
will of course be updated if you change the URL (i.e. to download a new release
of the same software).

Patching the source once it is checked out/updated
--------------------------------------------------

It is possible to apply patches after a given package (imported by any of the
importer types) has been checked out/updated. To do so, simply add the option
<tt>patches:</tt> to the importer configuration and list the patches which should
be applied:

~~~ yaml
version_control:
    package_name:
        type: archive
        url: http://sourceforge.net/blablabla
        patches:
            - $AUTOPROJ_SOURCE_DIR/blablabla-01.patch
            - $AUTOPROJ_SOURCE_DIR/blablabla-02.patch
~~~

Note that in the example above, the patch is saved in the package set's folder
(the value of AUTOPROJ_SOURCE_DIR). This is a highly required practice.

Note that if the patch list changes (i.e. the *names* change), autoproj will
automatically unpatch and repatch as required. It is therefore highly required
to change the patch name if the patch changes.

The provided patches are by default applied with a patch level of 0 (passed to
patch through the -p option). This can be overriden on a patch-per-patch basis
by making the patch name an array as well:

~~~ yaml
version_control:
    package_name:
        type: archive
        url: http://sourceforge.net/blablabla
        patches:
            - [$AUTOPROJ_SOURCE_DIR/blablabla-01.patch, 1]
            - $AUTOPROJ_SOURCE_DIR/blablabla-02.patch
~~~

