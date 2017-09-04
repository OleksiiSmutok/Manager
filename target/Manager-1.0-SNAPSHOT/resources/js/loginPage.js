/**
 * Created by Admin on 23.08.2017.
 */

// function getObject() {
//     return {login: $("#login").val(),password: $("#password").val()}
// }
//
// $(".button-login").on("click",function () {
//     if(validate(getObject())){
//         $.ajax({
//             url:'/loginProcessing',
//             method:'POST',
//             contentType:'application/json',
//             data: JSON.stringify(getObject()),
//             success:function () {
//                 resetForm();
//             }
//         })
//     }
// });
//
// function validate(object) {
//
//     var loginValidate = /[a-zA-Z\-]/;
//     var passwordValidate = /[a-zA-Z\-]/;
//
//     if(object.login == "" || !object.login.match(loginValidate)){
//         showErrorMessage1("Login can not be empty");
//         return false;
//     }
//     if(object.password == "" || !object.password.match(passwordValidate)){
//         showErrorMessage2("Password can not be empty");
//         return false;
//     }
//     return true;
// }
//
// function showErrorMessage1(message) {
//     $("#errorMessages1").css({'display':'block'});
//     $("#errorMessages1").text(message);
// }
// function showErrorMessage2(message) {
//     $("#errorMessages2").css({'display':'block'});
//     $("#errorMessages2").text(message);
// }
//
// function resetForm() {
//     $("#login").val("");
//     $("#password").val("");
//     $("#errorMessages1").css({'display':'none'});
//     $("#errorMessages2").css({'display':'none'});
// }