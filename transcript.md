---
title: Transcript
description: Transcript
---


{% capture my_variable %}{% include_relative transcript-text.md %}{% endcapture %}

{% include transcript.html 
  summary="Click to expand transcript"
  details="{{ my_variable }}"
%}

