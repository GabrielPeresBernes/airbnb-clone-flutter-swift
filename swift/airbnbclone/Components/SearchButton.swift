//
//  SearchButton.swift
//  airbnbclone
//
//  Created by Gabriel Peres Bernes on 28/05/25.
//

import SwiftUI

struct SearchButton: View {
    var body: some View {
        Button(action: {}) {
            HStack {
                Image(systemName: "magnifyingglass")
                    .font(.system(size: 12))
                Text("Start your search")
                    .font(.system(size: 12, weight: .semibold))
            }
            .frame(maxWidth: .infinity, minHeight: 52)
            .tint(Color(hex: "222222"))
            .background(Color.white)
            .overlay(
                Capsule()
                    .stroke(Color(hex: "E6E6E6"), lineWidth: 1)
            )
            .clipShape(Capsule())
            .shadow(color: Color.black.opacity(0.1),
                    radius: 8,
                    x: 0,
                    y: 4
            )
        }
        .padding(.top, 4)
        .padding(.horizontal, 20)
    }
}
