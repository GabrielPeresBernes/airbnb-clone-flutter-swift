//
//  BottomNavigation.swift
//  airbnbclone
//
//  Created by Gabriel Peres Bernes on 30/05/25.
//

import SwiftUI

struct BottomNavigationItem: Hashable {
    let icon: String?
    let image: String?
    let label: String
    
    init(icon: String? = nil, image: String? = nil, label: String) {
        self.icon = icon
        self.image = image
        self.label = label
    }
}

struct BottomNavigation: View {
    @Binding var selected: String
    
    let tabs: [BottomNavigationItem]
    
    var body: some View {
        HStack(alignment: .bottom) {
            ForEach(tabs, id: \.self) { tab in
                let isSelected = tab.label == selected
                
                Button(action: {
                    selected = tab.label
                }) {
                    VStack(spacing: 8) {
                        if let icon = tab.icon {
                            Image(systemName: icon)
                                .font(.system(size: 22))
                                .foregroundColor(isSelected ? Color(hex: "E81948") : Color(hex: "7A7A7A"))
                        } else if let image = tab.image {
                            Image(image)
                                .resizable()
                                .frame(width: 22, height: 22)
                                .foregroundStyle(isSelected ? Color(hex: "E81948") : Color(hex: "7A7A7A"))
                        }
                        
                        Text(tab.label)
                            .font(.system(size: 10))
                            .foregroundColor(isSelected ? Color(hex: "E81948") : Color(hex: "7A7A7A"))
                    }
                    .frame(maxWidth: .infinity)
                }
                .buttonStyle(.plain)
            }
        }
        .padding(.bottom, 32)
        .padding(.top, 6)
        .padding(.horizontal, 16)
        .background(Color.white)
        .shadow(color: Color(hex: "DDDDDD"), radius: 0, x: 0, y: -1)
    }
}
