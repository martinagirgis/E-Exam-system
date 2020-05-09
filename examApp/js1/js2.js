function arbic() {
    $("li").addClass("lan")
    document.getElementById("HyperLink4").innerHTML = "تأكيد الأساتذة";
    document.getElementById("HyperLink3").innerHTML = "تأكيد الطلاب";
    document.getElementById("HyperLink2").innerHTML = "أضافة مستوي";
    document.getElementById("HyperLink1").innerHTML = "أضافة قسم";
    document.getElementById("HyperLink6").innerHTML = "أضافة مادة";
    document.getElementById("HyperLink8").innerHTML = "تعديل قسم";
    document.getElementById("HyperLink7").innerHTML = "تعديل مادة";
    document.getElementById("HyperLink9").innerHTML = "تعديل الاستاذة";
    document.getElementById("HyperLink10").innerHTML = "تعديل الطلاب";
    document.getElementById("a").innerHTML = "عربي";
    document.getElementById("e").innerHTML = "انجليزي";
}


function engish() {
    $("li").removeClass("lan")
    document.getElementById("HyperLink4").innerHTML = "Confirm Professor";
    document.getElementById("HyperLink3").innerHTML = "Confirm Student";
    document.getElementById("HyperLink2").innerHTML = "Add level";
    document.getElementById("HyperLink1").innerHTML = "Add Department";
    document.getElementById("HyperLink6").innerHTML = "Add Subject";
    document.getElementById("HyperLink8").innerHTML = "Edit Department";
    document.getElementById("HyperLink7").innerHTML = "Edit Subject";
    document.getElementById("HyperLink9").innerHTML = "Edit Proffesor";
    document.getElementById("HyperLink10").innerHTML = "Edit Student";
    document.getElementById("a").innerHTML = "Arbic";
    document.getElementById("e").innerHTML = "English";
}


function adm3ar() {
    $("#d2").addClass("secd")
    $("#d1").removeClass("secd")
    document.getElementById("p1").innerHTML = "أضافة مستوي";
}

function adm3en() {
    $("#d2").removeClass("secd")
    $("#d1").addClass("secd")
    document.getElementById("p1").innerHTML = "Add level";
}

function adm1ar() {
    $("#ad1e").addClass("secd")
    $("#ad1a").removeClass("secd")
    document.getElementById("p2").innerHTML = "تأكيد الأساتذة";
}

function adm1en() {
    $("#ad1e").removeClass("secd")
    $("#ad1a").addClass("secd")
    document.getElementById("p2").innerHTML = "Confirm Professor";
}

function adm2ar() {
    $("#ad2e").addClass("secd")
    $("#ad2a").removeClass("secd")
    document.getElementById("p3").innerHTML = "تأكيد الطلاب";
}

function adm2en() {
    $("#ad2e").removeClass("secd")
    $("#ad2a").addClass("secd")
    document.getElementById("p3").innerHTML = "Confirm Student";
}

function adm4ar() {
    $("#ad4e").addClass("secd")
    $("#ad4a").removeClass("secd")
    document.getElementById("p4").innerHTML = "اضافة قسم";
}

function adm4en() {
    $("#ad4e").removeClass("secd")
    $("#ad4a").addClass("secd")
    document.getElementById("p4").innerHTML = "Add Department";
}

function adm5ar() {
    $("#ad5e").addClass("secd")
    $("#ad5a").removeClass("secd")
    document.getElementById("p5").innerHTML = "اضافة مادة";
}

function adm5en() {
    $("#ad5e").removeClass("secd")
    $("#ad5a").addClass("secd")
    document.getElementById("p5").innerHTML = "Add Subject";
}

function adm6ar() {
    $("#ad6e").addClass("secd")
    $("#ad6a").removeClass("secd")
    document.getElementById("p6").innerHTML = "تعديل قسم";
}

function adm6en() {
    $("#ad6e").removeClass("secd")
    $("#ad6a").addClass("secd")
    document.getElementById("p6").innerHTML = "Edit Department";
}

function adm7ar() {
    $("#ad7e").addClass("secd")
    $("#ad7a").removeClass("secd")
    document.getElementById("p7").innerHTML = "تعديل المواد";
}

function adm7en() {
    $("#ad7e").removeClass("secd")
    $("#ad7a").addClass("secd")
    document.getElementById("p7").innerHTML = "Edit Subject";
}

function adm8ar() {
    $("#ad8e").addClass("secd")
    $("#ad8a").removeClass("secd")
    document.getElementById("p8").innerHTML = "تعديل بيانات الاساتذة";
}

function adm8en() {
    $("#ad8e").removeClass("secd")
    $("#ad8a").addClass("secd")
    document.getElementById("p8").innerHTML = "Edit Professor";
}

function adm9ar() {
    $("#ad9e").addClass("secd")
    $("#ad9a").removeClass("secd")
    document.getElementById("p9").innerHTML = "تعديل بيانات الطلاب";
}

function adm9en() {
    $("#ad9e").removeClass("secd")
    $("#ad9a").addClass("secd")
    document.getElementById("p9").innerHTML = "Edit Student";
}



$("#HyperLink4").click(function () {
    var page = "1";
    localStorage.setItem("page", JSON.stringify(page))
});
$("#HyperLink3").click(function () {
    var page = "2";
    localStorage.setItem("page", JSON.stringify(page))
});
$("#HyperLink2").click(function () {
    var page = "3";
    localStorage.setItem("page", JSON.stringify(page))
});
$("#HyperLink1").click(function () {
    var page = "4";
    localStorage.setItem("page", JSON.stringify(page))
});
$("#HyperLink6").click(function () {
    var page = "5";
    localStorage.setItem("page", JSON.stringify(page))
});
$("#HyperLink8").click(function () {
    var page = "6";
    localStorage.setItem("page", JSON.stringify(page))
});
$("#HyperLink7").click(function () {
    var page = "7";
    localStorage.setItem("page", JSON.stringify(page))
});
$("#HyperLink9").click(function () {
    var page = "8";
    localStorage.setItem("page", JSON.stringify(page))
});
$("#HyperLink10").click(function () {
    var page = "9";
    localStorage.setItem("page", JSON.stringify(page))
});

function pageen() {
    var temp1 = localStorage.getItem("page");
    page = JSON.parse(temp1);
    switch (page) {
        case "1":
            adm1en();
            break;
        case "2":
            adm2en();
            break;
        case "3":
            adm3en();
            break;
        case "4":
            adm4en();
            break;
        case "5":
            adm5en();
            break;
        case "6":
            adm6en();
            break;
        case "7":
            adm7en();
            break;
        case "8":
            adm8en();
            break;
        case "9":
            adm9en();
            break;

    }
}

function pagear() {
    var temp1 = localStorage.getItem("page");
    page = JSON.parse(temp1);
    switch (page) {
        case "1":
            adm1ar();
            break;
        case "2":
            adm2ar();
            break;
        case "3":
            adm3ar();
            break;
        case "4":
            adm4ar();
            break;
        case "5":
            adm5ar();
            break;
        case "6":
            adm6ar();
            break;
        case "7":
            adm7ar();
            break;
        case "8":
            adm8ar();
            break;
        case "9":
            adm9ar();
            break;

    }
}

var arr;
function myFunction() {
    var temp = localStorage.getItem("arr");
    arr = JSON.parse(temp);
    if (arr == "ar") {
        arbic();
        pagear();
    }
    else  {
        engish();
        pageen();
    }
}



$("#ar").click(function () {
    arbic();
    pagear();
    var arr = "ar";
    localStorage.setItem("arr", JSON.stringify(arr))
});

$("#en").click(function () {
    engish();
    pageen();
    var arr = "en";
    localStorage.setItem("arr", JSON.stringify(arr))
});