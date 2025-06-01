//
//  PriceTag.swift
//  airbnbclone
//
//  Created by Gabriel Peres Bernes on 29/05/25.
//

import SwiftUI

struct PriceTag: View {
    var body: some View {
        HStack(spacing: 4) {
            Image(systemName: "tag.fill")
                .foregroundColor(Color(hex: "F14275"))
            Text("Prices include all fees")
                .font(.system(size: 12, weight: .semibold))
        }
    }
}
