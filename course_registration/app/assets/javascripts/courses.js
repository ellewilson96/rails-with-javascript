$(function () {

  $('.course-details').on('click', (e) => {

      //prevent default click acction
    e.preventDefault();

    // set course id to the course id of the clicked link
      $.get("/courses.json", function(data) {
      const id = $(this).data('id')
      let courseHtml = this.data.description
      $('#description-'+id).append("<h4>"+courseHtml+"</h4>");

    })
  })
})
