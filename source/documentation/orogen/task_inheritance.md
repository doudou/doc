---
title: Task Inheritance
sort_info: 130
---

oroGen understands inheritance between tasks. That means, it is possible to make the
task context inherit from each other, and have the other oroGen features play
well. It also works in a [cross project fashion](cross_project.html).

A base class is defined with

~~~ ruby
task_context "SubTask" do
    subclasses "Task"
end
~~~

When inheriting between task contexts, the following constraints will apply:

 * it is not possible to add a task interface object (port, property, ...) that
   has the same name than one defined by the parent model.
 * if the parent task is flagged as [needing
   configuration](task_states.html#needs_configuration), then the subclass also
   does.
 * if [extended states](task_states.html) are defined, the child class shared
   them.

Finally, "abstract task models", i.e. task models that are used as a base for
others, but which it would be meaningless to deploy since they don't have any
functionality can be marked as abstract with

~~~ ruby
task_context "SubTask" do
    abstract
end
~~~

