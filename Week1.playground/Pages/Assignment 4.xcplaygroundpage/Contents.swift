// Assignment 4
// 1.
let lottoNumbers = [10, 9, 8, 7, 6, 5]

for numbers in lottoNumbers[3...5] {
    print (numbers)
}

// 2.



// 3.
var number = 5
while number <= 10 {
    print (number)
    number += 1
}

var numberIncreasing = 10
while numberIncreasing >= 6 {
    print(numberIncreasing)
    numberIncreasing -= 2
}

// 4.
var numberQ = 5
repeat {
    print (numberQ)
    numberQ = numberQ + 1
} while numberQ <= 10

var numberDecreasing = 10
repeat {
    print (numberDecreasing)
    numberDecreasing -= 2
} while numberDecreasing >= 6


// 5.
var isRaining = false
if isRaining {
    print ("It’s raining, I don’t want to work today.")
} else {
    print ("Although it’s sunny, I still don’t want to work today.")
}

// 6.
var jobLevel = 5
if jobLevel == 1 {
    print ("Member")
} else if jobLevel == 2 {
    print ("Team Leader")
} else if jobLevel == 3 {
    print ("Manager")
} else if jobLevel == 4 {
    print ("Director")
} else {
    print ("We don't have this job")
}
