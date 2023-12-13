import SwiftUI

extension Color {
    static let background = LinearGradient(
        colors: [.backGroundGradientStart, .backGroundGradientEnd],
        startPoint: .topLeading,
        endPoint: .bottomTrailing
    )
    static let bottomSheetBackground = LinearGradient(
        colors: [.backGroundGradientStart.opacity(0.26), .backGroundGradientEnd.opacity(0.26)],
        startPoint: .topLeading,
        endPoint: .bottomTrailing
    )
    static let tabBarBackground = LinearGradient(
        colors: [.tabBarGradientStart.opacity(0.26), .tabBarGradientEnd.opacity(0.26)],
        startPoint: .top,
        endPoint: .bottom
    )
    static let bottomSheetBorderTop = LinearGradient(
        colors: [.white.opacity(0.5), .white],
        startPoint: .topLeading,
        endPoint: .bottomTrailing
    )
    static let bottomSheetBorderMiddle = LinearGradient(
        gradient: Gradient(stops: [.init(color: .white, location: 0), .init(color: .clear, location: 0.2)]),
        startPoint: .top,
        endPoint: .bottom
    )
}

