class Solution {
    
    // MARK:- Two sum problem
    class func twoSum(_ nums: [Int], _ target: Int) -> [Int] {
        for i in 0..<nums.count {
            for j in 0..<nums.count where j != i {
                if nums[i] + nums[j] == target {
                    return [i, j]
                }
            }
        }
        return []
    }
    
    // MARK:- Palindrome for integer
    // TODO:-
    class func isPalindrome(_ x: Int) -> Bool {
        
        return false
    }
    
    // MARK:- Duplicate zeros
    // TODO:- Refactor
    class func duplicateZero(_ x: inout [Int]) {
        var newArr: [Int] = []
        
        for i in 0..<x.count {
            
            if newArr.count == x.count {
                break
            }
            
            newArr.append(x[i])
            
            if newArr.count == x.count {
                break
            }
            
            if x[i] == 0 {
                newArr.append(0)
            }
        }
        
        x = newArr
    }
    
    // MARK:- Swaps an array
    class func swap( array: inout [Int], firstIndex: Int, secondIndex: Int) {
        let temp = array[firstIndex];
        array[firstIndex] = array[secondIndex]
        array[secondIndex] = temp
    }
    
    // MARK:- Finds index of minimum within bounds of array.
    
    class func indexOfMinimum(array: inout [Int], minIndex: inout Int) -> Int {
        var minValue = array[minIndex]
        var minIndex = minIndex
        
        for i in minIndex+1..<array.count {
            if array[i] < minValue {
                minIndex = i
                minValue = array[i]
            }
        }
        
        return minIndex
    }
    
    // MARK:- Index of maximum within bounds of array.
    
    class func indexOfMaximum(array: inout [Int], maxIndex: inout Int) -> Int {
        var maxValue = array[maxIndex]
        var maxIndex = maxIndex
        
        for i in maxIndex+1..<array.count {
            if array[i] > maxValue {
                maxIndex = i
                maxValue = array[i]
            }
        }
        
        return maxIndex
    }
    
    // MARK:- Selection Sort
    class func selectionSort(arr: inout [Int]) {
        for var i in 0..<arr.count {
            let index = indexOfMinimum(array: &arr, minIndex: &i)
            swap(array: &arr, firstIndex: i, secondIndex: index)
        }
    }
    
    class func selectionSortMax(arr: inout [Int]) {
        for var i in 0..<arr.count {
            let index = indexOfMaximum(array: &arr, maxIndex: &i)
            swap(array: &arr, firstIndex: i, secondIndex: index)
        }
    }
}

var array: [Int] = [99,20,-56,2,45,88,204]

Solution.selectionSort(arr: &array)

Solution.selectionSortMax(arr: &array)

print(array)


