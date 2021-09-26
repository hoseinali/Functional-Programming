import UIKit

// We want to find odd number from a  integer array 

let numbers = [12, 13 , 17, 18 ,21, 23]


// imperative programming

var oddNumbers:[Int] = []

for number in numbers {
    
    if number/2 != 0 {
        oddNumbers.append(number)
    }
}

print(oddNumbers)


// functional Programming

extension Array where Element == Int {
    func filterOddNumber () -> [Int] {
        var oddNumbers:[Int] = []
        for number in self {
            if number/2 != 0 {
                oddNumbers.append(number)
            }
        }
        return oddNumbers
    }
}

let oddNumbersNew = numbers.filterOddNumber
print(oddNumbers)
