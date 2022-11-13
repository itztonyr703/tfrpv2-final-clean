$(function () {
    function display(bool) {
        if (bool) {
            document.getElementById("body").style.display="block";
        } else {
            document.getElementById("body").style.display="none";
        }
    }

    display(false)

    window.addEventListener('message', function(event) {
        var item = event.data;
        var jobactual = item.jobactual
        if (item.type === "ui") {
            if (item.status == true) {
                display(true, item)
                update(item)
                $("#name").hide()
                $(".exp").hide()
                $(".exp2").hide()
            } else {
                display(false)
            }
            
        }
        if (item.type === "info") {
            document.getElementById("infojob").style.display="block";
            $("#name").text(item.name)
            $("#text1").text(item.tex1)
            $("#level").text(item.level)
            $("#expactu").text(item.expactu)
            $("#jobactu").text(item.jobactual)
            $("#expreq").text('/'+item.expreq)
            $(".jobimg img").attr("src",item.img);
            $("#test").attr("src",item.img2);
            $(".exp").hide()
            $(".exp2").hide()
            $(".exp").show()
            $(".exp2").show()
            $('.exp').css('width',event.data.exp+'%')
        }
    })

    function update(item) {
        $(".header").html(item.items)
    }
    
    document.onkeyup = function (data) {
        if (data.which == 27) {
            $.post('https://Buty_InfiniteJobs/exit', JSON.stringify({}));
            document.getElementById("infojob").style.display="none";
            return
        }
    };

    const btn = document.querySelector('.newjob')
    btn.addEventListener('click', () => {
      btn.classList.remove('animate')
      setTimeout(() => btn.classList.add('animate'), 100)
    })

    $(document).on("click", ".newjob", function(){
        $(".infojob").hide()
        $("#name").show()
        $.post('https://Buty_InfiniteJobs/info', JSON.stringify({text: $(this).attr('data-value')}));
        setTimeout(() =>  $(".infojob").show(), 400)
    }); 

    $(document).on("click", ".close", function(){
        $.post('https://Buty_InfiniteJobs/exit', JSON.stringify({}));
    }); 

    $(document).on("click", ".select", function(){
        $("#name").show()
        $.post('https://Buty_InfiniteJobs/item', JSON.stringify({text: $(this).attr('data-value')}));
        $.post('https://Buty_InfiniteJobs/exit', JSON.stringify({}));
        document.getElementById("infojob").style.display="none";
    }); 
        
})