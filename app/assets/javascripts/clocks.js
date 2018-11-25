document.addEventListener('DOMContentLoaded', function(){
  function timeCount() {
      var today = new Date();
      var h = today.getHours();
      var m = today.getMinutes();
      var s = today.getSeconds();
      m = checkTime(m);
      s = checkTime(s);
      document.getElementById('currentTime').innerHTML =
      h + ":" + m + ":" + s;
      var t = setTimeout(timeCount, 500);
  }
  function checkTime(i) {
      if (i < 10) {i = "0" + i};  // add zero in front of numbers < 10
      return i;
  }
 timeCount();
});
