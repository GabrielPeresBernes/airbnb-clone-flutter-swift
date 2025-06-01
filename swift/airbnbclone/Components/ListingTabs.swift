//
//  ListingTabs.swift
//  airbnbclone
//
//  Created by Gabriel Peres Bernes on 28/05/25.
//

import SwiftUI

struct TabItem {
    let icon: String
    let label: String
}

struct ListingTabs: View {
    let items = [TabItem(icon: "sun.max", label: "Beachfront"),
                 TabItem(icon: "house", label: "Cabins"),
                 TabItem(icon: "leaf", label: "Countryside"),
                 TabItem(icon: "tent", label: "Camping"),
                 TabItem(icon: "square.3.layers.3d.down.forward", label: "Off-the-grid"),
                 TabItem(icon: "mountain.2", label: "Amazing views")]
    
    @State private var selectedItem: String = "Beachfront"
    
    var body: some View {
        ScrollView(.horizontal) {
            HStack(spacing: 24) {
                ForEach(items, id: \.self.icon) { item in
                    Button(action: {
                        selectedItem = item.label
                    }) {
                        let icon = item.icon
                        let label = item.label
                        let isSelected = selectedItem == label
                        
                        VStack(spacing: 4) {
                            Image(systemName: icon)
                                .font(.system(size: 20))
                                .foregroundColor(isSelected ? .black : Color(hex: "6A6A6A"))
                            Text(label)
                                .font(.system(size: 10, weight: isSelected ? .bold : .semibold))
                                .foregroundColor(isSelected ? .black : Color(hex: "6A6A6A"))
                            Spacer().frame(height: 5)
                            Rectangle()
                                .frame(height: 2)
                                .foregroundColor(isSelected ? .black : .clear)
                        }
                    }
                    .buttonStyle(.plain)
                }
            }
            .padding(.horizontal, 20)
            .background(.white)
        }
        .padding(.top, 64)
        .scrollIndicators(.hidden)
        .background(.white)
        .shadow(color: Color.black.opacity(0.02),
                radius: 2,
                x: 0,
                y: 4
        )
        
    }
}
