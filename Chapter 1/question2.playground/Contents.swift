import Foundation

/*
 * Problem Statement:
 * Check Permutation: Given two strings,write a method to decide if one is a permutation of the
 other.
 */

// O(nLogn)
func isPermutation(of input1:String, and input2:String) -> Bool{
    if input1.count != input2.count {
        return false
    }
    
    return input1.sorted() == input2.sorted()
}

// Solution 2
// O(N)
func isPermutationOptimized(of input1:String, and input2:String) -> Bool {
    
    if input1.count != input2.count {
        return false
    }
    var input1Dictionary = [Character:Int]()
    var input2Dictionary = [Character:Int]()
    
    for ch in input1 {
        if let value = input1Dictionary[ch] {
            input1Dictionary[ch] = value + 1
        }else {
            input1Dictionary[ch] = 1
        }
    }
    
    for ch in input2 {
        if let value = input2Dictionary[ch] {
            input2Dictionary[ch] = value + 1
        }else {
            input2Dictionary[ch] = 1
        }
    }
    
    var isPermutation = true
    
    for (key, value) in input1Dictionary {
        if let value2 = input2Dictionary[key] {
            if value != value2 {
                isPermutation = false
                break
            }
        }else {
            isPermutation = false
            break
        }
    }
    
    return isPermutation
}

isPermutation(of: "ABC", and: "CAB")
isPermutationOptimized(of: "AA", and: "BA")


