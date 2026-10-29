import SwiftUI

struct ContentView: View {
    @AppStorage("isOnboardingCompleted")
    private var isOnboardingCompleted: Bool = false

    var body: some View {
        ZStack {
            TabView()
        }
        .preferredColorScheme(.light)
        .splashScreen(
            config: .init(),
            showOnBoarding: !isOnboardingCompleted
        ) {
            OnBoardingView()
        }
    }
}
