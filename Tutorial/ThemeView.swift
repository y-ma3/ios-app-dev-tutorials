import SwiftUI

struct ThemeView: View {
    let theme: Theme
    
    var body: some View {
        Text(theme.name)
            .background(theme.mainColor)
    }
}

#Preview {
    ThemeView(theme: .buttercup)
}
