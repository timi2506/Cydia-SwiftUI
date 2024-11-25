import SwiftUI
import WebKit

struct CreditsView: View {
    var body: some View {
        NavigationView {
            List {
                Section("Links") {
                    VStack {
                        NavigationLink("Made with ❤️ by @timi2506", destination: WebViewer(url: URL(string: "https://x.com/timi2506")!))
                        Text("New Icon and the App")
                            .font(.caption)
                            .foregroundStyle(.gray)
                            .multilineTextAlignment(.leading)
                            .frame(maxWidth: .infinity, alignment: .leading)
                        
                    }
                    .frame(maxWidth: .infinity, alignment: .leading)
                    VStack {
                        NavigationLink("Inspired by CydiaWeb by sunstar16", destination: WebViewer(url: URL(string: "https://sunstar16.github.io/CydiaWeb/")!))
                        Text("Because me, the dev @timi2506, doesn't have a real Cydia Device to compare to")
                            .font(.caption)
                            .foregroundStyle(.gray)
                            .multilineTextAlignment(.leading)
                            .frame(maxWidth: .infinity, alignment: .leading)
                        
                    }
                    .frame(maxWidth: .infinity, alignment: .leading)
                    VStack {
                        NavigationLink("Link to Saurik's Website", destination: WebViewer(url: URL(string: "https://saurik.com")!))
                        Text("The original creator of Cydia")
                            .font(.caption)
                            .foregroundStyle(.gray)
                            .multilineTextAlignment(.leading)
                            .frame(maxWidth: .infinity, alignment: .leading)
                        
                    }
                    .frame(maxWidth: .infinity, alignment: .leading)
                }
            }
            .navigationBarTitle("Credits")
            
        }
    }
}

