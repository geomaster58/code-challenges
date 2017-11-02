// class Post {
//   @processOne()
//   @processTwo()
//   someFunction() {}
// }
var __decorate = (this && this.__decorate) || function (decorators, target, key, desc) {
    var c = arguments.length, r = c < 3 ? target : desc === null ? desc = Object.getOwnPropertyDescriptor(target, key) : desc, d;
    if (typeof Reflect === "object" && typeof Reflect.decorate === "function") r = Reflect.decorate(decorators, target, key, desc);
    else for (var i = decorators.length - 1; i >= 0; i--) if (d = decorators[i]) r = (c < 3 ? d(r) : c > 3 ? d(target, key, r) : d(target, key)) || r;
    return c > 3 && r && Object.defineProperty(target, key, r), r;
};
var __metadata = (this && this.__metadata) || function (k, v) {
    if (typeof Reflect === "object" && typeof Reflect.metadata === "function") return Reflect.metadata(k, v);
};
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
var AccountsPayable = /** @class */ (function () {
    function AccountsPayable() {
    }
    AccountsPayable.prototype.deleteAccount = function () {
        setTimeout(function () { }, 4000);
        console.log("Deleting Account");
    };
    __decorate([
        admin,
        __metadata("design:type", Function),
        __metadata("design:paramtypes", []),
        __metadata("design:returntype", void 0)
    ], AccountsPayable.prototype, "deleteAccount", null);
    AccountsPayable = __decorate([
        detailedLog("billing"),
        __metadata("design:paramtypes", [])
    ], AccountsPayable);
    return AccountsPayable;
}());
// @detailedLog("warehouse")
// class ProductManager {
//   constructor(){}
// }
function detailedLog(dashboard) {
    if (dashboard == "billing") {
        console.log("Working in the billing department");
        return function (target) { };
    }
    else {
        console.log("RED ALERT!!!!!");
        return function (target) { };
    }
}
function admin(target, propertyKey, descriptor) {
    console.log("Doing admin check");
    return descriptor;
}
var post = new AccountsPayable;
post.deleteAccount();
//# sourceMappingURL=decorators.js.map