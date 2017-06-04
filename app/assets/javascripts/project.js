$(function () {
    $("a[href$='/books']").click(function(event) {
        event.preventDefault();
        alert("So far, so good!");
    })
})