//
//  Array+Only.swift
//  Memorize
//
//  Created by Erlan on 3/22/21.
//

import Foundation

extension Array {
    var only: Element? {
        count == 1 ? first : nil
    }
}
