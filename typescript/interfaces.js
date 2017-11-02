// interface User {
//   email : string;
//   firstName? : string;
//   lastName? : string;
// }
var myInvoice;
myInvoice = function (n, t) {
    console.log(n);
    console.log(t);
};
myInvoice("Google", 500);
var Admin = /** @class */ (function () {
    function Admin(email) {
        this.email = email;
        this.role = "Admin";
    }
    return Admin;
}());
function profile(user) {
    return "Welcome, " + user.email;
}
var joe = new Admin("joe@joe.com");
console.log(joe.role);
var Blog;
(function (Blog) {
    var Post = /** @class */ (function () {
        function Post(post) {
            this.title = post.title;
            this.body = post.body;
        }
        Post.prototype.printPost = function () {
            console.log(this.title + "\n" + this.body);
        };
        return Post;
    }());
    Blog.Post = Post;
})(Blog || (Blog = {}));
// Namespaces
var post = new Blog.Post({ title: "The Great Post", body: "Hey how are you all? Im doing so great Dontcha know. I love everything that is going on." });
console.log(post.title);
console.log(post.body);
post.printPost();
//# sourceMappingURL=interfaces.js.map