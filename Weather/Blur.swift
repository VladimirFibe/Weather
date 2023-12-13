//
//  Blur.swift
//  Weather
//
//  Created by Vladimir Fibe on 13.12.2023.
//

import SwiftUI

class UIBackdropView: UIView {
    override class var layerClass: AnyClass {
        NSClassFromString("CABackdropLayer") ?? CALayer.self
    }
}

struct Backdrop: UIViewRepresentable {
    func makeUIView(context: Context) -> UIBackdropView {
        UIBackdropView()
    }

    func updateUIView(_ uiView: UIViewType, context: Context) {

    }
}
struct Blur: View {
    var radius: CGFloat = 25
    var opaque: Bool = true
    var body: some View {
        Backdrop()
            .blur(radius: radius, opaque: opaque)
    }
}

#Preview {
    Blur()
}
