function arbic() {
    $("li").addClass("lan")
    document.getElementById("HyperLink4").innerHTML = "أختر الامتحان";
    document.getElementById("HyperLink2").innerHTML = "النتيجة";
}

function engish() {
    $("li").removeClass("lan")
    document.getElementById("HyperLink4").innerHTML = "Chose Exam";
    document.getElementById("HyperLink2").innerHTML = "Student Result";
}


function stu1ar() {
    $("#st1e").addClass("secd")
    $("#st1a").removeClass("secd")
    document.getElementById("p1").innerHTML = "أختر الامتحان";
}

function stu1en() {
    $("#st1e").removeClass("secd")
    $("#st1a").addClass("secd")
    document.getElementById("p1").innerHTML = "Chose Exam";
}

function stu2ar() {
    $("#st2e").addClass("secd")
    $("#st2a").removeClass("secd")
    document.getElementById("p3").innerHTML = "النتيجة";
}

function stu2en() {
    $("#st2e").removeClass("secd")
    $("#st2a").addClass("secd")
    document.getElementById("p3").innerHTML = "Result";
}


$("#HyperLink4").click(function () {
    var page2 = "1";
    localStorage.setItem("page2", JSON.stringify(page2))
});
$("#HyperLink2").click(function () {
    var page2 = "2";
    localStorage.setItem("page2", JSON.stringify(page2))
});


function pageen() {
    var temp3 = localStorage.getItem("page2");
    page2 = JSON.parse(temp3);
    switch (page2) {
        case "1":
            stu1en();
            break;
        case "2":
            stu2en();
            break;
    }
}


function pagear() {
    var temp3 = localStorage.getItem("page2");
    page2 = JSON.parse(temp3);
    switch (page2) {
        case "1":
            stu1ar();
            break;
        case "2":
            stu2ar();
            break;
    }
}


var arr3;
function myFunction() {
    var temp2 = localStorage.getItem("arr3");
    arr3 = JSON.parse(temp2);
    if (arr3 == "ar") {
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
    var arr3 = "ar";
    localStorage.setItem("arr3", JSON.stringify(arr3))
});

$("#en").click(function () {
    engish();
    pageen();
    var arr3 = "en";
    localStorage.setItem("arr3", JSON.stringify(arr3))
});