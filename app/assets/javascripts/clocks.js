document.addEventListener('turbolinks:load', function(){
  var currentTime = document.getElementById('currentTime');

  if(currentTime) {
    function timeCount() {
        var today = new Date();
        var h = today.getHours();
        var m = today.getMinutes();
        var s = today.getSeconds();
        m = checkTime(m);
        s = checkTime(s);
        currentTime.innerHTML = h + ':' + m + ':' + s;
        var t = setTimeout(timeCount, 500);
    }
    function checkTime(i) {
        if (i < 10) {i = '0' + i};
        return i;
    }
   timeCount();
 }

});
