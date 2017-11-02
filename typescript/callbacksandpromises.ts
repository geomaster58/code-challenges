// var dbQuery = function() : void {
//   console.log("Querying Database...")
//   setTimeout(() => {
//     console.log("Query Results");
//   }, 4000)
// }

// function loadPage(q : () => void) {
//   console.log("Header Load");
//   q();
//   console.log("Sidebar Load");
//   console.log("Footer Load");
//   console.log("Styles Load");
//   console.log("Crazy Text Load");
// }

// loadPage(dbQuery);

// Promises
// Start Mowing -> Pending
// Complete Mowing -> Resolve
// Did not complete mowing -> Reject

"use strict";

let performUpload = function(imgStatus : string) : Promise<{imgStatus : string}> {
  return new Promise((resolve) => {
    console.log(`Status: ${imgStatus}`);
    setTimeout(() => {
      resolve({imgStatus: imgStatus});
    }, 1000);
  });
}

var upload;
var compress;
var transfer;

performUpload("Uploading...") 
.then((res) => {
  upload = res;
  return performUpload("Compressing...");
})

.then((res) => {
  compress = res;
  return performUpload("Transferring...");
})

.then((res) => {
  transfer = res;
  return performUpload("Upload Complete");
});

