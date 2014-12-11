$(document).ready(function(){
  var $this = $(this);

  // $(".pillCard").find(".pillHormone").removeClass("hidden")

  $(".pillCard").mouseover(function(){
  	console.log("mouse over");
  	$(this).find(".pillHormone").removeClass("hidden")

  })

  $(".pillCard").mouseleave(function(){
  	$(this).find(".pillHormone").addClass("hidden")
  })
});