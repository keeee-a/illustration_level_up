$(document).on('turbolinks:load', function() {

  $('#picture').on('change',function(e){
    //ファイルを取得
    var files = e.target.files;

    var d = (new $.Deferred()).resolve();
    $.each(files,function(i,file){
      d = d.then(function(){return previewImage(file)});
    });
  })

  var previewImage = function(imageFile){
    var reader = new FileReader();
    var img = new Image();
    var def =$.Deferred();
    reader.onload = function(e){
      $('.picture_preview').empty();  
      $('.picture_preview').append(img);
      img.src = e.target.result;
      def.resolve(img);
    };
    reader.readAsDataURL(imageFile);
    return def.promise();
  }
})
