/* Given an array of integers that is already sorted in ascending order,
find two numbers such that they add up to a specific target number.

The function twoSum should return indices of the two numbers such that
they add up to the target, where index1 must be less than index2.

Note:

Your returned answers (both index1 and index2) are not zero-based.
You may assume that each input would have exactly one solution
and you may not use the same element twice.
 
Example:

Input: numbers = [2,7,11,15], target = 9
Output: [1,2]
 
Explanation: The sum of 2 and 7 is 9. Therefore index1 = 1, index2 = 2. */

class Solution {
    func twoSum(_ numbers: [Int], _ target: Int) -> [Int] {
        var start = 0
        var end = numbers.count - 1
        
        while start < end {
            let sum = numbers[start] + numbers[end]
            
            if sum == target {
                return [start + 1, end + 1]
            } else if sum > target {
                end -= 1
            } else {
                start += 1
            }
        }
        
        return []
    }
}
