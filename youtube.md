---
title: YouTube embed test page
description: YouTube embed test page
date: 2023-03-27
layout: talk
---

<button id="seekButton">Seek to 30 seconds</button><br>

<span class="timecode">0:50</span><br>
<span class="timecode">2:34</span><br>
<span class="timecode">5:13</span><br>
<span class="timecode">7:21</span><br>
<span class="timecode">9:03</span><br>


Video<br>

<iframe id="player" src="https://www.youtube.com/embed/j6Z-TawfQns?enablejsapi=1" loading="lazy" frameborder="0" allowfullscreen></iframe>
<br>

### Transcript

{% comment %}
Draft transcript https://docs.google.com/document/d/1O0c6yd6KVJhPqIZOWQQ8gjNmKEE0PMjp_jbdJ32L7uM/edit#
{% endcomment %}

Please note that this AI-generated video transcript may contain inaccuracies or omissions.
I encourage you to use it as a reference only and verify information with the original video if needed.

<hr>

<a href="#player"><span class="timecode" onclick="handleClick(event)">0:05</span></a>
Hello everyone, my name is Andrey Satarin, and I'm going to be talking about the paper "Understanding and Detecting
Software Upgrade Failures in Distributed Systems."

<a href="#player"><span class="timecode" onclick="handleClick(event)">0:16</span></a>
So let's go. A rough outline of the talk: I'm going to give an introduction to the paper, talk about findings they have
on severity and root causes of upgrade failures, discuss testing and detecting those failures, some conclusions, and in
the end, I'm going to give some personal experience of me doing upgrade testing for a distributed system.

<a href="#player"><span class="timecode" onclick="handleClick(event)">0:42</span></a>
Let's start with the introduction. What are upgrade failures? In the paper, we describe them as failures that occur
during an upgrade. So, it's not some configuration change; it's not a bug in the new version of the software you just
deployed. It's specifically the bug between interacting with two versions of software during the upgrade and nothing
else.

<a href="#player"><span class="timecode" onclick="handleClick(event)">1:02</span></a>
So, why are they important? They looked at several distributed systems, and overall, the important aspects of those
failures were that they are large-scale because they touch either a large part of the system or the whole system.
Upgrades usually move pretty quickly through the system, so any bugs in there are impacting the entire system.

<a href="#player"><span class="timecode" onclick="handleClick(event)">1:25</span></a>
The upgrade itself is a disruption to the system's normal operations, which may put it in a vulnerable state. The impact
of the bugs during the upgrade could be persistent, so you can corrupt your data, and you need to do something about it
later, which kind of costs you. Overall, those are hard to expose in-house. There's probably a little focus on testing
for those upgrade failures for distributed systems in general.

<span class="timecode" onclick="handleClick(event)">1:49</span>
So, what did they look at? They looked at symptoms and severity of upgrade failures, root causes, or the conditions that
trigger them, and why they are even happening. The final goal is basically how to detect those failures in distributed
systems and prevent them from happening in production.

<span class="timecode" onclick="handleClick(event)">6:25</span>
So the limitations in the state of the art of the systems they looked at, they noticed that there's a problem with
workload generation. Every time someone tries to test for upgrades, they design a workload from scratch; they don't
reuse it from somewhere else.

<span class="timecode">6:40</span>
That's kind of bad because you're trying to come up with a new workload. That means you're either doing it twice or not
exposing the system to a variety of workloads during the upgrade.

<span class="timecode">6:52</span>
Also, they noticed that there is no mechanism to systematically explore the whole space of upgrades, which includes
different versions, different configurations, and different update scenarios, like either stopping a full stop upgrade
or rolling upgrade. So those are not exposed in a systematic way.

<span class="timecode">7:10</span>
Uh, and their proposed solution is two tools. First of those tools is Dub tester. So Dub tester is a distributed system
upgrade tester.

<span class="timecode">19:49</span>
I thank you for your attention and I'm up for the discussion.

<script defer src="https://www.youtube.com/iframe_api"></script>
<script defer type="text/javascript">
  var player;

  function onYouTubeIframeAPIReady() {
    player = new YT.Player('player', {
      events: {
        'onReady': onPlayerReady
      }
    });
  }

  function onPlayerReady(event) {
  }
  
  function handleClick(event) {
      const span = event.target;
      player.seekTo(convertTimeToSeconds(span.textContent));
  }
  
  function convertTimeToSeconds(timeString) {
    const [minutes, seconds] = timeString.split(':').map(time => parseInt(time));
    const totalSeconds = minutes * 60 + seconds;
    return totalSeconds;
  } 
</script>

Not video
<br>
