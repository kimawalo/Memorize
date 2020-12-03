//
//  Array+Only.swift
//  Memorize
//
//  Created by Jamshid Azizov on 27.11.2020.
//

import Foundation

extension Array {
    var only: Element? {
        count == 1 ? first : nil
    }
}
