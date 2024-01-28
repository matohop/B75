
import XCTest
@testable import LeetCode

/**
 Given an integer array nums, find a subarray that has the largest product, and return the product.
 The test cases are generated so that the answer will fit in a 32-bit integer.
 
 Example 1:
 Input: nums = [2,3,-2,4]
 Output: 6
 Explanation: [2,3] has the largest product 6.

 Example 2:
 Input: nums = [-2,0,-1]
 Output: 0
 Explanation: The result cannot be 2, because [-2,-1] is not a subarray.
 */

final class MaxProductSubarray: XCTestCase {
    
    class Solution {
        func maxProductSubarray(in nums: [Int]) -> Int {
            var product = nums[0]
            var curr = nums[0]
            for i in 1..<nums.count {
                curr = max(curr * nums[i], nums[i])
                product = max(product, curr)
            }
            return product
        }
    }
    
    func testExample1() throws {
        let s = Solution()
        let nums = [2,3,-2,4]
        
        XCTAssertEqual(s.maxProductSubarray(in: nums), 6)
    }
    
    func testExample2() throws {
        let s = Solution()
        let nums = [-2,0,-1]
        
        XCTAssertEqual(s.maxProductSubarray(in: nums), 0)
    }
}
