$(document).ready(function(){

  var colors = ["#99DF95", "#B9E3E0", "#AF6DBA", "#FF8470", "#C283BF", "#5BFFA8", "#FFA99D", "#92E8CB", "#B5FF5F", "#097A66", "#EEA371"];
  var rand = Math.floor(Math.random()*colors.length);

  $('body').css("background-color", colors[rand]);


//deploys when form is submitted

$('#search').on("submit", function(event){
  event.preventDefault();

  $.ajax({
    url: '/glasses',
    type: 'post',
    dataType: 'json',
    data: $(this).serialize()
  })

  .done(function(searchData){
    console.log(searchData)

    searchData.results.forEach(function(result) {
      $('div.results').append(
        buildTemplate(result)
        )
    })
  });

 });
 });


function overlay() {
  el = document.getElementById("overlay");
  el.style.visibility = (el.style.visibility == "visible") ? "hidden" : "visible";
};


