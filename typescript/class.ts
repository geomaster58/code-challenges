class Report {
  companyProfile : string;
  constructor(public name :string) {
    this.companyProfile = name;
  }
}

class Invoice extends Report {
  
  constructor(public  name : string, public total : number) {super(name);}

  printInvoice() {
    return this.name + ", " + this.total;
  }

}

class BillOfLading extends Report {
  
  constructor(public  name : string, public city : string, public state : string) {super(name);}

  printBol(){
    return this.name + ", " + this.city + ", " + this.state;
  }
}
var google = new Invoice("Google", 10000);
var yahoo = new Invoice("Yahoo", 78);
var woah = new Invoice("Woah", 5);
var heyYo = new Invoice("HeyYo", 4);
console.log(google.printInvoice());
console.log(yahoo.printInvoice());
console.log(woah.printInvoice());
console.log(heyYo.printInvoice());
var googlebol = new BillOfLading ("Google", "lehi", "UT");
var yahoobol = new BillOfLading ("Yahoo", "lehi", "UT");
console.log(googlebol.printBol());
console.log(yahoobol.printBol());