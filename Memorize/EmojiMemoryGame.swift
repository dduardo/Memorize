//
//  EmojiMemoryGame.swift
//  Memorize
//
//  Created by Carlos Eduardo Santiago on 06/10/21.
//

import SwiftUI


class EmojiMemoryGame {
    static let emojis = ["🚀", "✈️" ,"🚁", "🚘", "🛳", "🚗", "🚙", "🚔", "🚎","🏎","🚓","🚒","🛻","🚜", "🚍", "🚖", "🚂", "🛩", "🛸", "⛵️", "⛴", "🛺", "🚚", "🚐"]
    
    var cards: Array<MemoryGame<String>.Card> {
        return model.cards
    }
    
    private var model: MemoryGame<String> = createMemoryGame()
    
    static func createMemoryGame() -> MemoryGame<String> {
        MemoryGame<String>(numberOfPairsOfCards: 10) { pairIndex in EmojiMemoryGame.emojis[pairIndex] }
    }
}
