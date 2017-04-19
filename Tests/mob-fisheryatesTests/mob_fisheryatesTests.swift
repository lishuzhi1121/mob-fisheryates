import XCTest
@testable import mob_fisheryates

class mob_fisheryatesTests: XCTestCase {
    func testShuffled() {
        var hand1 = [3,4,5,6,7,1,2,8,9,10,11,12,2,3,4,5,6,7,8,9,10,11,12]
        var count =  0
        
        for _ in 0..<1000 {
            let hand2 = hand1.shuffled()
            if hand1 != hand2 && hand1.count == hand2.count && hand1.reduce(0, +) == hand2.reduce(0, +) {
                count += 1
            }
            hand1 = hand2
        }
        
        let result = Double(count) / 1000.0
        
        XCTAssertEqualWithAccuracy(result, 1, accuracy: 0.02)
    }
}
