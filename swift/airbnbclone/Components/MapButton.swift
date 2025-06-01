//
//  MapButton.swift
//  airbnbclone
//
//  Created by Gabriel Peres Bernes on 29/05/25.
//

import SwiftUI

struct MapButton: View {
    var body: some View {
        Button(action: {}) {
            HStack(spacing: 6) {
                Text("Map")
                    .font(.system(size: 14, weight: .semibold))
                Image(systemName: "map.fill")
                    .font(.system(size: 12))
            }
            .padding(.horizontal, 20)
            .frame(height: 42)
            .tint(.white)
            .background(Color(hex: "222222"))
            .clipShape(Capsule())
        }
    }
}
