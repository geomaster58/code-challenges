// class Post {
//   @processOne()
//   @processTwo()
//   someFunction() {}
// }

// function processOne() {
//   console.log("ProcessOne has run");
//   return function (target, propertyKey : string, descriptor : PropertyDescriptor){
//     console.log("ProcessOne has been called");
//   }
// }

// function processTwo() {
//   console.log("ProcessTwo has run");
//   return function (target, propertyKey : string, descriptor : PropertyDescriptor){
//     console.log("ProcessTwo has been called");
//   }
// }

// class RealPost {
//   @processOne()
//   someFunction() {}
// }

@detailedLog("billing")
class AccountsPayable {
  constructor(){}

  @admin
  deleteAccount() {
    console.log("Deleting Account")
  }
}

// @detailedLog("warehouse")
// class ProductManager {
//   constructor(){}
// }

function detailedLog(dashboard: string) {
  if(dashboard == "billing") {
    console.log("Working in the billing department");
    return function (target : Object) {};
  }else{
    console.log("RED ALERT!!!!!");
    return function (target : Object) {};
  }
}



function admin(target : Object, propertyKey : string, descriptor : TypedPropertyDescriptor<any>) : any {
  console.log("Doing admin check");
  return descriptor;
}

var post = new AccountsPayable;
post.deleteAccount();