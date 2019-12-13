//:Return the number of even ints in the given array.
var array = [1,2,3,4,5,6,7,8]
var count = 0

func numberOfEvens(for: [Int]) -> Int {
    for i in array {
        if i % 2 == 0 {
            count += 1
        }
    }
    return count
}
print("\(numberOfEvens(for: array)) even ints")


//:Given an array of ints, return true if every 2 that appears in the array is next to another 2.

var nums = [3,4,4,2,2,2,5]

func areTheTwosPaired(for: [Int]) -> Bool{
    for num in nums {
        if nums[num] == 2 {
        if nums[num-1] != 2 && nums[num+1] != 2{
    
        return false
            }
        }
    }
    return true
}
print(areTheTwosPaired(for: nums))

// I fixed a formatting error in the code. - Patrick
