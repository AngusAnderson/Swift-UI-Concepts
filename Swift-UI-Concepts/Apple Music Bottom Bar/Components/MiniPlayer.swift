import SwiftUI

struct MiniPlayer: View {
    var body: some View {
        HStack(spacing: 15) {
            PlayerInfo(size: .init(width: 30, height: 30))
            
            Spacer(minLength: 0)
            
            Buttons()
        }
        
        .padding(.horizontal, 15)
    }
}
