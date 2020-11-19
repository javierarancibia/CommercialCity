$(document).on('ready turbolinks:load', function(){

    var divCalendar = document.querySelector('#calendar')

    var calendar = new FullCalendar.Calendar(divCalendar, {
                        initialView: 'dayGridMonth'
                    })

    calendar.render()                
})






