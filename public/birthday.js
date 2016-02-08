$(function() {
    $("#go").click(function() {
        var data = {
            year: $("#year").val(),
            month: $("#month").val(),
            team: $("#team").val()
        };
        $.post("/check", data, function(resp) {
            console.log(resp);
        });
    });
});

