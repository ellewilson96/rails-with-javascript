$(( ) => {
  bindClickHandlers()
})

const bindClickHandlers = () => {
  $('.all_courses').on('click', (e) => {
    e.preventDefault()
    history.pushState(null, null, "courses")
    fetch(`/courses.json`)
    .then(res => res.json())
    .then(courses => {
      $('#contentBody').html('')
        courses.forEach((course) => {
          let newCourse = new Course(course)

          let courseHtml = newCourse.formatIndex()

          $('#contentBody').append(courseHtml)
        })
    })
  })

  $(document).on('click', ".show_link", function(e) {
     e.preventDefault()
     $('#contentBody').html('')
     let id = $(this).attr('data-id')
     fetch(`/courses/${id}.json`)
     .then(res => res.json())
     .then(course => {
       let newCourse = new Course(course)

       let courseHtml = newCourse.formatShow()
       $('#contentBody').append(courseHtml)
     })
   })
 }

function Course(course) {
  this.id = course.id
  this.title = course.section
  this.name = course.name
  this.description = course.description
  this.user = course.user
}

Course.prototype.formatIndex = function(){
  let courseHtml = `
    <a href="/courses/${this.id}" data-id="class="show_link"><h1>${this.description}</h1></a>
  `
  return courseHtml
}


Course.prototype.formatShow = function(){
  let courseHtml = `
  <h3>${this.description}</h3>
  `
  return courseHtml
}
