/*:

# Remove Duplicates from Sorted Array

Given a sorted array nums, remove the duplicates in-place such that each element appear only once and return the new length.

Do not allocate extra space for another array, you must do this by modifying the input array in-place with O(1) extra memory.

```
Given nums = [1,1,2],

Your function should return length = 2, with the first two elements of nums being 1 and 2 respectively.

It doesn't matter what you leave beyond the returned length.
```
```
Given nums = [0,0,1,1,1,2,2,3,3,4],

Your function should return length = 5, with the first five elements of nums being modified to 0, 1, 2, 3, and 4 respectively.

It doesn't matter what values are set beyond the returned length.
```
*/

class Solution {

	/// Time complexity: O(n), where n - length of `nums` array.
	///  Space: O(1)
    func removeDuplicates(_ nums: inout [Int]) -> Int {
		guard !nums.isEmpty else { return 0 }

		var position = 0
		for idx in 0..<nums.count {
			if nums[idx] != nums[position] {
				position += 1
				nums[position] = nums[idx]
			}
		}
		return position + 1
    }
}

let solver = Solution()
var arr1 = [0,0,1,1,2,2,3,3,4,4]
solver.removeDuplicates(&arr1)
arr1

var arr2 = [0,0,0,0]
solver.removeDuplicates(&arr2)
arr2

var arr3 = [Int]()
solver.removeDuplicates(&arr3)
arr3
