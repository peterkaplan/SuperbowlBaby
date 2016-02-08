var data =["Arizona Cardinals","Chicago Bears","Green Bay Packers","New York Giants","Detroit Lions","Washington Redskins","Philadelphia Eagles","Pittsburgh Steelers","Los Angeles Rams","San Francisco 49ers","Cleveland Browns","Indianapolis Colts","Dallas Cowboys","Kansas City Chiefs","San Diego Chargers","Denver Broncos","New York Jets","New England Patriots","Oakland Raiders","Tennessee Titans","Buffalo Bills","Minnesota Vikings","Atlanta Falcons","Miami Dolphins","New Orleans Saints","Cincinnati Bengals","Seattle Seahawks","Tampa Bay Buccaneers","Carolina Panthers","Jacksonville Jaguars","Baltimore Ravens","Houston Texans"]
$(function() {
    $("#go").click(function() {


        if (!$("#drop option:selected").length) {
                $("#drop").select();
            return;
        }

        if($("#month").val() > 12 || $("#month").val() < 1){
            $("#month").select();
            return;
        }

        if($("#year").val() > 2016 || $("#year").val() < 1900){
            $("#year").select();
            return;
        }
     
        $(".info-container").hide();
        $("#loader").show();
        $("#loader").css("display", "block");



        var data = {
            year: $("#year").val(),
            month: $("#month").val(),
            team: $(".team_select").val()
        };
        $.post("/check", data, function(resp) {
            if(resp.result) {
            }
            else {

            }
        });
    });

    // add team options
    var select_html = $("#drop").html();
    for(var i = 0; i < data.length; i++) {
        select_html += "<option>"+data[i]+"</option>";
    }
    $("#drop").html(select_html);
});

