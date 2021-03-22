//
//  Array+Identifiable.swift
//  Memorize
//
//  Created by Erlan on 3/22/21.
//

import Foundation

extension Array where Element: Identifiable {
    func firstIndex(matching: Element) -> Int? {
        for idx in 0..<self.count {
            if self[idx].id == matching.id {
                return idx
            }
        }
        
        return nil
    }
}
