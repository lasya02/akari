//
//  Data.swift
//  akari
//
//  Created by Lasya Kambhampati on 7/31/23.
//

import SwiftUI

enum Data {
    static let PUZZLE1 = [
        [6, 6, 6, 6, 1, 6, 6],
        [6, 6, 6, 5, 6, 6, 6],
        [0, 6, 6, 6, 6, 6, 6],
        [6, 5, 6, 6, 6, 4, 6],
        [6, 6, 6, 6, 6, 6, 5],
        [6, 6, 6, 2, 6, 6, 6],
        [6, 6, 5, 6, 6, 6, 6],
      ]
    static let PUZZLE2 = [
        [6, 6, 6],
        [6, 5, 6],
        [1, 6, 6],
      ]
}

enum Types {
    case Corridor
    case Wall
    case Clue
}

