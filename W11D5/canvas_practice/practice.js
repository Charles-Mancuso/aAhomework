document.addEventListener("DOMContentLoaded", function(){
    let cnvs = document.getElementById("mycanvas");
    cnvs.height = 500;
    cnvs.width = 500;
    ctx = cnvs.getContext('2d');

    ctx.fillStyle = "blue";
    ctx.fillRect(100, 100, 100, 100);

    ctx.beginPath();
    ctx.arc(100, 75, 50, 0, 2 * Math.PI);
    ctx.strokeStyle = "red";
    ctx.lineWidth = 5;
    ctx.stroke();
    ctx.fillStyle = "orange";
    ctx.fill();
});
