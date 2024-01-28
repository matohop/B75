
import XCTest
@testable import LeetCode

/**
 Given an integer array nums, return true if any value appears at least twice in the array, and return false if every element is distinct.
 
 Example 1:
 Input: nums = [1,2,3,1]
 Output: true
 
 Example 2:
 Input: nums = [1,2,3,4]
 Output: false
 
 Example 3:
 Input: nums = [1,1,1,3,3,4,3,2,4,2]
 Output: true
 */

final class ContainsDuplicate: XCTestCase {
    
    class Solution {
        func containsDuplicate(in nums: [Int]) -> Bool {
            var set = Set<Int>()
            for num in nums {
                if set.contains(num) {
                    return true
                }
                set.insert(num)
            }
            return false
        }
    }
    
    func testExample1() throws {
        let s = Solution()
        let nums = [1,2,3,1]

        XCTAssertEqual(s.containsDuplicate(in: nums), true)
    }
    
    func testExample2() throws {
        let s = Solution()
        let nums = [1,2,3,4]
        
        XCTAssertEqual(s.containsDuplicate(in: nums), false)
    }
    
    func testExample3() throws {
        let s = Solution()
        let nums = [1,1,1,3,3,4,3,2,4,2]
        
        XCTAssertEqual(s.containsDuplicate(in: nums), true)
    }
}
