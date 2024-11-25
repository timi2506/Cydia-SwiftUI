import SwiftUI

struct AppInstallView: View {
    let text: String
    let installURL: String

    var body: some View {
        VStack {
            Text("Install \(text)")
                .font(.title)
            Text("URL: \(installURL)")
                .font(.subheadline)
            Spacer()
        }
        .padding()
    }
}
