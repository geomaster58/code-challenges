console.log("--")
var x : number = 0;
while (x < 10) {
  console.log(x);
  x++;
}

let players : number[] = [3, 20 ,34, 5, 1];
var length : number = 0;
console.log("--")
for (let x in players) {
  console.log(x);
  length++;
}
console.log("--")
console.log(length);
console.log("--")

for (let x of players) {
  console.log(x);
}
console.log("--")