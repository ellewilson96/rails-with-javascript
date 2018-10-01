$(function () {

  $('.course-details').on('click', (e) => {

      //prevent default click acction
    e.preventDefault();

      // hide view description link
    $('.course-details').hide();

    // set course id to the course id of the clicked link
    let courseID = $(".course-details").attr("data-id")
      $.get("/courses/" + courseID + ".json", function(data) {

      let courseHtml = data.description
      $('#description-'+courseID).append("<h4>"+courseHtml+"</h4>");

    })
  })
})
