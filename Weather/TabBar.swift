import SwiftUI

struct TabBar: View {
    var action: () -> Void
    var body: some View {
        ZStack {
            Arc()
                .fill(Color.tabBarBackground)
                .frame(height: 88)
                .overlay {
                    Arc()
                        .stroke(Color.tabBarBorder, lineWidth: 0.5)
                }
            HStack {
                Button(action: action) {
                    TabBarItem(title: "mappin.and.ellipse")
                }

                Spacer()

                NavigationLink(destination: {}) {
                    TabBarItem(title: "list.star")
                }
            }
            .font(.title2)
            .foregroundStyle(.primary)
            .padding(EdgeInsets(top: 20, leading: 32, bottom: 24, trailing: 32))
        }
        .frame(maxHeight: .infinity, alignment: .bottom)
        .ignoresSafeArea()
    }
}

struct TabBarItem: View {
    let title: String
    var body: some View {
        Image(systemName: title)
            .frame(width: 44, height: 44)
    }
}

#Preview {
    TabBar() {}
}
