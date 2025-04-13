//
//  MainView.swift
//  starbucks
//
//  Created by 신연주 on 4/9/25.
//

import SwiftUI

struct MainView: View {
    @State private var selectedTab = 0
    
    var body: some View {
        TabView(selection : $selectedTab){
            HomeView()
                .tabItem {
                    Image(selectedTab == 0 ? "HomeIconGreen" : "HomeIconGray")
                    Text("Home")
                }
                .tag(0)
            
            PayView()
                .tabItem {
                    Image(selectedTab == 1 ? "PayIconGreen" : "PayIconGray")
                    Text("Pay")
                }
                .tag(1)
            
            OrderView()
                .tabItem {
                    Image(selectedTab == 2 ? "OrderIconGreen" : "OrderIconGray")
                    Text("Order")
                }
                .tag(2)
            
            ShopView()
                .tabItem {
                    Image(selectedTab == 3 ? "ShopIconGreen" : "ShopIconGray")
                    Text("Shop")
                }
                .tag(3)
            
            OtherView()
                .tabItem {
                    Image(selectedTab == 4 ? "OtherIconGreen" : "OtherIconGray")
                    Text("Other")
                }
                .tag(4)
        }
        .accentColor(Color("green02"))
    }
}

#Preview {
    MainView()
}
