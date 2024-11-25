import SwiftUI
import WebKit

struct WebViewer: View {
    let url: URL

    var body: some View {
        WebView(url: url)
            .toolbar {
                ToolbarItem(placement: .navigationBarTrailing) {
                    Button("Open in Browser") {
                        UIApplication.shared.open(url)
                    }
                }
            }
    }
}

struct WebView: UIViewRepresentable {
    let url: URL

    func makeUIView(context: Context) -> WKWebView {
        let webView = WKWebView()
        let request = URLRequest(url: url)
        webView.load(request)
        return webView
    }

    func updateUIView(_ uiView: WKWebView, context: Context) {
    }
}
