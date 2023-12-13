import SwiftUI
import BottomSheet

enum BottomSheetPosition: CGFloat, CaseIterable {
    case top = 0.83 // 702/844
    case middle = 0.385 // 325/844
}

struct HomeView: View {
    @State var isPresented = false
    @State var bottomSheetPosition: BottomSheetPosition = .middle
    private var attributedString: AttributedString {
        var string = AttributedString("19°" + "\n" + "Mostly Clear")
        if let value = string.range(of: "19°") {
            string[value].font = .system(size: 96, weight: .thin)
            string[value].foregroundColor = .primary
        }

        if let weather = string.range(of: "Mostly Clear") {
            string[weather].font = .title3.weight(.semibold)
            string[weather].foregroundColor = .secondary
        }
        return string
    }
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
                        Text(attributedString)
                        Text("H:24°   L:18°")
                            .font(.title3.weight(.semibold))
                    }
                    Spacer()
                }
                .padding(51)
                
                ForecastView()
                    .offset(y: 500)
                TabBar() {}
            }
        }
    }
}

#Preview {
    HomeView()
}
