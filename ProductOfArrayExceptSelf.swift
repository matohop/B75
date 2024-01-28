
import XCTest
@testable import LeetCode

/**
 Given an integer array nums, return an array answer such that answer[i] is equal to the product of all the elements of nums except nums[i].
 
 The product of any prefix or suffix of nums is guaranteed to fit in a 32-bit integer.

 You must write an algorithm that runs in O(n) time and without using the division operation.

 Example 1:
 Input: nums = [1,2,3,4]
 Output: [24,12,8,6]
 
 Example 2:
 Input: nums = [-1,1,0,-3,3]
 Output: [0,0,9,0,0]
 */

final class ProductOfArrayExceptSelf: XCTestCase {
    
    class Solution {
        func productOfArrayExceptSelf(for nums: [Int]) -> [Int] {
            var answer = Array(repeating: 1, count: nums.count)
            var pre = 1
            var post = 1
            
            for i in 0..<nums.count {
                answer[i] = pre
                pre = nums[i] * pre
            }
            
            for i in (0..<nums.count).reversed() {
                answer[i] = answer[i] * post
                post = post * nums[i]
            }
            return answer
        }
    }
    
    func testExample1() throws {
        let s = Solution()
        let nums = [1,2,3,4]
        
        XCTAssertEqual(s.productOfArrayExceptSelf(for: nums), [24,12,8,6])
    }
    
    func testExample2() throws {
        let s = Solution()
        let nums = [-1,1,0,-3,3]
        
        XCTAssertEqual(s.productOfArrayExceptSelf(for: nums), [0,0,9,0,0])
    }
}
