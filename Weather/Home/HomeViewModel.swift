import Foundation

class HomeViewModel: ObservableObject {
    @Published var isPresented = false

    var attributedString: AttributedString {
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
}
