import SwiftUI
import SwiftData

struct ContentView: View {
    @Environment(\.modelContext) private var modelContext
    @Query private var subscriptions: [Subscription]
    
    var body: some View {
        NavigationStack {
            List(subscriptions) { sub in
                    VStack(alignment: .leading) {
                        Text(sub.name)
                            .font(.headline)
                        Text("€\(sub.price, specifier: "%.2f") / \(sub.cycle)")
                            .font(.subheadline)
                            .foregroundColor(.secondary)
                    }
                }
            }
            .navigationTitle("SubTracker")
            .toolbar {
                ToolbarItem(placement: .primaryAction) {
                    Button(action: {}) {
                        Label("Add", systemImage: "plus")
                    }
                }
            }
        }
    }
