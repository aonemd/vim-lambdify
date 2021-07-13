var a = [
  "Hydrogen",
  "Helium",
  "Lithium",
  "Beryl­lium"
];

var a2 = a.map(function(s){ return s.length });

var a3 = a.map( s => s.length );
var a3 = a.map(() => 1 );
var a3 = a.map(_ => 2 );

function hello(msg = '') {
  console.log("Hello,", msg);
}

setTimeout((x, y) => {
  let z = x + y;
  console.log(z);
}, 1000)
