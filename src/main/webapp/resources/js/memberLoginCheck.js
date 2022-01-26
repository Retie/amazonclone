$(document).ready(function () {
    console.log("loginCheck.js ready...");
});

function loginCheck() {
    var flag = true;

    var email = document.getElementById("email");
    var password = document.getElementById("password");

    if (email.value == "") {
        $("#auth-email-missing-alert").show();
        email.focus();
        return false;
    } else {
        $("#auth-email-missing-alert").hide();
    }

    if (password.value == "") {
        $("#auth-password-missing-alert").show();
        password.focus();
        return false;
    } else {
        $("#auth-password-missing-alert").hide();
    }


    $.ajax({
        url: "/member/login",
        method: "post",
        data: {
            email: email.value,
            password: password.value
        },
        async: "true", //비동기
        success: function (responseData) {
            console.log("responseData: " + responseData);
            if (responseData == "success") {
                console.log("login success");
                window.location.href = "/"
            } else if(responseData == "plzCheckPwd") {
                flag = false;
                console.log("responseData: plzCheckPwd, flag: " + flag)
                $("#auth-password-incorrect-alert").show();
            } else {
                $("#auth-password-incorrect-alert").hide();
            }
        }, error: function (request, status, error) {// 에러발생시 실행할 함수
            alert("code:" + request.status + "\n" +
                "message:" + request.responseText + "\n" +
                "error:" + error);
        }
    })

    return flag;

}