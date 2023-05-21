class Solution:
    def sortedSquares(self, nums: List[int]) -> List[int]:
        outputArray=[None]*len(nums)
        for i in range(len(nums)):
            outputArray[i]=nums[i]*nums[i]
        outputArray.sort()
        return outputArray