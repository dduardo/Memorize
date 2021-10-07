//
//  EmojiMemoryGameTests.swift
//  MemorizeTests
//
//  Created by Carlos Eduardo Santiago on 07/10/21.
//

import XCTest
@testable import Memorize

class EmojiMemoryGameTests: XCTestCase {

    func testCardsNotNIl() {
        let model = EmojiMemoryGame()
        
        XCTAssertNotNil(model.cards)
    }
}
