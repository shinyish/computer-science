function onClick() {
   const output = document.getElementById("output");
   const input = document.getElementById("input").value;

   output.innerHTML = input;
   console.log("Set output to " + input)
};
