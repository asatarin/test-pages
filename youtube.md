---
title: YouTube embed test page
description: YouTube embed test page
date: 2023-03-27
layout: talk
---

<div>
<button id="seekButton">Seek to 30 seconds</button>

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
  }
  
  document.getElementById('seekButton').addEventListener('click', function() {
    player.seekTo(30); // Seeks to 30 seconds into the video
  });
</script>
</div>


Not video
