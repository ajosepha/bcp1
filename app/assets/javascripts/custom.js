$(document).ready(function(){
  var $this = $(this);

  // $(".pillCard").find(".pillHormone").removeClass("hidden")

  $(".pillCard").mouseover(function(){
  	console.log("mouse over");
  	$(this).css("border", "solid black 2px")
  	$(this).find(".pillHormone").removeClass("hidden")

  })

  $(".pillCard").mouseleave(function(){
  	$(this).css("border", "none")
  })
});