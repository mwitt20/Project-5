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
            firstHalfSum += i
        }
        for i in array[(array.count / 2)...array.count - 1] {
            secondHalfSum += i
        }
    }
    if firstHalfSum == secondHalfSum {
        return true
    }
    return false
}
print(doesTheArrayHaveEqualSides(array: [1,2,2,1,3]))

//:Return an array that contains exactly the same numbers as the given array, but rearranged so that every 3 is immediately followed by a 4. Do not move the 3's, but every other number may move. The array contains the same number of 3's and 4's, every 3 has a number after it that is not a 3, and a 3 appears in the array before any 4.
var array = [1,2,3,5,4,4,3]

func remove4(for: [Int]) -> [Int]{
    for i in array {
        if array[i] == 4 {
            array.remove(at: i)
        }
    }
    return array
}

func add4(for: [Int]) -> [Int] {
    for i in array {
        if array[i] == 3 {
            array.insert(4, at: i + 1)
        }
    }
    return array
}
remove4(for: array)
add4(for: array)
print(array)


