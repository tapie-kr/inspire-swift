![Cover Image](https://github.com/tapie-kr/.github/blob/assets/cover_swift.png)

# INSPIRE : Creative Kit for Swift

Creative Kit (Swift Version) for TAPIE Identity

<br>

## Installation

### Xcode

```
https://github.com/tapie-kr/inspire-swift
```

<br>

## Example

```swift
import Inspire

struct ContentView: View {
  @State var selectedValue: Int = 0

  var body: some View {
    VStack {
      Typo("\(selectedValue)", size: .base)

      SegmentGroup(currentValue: $selectedValue) {
        Segment(label: "First", value: 0)
        Segment(label: "Second", value: 1)
        Segment(label: "Third", value: 2)
      }
    }
    .frame(width: 300)
  }
}

#Preview {
  ContentView()
}
```

## License

[MIT](https://github.com/tapie-kr/inspire/blob/main/LICENSE)
