//
//  FruitModel.swift
//  Fruits
//
//  Created by paigeshin on 2021/02/12.
//

import SwiftUI

struct Fruit: Identifiable {
    var id: UUID = UUID()
    var title: String
    var headline: String
    var image: String
    var gradientColors: [Color]
    var description: String
    var nutrition: [String]
}
