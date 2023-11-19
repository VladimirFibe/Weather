import SwiftUI

extension Color {
    static let background = LinearGradient(
        colors: [.backGroundGradientStart, .backGroundGradientEnd],
        startPoint: .topLeading,
        endPoint: .bottomTrailing
    )
    static let tabBarBackground = LinearGradient(
        gradient: Gradient(colors: [
            .tabBarGradientStart.opacity(0.26),
            .tabBarGradientEnd.opacity(0.26)
        ]),
        startPoint: .top,
        endPoint: .bottom
    )
}

