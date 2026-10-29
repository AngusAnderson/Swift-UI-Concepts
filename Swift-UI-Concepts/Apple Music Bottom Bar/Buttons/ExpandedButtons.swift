import SwiftUI

struct ExpandedButtons: View {
    var body: some View {
        Group {
            Button("", systemImage: "star.circle.fill") {
                
            }
            
            Button("", systemImage: "ellipsis.circle.fill") {
                
            }
        }
        .font(.title)
        .foregroundStyle(Color.primary, Color.primary.opacity(0.1))
    }
}
