//
//  CardFy.swift
//  Memorize
//
//  Created by Carlos Eduardo Santiago on 11/10/21.
//

import SwiftUI

struct CardFy: ViewModifier {
    var isFaceUp: Bool
    
    func body(content: Content) -> some View {
        ZStack {
            let shape = RoundedRectangle(cornerRadius: DrawingConstants.cornerRadius)
            if isFaceUp {
                shape.fill().foregroundColor(.white)
                shape.strokeBorder(lineWidth: DrawingConstants.lineWidth)
            } else {
                shape.fill()
            }
            
            content.opacity(isFaceUp ? 1 : 0)
        }
    }
    
    private func font(in size: CGSize) -> Font {
        Font.system(size: min(size.width, size.height) * DrawingConstants.fontScale)
    }
    
    private struct DrawingConstants {
        static let cornerRadius: CGFloat = 10
        static let lineWidth: CGFloat = 3
        static let fontScale: CGFloat = 0.7
    }
}

extension View {
    func cardFy(isFaceUp: Bool) -> some View {
        self.modifier(CardFy(isFaceUp: isFaceUp))
    }
}
