var fullName = (first, last) => {
  return first + " " + last;
}

console.log(fullName("JJ", "Keeney"));
console.log("--");

var gradeGenerator = (grade: number) : string  =>{
  if (grade < 60){
    return "F";
  }else if(grade >= 60 && grade < 70) {
    return "D";
  }else if(grade >= 70 && grade < 80){
    return "C";
  }else if(grade >= 80 && grade < 90){
    return "B";
  } else {
    return "A";
  }
 
}

var list : number[] = [89, 67, 45, 90, 56, 78];

for (var x of list ) {
  console.log(gradeGenerator(x));
  console.log("--");
}

console.log(gradeGenerator(45));
console.log("--");
console.log(gradeGenerator(70));
console.log("--");
console.log(gradeGenerator(90));
console.log("--");

var printAddress = (street: string, streetTwo?: string, state = "AZ") =>{
  console.log(state);
  console.log(street);
  if (streetTwo){
    console.log(streetTwo);
  }
}




printAddress("ABC Street");
console.log("--");
printAddress("ABC Street", "Suite 500");
console.log("--");
printAddress("ABC Street", "Suite 500", "UT");
console.log("--");

var lineUpCard = (team: string, ...players: string[]) =>{
  console.log("Team: " + team);
  console.log("--");
  for (let player of players) {
    console.log(player);
  }
}

lineUpCard("Astros", "Altuve", "Correa", "Bregman");



var otherFullName : (first : string, last : string) => string;

otherFullName = function (first: string, last: string) {
  return first + " " + last;
}

var thirdFullName : (first : string, last : string) => string = function (first: string, last: string) {
  return first + " " + last;
}
console.log(thirdFullName("JJ", "Keeney"));
















