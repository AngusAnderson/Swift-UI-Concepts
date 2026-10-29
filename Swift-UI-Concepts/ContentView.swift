import SwiftUI

struct ContentView: View {
    @AppStorage("isOnboardingCompleted")
    private var isOnboardingCompleted: Bool = false

    var body: some View {
        ZStack {
            Color.white
                .ignoresSafeArea()

            VStack {
                Image(systemName: "globe")
                    .imageScale(.large)
                    .foregroundStyle(.tint)
            }
            .padding()
        }
        .preferredColorScheme(.light)
        .splashScreen(
            config: .init(),
            showOnBoarding: true
        ) {
            OnBoardingView()
        }
    }
}
