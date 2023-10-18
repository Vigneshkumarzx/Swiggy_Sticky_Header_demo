//
//  ContentView.swift
//  Swiggy_Sticky_Header_demo
//
//  Created by vignesh kumar c on 18/10/23.
//

import SwiftUI

struct ContentView: View {
    @StateObject var homeData = HomeViewModel()
    @State private var searchText = "search for dishes"
    @State var tabBarOffset: CGFloat = 0
    @State var topHeaderOffset: CGFloat = 0
    
    var body: some View {
        ScrollView {
            LazyVStack(alignment: .leading, spacing: 15, pinnedViews: [.sectionHeaders]) {
                
                GeometryReader { reader -> AnyView in
                    
                    let offSet = reader.frame(in: .global).minY
                    
                    if -offSet >= 0 {
                        DispatchQueue.main.async {
                            self.homeData.offSet = -offSet
                        }
                    }
                    
                    return AnyView(
                        HeaderView()
                            .frame(width: UIScreen.main.bounds.width, height: 250 + (offSet > 0 ? offSet : 0))
                            .cornerRadius(2)
                            .offset(y: (offSet > 0 ? -offSet : 0))
                    )
                    
                }
                .frame(height: 250)
                .padding(.bottom, 30)
                    
                Section(header: SearchBar(searchText: $searchText)) {
                    ForEach(tabItems) { tab in
                        
                        VStack(alignment: .leading, spacing: 15, content: {
                            Text(tab.tab)
                                .font(.title3)
                                .fontWeight(.bold)
                            ForEach(tab.foods) { food in
                                CardView(food: food)
                            }
                            Divider()
                                .padding(.top)
                        })
                    }
                }
            }
//            VStack {
//                HeaderView()
//                    .background(Color.gray.opacity(0.2))
//                    .cornerRadius(20, corners: [.bottomLeft, .bottomRight])
//                    .frame(height: 250)
//                Spacer(minLength: 70)
//                GeometryReader { proxy -> AnyView in
//                    let minY = proxy.frame(in: .global).minY
//                    let offSet = minY - topHeaderOffset
//                    print(offSet)
//                    return AnyView(
//                        SearchBar(searchText: $searchText)
//                            .padding()
//                            .background(Color.secondary.opacity(0.2))
//                            .cornerRadius(10)
//                            .offset(y: offSet < 0 ? -offSet + 50 : 0)
//                            .padding(EdgeInsets(top: 16, leading: 16, bottom: 0, trailing: 16))
//                    )
//                    
//                }
//                .frame(height: 30)
//                .zIndex(4)
//             
//            }
        }
        .overlay(
            Color.white
                .frame(height: UIApplication.shared.windows.first?.safeAreaInsets.top)
                .ignoresSafeArea(.all, edges: .top)
                .opacity(homeData.offSet > 250 ? 1 : 0)
            ,alignment: .top
        )
        .environmentObject(homeData)
    }
}

#Preview {
    ContentView()
}

struct SearchBar: View {
    @Binding var searchText: String
    @EnvironmentObject var homeData : HomeViewModel

    var body: some View {
        HStack(spacing: 20) {
            TextField("Search", text: $searchText)
                .padding(.vertical, 8)
                .padding(.leading, 8)
                .foregroundColor(.primary)
                .cornerRadius(10)
                .background(RoundedRectangle(cornerRadius: 20).fill(Color.gray).opacity(0.4))
            Button {
                
            } label: {
                Image(systemName: "magnifyingglass")
                    .foregroundColor(.gray)
                   
            }
            VerticalDivider()
            Button {
                
            } label: {
                Image(systemName: "mic.fill")
                    .foregroundColor(.orange)
            }
            
        }
        .frame(height: 50)
        .padding(.horizontal, 16)
        .background(Color.white)
        .cornerRadius(10)
    }
}
