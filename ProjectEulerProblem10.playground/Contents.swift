    //https://projecteuler.net/problem=10
    //:What is the sum of all primes below 2,000,000?
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
    
    var sum = 0
    while testingNumber < 2_000_000 {
        if isPrime(test: testingNumber) {
            //        print(primeNums)
            primeNums.append(testingNumber)
            sum += testingNumber
            
        }
        testingNumber += 1
    }
    
    print(sum)
    
    
