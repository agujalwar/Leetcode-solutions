class Solution:
    def isPalindrome(self, x: int) -> bool:
        if x < 0:
            return False
        y = x
        rev_x = 0
        while y != 0: 
            rev_x = rev_x * 10 + y % 10
            y = y // 10
        return x == rev_x
        
        
        
        