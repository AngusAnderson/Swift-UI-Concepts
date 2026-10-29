import SwiftUI

struct NativeTabView: View {
    
    @State private var searchText: String = ""
    
    var body: some View {
        SwiftUI.TabView {
            Tab.init("Home", systemImage: "house.fill") {
                NavigationStack {
                    List {
                        
                    }
                    .navigationTitle("Home")
                }
            }
            
            Tab.init("New", systemImage: "square.grid.2x2.fill") {
                NavigationStack {
                    List {
                        
                    }
                    .navigationTitle("What's New")
                }
            }
            
            Tab.init("Radio", systemImage: "dot.radiowaves.left.and.right") {
                NavigationStack {
                    List {
                        
                    }
                    .navigationTitle("Radio")
                }
            }
            
            Tab.init("Library", systemImage: "square.stack.fill") {
                NavigationStack {
                    List {
                        
                    }
                    .navigationTitle("Library")
                }
            }
            
            Tab.init("Search", systemImage: "magnifyingglass", role: .search) {
                NavigationStack {
                    List {
                        
                    }
                    .navigationTitle("Search")
                    .searchable(text: $searchText, placement: .toolbar, prompt: Text("Search..."))
                }
            }
        }
        .tabBarMinimizeBehavior(.onScrollDown)
        .tabViewBottomAccessory {
            MiniPlayer()
        }
    }
}
