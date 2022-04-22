<script>
$(function() {
  return $("h2, h3, h4, h5, h6").each(function(i, el) {
    var $el, icon, id;
    $el = $(el);
    id = $el.attr('id');
    icon = '<i class="fa fa-link"></i>';
    if (id) {
      return $el.prepend($("<a />").addClass("header-link").attr("href", "#" + id).html(icon));
    }
  });
});
</script>

# test-pages


## Slides


## Google drive PDF slides

<iframe src="https://drive.google.com/file/d/1rH1hLvlFyhbfIIkTs9nqQy9Qcdx-0ZMA/preview" width="640" height="480" allow="autoplay"></iframe>


## Embed in html

<iframe style="width: 100%; height: 820px" src="https://asatarin.github.io/assets/talks/2022-02-formal-methods-at-amazon-S3.pdf#page=5"></iframe>


