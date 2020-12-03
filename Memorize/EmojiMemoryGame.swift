//  EmojiMemoryGame.swift
//  Memorize
//  Created by Jamshid Azizov on 24.11.2020.

//  ViewModel

import SwiftUI

class EmojiMemoryGame: ObservableObject {
    @Published private var memoryGameModel: MemoryGame<String> = EmojiMemoryGame.createMemoryGame()
    
    static func createMemoryGame() -> MemoryGame<String> {
        let emojis = ["💀","👻","🎃","🕷", "🕸","🧛🏻‍♂️", "🐺", "👹", "😈", "🦇", "🤡"]
        let randomInt2to5 = Int.random(in: 2...5)
        
        return MemoryGame<String>(numberOfPairsOfCards: randomInt2to5) { pairIndex in
            return emojis[pairIndex]
        }
    }
    
    // MARK: - Access to the model
    var cards: Array<MemoryGame<String>.Card> {
        memoryGameModel.cards//.shuffled()
    }
    
    // MARK: - intent(s)
    func choose(card: MemoryGame<String>.Card) {
        memoryGameModel.choose(card: card)
    }
}


