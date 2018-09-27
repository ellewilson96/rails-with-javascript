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

  $(".show_link").on('click'), (e) => {
    e.preventDefault()
    fetch(`/courses/${}.json`)
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
    <a href="/courses/${this.id}" class="show_link"><h1>${this.description}</h1></a>
  `
  return courseHtml
}
