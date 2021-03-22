//
//  Grid.swift
//  Memorize
//
//  Created by Erlan on 3/22/21.
//

import SwiftUI

struct Grid<Item, ItemView>: View where Item: Identifiable, ItemView: View {
    var items: [Item]
    var viewForItem: (Item) -> ItemView
    
    init(_ items: [Item], viewForItem: @escaping (Item) -> ItemView) {
        self.items = items
        self.viewForItem = viewForItem
    }
    
    var body: some View {
        GeometryReader { geometry in
            ForEach(items) { item in
                body(for: item, layout: GridLayout(itemCount: self.items.count, in: geometry.size))
            }
        }
    }
    
    func body(for item: Item, layout: GridLayout) -> some View {
        let index = items.firstIndex(matching: item)!
        return self.viewForItem(item)
            .frame(width: layout.itemSize.width, height: layout.itemSize.height)
            .position(layout.location(ofItemAt: index))
    }
}
