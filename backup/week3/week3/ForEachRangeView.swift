//
//  ForEachRangeView.swift
//  week3
//
//  Created by 신연주 on 4/23/25.
//

import SwiftUI

struct ForEachRangeView: View {
    let fruits = ["🍎 Apple", "🍌 Banana", "🍊 Orange", "🍇 Grape", "🍓 Strawberry"]
    
    var body: some View {
        ForEach(1..<6){ index in
            Text("항목 \(index)")
                .font(.headline)
        }
        
        ForEach(fruits, id: \.self) { fruits in
            Text(fruits)
                .font(.title2)
        }
    }
}


#Preview {
    ForEachRangeView()
}

