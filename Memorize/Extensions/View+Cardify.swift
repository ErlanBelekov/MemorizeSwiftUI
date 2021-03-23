//
//  View+Cardify.swift
//  Memorize
//
//  Created by Erlan on 3/23/21.
//

import SwiftUI

extension View {
    func cardify(isFaceUp: Bool) -> some View {
        self.modifier(Cardify(isFaceUp: isFaceUp))
    }
}
