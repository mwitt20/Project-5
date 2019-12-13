//:Given a non-empty array, return true if there is a place to split the array so that the sum of the numbers on one side is equal to the sum of the numbers on the other side.
var firstHalfSum = 0
var secondHalfSum = 0

func doesTheArrayHaveEqualSides(array: [Int]) -> Bool {
    if array.count % 2 == 0 {
        for i in array[0...(array.count / 2 - 1)] {
            firstHalfSum += i
        }
        for i in array[(array.count / 2)...array.count - 1] {
            secondHalfSum += i
        }
    }else{
        for i in array[0...(array.count / 2)] {
            firstHalfSum += 1
        }
        for i in array[(array.count / 2)...array.count - 1] {
            secondHalfSum += 1
        }
    }
    if firstHalfSum == secondHalfSum {
        return true
    }
    return false
}
print(doesTheArrayHaveEqualSides(array: [1,2,2,1,3]))

//:Return an array that contains exactly the same numbers as the given array, but rearranged so that every 3 is immediately followed by a 4. Do not move the 3's, but every other number may move. The array contains the same number of 3's and 4's, every 3 has a number after it that is not a 3, and a 3 appears in the array before any 4.
var array = [1,2,3,5,4,4,3,2,3,2,4]
var newArray = array.filter { $0 != 4} //https://iswift.org/cookbook/remove-item-from-array-by-value -remove all of the '4's

func fix34(for: [Int]) {
    for i in newArray {
        if newArray[i] == 3 {
            newArray.insert(4, at: i + 1)
        }
    }
}
fix34(for: newArray)
print(newArray)


