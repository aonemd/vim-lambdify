var a = [
  "Hydrogen",
  "Helium",
  "Lithium",
  "Beryl­lium"
];

var a2 = a.map(function(s){ return s.length });

var a3 = a.map((s: string) => s.length);

const hello = (msg: string = '') => {
  console.log("Hello,", msg);
}

function blue() {}

const a = () => {
}
const autoMsg = (): void => {
  console.log("Hello, world!");
}
