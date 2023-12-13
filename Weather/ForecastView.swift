//
//  ForecastView.swift
//  Weather
//
//  Created by Vladimir Fibe on 12.12.2023.
//

import SwiftUI

struct ForecastView: View {
    var body: some View {
        let shape = RoundedRectangle(cornerRadius: 44)
        ScrollView {
        }
        .backgroundBlur()
        .background(Color.bottomSheetBackground)
        .clipShape(shape)
        .innerShadow(shape: shape, color: Color.bottomSheetBorderMiddle)
        .overlay {
            Divider()
                .blendMode(.overlay)
                .background(Color.bottomSheetBorderTop)
                .frame(maxHeight: .infinity, alignment: .top)
                .clipShape(shape)

        }
        .overlay {
            RoundedRectangle(cornerRadius: 10)
                .fill(.black.opacity(0.3))
                .frame(width: 48, height: 5)
                .frame(height: 20)
                .frame(maxHeight: .infinity, alignment: .top)
                .padding(.top, 10)
        }
    }
}

#Preview {
    ForecastView()
        .background(Color.forecastCardBackground)
}
