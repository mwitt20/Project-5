//website: https://www.weheartswift.com/arrays/

//Print the maximum value from listOfNumbers.
var listOfNumbers = [1, 2, 3, 10, 100]

var maximum = 0

for i in listOfNumbers {
    if maximum < i {
        maximum = i
    }
}
print(maximum)

//Print all the odd numbers from listOfNumbers2.
var listOfNumbers2 = [1, 2, 3, 10, 100]

for i in listOfNumbers2 {
    if i % 2 != 0 {
    print(i)
    }
}

//Print the sum of all the numbers from listOfNumbers3.
var listOfNumbers3 = [1, 2, 3, 10, 100]

var sum = 0

for i in listOfNumbers3 {
    sum += i
}
print(sum)
