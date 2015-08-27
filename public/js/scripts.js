function kitchenTimer() {
  times = $('.order-time');

  for (var i=0; i<times.length; i++){
    if ( (parseFloat(times[i].innerHTML)) > 600){
      times[i].classList.add("kitchen-red");
    }
    else if ( (parseFloat(times[i].innerHTML)) > 300){
      times[i].classList.add("kitchen-yellow");
    }
  }
}

$(document).ready(function(){
  kitchenTimer()


});
