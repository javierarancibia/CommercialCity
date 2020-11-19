$(document).on('ready turbolinks:load', function(){
         

        var divCalendar = document.querySelector('#calendar')

        $.ajax({
            url: '/estates/' + estateId,
            type: 'get',
            dataType: 'json'
        })
        .done(function(data){
            var dataCalendar = []

            data.forEach(function(ele){
                
                data = {
                    content: ele.content,
                    start: ele.start,
                    end: ele.end
                }

                dataCalendar.push(data)
            })

            createCalendar(dataCalendar)
        })



        function createCalendar(data){

            var calendar = new FullCalendar.Calendar(divCalendar, {
                                initialView: 'dayGridMonth',
                                locale: 'es',
                                timeZone: 'UTC',
                                events: data
                            })
                    
            calendar.render()
        }


})



