//오늘 날짜와 시간 출력
$(document).ready(function () {

    // 시간 출력
    function getHoursAndMinutes() {
        var now = new Date();
        var hours = now.getHours();
        var minutes = now.getMinutes();
        return { hours: hours, minutes: minutes };
    }

    function convertTime() {
        var time = getHoursAndMinutes();
        var hours = time.hours;
        var minutes = time.minutes;
        var ampm = hours >= 12 ? 'PM' : 'AM';
        hours = hours % 12 || 12;
        return { hours: hours, minutes: minutes, ampm: ampm };
    }


    function displayTime() {
        var time = convertTime();
        var currentTime = time.hours + ':' + (time.minutes < 10 ? '0' + time.minutes : time.minutes) ;
        


        // 시간은 글씨 크기 크게 설정
        $('.nowtime').html('<span class="small-text">' + time.ampm + '</span> ' + '<span class="large-text">' + currentTime + '</span>');
    }
    
    displayTime();

    // 일정 주기로 시간을 갱신
    setInterval(displayTime, 1000);



    // 날씨 api - fontawesome 아이콘
    var weatherIcon = {
        '01' : 'fas fa-sun',
        '02' : 'fas fa-cloud-sun',
        '03' : 'fas fa-cloud',
        '04' : 'fas fa-cloud-meatball',
        '09' : 'fas fa-cloud-sun-rain',
        '10' : 'fas fa-cloud-showers-heavy',
        '11' : 'fas fa-poo-storm',
        '13' : 'far fa-snowflake',
        '50' : 'fas fa-smog'
    };

    // 날씨 api - 서울
    var apiURI = "http://api.openweathermap.org/data/2.5/weather?q="+'seoul'+"&appid="+"b8edd6583f2f6f32d58a4f0ff314a1a0";
    $.ajax({
        url: apiURI,
        dataType: "json",
        type: "GET",
        async: "false",
        success: function(resp) {

            var $Icon = (resp.weather[0].icon).substr(0,2);
            var $weather_description = resp.weather[0].main;
            var $Temp = Math.floor(resp.main.temp- 273.15) + 'º';
            var $humidity = '습도&nbsp;&nbsp;&nbsp;&nbsp;' + resp.main.humidity+ ' %';
            var $wind = '바람&nbsp;&nbsp;&nbsp;&nbsp;' +resp.wind.speed + ' m/s';
            var $city = '서울';
            var $cloud = '구름&nbsp;&nbsp;&nbsp;&nbsp;' + resp.clouds.all +"%";
            var $temp_min = '최저 온도&nbsp;&nbsp;&nbsp;&nbsp;' + Math.floor(resp.main.temp_min- 273.15) + 'º';
            var $temp_max = '최고 온도&nbsp;&nbsp;&nbsp;&nbsp;' + Math.floor(resp.main.temp_max- 273.15) + 'º';
            

            $('.weather_icon').append('<i class="' + weatherIcon[$Icon] +' fa-5x" style="height : 150px; width : 150px;"></i>');
            $('.weather_description').prepend($weather_description);
            $('.current_temp').prepend($Temp);
            $('.humidity').prepend($humidity);
            $('.wind').prepend($wind);
            $('.city').append($city);
            $('.cloud').append($cloud);
            $('.temp_min').append($temp_min);
            $('.temp_max').append($temp_max);               
        }
    })

    // 초기 상태에서 "introduce-seoul" 보이기
    $('#introduce-Seoul').css('display', 'block');
    $('#introduce-Gyeonggido').css('display', 'none');
    $('#introduce-Gangwondo').css('display', 'none');
    $('#introduce-Chungcheongdo').css('display', 'none');
    $('#introduce-Gyeongsangdo').css('display', 'none');
    $('#introduce-Jeollado').css('display', 'none');
    $('#introduce-Jeju').css('display', 'none');

    // 서울
    $('#CD11').click(function(){
        $('#introduce-Seoul').css('display', 'block');
        $('.introduce-travel-index').not('#introduce-Seoul').css('display', 'none');
    })

    // 경기도
    $('#CD41').click(function(){
        $('#introduce-Gyeonggido').css('display', 'block');
        $('.introduce-travel-index').not('#introduce-Gyeonggido').css('display', 'none');
    })

    $('#CD28').click(function(){
        $('#introduce-Gyeonggido').css('display', 'block');
        $('.introduce-travel-index').not('#introduce-Gyeonggido').css('display', 'none');
    })


    // 강원도
    $('#CD42').click(function(){
        $('#introduce-Gangwondo').css('display', 'block');
        $('.introduce-travel-index').not('#introduce-Gangwondo').css('display', 'none');
    })

    // 충청도
    $('#CD43').click(function(){
        $('#introduce-Chungcheongdo').css('display', 'block');
        $('.introduce-travel-index').not('#introduce-Chungcheongdo').css('display', 'none');
    })

    $('#CD44').click(function(){
        $('#introduce-Chungcheongdo').css('display', 'block');
        $('.introduce-travel-index').not('#introduce-Chungcheongdo').css('display', 'none');
    })

    $('#CD30').click(function(){
        $('#introduce-Chungcheongdo').css('display', 'block');
        $('.introduce-travel-index').not('#introduce-Chungcheongdo').css('display', 'none');
    })

    $('#CD36').click(function(){
        $('#introduce-Chungcheongdo').css('display', 'block');
        $('.introduce-travel-index').not('#introduce-Chungcheongdo').css('display', 'none');
    })

    // 경상도
    $('#CD27').click(function(){
        $('#introduce-Gyeongsangdo').css('display', 'block');
        $('.introduce-travel-index').not('#introduce-Gyeongsangdo').css('display', 'none');
    })

    $('#CD26').click(function(){
        $('#introduce-Gyeongsangdo').css('display', 'block');
        $('.introduce-travel-index').not('#introduce-Gyeongsangdo').css('display', 'none');
    })

    $('#CD31').click(function(){
        $('#introduce-Gyeongsangdo').css('display', 'block');
        $('.introduce-travel-index').not('#introduce-Gyeongsangdo').css('display', 'none');
    })

    $('#CD47').click(function(){
        $('#introduce-Gyeongsangdo').css('display', 'block');
        $('.introduce-travel-index').not('#introduce-Gyeongsangdo').css('display', 'none');
    })

    $('#CD48').click(function(){
        $('#introduce-Gyeongsangdo').css('display', 'block');
        $('.introduce-travel-index').not('#introduce-Gyeongsangdo').css('display', 'none');
    })

    // 전라도
    $('#CD29').click(function(){
        $('#introduce-Jeollado').css('display', 'block');
        $('.introduce-travel-index').not('#introduce-Jeollado').css('display', 'none');
    })

    $('#CD45').click(function(){
        $('#introduce-Jeollado').css('display', 'block');
        $('.introduce-travel-index').not('#introduce-Jeollado').css('display', 'none');
    })

    $('#CD46').click(function(){
        $('#introduce-Jeollado').css('display', 'block');
        $('.introduce-travel-index').not('#introduce-Jeollado').css('display', 'none');
    })

    // 제주도
    $('#CD50').click(function(){
        $('#introduce-Jeju').css('display', 'block');
        $('.introduce-travel-index').not('#introduce-Jeju').css('display', 'none');
    })




    // 도시 소개 내용 클릭시 페이지 이동
    $("#introduce-Seoul").on("click", function () {
        window.location.href = 'Seoul.html'; 
    });
    
    $("#introduce-Gyeonggido").on("click", function () {
        window.location.href = 'Seoul.html';
    });

    $("#introduce-Gangwondo").on("click", function () {
        window.location.href = 'Seoul.html';
    });

    $("#introduce-Chungcheongdo").on("click", function () {
        window.location.href = 'Seoul.html'; 
    });

    $("#introduce-Gyeongsangdo").on("click", function () {
        window.location.href = 'Seoul.html'; 
    });
    
    $("#introduce-Jeollado").on("click", function () {
        window.location.href = 'Seoul.html'; 
    });

    $("#introduce-Jeju").on("click", function () {
        window.location.href = 'Seoul.html'; 
    });


});


//제이쿼리사용
$.getJSON('https://api.openweathermap.org/data/2.5/weather?lat=36.5&lon=127.0&appid=b8edd6583f2f6f32d58a4f0ff314a1a0&units=metric',
    function (WeatherResult) {
        //기온출력
        $('.SeoulNowtemp').text(WeatherResult.main.temp + '°C');


        //날씨아이콘출력
        var weathericonUrl =
            '<img src="http://openweathermap.org/img/wn/'
            + WeatherResult.weather[0].icon +
            '.png" alt="' + WeatherResult.weather[0].description + '"/>';

        $('.SeoulIcon').html(weathericonUrl);
});

