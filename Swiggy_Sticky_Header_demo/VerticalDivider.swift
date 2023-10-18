//
//  VerticalDivider.swift
//  Swiggy_Sticky_Header_demo
//
//  Created by vignesh kumar c on 18/10/23.
//

import Foundation
import SwiftUI

struct VerticalDivider: View {
    var color: Color
    var width: CGFloat
    var height: CGFloat
    
    init(color: Color = .gray, width: CGFloat = 1, height: CGFloat = 20) {
        self.color = color
        self.width = width
        self.height = height
    }
    
    var body: some View {
        Rectangle()
            .fill(color)
            .frame(width: width, height: height)
    }
}

struct HorizontalDivider: View {
    var color: Color
    var width: CGFloat
    var height: CGFloat
    
    init(color: Color = Color(hex: "#F2F2F7"), width: CGFloat = 400, height: CGFloat = 20) {
        self.color = color
        self.width = width
        self.height = height
    }
    
    var body: some View {
        Rectangle()
            .fill(color)
            .frame(width: width, height: height)
    }
}
