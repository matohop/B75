
import XCTest
@testable import LeetCode

/**
 Given an array of integers nums and an integer target, return indices of the two numbers such that they add up to target.
 
 You may assume that each input would have exactly one solution, and you may not use the same element twice.
 
 You can return the answer in any order.
 
 Example 1:
 Input: nums = [2,7,11,15] , target = 9
 Output: [0,1]
 Explanation: Because nums[0] + nums[1] == 9, we return [0, 1].
 
 Example 2:
 Input: nums = [3,2,4], target = 6
 Output: [1,2]
 
 Example 3:

 Input: nums = [3,3], target = 6
 Output: [0,1]
 */

final class TwoSum: XCTestCase {
    
    class Solution {
        func twoSum(_ numbers: [Int],_ target: Int) -> [Int] {
            var map = [Int:Int]()

            for (i, num) in numbers.enumerated() {
                if target <= num { continue }
                let diff = target - num
                if let diffIndex = map[diff] {
                    return [diffIndex, i]
                }
                map[num] = i
            }
            return []
        }
    }
    
    func testExample1() throws {
        let s = Solution()
        let nums = [2,7,11,15]
        let tar = 9
        
        XCTAssertEqual(s.twoSum(nums, tar), [0, 1])
    }
    
    func testExample2() throws {
        let s = Solution()
        let nums = [3,2,4]
        let tar = 6
        
        XCTAssertEqual(s.twoSum(nums, tar), [1, 2])
    }
    
    func testExample3() throws {
        let s = Solution()
        let nums = [3,3]
        let tar = 6
        
        XCTAssertEqual(s.twoSum(nums, tar), [0, 1])
    }
    
    func testExample4() throws {
        let s = Solution()
        let nums = [1,2,3,4,5,6]
        let tar = 0
        
        XCTAssertEqual(s.twoSum(nums, tar), [])
    }
}
