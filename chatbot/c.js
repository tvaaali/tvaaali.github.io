
var msg_template = `<div class="msg_#XX#" style="display:block">
    <div class="Message is-end-user is-last-message-group">
        <div class="message-container flex-column">
            <div class="chatbot_c50">
                <div class="chatbot_c49 chatbot_c53 date_#XX#" title="#DATE_BANT#" style="color: rgb(255, 255, 255); background-color: rgb(58, 178, 180);">
                    <div class="msg msg_#XX#"> #MSG_BANT# </div>
                </div>
            </div>
            <div class="info-line flex">
                <div class="chatbot_c59">
                    <span>Delivered</span>
                </div>
                <div class="chatbot_c60">
                    <span>#DATE_BANT# </span>
                </div>
            </div>
        </div>
    </div>
</div>`;

$(function () {
    bant_data = bant_get();
    if (bant_data) {
        console.log("=---Bant Data->", bant_data);
    } else {
        var obj = {
            email: false,
            date_start: new Date().toLocaleString(),
            chat: [],
            id: create_token()
        };
        bant_set(obj);
        console.log("Bant, Default set", obj);
        bant_data = obj;
    }




    $('.doChat').click(function () {
        if (bant_data.chat.length) {
            console.log("Messages are available", bant_data.chat);
            show_s();
        } else {
            show_m();
        }


    });

    $('.noChat, .closeChat').click(function () {
        show_b();
    });

    $('.type_msg').keyup(function () {
        if ($('.type_msg').val().length > 0) {
            $('.footer span div').hide();
            $('.footer span div.enter-prompt').show();
            if (event.keyCode === 13) {
                send_msg($('.type_msg').val());
                $('.type_msg').val("");
                show_s();
            }
        } else {
            $('.footer span div').hide();
            $('.footer span div.enter-prompt').show();
        }
    });
    $('.enter-prompt').click(function () {
        $('.msg_0').text($('.type_msg').val());
        send_msg($('.type_msg').val());
        $('.type_msg').val("");
        show_s();
    });
    $('.type_msg2').keyup(function () {
        if ($('.type_msg2').val().length > 0) {
            $('.footer span div').hide();
            $('.footer span div.enter-prompt2').show();
            if (event.keyCode === 13) {
                $('.msg_2').text($('.type_msg').val());
                send_msg($('.type_msg2').val());
                $('.type_msg2').val("");
                show_s();
            }
        } else {
            $('.footer span div').hide();
            $('.footer span div.enter-prompt2').show();
        }
    });
    $('.enter-prompt2').click(function () {
        send_msg($('.type_msg2').val());
        $('.type_msg2').val("");
        show_s();
    });
$('.email_form').submit(function (e) {
    e.preventDefault();
    console.log("----Email:", $('#email').val());
    bant_data.email = $('#email').val();
    bant_set(bant_data);
    show_s();
    
})
    setTimeout(function(){
        show_m();
    },3000);
});



function show_b() {
    $('.chatb').hide();
    $('#root_b').show();
}

function show_m() {
    $('.chatb').hide();
    $('#root_m').show(400);
}

function show_s() {
    $('.chatb').hide();
    $('#root_s').show();
    $('.msg_0').text($('.type_msg').val());
    $(".msg_0").text(bant_data.chat[0].msg);
    $(".date_0").attr("title", bant_data.chat[0].date);
    $(".date_bant").attr("title", bant_data.chat[0].date);
    $(".date_start").attr("title", bant_data.date_start);
    $('#bant_msgs .news').html('');
    for (var i = 1; i< bant_data.chat.length; i++){
        var html = msg_template.replace(/#XX#/g, i).replace(/#MSG_BANT#/g, bant_data.chat[i].msg).replace(/#DATE_BANT#/g, bant_data.chat[i].date);
        $('#bant_msgs .news').append(html);
    }
    if (bant_data.email){
        $('.email_present').show();
        $('.email_form').hide();
    }else{
        $('.email_present').hide();
        $('.email_form').show();

    }
}

function send_msg(msg) {
    if (msg && msg.length){
    console.log("Message sent----: " + msg);
    // bant_data.chat.push({date: new Date().toISOString().slice(0,19).replace("T", " ") , msg: msg });
    bant_data.chat.push({
        date: new Date().toLocaleString(),
        msg: msg
    });
    bant_set(bant_data);
    }else{
        console.log("Message Not sent--No message!: " + msg);
    }


}
create_token = function () {
    return 'xxxxxxxx-xxxx-8xxx-yxxx-xxxxxxxxxxxx'.replace(/[xy]/g, function (c) {
        var r = Math.random() * 16 | 0,
            v = c == 'x' ? r : (r & 0x3 | 0x8);
        return v.toString(16);
    });
};


function setCookie(cname, cvalue, exdays) {
    var d = new Date();
    d.setTime(d.getTime() + (exdays * 24 * 60 * 60 * 1000));
    var expires = "expires=" + d.toUTCString();
    document.cookie = cname + "=" + cvalue + "; " + expires;
}

function getCookie(cname) {
    var name = cname + "=";
    var ca = document.cookie.split(';');
    for (var i = 0; i < ca.length; i++) {
        var c = ca[i];
        while (c.charAt(0) == ' ') c = c.substring(1);
        if (c.indexOf(name) == 0) return c.substring(name.length, c.length);
    }
    return "";
}

function bant_set(obj) {
    setCookie("bant-chat", encodeURIComponent(JSON.stringify(obj)));
}

function bant_get() {
    //console.log("=----->",getCookie("bant-chat"));
    var c = getCookie("bant-chat");
    if (c) {
        try {
            return (JSON.parse(decodeURIComponent(c)));
        } catch (e) {
            console.log("Error parsing bant_data ", e);
            return false;
        }
    } else {
        console.log("Error getting bant_data ", c);
        return false;
    }
}