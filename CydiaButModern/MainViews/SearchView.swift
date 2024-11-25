//
//  CydiaButModern
//
//  Created by @timi2506 on 24.11.2024.
//

import SwiftUI

struct SearchView: View {
    let packages = ["Side Box 3D", "Mac lion", "Craven Theme", "Popit Theme"]
    let packageURLs = ["https://example1.com/", "https://example2.com/", "https://example3.com/", "https://example4.com/"]

    @State private var searchText = ""

    var body: some View {
        NavigationView {
            List {
                ForEach(filteredPackages, id: \.self) { package in
                    if let packageIndex = packages.firstIndex(of: package) {
                        let packageURL = packageURLs[packageIndex]
                        NavigationLink(
                            destination: AppInstallView(text: package, installURL: packageURL)
                        ) {
                            Text(package)
                        }
                    }
                }
            }
            .navigationTitle("Search Packages")
        }
        .searchable(text: $searchText) {
            ForEach(filteredPackages, id: \.self) { result in
                Text(result).searchCompletion(result)
            }
        }
    }

    var filteredPackages: [String] {
        if searchText.isEmpty {
            return packages
        } else {
            return packages.filter { $0.localizedCaseInsensitiveContains(searchText) }
        }
    }
}
