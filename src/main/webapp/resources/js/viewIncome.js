/**
 * Created by Admin on 28.08.2017.
 */



$("#loader").on("click", function () {
    $("#tableBody").empty();

    $.ajax({
        url: '/find/all/income',
        method: 'GET',
        contentType: 'application/json',
        success: function (income) {
            var html = "";
            for (var i = 0; i < income.length; i++) {
                html += "<tr><td>" + income[i].id + "</td><td>" + income[i].description + "</td><td>" + income[i].sum + "</td><td>" + income[i].date + "</td></tr>"
            }
            $("#tableBody").append(html);
        }
    })
});


var myChart = document.getElementById('myChart').getContext('2d');
myChart.canvas.width = 300;
myChart.canvas.height = 100;
Chart.defaults.global.defaultFontFamily = 'Lato';
Chart.defaults.global.defaultFontSize = 18;
Chart.defaults.global.defaultFontColor = 'white';


var incomeChart = new Chart(myChart,{
    type: 'bar',
    data: {
        labels: ['2017.08.24','2017.08.25','2017.08.26','2017.08.27','2017.08.28','2017.08.29','2017.08.30','2017.08.31'],
        datasets: [{
            label:'Income',
            data:['1000','300','650','950','400','400','350','250'],
            backgroundColor:[
                '#ffff0c',
                '#ff3397',
                '#6af76f',
                '#9992f7',
                '#ff7269',
                '#70e9ff',
                '#4369e6',
                '#fa1f65'
            ]
        }]
    },
    options:{
        title:{
          display:true,
            text:'Income'
        },
        legend:false
    }
});