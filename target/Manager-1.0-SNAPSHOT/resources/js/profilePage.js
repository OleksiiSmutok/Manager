/**
 * Created by Admin on 26.08.2017.
 */

function getObject() {
    return{id: $("#id").val(),firstName: $("#firstName").val(),secondName: $("#secondName").val(),email: $("#email").val(),phone: $("#phone").val(),login: $("#login").val(),password: $("#password").val()}
}

$(".button-confirm").on("click",function () {
    $(".text").fadeIn();
    $.ajax({
        url: '/edit/user/' + $("#id").val(),
        method: 'POST',
        contentType:'application/json',
        data: JSON.stringify(getObject()),
        success:function () {
        }
    })
});
