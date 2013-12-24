---
title: "  ... at Runtime"
sort_info: 120
---
At runtime, components that are using the stream aligner behave more or less
like normal components (when one considers that they can introduce latency in
the data processing chain, of course).

The integrator of such a component should, though, be careful to set the stream
periods properly. As noted [in the data processing
overview](stream_aligner.html):

Because processing based on the stream aligner is based on the fact that samples
are passed in-order, the stream aligner __must__ drop samples that arrive "in
the past", i.e. that arrive with an earlier timestamp that the last sample
"played" by the stream aligner. So, it is better to give a period that is
__lower__ than the actual sensor period so that the aligner does not drop
samples unnecessarily.
{: .warning}

The choice of the timeout is also important, but not so critical: the timeout is
a last resort mean to keep the data flowing. One should prefer using [advanced
means of monitoring](/documentation/system).

Monitoring
----------
The stream aligner allows to export a pretty complete statistics structure of
type [/aggregator/StreamAlignerStatus]({% type /aggregator/StreamAlignerStatus %}), that informs the outside world about the
general aligner behaviour. The oroGen plugin exports that structures on an
output port called stream_aligner_status that exports this data structure. By
default, it is exported every second but this can be configured with the
stream_aligner_status_period property.

The data structure is very comprehensive. However, the main "sanity" variables
are the dropped count. See the type documentation (linked above) for more
details.

