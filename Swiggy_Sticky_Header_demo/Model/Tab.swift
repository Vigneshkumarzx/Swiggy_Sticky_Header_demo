//
//  Tab.swift
//  Swiggy_Sticky_Header_demo
//
//  Created by vignesh kumar c on 18/10/23.
//

import SwiftUI

struct Tab: Identifiable {
    var id = UUID().uuidString
    var tab: String
    var foods: [Food]
}

var tabItems = [
    Tab(tab: "Pure veg", foods: foods.shuffled()),
    Tab(tab: "Picked For you", foods: foods.shuffled()),
    Tab(tab: "Starters", foods: foods.shuffled()),
    Tab(tab: "Breakfast", foods: foods.shuffled()),
]
