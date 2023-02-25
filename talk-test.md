<script src="//mozilla.github.io/pdf.js/build/pdf.js"></script>

<h1>PDF.js Previous/Next example</h1>

<div>
  <button id="prev">Previous</button>
  <button id="next">Next</button>
  &nbsp; &nbsp;
  <span>Page: <span id="page_num"></span> / <span id="page_count"></span></span>
</div>

<div if="canvas-parent" width="100%">
  <canvas id="the-canvas" style="border:1px solid" ></canvas>
</div>

<script src="https://asatarin.github.io/test-pages/assets/js/slides.js"></script>
