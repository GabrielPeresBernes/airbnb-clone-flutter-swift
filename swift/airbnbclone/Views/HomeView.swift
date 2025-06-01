//
//  HomeView.swift
//  airbnbclone
//
//  Created by Gabriel Peres Bernes on 28/05/25.
//

import SwiftUI

struct HomeView: View {
    var body: some View {
        VStack {
            ZStack(alignment: .top) {
                ListingTabs()
                SearchButton()
            }
            .frame(height: 103)
            ZStack(alignment: .bottom) {
                ScrollView(.vertical) {
                    Spacer().frame(height: 22)
                    PriceTag()
                    Spacer().frame(height: 18)
                    ListingCard(listing1)
                    Spacer().frame(height: 38)
                    ListingCard(listing2)
                    Spacer().frame(height: 68)
                }
                .scrollIndicators(.hidden)
                .padding(.horizontal, 20)
                MapButton().padding(.bottom, 20)
            }
        }
    }
}
