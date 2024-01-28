
import XCTest
@testable import LeetCode

/** 
 Given an integer array nums, find the subarray with the largest sum, and return its sum.
 
 Example 1:
 Input: nums = [-2,1,-3,4,-1,2,1,-5,4]
 Output: 6
 Explanation: The subarray [4,-1,2,1] has the largest sum 6.
 
 Example 2:
 Input: nums = [1]
 Output: 1
 Explanation: The subarray [1] has the largest sum 1.
 
 Example 3:
 Input: nums = [5,4,-1,7,8]
 Output: 23
 Explanation: The subarray [5,4,-1,7,8] has the largest sum 23.
 */

final class MaximumSubarray: XCTestCase {
    
    class Solution {
        func maximumSubarray(in nums: [Int]) -> Int {
            var sum = nums[0]
            var curr = nums[0]
            for i in 1..<nums.count {
                curr = max(curr + nums[i], nums[i])
                sum = max(curr, sum)
            }
            return sum
        }
    }
    
    func testExample1() throws {
        let s = Solution()
        let nums = [-2,1,-3,4,-1,2,1,-5,4]
        
        XCTAssertEqual(s.maximumSubarray(in: nums), 6)
    }
    
    func testExample2() throws {
        let s = Solution()
        let nums = [1]
        
        XCTAssertEqual(s.maximumSubarray(in: nums), 1)
    }
    
    func testExample3() throws {
        let s = Solution()
        let nums = [5,4,-1,7,8]
        
        XCTAssertEqual(s.maximumSubarray(in: nums), 23)
    }
}
