<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
  <meta charset="utf-8">
  <title></title>
  
  <link rel="stylesheet" href="cropper.css">
  <script src="jquery-3.5.1.min.js"></script>
  <script src="cropper.js"></script>
</head>
<body>
		<input type="file" id="fileInput">
		<br>
		<button onclick="add()">上传</button>
  
  <br>
  <div style="width: 800px; height: 600px; margin: 100px auto;">
    <img id='preview' src="" alt="Preview" style="max-width: 100%; max-height: 100%;">
  </div>
  
 <script>
    // 定义一个全局变量 croppedImageDataURL
    var croppedImageDataURL;
    
    // 通过 input[type=file] 获取用户上传的图片
    const fileInput = document.getElementById('fileInput');
    fileInput.addEventListener('change', function() {
      const file = fileInput.files[0];
      if (file) {
        const reader = new FileReader();
        reader.onload = function(e) {
          const previewImage = document.getElementById('preview');
          previewImage.src = e.target.result;
    
          // 在图片加载完成后初始化 Cropper
          const image = document.getElementById('preview');
          const cropper = new Cropper(image, {
            aspectRatio: 1,
            viewMode: 1,
            background: false,
            crop: function(event) {
              var canvas = cropper.getCroppedCanvas();
              croppedImageDataURL = canvas.toDataURL('image/jpg');
            }
          });
        };
        reader.readAsDataURL(file);
      }
    });
    
    function add(){
    	// 假设croppedImageDataURL包含裁剪后的图片的Base64编码数据
        var formData = new FormData();
        formData.append('croppedImage', croppedImageDataURL);

        // 使用jQuery的$.ajax()方法发送请求
        $.ajax({
            url: 'add', 
            type: 'POST',
            data: formData,
            processData: false, // 告诉jQuery不要处理发送的数据
            contentType: false, // 告诉jQuery不要设置Content-Type请求头
            success: function(response) {
                alert("图片上传成功")
            },
            error: function(xhr, status, error) {
                console.error('上传失败:', error);
            }
        });
    }
  </script>
</body>
</html>