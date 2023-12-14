import SwiftUI



struct HomeView: View {
    @StateObject var viewModel = HomeViewModel()
    @State var isPresented = false
    @State var y: CGFloat = 0
    var body: some View {

        NavigationStack {
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
                        Text(viewModel.attributedString)
                        Text("H:24°   L:18°")
                            .font(.title3.weight(.semibold))
                    }
                    Spacer()
                }
                .padding(51)
                
                ForecastView()
                    .offset(y: 500 + y)
                    .gesture(
                        DragGesture()
                            .onChanged { value in
                                y = value.translation.height
                            }
                            .onEnded { _ in
                                y = 0
                            }
                    )
                TabBar() {}
            }
        }
    }
}

#Preview {
    HomeView()
}
