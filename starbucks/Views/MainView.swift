//
//  MainView.swift
//  starbucks
//
//  Created by 신연주 on 4/9/25.
//

import SwiftUI

struct MainView: View {
    var body: some View {
        TabView{
            Tab("Home",image: "HomeIconGray"){
                HomeView()
            }
            Tab("Pay",image: "PayIconGray"){
                PayView()
            }
            Tab("Order",image: "OrderIconGray"){
                OrderView()
            }
            Tab("Shop",image: "ShopIconGray"){
                ShopView()
            }
            Tab("Other",image: "OtherIconGray"){
                OtherView()
            }
        }
        .accentColor(Color(.green02))
    }
}

#Preview {
    MainView()
}
