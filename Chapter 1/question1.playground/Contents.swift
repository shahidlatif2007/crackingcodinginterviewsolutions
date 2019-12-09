import Foundation

/*
   Problem Statement: Is Unique: Implement an algorithm to determine if a string has all unique characters. What if you cannot use additional data structures?
*/

// Brute Force
// O(N^2)
func isUniqueCharacterBruteForce(in input:String) -> Bool {
    for index in 0..<input.count {
        let ch = input[input.index(input.startIndex, offsetBy: index)]
        for subIndex in index+1..<input.count {
            let subCh = input[input.index(input.startIndex, offsetBy: subIndex)]
            if(ch == subCh) {
                return false
            }
            
        }
    }
    return true
}


// Optimized
// O(N)
func isUniqueCharacterOptimized(in input:String) -> Bool {
    var dictionary = [String:Character](minimumCapacity: 128)
    for index in 0..<input.count {
        let chIndex = input.index(input.startIndex, offsetBy: index)
        let ch = String(input[chIndex])
        if let _ = dictionary[ch] {
            return false
        }
        dictionary[ch] = Character(ch)
    }
    return true
}

isUniqueCharacterBruteForce(in: "abcdefghii")
isUniqueCharacterOptimized(in: "abcdefghii")


