/* Given a word, you need to judge whether the usage of capitals in it is right or not.

We define the usage of capitals in a word to be right when one of the following cases holds:

All letters in this word are capitals, like "USA".
All letters in this word are not capitals, like "leetcode".
Only the first letter in this word is capital, like "Google".
Otherwise, we define that this word doesn't use capitals in a right way.
 
Example 1:

Input: "USA"
Output: True
 
Example 2:

Input: "FlaG"
Output: False */

class Solution {
    func detectCapitalUse(_ word: String) -> Bool {
        var lower = 0
        var upper = 0
        
        for char in word {
            if char.isLowercase {
                lower += 1
            } else {
                upper += 1
            }
        }
        
        if lower == 0 || upper == 0 { return true }
        return upper == 1 && word.first?.isUppercase == true
    }
}
