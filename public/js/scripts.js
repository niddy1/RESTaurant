function kitchenTimer() {
  times = $('.order-time');

  for (var i=0; i<times.length; i++){
    if ( (parseFloat(times[i].innerHTML)) > 600){
      times[i].closest(".kitchen-orders").classList.add("kitchen-red");
    }
    else if ( (parseFloat(times[i].innerHTML)) > 300){
      times[i].closest(".kitchen-orders").classList.add("kitchen-yellow");
    }
    else if ( (parseFloat(times[i].innerHTML)) > 0){
      times[i].closest(".kitchen-orders").classList.add("kitchen-green");
    }
  }
}

$(document).ready(function(){
  kitchenTimer()

});
