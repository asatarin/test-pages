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

<script async src="https://www.youtube.com/iframe_api"></script>
<script async type="text/javascript">
  var player;

  function onYouTubeIframeAPIReady() {
    player = new YT.Player('player', {
      events: {
        'onReady': onPlayerReady
      }
    });
  }

  function onPlayerReady(event) {
    const spans = document.querySelectorAll('.timecode');
    spans.forEach(span => {
      span.addEventListener('click', () => {
        player.seekTo(convertTimeToSeconds(span.textContent));
      });
    });
  }
  
  function convertTimeToSeconds(timeString) {
    const [minutes, seconds] = timeString.split(':').map(time => parseInt(time));
    const totalSeconds = minutes * 60 + seconds;
    return totalSeconds;
  } 
</script>

Not video
<br>
