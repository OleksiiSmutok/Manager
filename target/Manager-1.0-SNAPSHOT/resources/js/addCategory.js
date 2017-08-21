/**
 * Created by Admin on 20.08.2017.
 */
var iconClass='';
var iconClass1='';
function saveIcon(obj) {

    var icon = $(obj).attr('class');
    var iconClass = icon.split(' ');
    iconClass1 = iconClass[1];
}

function getObject() {
    return [$(".categoryName").val(),iconClass1]
}

$(".button-confirm").on("click",function () {
    $(".text").fadeIn();
        $.ajax({
        url: '/add/category',
        method: 'POST',
        contentType:'application/json',
        data: JSON.stringify(getObject()),
        success:function () {
            resetForm();
        }
    })
});

function resetForm() {
    $(".categoryName").val("");
}
$(".categoryName").on("click",function () {
    $(".text").fadeOut();
});


