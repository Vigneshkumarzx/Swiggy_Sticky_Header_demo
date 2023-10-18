//
//  CardView.swift
//  Swiggy_Sticky_Header_demo
//
//  Created by vignesh kumar c on 18/10/23.
//

import SwiftUI

struct CardView: View {
    var food: Food
    var body: some View {
        HStack {
            VStack(alignment: .leading, spacing: 10, content: {
                Text(food.title)
                    .font(.title2)
                    .fontWeight(.bold)
                Text(food.price)
                    .font(.title2)
                    .fontWeight(.bold)
                HStack {
                    Image(systemName: "star.fill")
                        .font(.caption)
                    Text(food.rating)
                        .font(.title3)
                        .fontWeight(.semibold)
                }
            })
            Spacer(minLength: 10)
            Image(food.image)
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(width: 130, height: 130)
                .cornerRadius(10)
        }
        .padding(.horizontal)
    }
}

#Preview {
    ContentView()
}
