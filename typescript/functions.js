var fullName = function (first, last) {
    return first + " " + last;
};
console.log(fullName("JJ", "Keeney"));
console.log("--");
var gradeGenerator = function (grade) {
    if (grade < 60) {
        return "F";
    }
    else if (grade >= 60 && grade < 70) {
        return "D";
    }
    else if (grade >= 70 && grade < 80) {
        return "C";
    }
    else if (grade >= 80 && grade < 90) {
        return "B";
    }
    else {
        return "A";
    }
};
var list = [89, 67, 45, 90, 56, 78];
for (var _i = 0, list_1 = list; _i < list_1.length; _i++) {
    var x = list_1[_i];
    console.log(gradeGenerator(x));
    console.log("--");
}
console.log(gradeGenerator(45));
console.log("--");
console.log(gradeGenerator(70));
console.log("--");
console.log(gradeGenerator(90));
console.log("--");
var printAddress = function (street, streetTwo, state) {
    if (state === void 0) { state = "AZ"; }
    console.log(state);
    console.log(street);
    if (streetTwo) {
        console.log(streetTwo);
    }
};
printAddress("ABC Street");
console.log("--");
printAddress("ABC Street", "Suite 500");
console.log("--");
printAddress("ABC Street", "Suite 500", "UT");
console.log("--");
var lineUpCard = function (team) {
    var players = [];
    for (var _i = 1; _i < arguments.length; _i++) {
        players[_i - 1] = arguments[_i];
    }
    console.log("Team: " + team);
    console.log("--");
    for (var _a = 0, players_1 = players; _a < players_1.length; _a++) {
        var player = players_1[_a];
        console.log(player);
    }
};
lineUpCard("Astros", "Altuve", "Correa", "Bregman");
var otherFullName;
otherFullName = function (first, last) {
    return first + " " + last;
};
var thirdFullName = function (first, last) {
    return first + " " + last;
};
console.log(thirdFullName("JJ", "Keeney"));
//# sourceMappingURL=functions.js.map