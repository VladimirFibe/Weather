#  Weather

- [tutorial](https://designcode.io/swiftui-ui-animations)
- [Weather App UI Design](https://www.figma.com/community/file/1100826294536456295)
- [Typography](https://developer.apple.com/design/human-interface-guidelines/typography)
![](img/Cover.png)

```
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
```
[![](https://docs-assets.developer.apple.com/published/741002b545/quadratic_bezier_curve_153239a4-99d4-4507-b432-67f6daa5cc12.jpg)](https://developer.apple.com/documentation/uikit/uibezierpath/1624351-addquadcurve)

- Right-click a shape in Figma and select Copy as SVG.
- Go to the [SVG to SwiftUI converter tool](https://svg-to-swiftui.quassum.com/) and paste the SVG code, then Convert.
- In Xcode, create a new file called CardView.
- Copy and paste the SwiftUI Code at the end of the file.
- Rename from MyCustomShape to HexagonShape. Feel free to use the following code to skip these steps.

[Bottom Sheet](https://github.com/Wouter125/BottomSheet)
