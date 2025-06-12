import SwiftUI

struct MainPageView: View {
    var screen = NSScreen.main!.visibleFrame
    var body: some View {
        HStack {
            SideBarComponent()
            VStack {
            }
            .frame(maxWidth: .infinity)
            .background(Color.black)
        }
        .background(Color.white)
        .frame(width: screen.width / 3, height: screen.height / 2)
    }
}

//#Preview {
//    MainPageView()
//}
