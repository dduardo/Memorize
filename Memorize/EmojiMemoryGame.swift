//
//  EmojiMemoryGame.swift
//  Memorize
//
//  Created by Carlos Eduardo Santiago on 06/10/21.
//

import SwiftUI


class EmojiMemoryGame: ObservableObject {
    static let emojis = ["🚀", "✈️" ,"🚁", "🚘", "🛳", "🚗", "🚙", "🚔", "🚎","🏎","🚓","🚒","🛻","🚜", "🚍", "🚖", "🚂", "🛩", "🛸", "⛵️", "⛴", "🛺", "🚚", "🚐"]
    
    var cards: Array<MemoryGame<String>.Card> {
        model.cards
    }
    
    @Published private var model: MemoryGame<String> = createMemoryGame()
    
    static func createMemoryGame() -> MemoryGame<String> {
        MemoryGame<String>(numberOfPairsOfCards: 4) { pairIndex in EmojiMemoryGame.emojis[pairIndex] }
    }
    
    // MARK - Intent(s)
    
    func choose(_ card: MemoryGame<String>.Card) {
        model.choose(card)
    }
}
