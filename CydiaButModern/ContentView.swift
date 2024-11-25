//
//  ContentView.swift
//  CydiaButModern
//
//  Created by @timi2506 on 24.11.2024.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView {
            CydiaView()
                .tabItem {
                    Label("Cydia", systemImage: "star")
                }
            SourcesView()
                .tabItem {
                    Label("Sources", systemImage: "square.stack")
                }
            NewView()
                .tabItem {
                    Label("New", systemImage: "clock")
                }
            PopularView()
                .tabItem {
                    Label("Popular", systemImage: "arrow.down.circle")
                }
            SearchView()
                .tabItem {
                    Label("Search", systemImage: "magnifyingglass")
                }
        }
    }
}
