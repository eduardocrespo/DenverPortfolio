//Fix z-index youtube video embedding
$(document).ready(function() {
    function e() {
        r.css({
            width: n + "%"
        }), n += .5, n > 100 && (n = 0, t.carousel("next"))
    }
    function f() {
        v.css({
            width: n + "%"
        }), n += .5, n > 100 && (o = 0, u.carousel("next"))
    }
    var n = 0,
        o = 0,
        r = $(".transition-timer-carousel-progress-bar"),
        v = $(".transition-timer-carousel-progress-bar"),
        t = $("#myAboutLeftCarousel"),
        u = $("#myAboutRightCarousel");
    u.carousel({
        interval: !1,
        pause: !0
    }).on("slid.bs.carousel", function() {
        n = 0
    });
    var a = setInterval(f, 100);
    u.hover(function() {
        clearInterval(a)
    }, function() {
        a = setInterval(f, 100)
    })
    
    t.carousel({
        interval: !1,
        pause: !0
    }).on("slid.bs.carousel", function() {
        n = 0
    });
    var a = setInterval(e, 100);
    t.hover(function() {
        clearInterval(a)
    }, function() {
        a = setInterval(e, 100)
    })
});