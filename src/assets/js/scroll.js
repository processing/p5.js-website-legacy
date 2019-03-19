$(function() {
    var $window = $(window),
        $sidebar = $("#menu"),
        sidebarTopOffset = $sidebar.offset().top,
        $rotationElements = $(
            ["#download-page #asterisk-design-element", "#reference-page #asterisk-design-element"].join()
        ),
        rotationDegrees = 0;

    var isWidescreen = function() {
        return window.matchMedia("(min-width: 720px)").matches;
    };

    var setSidebarPosition = function() {
        var $colSpan = $sidebar.closest("nav").closest("div");
        if ($window.scrollTop() >= sidebarTopOffset) {
            $colSpan.css({ position: "fixed", top: "10px" });
            $colSpan.next().css({ marginLeft: $colSpan.width() + 40 + "px", top: "20px" });
        } else {
            $colSpan.css({ position: "relative", top: "" });
            $colSpan.next().css({ marginLeft: "1em", top: "" });
        }
    };

    // Rotate specific elements:
    var rotateElements = function() {
        rotationDegrees = $window.scrollTop() / 40 - 21;
        $rotationElements.css({
            "-ms-transform": "rotate(" + rotationDegrees + "deg)",
            "-webkit-transform": "rotate(" + rotationDegrees + "deg)",
            transform: "rotate(" + rotationDegrees + "deg)"
        });
    };

    $window.scroll(function() {
        if (isWidescreen()) {
            setSidebarPosition();
            rotateElements();
        }
    });
});
