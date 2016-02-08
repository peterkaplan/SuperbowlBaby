var team_names = [ "Atlanta Falcons", "Baltimore Ravens", "Buffalo Bills", "Carolina Panthers", "Chicago Bears", "Cincinnati Bengals", "Cleveland Browns", "Dallas Cowboys", "Denver Broncos", "Detroit Lions", "Green Bay Packers", "Houston Texans", "Indianapolis Colts", "Jacksonville Jaguars", "Kansas City Chiefs", "Los Angeles Rams", "Miami Dolphins", "Minnesota Vikings", "New England Patriots", "New Orleans Saints", "New York Giants", "New York Jets", "Oakland Raiders", "Philadelphia Eagles", "Pittsburgh Steelers", "San Diego Chargers", "San Francisco 49ers", "Seattle Seahawks", "Tampa Bay Buccaneers", "Tennessee Titans", "Washington Redskins"];
$(function() {
    setTimeout(function() {
        $(".twitter-share-button").css('margin-bottom', '-5px');
        $(".twitter-share-button").css('margin-left', '10px');
    }, 1500);

    $(".team_select").dropdown();

    $('#day').keypress(function(e) {
    if (e.which == 13) {
        $("#go").click();
    }
    });
     $('#month').keypress(function(e) {
    if (e.which == 13) {
        $("#go").click();
    }
    });
      $('#year').keypress(function(e) {
    if (e.which == 13) {
        $("#go").click();
    }
    });

    $(".try_again").click(function() {
        $("#go").attr("check", "birth");
        $("#not_fb_baby").hide();
        $("#fb_baby").hide();

        $("#team_div").hide();
        $("#birth_div, #go").show(300);
    });

    $("#check_birth").click(function() {
    });

    $("#go").click(function() {
        var month = parseInt($("#month").val, 10);
        var day = parseInt($("#day").val, 10);
        var year = parseInt($("#year").val, 10);
        if(month > 12 || month < 1){
            $("#month").select();
            return;
        }

        if(day < 1 || day > 31){
            $("#day").select();
            return;
        }

        if(year > 2016 || year < 1900){
            $("#year").select();
            return;
        }

        var go_button = $(this);

        if($(this).attr("check") == "birth") {
            var data = {
                year: $("#year").val(),
                month: $("#month").val(),
                day: $("#day").val()
            };
            $("#birth_div, #go").hide();
            $("#loader").show();
            $("#loader").css("display", "block");

            $.post('/check_date', data, function(resp) {
                resp = JSON.parse(resp);
                console.log(resp);
                $("#loader").hide();
                if(resp.result) {
                    // they're close
                    $("#team_div, #go").show(300);
                    go_button.attr("check", "team");
                }
                else {
                    $("#not_fb_baby").show(300);
                    $("#not_reason").html(resp.reason);
                    go_button.attr("check", "birth");
                }
            });
        }
        else {
            $("#team_div, #go").hide();
            $("#loader").show();
            $("#loader").css("display", "block");

            var data = {
                year: $("#year").val(),
                month: $("#month").val(),
                team: $("#drop").val(),
                day: $("#day").val()
            };
            var go_button = $(this);
            $.post("/check", data, function(resp) {
                resp = JSON.parse(resp);
                console.log(resp);
                $("#loader").hide();
                if(resp.result) {
                    // football baby!
                    $("#team").html(resp.team);
                    $("#date").html(resp.date);
                    $("#num_diff").html(resp.days_diff);
                    $("#fb_baby").show(300);
                }
                else {
                    // not a football baby :(
                    $("#not_fb_baby").show(300);
                    $("#not_reason").html(resp.reason);
                }
                go_button.attr("check", "birth");
            });
        }
    });

    // add team options
    var select_html = $("#drop").html();
    for(var i = 0; i < team_names.length; i++) {
        select_html += "<option>"+team_names[i]+"</option>";
    }
    $("#drop").html(select_html);
});
