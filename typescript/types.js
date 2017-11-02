// Boolean
var paidAccount = false;
// Number
var age = 33;
var taxRate = 7.5;
// String
var fullName = "JJ Keeney";
// Array
var ages = [33, 28, 11];
// Tuple
var player;
player = [3, "Baseball"];
// Enum
var Stage;
(function (Stage) {
    Stage[Stage["Approved"] = 0] = "Approved";
    Stage[Stage["Pending"] = 1] = "Pending";
    Stage[Stage["Rejected"] = 2] = "Rejected";
})(Stage || (Stage = {}));
;
var job = Stage.Pending;
// Any
var apiData = [123, 'Data', true];
// Void
function printOut(msg) {
    console.log(msg);
}
printOut("Hey yo.");
//# sourceMappingURL=types.js.map