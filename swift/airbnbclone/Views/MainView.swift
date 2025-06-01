//
//  ContentView.swift
//  airbnbclone
//
//  Created by Gabriel Peres Bernes on 28/05/25.
//

import SwiftUI
import UIKit

struct MainView: View {
    let tabs = [
        BottomNavigationItem(
            icon: "magnifyingglass",
            label: "Explore"
        ),
        BottomNavigationItem(
            icon: "heart",
            label: "Wishlists"
        ),
        BottomNavigationItem(
            image: "Logo",
            label: "Trips"
        ),
        BottomNavigationItem(
            icon: "bubble.middle.bottom",
            label: "Messages"
        ),
        BottomNavigationItem(
            icon: "person.crop.circle",
            label: "Profile"
        )
    ]
    
    @State private var selectedTab = "Explore"
    
    var body: some View {
        VStack(spacing: 0) {
            ZStack {
                switch selectedTab {
                case "Explore": HomeView()
                case "Wishlists": HomeView()
                case "Trips": HomeView()
                case "Messages": HomeView()
                case "Profile": HomeView()
                default: HomeView()
                }
            }
            BottomNavigation(selected: $selectedTab, tabs: tabs)
        }
        .edgesIgnoringSafeArea(.bottom)
    }
}

#Preview {
    MainView()
}
