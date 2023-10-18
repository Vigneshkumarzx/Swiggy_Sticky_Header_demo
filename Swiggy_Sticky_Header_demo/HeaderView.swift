//
//  HeaderView.swift
//  Swiggy_Sticky_Header_demo
//
//  Created by vignesh kumar c on 18/10/23.
//

import Foundation
import SwiftUI

struct HeaderView: View {
    
    var body: some View {
        VStack {
            HStack {
                Image("")
                    .frame(width: 2, height: 2)
                Text("Pure Veg")
                    .font(.title3)
                   // .fontWeight(Font.Weight.regular)
                    .foregroundColor(.green)
                    .padding(.top, 20)
                Spacer()
                Button {
                    
                } label: {
                    Image(systemName: "square.and.arrow.up")
                        .frame(width: 30, height: 30)
                        .foregroundColor(.black)
                        .padding(.top, 20)
                }
                
                Button {
                    
                } label: {
                    Image(systemName: "heart")
                        .frame(width: 30, height: 30)
                        .foregroundColor(.black)
                        .padding(.trailing, 20)
                        .padding(.top, 20)
                }

            }
            Text("Shree Anandhaas")
                .font(Font.title2)
                .fontWeight(Font.Weight.bold)
                .frame(maxWidth: .infinity, alignment: .leading)
                .padding(EdgeInsets(top: 12, leading: 12, bottom: 1, trailing: 0))
            HStack {
                Image("star")
                    .padding(EdgeInsets(top: 1, leading: 12, bottom: 1, trailing: 0))
                Text("(10K+ Ratings)")
                    .foregroundColor(Color(hex: "#353535"))
                VerticalDivider()
                Text("₹200 for two")
                    .foregroundColor(Color(hex: "#353535"))
                Spacer()
                
            }
            Text("South Indian, North Indian")
                .frame(maxWidth: .infinity, alignment: .leading)
                .foregroundColor(Color.gray)
                .padding(EdgeInsets(top: 0, leading: 12, bottom: 12, trailing: 0))
            Divider()
            
            HStack {
                Image("divider")
                    .frame(height: 70)
                    .padding(EdgeInsets(top: 0, leading: 12, bottom: 16, trailing: 5))
                HStack {
                    VStack {
                        HStack {
                            Text("OutLet")
                                .foregroundColor(Color(hex: "#353535"))
                                
                            Text("sundarapuram")
                                .foregroundColor(Color(hex: "#353535"))
                            Image("dropDown")
                                .padding(EdgeInsets(top: 0, leading: 0, bottom: 0, trailing: 5))
                        }
                        HStack {
                            Text("35 mins")
                                .foregroundColor(Color(hex: "#008352"))
                                .padding(.leading)
                            Text("sundarapuram")
                                .foregroundColor(Color(hex: "#353535"))
                            Image("dropDown")
                                .padding(EdgeInsets(top: 0, leading: 0, bottom: 0, trailing: 5))
                        }
                    }
                    Spacer()
                }
                .padding(.leading, 0)
                .padding(.bottom)
            }
            Divider()
            Text("Far (4.8 kms) | Additional delivery fee will apply")
                .font(Font.system(size: 15))
                .padding(EdgeInsets(top: 2, leading: 5, bottom: 10, trailing: 5))
        }
        .background(Color.white)
        .cornerRadius(18)
    }
}

