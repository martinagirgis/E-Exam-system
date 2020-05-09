function arbic() {
    $("li").addClass("lan")
    document.getElementById("HyperLink4").innerHTML = "أضافة فصل";
    document.getElementById("HyperLink1").innerHTML = "أضافة أسئلة";
    document.getElementById("HyperLink2").innerHTML = "تعديل الفصول";
    document.getElementById("HyperLink3").innerHTML = "تعديل الاسئلة";
    document.getElementById("HyperLink6").innerHTML = "النتائج";
    document.getElementById("HyperLink7").innerHTML = "نظام الامتحان";
    document.getElementById("a").innerHTML = "عربي";
    document.getElementById("e").innerHTML = "انجليزي";
}


function engish() {
    $("li").removeClass("lan")
    document.getElementById("HyperLink4").innerHTML = "Add Chapter";
    document.getElementById("HyperLink1").innerHTML = "Add Question";
    document.getElementById("HyperLink2").innerHTML = "Edit Chapters";
    document.getElementById("HyperLink3").innerHTML = "Edit Questionr";
    document.getElementById("HyperLink6").innerHTML = "Show Result";
    document.getElementById("HyperLink7").innerHTML = "Structure Exam";
    document.getElementById("a").innerHTML = "Arbic";
    document.getElementById("e").innerHTML = "English";
}





function pro1ar() {
    $("#pr1e").addClass("secd")
    $("#pr1a").removeClass("secd")
    document.getElementById("p1").innerHTML = "أضافة فصل";
}

function pro1en() {
    $("#pr1e").removeClass("secd")
    $("#pr1a").addClass("secd")
    document.getElementById("p1").innerHTML = "Add chapter";
}

function pro2ar() {
    $("#pr2e").addClass("secd")
    $("#pr2a").removeClass("secd")
    document.getElementById("p2").innerHTML = "أضافة سؤال";
}

function pro2en() {
    $("#pr2e").removeClass("secd")
    $("#pr2a").addClass("secd")
    document.getElementById("p2").innerHTML = "Add Question";
}

function pro3ar() {
    $("#pr3e").addClass("secd")
    $("#pr3a").removeClass("secd")
    document.getElementById("p3").innerHTML = "تعديل الفصول";
}

function pro3en() {
    $("#pr3e").removeClass("secd")
    $("#pr3a").addClass("secd")
    document.getElementById("p3").innerHTML = "Edit chapters";
}

function pro4ar() {
    $("#pr4e").addClass("secd")
    $("#pr4a").removeClass("secd")
    document.getElementById("p4").innerHTML = "تعديل الأسئلة";
}

function pro4en() {
    $("#pr4e").removeClass("secd")
    $("#pr4a").addClass("secd")
    document.getElementById("p4").innerHTML = "Edit questions";
}

function pro5ar() {
    $("#pr5e").addClass("secd")
    $("#pr5a").removeClass("secd")
    document.getElementById("p5").innerHTML = "الدراجات";
}

function pro5en() {
    $("#pr5e").removeClass("secd")
    $("#pr5a").addClass("secd")
    document.getElementById("p5").innerHTML = "Redult";
}

function pro6ar() {
    $("#pr6e").addClass("secd")
    $("#pr6a").removeClass("secd")
    document.getElementById("p6").innerHTML = "وضع امتحان جديد";
}

function pro6en() {
    $("#pr6e").removeClass("secd")
    $("#pr6a").addClass("secd")
    document.getElementById("p6").innerHTML = "New Exam Structure";
}


$("#HyperLink4").click(function () {
    var page1 = "1";
    localStorage.setItem("page1", JSON.stringify(page1))
});
$("#HyperLink1").click(function () {
    var page1 = "2";
    localStorage.setItem("page1", JSON.stringify(page1))
});
$("#HyperLink2").click(function () {
    var page1 = "3";
    localStorage.setItem("page1", JSON.stringify(page1))
});
$("#HyperLink3").click(function () {
    var page1 = "4";
    localStorage.setItem("page1", JSON.stringify(page1))
});
$("#HyperLink6").click(function () {
    var page1 = "5";
    localStorage.setItem("page1", JSON.stringify(page1))
});
$("#HyperLink7").click(function () {
    var page1 = "6";
    localStorage.setItem("page1", JSON.stringify(page1))
});




function pageen() {
    var temp3 = localStorage.getItem("page1");
    page1 = JSON.parse(temp3);
    switch (page1) {
        case "1":
            pro1en();
            break;
        case "2":
            pro2en();
            break;
        case "3":
            pro3en();
            break;
        case "4":
            pro4en();
            break;
        case "5":
            pro5en();
            break;
        case "6":
            pro6en();
            break;
    }
}



function pagear() {
    var temp3 = localStorage.getItem("page1");
    page1 = JSON.parse(temp3);
    switch (page1) {
        case "1":
            pro1ar();
            break;
        case "2":
            pro2ar();
            break;
        case "3":
            pro3ar();
            break;
        case "4":
            pro4ar();
            break;
        case "5":
            pro5ar();
            break;
        case "6":
            pro6ar();
            break;
    }
}



var arr2;
function myFunction() {
    var temp2 = localStorage.getItem("arr2");
    arr2 = JSON.parse(temp2);
    if (arr2 == "ar") {
        arbic();
        pagear();
    }
    else {
        engish();
        pageen();
    }
}



$("#ar").click(function () {
    arbic();
    pagear();
    var arr2 = "ar";
    localStorage.setItem("arr2", JSON.stringify(arr2))
    $("#dirc").addClass("dirct")
});

$("#en").click(function () {
    engish();
    pageen();
    var arr2 = "en";
    localStorage.setItem("arr2", JSON.stringify(arr2))
    $("#dirc").removeClass("dirct")
});