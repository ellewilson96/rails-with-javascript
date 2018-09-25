$(function(){
  $("a.load_grades").on("click", function(e){

    $.ajax({
      method: "GET",
      url: this.href
    }).success(function(response){
      $("div.grades").html(response)
    }).error(function(notNeeded){
      alert("we broke!!!!")
    });

    $.get(this.href).success(function(response){
      $("div.grades").html(response)
    })


    $.get(this.href).success(function(json){
      var $ol = $("div.grades ol")
      $ol.html("") 

      json.forEach(function(grade){
        $ol.append("<li>" + grade.content + "</li>");
      })
    })


    e.preventDefault();
  })
  $("a.load_grades").on("click", function(e){
    $.ajax({
      url: this.href,
      dataType: 'script'
    })
    e.preventDefault();
  })
})


 $(function(){
   $("#new_grade").on("submit", function(e){
     $.ajax({
       type: ($("input[name='_method']").val() || this.method),
       url: this.action,
       data: $(this).serialize();,
       success: function(response){
         $("#grade_content").val("");
         var $ol = $("div.grades ol")
         $ol.append(response);
       }
     });
     e.preventDefault();
   })
 });
