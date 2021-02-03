var hammingWeight = function (n) {
    count = 0
    for (let digit = 0; digit < 31; digit++) {
        console.log(`n: ${n}`)
        if (n % 2 === 1) count++;
        n = Math.floor(n / 2);
    }
    return count;
};

console.log(hammingWeight(00000000000000000000000000001011))