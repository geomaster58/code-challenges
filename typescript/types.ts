// Boolean
 let paidAccount : boolean = false;

// Number
  let age : number = 33;
  var taxRate : number = 7.5;

// String
  var fullName : string = "JJ Keeney";

// Array
  var ages : number[] = [33, 28, 11];

// Tuple
  let player : [number, string];
  player = [3, "Baseball"];

// Enum
  enum Stage {Approved, Pending, Rejected};
  let job : Stage = Stage.Pending;

// Any
  var apiData : any[] = [123, 'Data', true];

// Void
  function printOut(msg: string) : void {
    console.log(msg);
  }

  printOut("Hey yo.");