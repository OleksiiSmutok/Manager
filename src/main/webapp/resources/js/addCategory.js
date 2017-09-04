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
    $(".c1").fadeOut();$(".c2").fadeOut();$(".c3").fadeOut();$(".c4").fadeOut();$(".c5").fadeOut();$(".c6").fadeOut();
    $(".c7").fadeOut();$(".c8").fadeOut();$(".c9").fadeOut();$(".c10").fadeOut();$(".c11").fadeOut();$(".c12").fadeOut();
    $(".c13").fadeOut();$(".c14").fadeOut();$(".c15").fadeOut();$(".c16").fadeOut();$(".c17").fadeOut();$(".c18").fadeOut();
    $(".c19").fadeOut();$(".c20").fadeOut();$(".c21").fadeOut();$(".c22").fadeOut();$(".c23").fadeOut();$(".c24").fadeOut();
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


$(".icon1").on("click",function () {
    $(".c1").fadeToggle()
    $(".c2").fadeOut();$(".c3").fadeOut();$(".c4").fadeOut();$(".c5").fadeOut();$(".c6").fadeOut();
    $(".c7").fadeOut();$(".c8").fadeOut();$(".c9").fadeOut();$(".c10").fadeOut();$(".c11").fadeOut();$(".c12").fadeOut();
    $(".c13").fadeOut();$(".c14").fadeOut();$(".c15").fadeOut();$(".c16").fadeOut();$(".c17").fadeOut();$(".c18").fadeOut();
    $(".c19").fadeOut();$(".c20").fadeOut();$(".c21").fadeOut();$(".c22").fadeOut();$(".c23").fadeOut();$(".c24").fadeOut();
});

$(".icon2").on("click",function () {
    $(".c2").fadeToggle()
    $(".c1").fadeOut();$(".c3").fadeOut();$(".c4").fadeOut();$(".c5").fadeOut();$(".c6").fadeOut();
    $(".c7").fadeOut();$(".c8").fadeOut();$(".c9").fadeOut();$(".c10").fadeOut();$(".c11").fadeOut();$(".c12").fadeOut();
    $(".c13").fadeOut();$(".c14").fadeOut();$(".c15").fadeOut();$(".c16").fadeOut();$(".c17").fadeOut();$(".c18").fadeOut();
    $(".c19").fadeOut();$(".c20").fadeOut();$(".c21").fadeOut();$(".c22").fadeOut();$(".c23").fadeOut();$(".c24").fadeOut();
});

$(".icon3").on("click",function () {
    $(".c3").fadeToggle()
    $(".c1").fadeOut();$(".c2").fadeOut();$(".c4").fadeOut();$(".c5").fadeOut();$(".c6").fadeOut();
    $(".c7").fadeOut();$(".c8").fadeOut();$(".c9").fadeOut();$(".c10").fadeOut();$(".c11").fadeOut();$(".c12").fadeOut();
    $(".c13").fadeOut();$(".c14").fadeOut();$(".c15").fadeOut();$(".c16").fadeOut();$(".c17").fadeOut();$(".c18").fadeOut();
    $(".c19").fadeOut();$(".c20").fadeOut();$(".c21").fadeOut();$(".c22").fadeOut();$(".c23").fadeOut();$(".c24").fadeOut();
});

$(".icon4").on("click",function () {
    $(".c4").fadeToggle()
    $(".c1").fadeOut();$(".c2").fadeOut();$(".c3").fadeOut();$(".c5").fadeOut();$(".c6").fadeOut();
    $(".c7").fadeOut();$(".c8").fadeOut();$(".c9").fadeOut();$(".c10").fadeOut();$(".c11").fadeOut();$(".c12").fadeOut();
    $(".c13").fadeOut();$(".c14").fadeOut();$(".c15").fadeOut();$(".c16").fadeOut();$(".c17").fadeOut();$(".c18").fadeOut();
    $(".c19").fadeOut();$(".c20").fadeOut();$(".c21").fadeOut();$(".c22").fadeOut();$(".c23").fadeOut();$(".c24").fadeOut();
});

$(".icon5").on("click",function () {
    $(".c5").fadeToggle()
    $(".c1").fadeOut();$(".c2").fadeOut();$(".c3").fadeOut();$(".c4").fadeOut();$(".c6").fadeOut();
    $(".c7").fadeOut();$(".c8").fadeOut();$(".c9").fadeOut();$(".c10").fadeOut();$(".c11").fadeOut();$(".c12").fadeOut();
    $(".c13").fadeOut();$(".c14").fadeOut();$(".c15").fadeOut();$(".c16").fadeOut();$(".c17").fadeOut();$(".c18").fadeOut();
    $(".c19").fadeOut();$(".c20").fadeOut();$(".c21").fadeOut();$(".c22").fadeOut();$(".c23").fadeOut();$(".c24").fadeOut();
});

$(".icon6").on("click",function () {
    $(".c6").fadeToggle()
    $(".c1").fadeOut();$(".c2").fadeOut();$(".c3").fadeOut();$(".c4").fadeOut();$(".c5").fadeOut();
    $(".c7").fadeOut();$(".c8").fadeOut();$(".c9").fadeOut();$(".c10").fadeOut();$(".c11").fadeOut();$(".c12").fadeOut();
    $(".c13").fadeOut();$(".c14").fadeOut();$(".c15").fadeOut();$(".c16").fadeOut();$(".c17").fadeOut();$(".c18").fadeOut();
    $(".c19").fadeOut();$(".c20").fadeOut();$(".c21").fadeOut();$(".c22").fadeOut();$(".c23").fadeOut();$(".c24").fadeOut();
});

$(".icon7").on("click",function () {
    $(".c7").fadeToggle()
    $(".c1").fadeOut();$(".c2").fadeOut();$(".c3").fadeOut();$(".c4").fadeOut();$(".c5").fadeOut();$(".c6").fadeOut();
    $(".c8").fadeOut();$(".c9").fadeOut();$(".c10").fadeOut();$(".c11").fadeOut();$(".c12").fadeOut();
    $(".c13").fadeOut();$(".c14").fadeOut();$(".c15").fadeOut();$(".c16").fadeOut();$(".c17").fadeOut();$(".c18").fadeOut();
    $(".c19").fadeOut();$(".c20").fadeOut();$(".c21").fadeOut();$(".c22").fadeOut();$(".c23").fadeOut();$(".c24").fadeOut();
});

$(".icon8").on("click",function () {
    $(".c8").fadeToggle()
    $(".c1").fadeOut();$(".c2").fadeOut();$(".c3").fadeOut();$(".c4").fadeOut();$(".c5").fadeOut();$(".c6").fadeOut();
    $(".c7").fadeOut();$(".c9").fadeOut();$(".c10").fadeOut();$(".c11").fadeOut();$(".c12").fadeOut();
    $(".c13").fadeOut();$(".c14").fadeOut();$(".c15").fadeOut();$(".c16").fadeOut();$(".c17").fadeOut();$(".c18").fadeOut();
    $(".c19").fadeOut();$(".c20").fadeOut();$(".c21").fadeOut();$(".c22").fadeOut();$(".c23").fadeOut();$(".c24").fadeOut();
});
$(".icon9").on("click",function () {
    $(".c9").fadeToggle()
    $(".c1").fadeOut();$(".c2").fadeOut();$(".c3").fadeOut();$(".c4").fadeOut();$(".c5").fadeOut();$(".c6").fadeOut();
    $(".c7").fadeOut();$(".c8").fadeOut();$(".c10").fadeOut();$(".c11").fadeOut();$(".c12").fadeOut();
    $(".c13").fadeOut();$(".c14").fadeOut();$(".c15").fadeOut();$(".c16").fadeOut();$(".c17").fadeOut();$(".c18").fadeOut();
    $(".c19").fadeOut();$(".c20").fadeOut();$(".c21").fadeOut();$(".c22").fadeOut();$(".c23").fadeOut();$(".c24").fadeOut();
});
$(".icon10").on("click",function () {
    $(".c10").fadeToggle()
    $(".c1").fadeOut();$(".c2").fadeOut();$(".c3").fadeOut();$(".c4").fadeOut();$(".c5").fadeOut();$(".c6").fadeOut();
    $(".c7").fadeOut();$(".c8").fadeOut();$(".c9").fadeOut();$(".c11").fadeOut();$(".c12").fadeOut();
    $(".c13").fadeOut();$(".c14").fadeOut();$(".c15").fadeOut();$(".c16").fadeOut();$(".c17").fadeOut();$(".c18").fadeOut();
    $(".c19").fadeOut();$(".c20").fadeOut();$(".c21").fadeOut();$(".c22").fadeOut();$(".c23").fadeOut();$(".c24").fadeOut();
});
$(".icon11").on("click",function () {
    $(".c11").fadeToggle()
    $(".c1").fadeOut();$(".c2").fadeOut();$(".c3").fadeOut();$(".c4").fadeOut();$(".c5").fadeOut();$(".c6").fadeOut();
    $(".c7").fadeOut();$(".c8").fadeOut();$(".c9").fadeOut();$(".c10").fadeOut();$(".c12").fadeOut();
    $(".c13").fadeOut();$(".c14").fadeOut();$(".c15").fadeOut();$(".c16").fadeOut();$(".c17").fadeOut();$(".c18").fadeOut();
    $(".c19").fadeOut();$(".c20").fadeOut();$(".c21").fadeOut();$(".c22").fadeOut();$(".c23").fadeOut();$(".c24").fadeOut();
});
$(".icon12").on("click",function () {
    $(".c12").fadeToggle()
    $(".c1").fadeOut();$(".c2").fadeOut();$(".c3").fadeOut();$(".c4").fadeOut();$(".c5").fadeOut();$(".c6").fadeOut();
    $(".c7").fadeOut();$(".c8").fadeOut();$(".c9").fadeOut();$(".c10").fadeOut();$(".c11").fadeOut();
    $(".c13").fadeOut();$(".c14").fadeOut();$(".c15").fadeOut();$(".c16").fadeOut();$(".c17").fadeOut();$(".c18").fadeOut();
    $(".c19").fadeOut();$(".c20").fadeOut();$(".c21").fadeOut();$(".c22").fadeOut();$(".c23").fadeOut();$(".c24").fadeOut();
});
$(".icon13").on("click",function () {
    $(".c13").fadeToggle()
    $(".c1").fadeOut();$(".c2").fadeOut();$(".c3").fadeOut();$(".c4").fadeOut();$(".c5").fadeOut();$(".c6").fadeOut();
    $(".c7").fadeOut();$(".c8").fadeOut();$(".c9").fadeOut();$(".c10").fadeOut();$(".c11").fadeOut();$(".c12").fadeOut();
    $(".c14").fadeOut();$(".c15").fadeOut();$(".c16").fadeOut();$(".c17").fadeOut();$(".c18").fadeOut();
    $(".c19").fadeOut();$(".c20").fadeOut();$(".c21").fadeOut();$(".c22").fadeOut();$(".c23").fadeOut();$(".c24").fadeOut();
});
$(".icon14").on("click",function () {
    $(".c14").fadeToggle()
    $(".c1").fadeOut();$(".c2").fadeOut();$(".c3").fadeOut();$(".c4").fadeOut();$(".c5").fadeOut();$(".c6").fadeOut();
    $(".c7").fadeOut();$(".c8").fadeOut();$(".c9").fadeOut();$(".c10").fadeOut();$(".c11").fadeOut();$(".c12").fadeOut();
    $(".c13").fadeOut();$(".c15").fadeOut();$(".c16").fadeOut();$(".c17").fadeOut();$(".c18").fadeOut();
    $(".c19").fadeOut();$(".c20").fadeOut();$(".c21").fadeOut();$(".c22").fadeOut();$(".c23").fadeOut();$(".c24").fadeOut();
});
$(".icon15").on("click",function () {
    $(".c15").fadeToggle()
    $(".c1").fadeOut();$(".c2").fadeOut();$(".c3").fadeOut();$(".c4").fadeOut();$(".c5").fadeOut();$(".c6").fadeOut();
    $(".c7").fadeOut();$(".c8").fadeOut();$(".c9").fadeOut();$(".c10").fadeOut();$(".c11").fadeOut();$(".c12").fadeOut();
    $(".c13").fadeOut();$(".c14").fadeOut();$(".c16").fadeOut();$(".c17").fadeOut();$(".c18").fadeOut();
    $(".c19").fadeOut();$(".c20").fadeOut();$(".c21").fadeOut();$(".c22").fadeOut();$(".c23").fadeOut();$(".c24").fadeOut();
});
$(".icon16").on("click",function () {
    $(".c16").fadeToggle()
    $(".c1").fadeOut();$(".c2").fadeOut();$(".c3").fadeOut();$(".c4").fadeOut();$(".c5").fadeOut();$(".c6").fadeOut();
    $(".c7").fadeOut();$(".c8").fadeOut();$(".c9").fadeOut();$(".c10").fadeOut();$(".c11").fadeOut();$(".c12").fadeOut();
    $(".c13").fadeOut();$(".c14").fadeOut();$(".c15").fadeOut();$(".c17").fadeOut();$(".c18").fadeOut();
    $(".c19").fadeOut();$(".c20").fadeOut();$(".c21").fadeOut();$(".c22").fadeOut();$(".c23").fadeOut();$(".c24").fadeOut();
});
$(".icon17").on("click",function () {
    $(".c17").fadeToggle()
    $(".c1").fadeOut();$(".c2").fadeOut();$(".c3").fadeOut();$(".c4").fadeOut();$(".c5").fadeOut();$(".c6").fadeOut();
    $(".c7").fadeOut();$(".c8").fadeOut();$(".c9").fadeOut();$(".c10").fadeOut();$(".c11").fadeOut();$(".c12").fadeOut();
    $(".c13").fadeOut();$(".c14").fadeOut();$(".c15").fadeOut();$(".c16").fadeOut();$(".c18").fadeOut();
    $(".c19").fadeOut();$(".c20").fadeOut();$(".c21").fadeOut();$(".c22").fadeOut();$(".c23").fadeOut();$(".c24").fadeOut();
});
$(".icon18").on("click",function () {
    $(".c18").fadeToggle()
    $(".c1").fadeOut();$(".c2").fadeOut();$(".c3").fadeOut();$(".c4").fadeOut();$(".c5").fadeOut();$(".c6").fadeOut();
    $(".c7").fadeOut();$(".c8").fadeOut();$(".c9").fadeOut();$(".c10").fadeOut();$(".c11").fadeOut();$(".c12").fadeOut();
    $(".c13").fadeOut();$(".c14").fadeOut();$(".c15").fadeOut();$(".c16").fadeOut();$(".c17").fadeOut();
    $(".c19").fadeOut();$(".c20").fadeOut();$(".c21").fadeOut();$(".c22").fadeOut();$(".c23").fadeOut();$(".c24").fadeOut();
});
$(".icon19").on("click",function () {
    $(".c19").fadeToggle()
    $(".c1").fadeOut();$(".c2").fadeOut();$(".c3").fadeOut();$(".c4").fadeOut();$(".c5").fadeOut();$(".c6").fadeOut();
    $(".c7").fadeOut();$(".c8").fadeOut();$(".c9").fadeOut();$(".c10").fadeOut();$(".c11").fadeOut();$(".c12").fadeOut();
    $(".c13").fadeOut();$(".c14").fadeOut();$(".c15").fadeOut();$(".c16").fadeOut();$(".c17").fadeOut();$(".c18").fadeOut();
    $(".c20").fadeOut();$(".c21").fadeOut();$(".c22").fadeOut();$(".c23").fadeOut();$(".c24").fadeOut();
});
$(".icon20").on("click",function () {
    $(".c20").fadeToggle()
    $(".c1").fadeOut();$(".c2").fadeOut();$(".c3").fadeOut();$(".c4").fadeOut();$(".c5").fadeOut();$(".c6").fadeOut();
    $(".c7").fadeOut();$(".c8").fadeOut();$(".c9").fadeOut();$(".c10").fadeOut();$(".c11").fadeOut();$(".c12").fadeOut();
    $(".c13").fadeOut();$(".c14").fadeOut();$(".c15").fadeOut();$(".c16").fadeOut();$(".c17").fadeOut();$(".c18").fadeOut();
    $(".c19").fadeOut();$(".c21").fadeOut();$(".c22").fadeOut();$(".c23").fadeOut();$(".c24").fadeOut();
});
$(".icon21").on("click",function () {
    $(".c21").fadeToggle()
    $(".c1").fadeOut();$(".c2").fadeOut();$(".c3").fadeOut();$(".c4").fadeOut();$(".c5").fadeOut();$(".c6").fadeOut();
    $(".c7").fadeOut();$(".c8").fadeOut();$(".c9").fadeOut();$(".c10").fadeOut();$(".c11").fadeOut();$(".c12").fadeOut();
    $(".c13").fadeOut();$(".c14").fadeOut();$(".c15").fadeOut();$(".c16").fadeOut();$(".c17").fadeOut();$(".c18").fadeOut();
    $(".c19").fadeOut();$(".c20").fadeOut();$(".c22").fadeOut();$(".c23").fadeOut();$(".c24").fadeOut();
});
$(".icon22").on("click",function () {
    $(".c22").fadeToggle()
    $(".c1").fadeOut();$(".c2").fadeOut();$(".c3").fadeOut();$(".c4").fadeOut();$(".c5").fadeOut();$(".c6").fadeOut();
    $(".c7").fadeOut();$(".c8").fadeOut();$(".c9").fadeOut();$(".c10").fadeOut();$(".c11").fadeOut();$(".c12").fadeOut();
    $(".c13").fadeOut();$(".c14").fadeOut();$(".c15").fadeOut();$(".c16").fadeOut();$(".c17").fadeOut();$(".c18").fadeOut();
    $(".c19").fadeOut();$(".c20").fadeOut();$(".c21").fadeOut();$(".c23").fadeOut();$(".c24").fadeOut();
});
$(".icon23").on("click",function () {
    $(".c23").fadeToggle()
    $(".c1").fadeOut();$(".c2").fadeOut();$(".c3").fadeOut();$(".c4").fadeOut();$(".c5").fadeOut();$(".c6").fadeOut();
    $(".c7").fadeOut();$(".c8").fadeOut();$(".c9").fadeOut();$(".c10").fadeOut();$(".c11").fadeOut();$(".c12").fadeOut();
    $(".c13").fadeOut();$(".c14").fadeOut();$(".c15").fadeOut();$(".c16").fadeOut();$(".c17").fadeOut();$(".c18").fadeOut();
    $(".c19").fadeOut();$(".c20").fadeOut();$(".c21").fadeOut();$(".c22").fadeOut();$(".c24").fadeOut();
});
$(".icon24").on("click",function () {
    $(".c24").fadeToggle()
    $(".c1").fadeOut();$(".c2").fadeOut();$(".c3").fadeOut();$(".c4").fadeOut();$(".c5").fadeOut();$(".c6").fadeOut();
    $(".c7").fadeOut();$(".c8").fadeOut();$(".c9").fadeOut();$(".c10").fadeOut();$(".c11").fadeOut();$(".c12").fadeOut();
    $(".c13").fadeOut();$(".c14").fadeOut();$(".c15").fadeOut();$(".c16").fadeOut();$(".c17").fadeOut();$(".c18").fadeOut();
    $(".c19").fadeOut();$(".c20").fadeOut();$(".c21").fadeOut();$(".c22").fadeOut();$(".c23").fadeOut();
});

