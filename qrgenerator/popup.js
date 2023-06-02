document.addEventListener("DOMContentLoaded", function () {
  var generateButton = document.getElementById("generateButton");

  generateButton.addEventListener("click", function () {
    var inputText = document.getElementById("inputText").value;
    if (inputText) {
      var qrcodeDiv = document.getElementById("qrcode");
      qrcodeDiv.innerHTML = "";
      new QRCode(qrcodeDiv, inputText);
    }
  });
});

