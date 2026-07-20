// Program to reverse a string using split(), reverse(), and join()

const readline = require("readline");

const rl = readline.createInterface({
    input: process.stdin,
    output: process.stdout
});

rl.question("Enter a string: ", function(str) {

    let reversedString = str.split("").reverse().join("");

    console.log("Original String: " + str);
    console.log("Reversed String: " + reversedString);

    rl.close();
});