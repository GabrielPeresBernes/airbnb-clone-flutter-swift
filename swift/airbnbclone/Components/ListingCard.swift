//
//  ListingCard.swift
//  airbnbclone
//
//  Created by Gabriel Peres Bernes on 29/05/25.
//

import SwiftUI

struct ListingCard: View {
    let listing: Listing
    
    init(_ listing: Listing) {
        self.listing = listing
    }
    
    var body: some View {
        VStack( alignment: .leading, spacing: 4) {
            ZStack(alignment: .topTrailing) {
                Rectangle()
                    .aspectRatio(1, contentMode: .fit)
                    .overlay(
                        Image(listing.image)
                            .resizable()
                            .scaledToFill()
                    )
                    .clipShape(RoundedRectangle(cornerRadius: 16))
                Image("Favorite")
                    .resizable()
                    .frame(width: 20, height: 19)
                    .padding(.horizontal, 16)
                    .padding(.vertical, 16)
            }
            Spacer().frame(height: 5)
            Text(listing.location)
                .font(.system(size: 14, weight: .semibold))
            Text(listing.distance)
                .font(.system(size: 14))
                .foregroundColor(Color(hex: "6A6A6A"))
            Text(listing.availability)
                .font(.system(size: 14))
                .foregroundColor(Color(hex: "6A6A6A"))
            Text(listing.price)
                .font(.system(size: 14, weight: .semibold))
                .underline()
            + Text(listing.stay)
                .font(.system(size: 14))
                .foregroundColor(Color(hex: "6A6A6A"))
        }
    }
}
