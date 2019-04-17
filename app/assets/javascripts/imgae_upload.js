$(window).on('load',function(){
  if(document.URL.match("new")) {

  function builduploadimageHTML(image_box_no){
    var html = `
                <input id="image_up" type="file" name="item[item_images_attributes][${image_box_no}][image]" class= "input_image_${image_box_no+1} ">
                `
    return html;
  };


    var image_no = 0;
    $('form').on('change', 'input[type="file"],.item_image_new', function(e) {
     image_no += 10;
      var file = e.target.files[0],
          reader = new FileReader(),
          $preview = $(".item_new__image--views");
          t = this;
      if(file.type.indexOf("image") < 0){
        return false;
      }
      reader.onload = (function(file) {
        return function(e) {
          $preview.append($('<img>').attr({
                    src: e.target.result,
                    height: "100px",
                    width: "100px",
                    class: "preview",
                    title: file.name,
                    id: "preview_"+image_no,
                    value: image_no
                }));
        };
      })(file);
      reader.readAsDataURL(file);
      $(this).addClass("item_new__image--views-box-input")
    });

    var new_image_box_no = 100
    $(document).on("click",'.item_new__image--input',function(){
        var add_html = builduploadimageHTML(new_image_box_no)
        $(".item_new__image--description").prepend(add_html);
        new_image_box_no += 1
    });

    $(document).on("click",'.preview',function(){
      var image_box_no = $(this).attr("value");
      $('.input_image_'+ image_box_no).remove();
      $(this).remove();
    });
  };
});


