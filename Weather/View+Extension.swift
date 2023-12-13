import SwiftUI

extension View {
    func backgroundBlur(radius: CGFloat = 25, opaque: Bool = true) -> some View {
        self.background(Blur(radius: radius, opaque: opaque))
    }

    func innerShadow<S: Shape, SS: ShapeStyle>(
        shape: S,
        color: SS,
        lineWidth: CGFloat = 1,
        offsetX: CGFloat = 0,
        offsetY: CGFloat = 1,
        blurRadius: CGFloat = 0,
        blendMode: BlendMode = .overlay,
        opacity: Double = 1
    ) -> some View {
        self
            .overlay {
                shape
                    .stroke(color, lineWidth: lineWidth)
                    .blendMode(blendMode)
                    .offset(x: offsetX, y: offsetY)
                    .blur(radius: blurRadius)
                    .mask(shape)
                    .opacity(1)
            }
    }
}
