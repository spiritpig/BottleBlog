function init()
{
    function updateClock()
    {
        var today = new Date()
        var hour = today.getHours()
        var minute = today.getMinutes()
        var second = today.getSeconds()

        minute = adjustTimeVal(minute)
        second = adjustTimeVal(second)

        document.getElementById("clock").innerHTML = 
                                hour + ":" + minute + ":" + second
        setTimeout(updateClock, 1000)
    }

    function adjustTimeVal(i)
    {
        if(i<10)
        {
            i = "0" + i
            return i
        }

        return i
    }

    updateClock();
}


