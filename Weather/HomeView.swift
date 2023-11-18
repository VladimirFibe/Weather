import SwiftUI

struct HomeView: View {
    var body: some View {
        ZStack {
            Color.background.ignoresSafeArea()
            Image(.background)
                .resizable()
                .scaledToFill()
                .ignoresSafeArea()
            Image(.house)
                .frame(maxHeight: .infinity, alignment: .top)
                .padding(.top, 257)

            VStack {
                Text("Montreal")
                    .font(.largeTitle)
                VStack {
                    Text("19°" + "\n" + "Mostly Clear")
                    Text("H:24°   L:18°")
                        .font(.title3.weight(.semibold))
                }
                Spacer()
            }
            .padding(50)
        }
    }
}

#Preview {
    HomeView()
}
