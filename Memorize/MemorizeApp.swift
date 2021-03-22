//
//  MemorizeApp.swift
//  Memorize
//
//  Created by Erlan on 3/22/21.
//

import SwiftUI

@main
struct MemorizeApp: App {
    var emojiMemoryGame = EmojiMemoryGame()
    
    var body: some Scene {
        WindowGroup {
            EmojiMemoryGameView(viewModel: emojiMemoryGame)
        }
    }
}
