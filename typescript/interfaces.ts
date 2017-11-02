// interface User {
//   email : string;
//   firstName? : string;
//   lastName? : string;
// }

// function profile(user: User) : string{
//   return `Welcome, ${user.email}`;
// }

// var realUser = {
//   email: "test@test.com"
// };

// console.log(profile(realUser));

interface InvoiceFunc {
  (name : string, total : number) : void;
}

let myInvoice : InvoiceFunc;

myInvoice = function(n, t) {
  console.log(n);
  console.log(t);
}

myInvoice("Google", 500);

interface User {
  email: string,
  firstName?: string,
  lastName?: string
}

class Admin  {
  role : string;
  constructor(public email : string) {
    this.role = "Admin";
  }
}

function profile(user: User) : string{
  return `Welcome, ${user.email}`;
}

var joe = new Admin("joe@joe.com");

console.log(joe.role);
namespace Blog {
 export interface IPost {
   title:string;
   body:string;
 }

 export class Post implements IPost{
   title:string;
   body:string;
   constructor(post: IPost) {
     this.title = post.title;
     this.body = post.body;
   }
    printPost(){
     console.log(this.title + "\n" +this.body);
   }
  }
}
// Namespaces




var post = new Blog.Post({title: "The Great Post", body: "Hey how are you all? Im doing so great Dontcha know. I love everything that is going on."});
console.log(post.title);
console.log(post.body);
post.printPost();

























