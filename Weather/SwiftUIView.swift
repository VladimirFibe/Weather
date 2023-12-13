//
//  SwiftUIView.swift
//  Weather
//
//  Created by Vladimir Fibe on 13.12.2023.
//

import SwiftUI

struct SwiftUIView: View {
    @FocusState private var isUsernameFocused: Bool
    @State private var username = "Anonymous"

    var body: some View {
        NavigationStack {
            VStack(spacing: 60) {
                TextField("Enter your username", text: $username)
                    .focused($isUsernameFocused)

                Button("Toggle Focus") {
                    isUsernameFocused.toggle()
                }

                NavigationLink(destination: { Text("Hi")}, label: {
                    Text("Next")
                })
            }
            .onAppear {
                print("On Appear!!!", isUsernameFocused)
                    isUsernameFocused.toggle()
                print(isUsernameFocused)

            }
        }

    }
}

#Preview {
    SwiftUIView()
}
