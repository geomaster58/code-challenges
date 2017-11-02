var Invoice = /** @class */ (function () {
    function Invoice(total) {
        this.total = total;
    }
    Invoice.prototype.printTotal = function () {
        console.log(this.total);
    };
    Invoice.prototype.printLater = function (time) {
        var _this = this;
        setTimeout(function () {
            console.log(_this.total);
        }, time);
    };
    return Invoice;
}());
var invoice = new Invoice(400);
invoice.printTotal();
invoice.printLater(7000);
//# sourceMappingURL=this.js.map