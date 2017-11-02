// var names : string[] = ["me", "myself", "and I"];
// var counter : number = 0;
// (function(){
//   for (let name in names){
//     counter++;
//   }
// })(); 
// console.log(counter);
// var fullName : (first : string, last : string ) => string;
// fullName = function(first : string, last : string ) {
//   return first + " " + last;
// }
// (function(first : string, last : string ){
//   console.log(first + " " + last);
// })("JJ", "Keeney");
// Closures
// function nameFunc (name : string) {
//   var n : string = name;
//  return function() {
//    console.log(n);
//  }
// }
// var nameAgain = nameFunc("JJ Keeney");
// nameAgain();
function lineup() {
    var nowBatting = 1;
    return {
        nextBatter: function () { nowBatting++; },
        currentBatter: function () { return nowBatting; }
    };
}
var batters = lineup();
console.log(batters.currentBatter());
batters.nextBatter();
console.log(batters.currentBatter());
batters.nextBatter();
console.log(batters.currentBatter());
batters.nextBatter();
console.log(batters.currentBatter());
batters.nextBatter();
console.log(batters.currentBatter());
var pitchers = lineup();
console.log(pitchers.currentBatter());
//# sourceMappingURL=immediatefunc.js.map