// function mysteryScoping1() {
//     var x = 'out of block';
//     if (true) {
//         var x = 'in block';
//         console.log(x);
//     }
//     console.log(x);
// }

// // prints in block for both console.log(x)

// function mysteryScoping2() {
//     const x = 'out of block';
//     if (true) {
//         const x = 'in block';
//         console.log(x);
//     }
//     console.log(x);
// }

// // prints in block and then out of block

// function mysteryScoping3() {
//     const x = 'out of block';
//     if (true) {
//         var x = 'in block';
//         console.log(x);
//     }
//     console.log(x);
// }

// // doesn't print out anything, x is declared as a constant in the outter block and then 
// // it's trying to be declared as a variable in the inside. won't work

// function mysteryScoping4() {
//     let x = 'out of block';
//     if (true) {
//         let x = 'in block';
//         console.log(x);
//     }
//     console.log(x);
// }

// // prints in block and then out of block. Is different from var x for both because
// // var x printed out in block twice

// function mysteryScoping5() {
//     let x = 'out of block';
//     if (true) {
//         let x = 'in block';
//         console.log(x);
//     }
//     let x = 'out of block again';
//     console.log(x);
// }

// // raises error because x has already been declared

// mysteryScoping1();
// mysteryScoping2();
// mysteryScoping3();
// mysteryScoping4();
// mysteryScoping5();


// function madLib(verb, adjective, noun) {
//     console.log(`We shall ${verb.toUpperCase()} the ${adjective.toUpperCase()} ${noun.toUpperCase()}`);
// }

// madLib('make', 'best', 'guac');

// function isSubstring(sent, word) {
//     console.log(sent.includes(word))
// }

// isSubstring("time to program", "time")
// isSubstring("Jump for joy", "joys")

// function fizzBuzz(num_arr) {
//     let result = [];
//     for (let i = 0; i <= num_arr.length; i++) {
//         if (num_arr[i] % 3 === 0 || num_arr[i] % 5 === 0) {
//             result.push(num_arr[i])
//         }
//     }
//     console.log(result);
// }

// fizzBuzz([1,2,3,4,5,6,7,8,9])

function isPrime(num) {
    if (num < 2) {
        return false;
    }
    
    for (let i = 2; i < num; i++) {
        if (num % i === 0) {
            return false;
        }
    }
    return true;
}


// console.log(isPrime(2));
// console.log(isPrime(10));
// console.log(isPrime(15485863));
// console.log(isPrime(3548563));

function sumOfNPrimes(num) {
    let sum = 0;
    let count = 0;
    let i = 2;
    while (count < num) {
        if (isPrime(i)) {
            sum += i;
            count++;
        }
        i++;   
    }
    return sum;
}


// console.log(sumOfNPrimes(0));
// console.log(sumOfNPrimes(1));
// console.log(sumOfNPrimes(4));




