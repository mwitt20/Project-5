    //:What is the 10,001st prime number?
    //:Ryan talked me through this problem and helped me understand it
    var primeNums: [Int] = [Int]()
    var testingNumber = 2

    func isPrime(test: Int) -> Bool {
        for i in 0..<primeNums.count {
            if test % primeNums[i] == 0 {
                return false
            }
        }
        return true
    }

    while primeNums.count < 10_001 {
        if isPrime(test: testingNumber) {
    //        print(primeNums)
            primeNums.append(testingNumber)
            
        }
        testingNumber += 1
    }

    print(primeNums.last!)


