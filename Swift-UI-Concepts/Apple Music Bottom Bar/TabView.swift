import SwiftUI

struct TabView: View {
    
    @State var expandMiniPlayer: Bool = false
    
    var body: some View {
        Group {
            if #available(iOS 26, *) {
                NativeTabView()
            } else {
                NativeTabView()
            }
        }
        .fullScreenCover(isPresented: $expandMiniPlayer) {
            ScrollView {
                
            }
            .safeAreaInset(edge: .top, spacing: 0) {
                VStack(spacing: 10) {
                    
                    Capsule()
                        .fill(.primary.secondary)
                        .frame(width: 35, height: 3)
                    
                    HStack(spacing: 15) {
                        PlayerInfo(size: .init(width: 80, height: 80))
                        
                        Spacer(minLength: 0)
                        
                        ExpandedButtons()
                    }
                    .padding(.horizontal, 15)
                }
            }
        }
    }
}
