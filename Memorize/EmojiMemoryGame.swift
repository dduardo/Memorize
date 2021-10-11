//
//  EmojiMemoryGame.swift
//  Memorize
//
//  Created by Carlos Eduardo Santiago on 06/10/21.
//

import SwiftUI


class EmojiMemoryGame: ObservableObject {
    typealias Card = MemoryGame<String>.Card
    
    var cards: Array<Card> {
        model.cards
    }
    
    private static let emojis = ["🚀", "✈️" ,"🚁", "🚘", "🛳", "🚗", "🚙", "🚔", "🚎","🏎","🚓","🚒","🛻","🚜", "🚍", "🚖", "🚂", "🛩", "🛸", "⛵️", "⛴", "🛺", "🚚", "🚐"]
    
    @Published private var model = createMemoryGame()
    
    private static func createMemoryGame() -> MemoryGame<String> {
        MemoryGame<String>(numberOfPairsOfCards: 8) { pairIndex in EmojiMemoryGame.emojis[pairIndex] }
    }
    
    // MARK - Intent(s)
    
    func choose(_ card: Card) {
        model.choose(card)
    }
}
