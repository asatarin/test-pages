---
title: YouTube embed test page
description: YouTube embed test page
date: 2023-03-27
layout: talk
---

<button id="seekButton">Seek to 30 seconds</button>

<span classs="timecode">0:50</span>
<span classs="timecode">2:34</span>
<span classs="timecode">5:13</span>
<span classs="timecode">7:21</span>
<span classs="timecode">9:03</span>

Video

<iframe id="player" src="https://www.youtube.com/embed/j6Z-TawfQns?enablejsapi=1" loading="lazy" frameborder="0" allowfullscreen></iframe>

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
    // Player is ready
    const spans = document.querySelectorAll('.timecode');

    spans.forEach(span => {
      span.addEventListener('click', () => {
        const spanValue = span.textContent;
        // Your code to execute with the spanValue
      });
    });
  }
  
  function convertTimeToSeconds(timeString) {
    const [minutes, seconds] = timeString.split(':').map(time => parseInt(time));
    const totalSeconds = minutes * 60 + seconds;
    return totalSeconds;
  }

  
  document.getElementById('seekButton').addEventListener('click', function() {
    player.seekTo(convertTimeToSeconds("0:30");
  });
</script>

Not video
