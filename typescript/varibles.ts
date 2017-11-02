/*var fullName : string = "JJ Keeney";
let paidAccount : boolean = true;
const versionNumber : number = 1.3;



console.log(fullName);
console.log(paidAccount);
console.log(versionNumber);

fullName = "Me";
console.log(fullName);*/

function printName(f, l) {
  let greeting : string = "Hi there, ";
  console.log(greeting + f + " " + l);
}

printName("JJ", "Keeney");

var msg : string = "JJ";
console.log(`A long message to ${msg} filled with random text`);