---
title: Test talks
description: Test talks with PDF.js
---

<script src="//mozilla.github.io/pdf.js/build/pdf.js"></script>

## PDF.js Previous/Next example

<div>
  <button id="prev">Previous</button>
  <button id="next">Next</button>
  &nbsp; &nbsp;
  <span>Page: <span id="page_num"></span> / <span id="page_count"></span></span>
</div>

<!-- <div id="canvas-parent" width="100%"> -->
  <canvas id="the-canvas" style="border:1px solid" ></canvas>
<!-- </div> -->

<script src="https://asatarin.github.io/test-pages/assets/js/slides.js"></script>


### IFrame

<iframe src="https://asatarin.github.io/assets/talks/2023-01-how-to-fight-production-incidents.pdf#toolbar=0&navpanes=0&scrollbar=0" width="100%" height="600px"></iframe>


### IFrame with page

<iframe src="https://asatarin.github.io/assets/talks/2023-01-how-to-fight-production-incidents.pdf#page=5#toolbar=0&navpanes=0&scrollbar=0" width="100%" height="600px"></iframe>

### Object

<object style="width: 100%; height: 600px" data="https://asatarin.github.io/assets/talks/2023-01-how-to-fight-production-incidents.pdf#toolbar=0&navpanes=0&scrollbar=0" type="application/pdf"></object>

### Object with page 
<object style="width: 100%; height: 600px" data="https://asatarin.github.io/assets/talks/2023-01-how-to-fight-production-incidents.pdf#page=5#toolbar=0&navpanes=0&scrollbar=0" type="application/pdf"></object>
