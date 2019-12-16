//https://codingbat.com/prob/p185685
//:Given an array of ints, return true if 6 appears as either the first or last element in the array. The array will be length 1 or more.
func firstOrLast6(array: [Int]) -> Bool {
    if array[0] == 6 || array[array.count - 1] == 6 {
        return true
    }
    return false
}

let test1 = firstOrLast6(array: [1,2,3])
print(test1)

let test2 = firstOrLast6(array: [6,2])
print(test2)

let test3 = firstOrLast6(array: [1,2,3,5,7,8,6])
print(test3)

let test4 = firstOrLast6(array: [1,6,3])
print(test4)

//https://codingbat.com/prob/p118044
//:Given an array of ints, swap the first and last elements in the array. Return the modified array. The array length will be at least 1.
var array = [1,2,3,4,5]

func swapEnds(for: [Int]) {
    array.append(array.first!)
    array.insert(array[array.count - 2], at: 0)
    array.remove(at: 1)
    array.remove(at: array.count - 2)
}

swapEnds(for: array)
print(array)

