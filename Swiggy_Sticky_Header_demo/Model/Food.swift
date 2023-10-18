//
//  Food.swift
//  Swiggy_Sticky_Header_demo
//
//  Created by vignesh kumar c on 18/10/23.
//

import Foundation
import SwiftUI


struct Food: Identifiable {
    var id = UUID().uuidString
    var title: String
    var price: String
    var image: String
    var rating: String
}

var foods = [
Food(title: "idly", price: "₹50", image: "idly", rating: "4.6 (137)"),
Food(title: "Vegitable Biriyani", price: "140", image: "vegBiriyani",  rating: "4.8 (67)"),
Food(title: "Roast", price: "₹90", image: "roast",  rating: "3.6 (197)"),
Food(title: "Pongal", price: "₹90", image: "pongal",  rating: "4.6 (179)"),
Food(title: "Kotthu Parotta", price: "₹120", image: "kothu",  rating: "4.0 (200)"),
Food(title: "Panner 65", price: "₹190", image: "panner65",  rating: "4.5 (200)"),
Food(title: "mushroom chilli", price: "₹150", image: "mushroom",  rating: "4.3 (107)"),
Food(title: "Veg Fried Rice ", price: "₹120", image: "friedRice",  rating: "4.6 (137)"),
]
