//
//  CydiaButModern
//
//  Created by @timi2506 on 24.11.2024.
//

import SwiftUI
extension Color {
    static let customHyperlinkColor = Color(hex: "586C90")
}

extension Color {
    // Custom initializer for hex color codes
    init(hex: String) {
        var hexSanitized = hex.hasPrefix("#") ? String(hex.dropFirst()) : hex
        if hexSanitized.count == 6 {
            hexSanitized.append("FF") // Adding alpha if not provided
        }
        
        var hexInt: UInt64 = 0
        Scanner(string: hexSanitized).scanHexInt64(&hexInt)
        
        let r = Double((hexInt & 0xFF000000) >> 24) / 255.0
        let g = Double((hexInt & 0x00FF0000) >> 16) / 255.0
        let b = Double((hexInt & 0x0000FF00) >> 8) / 255.0
        let a = Double(hexInt & 0x000000FF) / 255.0
        
        self.init(red: r, green: g, blue: b, opacity: a)
    }
}

struct CydiaView: View {
    @State private var isShowingAboutAlert = false
    @State private var isReloading = false
    var systemVersion = UIDevice.current.systemVersion
    
    var body: some View {
        
        ZStack {
            
            NavigationView {
                List {
                    VStack {
                        HStack {
                            VStack {
                                Image("cydia")
                                    .resizable()
                                    .scaledToFit()
                                    .frame(width: 75, height: 75)
                            }
                            Spacer()
                            VStack {
                                Text("Welcome to Cydia™")
                                HStack{
                                    Text("by")
                                        .font(.caption)
                                        .foregroundStyle(.gray)
                                    Text("[Jay Freeman (saurik)](http://www.saurik.com/)")
                                        .font(.caption)
                                        .bold()
                                        .accentColor(.customHyperlinkColor)
                                }
                            }
                        }
                    }
                    .padding(5)
                    HStack {
                        Image("facebook")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 30, height: 30)
                        NavigationLink("Cydia", destination: WebViewer(url: URL(string: "https://m.facebook.com/Cydia?view=info")!))
                    }
                    HStack {
                        Image("twitter")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 30, height: 30)
                        NavigationLink("saurik", destination: WebViewer(url: URL(string: "http://twitter.com/saurik")!))
                    }
                    HStack {
                        Image("account")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 30, height: 30)
                        NavigationLink("Manage Account", destination: EmptyView())
                    }
                    
                    HStack {
                        Image("featured")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 30, height: 30)
                        NavigationLink("Featured", destination: EmptyView())
                    }
                    HStack {
                        Image("themes")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 30, height: 30)
                        NavigationLink("Themes", destination: EmptyView())
                    }
                    
                    
                    Section {
                        NavigationLink("Upgrading & Jailbreak Help", destination: EmptyView())
                        NavigationLink("Find Extensions for Applications", destination: EmptyView())
                        NavigationLink("More Package Sources", destination: WebViewer(url: URL(string: "https://www.ios-repo-updates.com/")!))
                    }
                    Section("User Guides") {
                        NavigationLink("Frequently Asked Questions", destination: EmptyView())
                        NavigationLink("Copying Files to/from Device", destination: WebViewer(url: URL(string: "https://www.tigisoftware.com/default/?p=439")!))
                        NavigationLink("OpenSSH Access How-To", destination: WebViewer(url: URL(string: "https://onejailbreak.com/blog/newterm-3/")!))
                        NavigationLink("Root Password How-To", destination: EmptyView())
                        NavigationLink("Storage Information", destination: EmptyView())
                    }
                    Section("Community") {
                        HStack {
                            Image("web")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 30, height: 30)
                            NavigationLink("JailbreakQA (Support)", destination: EmptyView())
                        }
                        HStack {
                            Image("reddit")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 30, height: 30)
                            NavigationLink("/r/jailbreak on Reddit", destination: WebViewer(url: URL(string: "https://www.reddit.com/r/jailbreak")!))
                        }
                    }
                    Section("Developers Only") {
                        NavigationLink("Useful Developer Resources", destination: WebViewer(url: URL(string: "https://theapplewiki.com/")!))
                    }
                    VStack {
                        NavigationLink("Credits / Thank You", destination: CreditsView())
                    }
                    VStack {
                        NavigationLink("Permanent Installation", destination: EmptyView())
                    }
                    Section("") {
                        
                        Text("iPhone, iOS \(systemVersion), AppleWebKit/605.1.15 (KHTML) \nCydia Modern 1.0.0 (en-us)\n2281880c069fc2478c11f7f232ac2e53c30a34dd")
                            .padding(1)
                            .font(.caption)
                            .multilineTextAlignment(.center)
                            .foregroundStyle(.gray)
                            .frame(maxWidth: .infinity, alignment: .center)
                    }
                    .listRowInsets(.init())
                    .listRowBackground(Color.clear)
                    
                    
                }
                
                // Toolbar
                    .toolbar {
                        ToolbarItem(placement: .navigationBarLeading) {
                            Button("About") {
                                isShowingAboutAlert = true
                            }
                        }
                        ToolbarItem(placement: .principal) {
                            Text("Home")
                                .font(.headline)
                        }
                        ToolbarItem(placement: .navigationBarTrailing) {
                            Button("Reload") {
                                isReloading = true
                                DispatchQueue.main.asyncAfter(deadline: .now() + 5) {
                                    isReloading = false
                                                }
                            }
                        }
                    }
                // Toolbar End
            }
            
            
            .alert(isPresented: $isShowingAboutAlert) {
                Alert (
                    title: Text("About Cydia but Modern"),
                    message: Text("""
                              Copyright © 2008-2015
                              SaurikIT,LLC
                              
                              Jay Freeman (@saurik)
                              Tim (@timi2506)
                              http://www.saurik.com/
                              """),
                    dismissButton: .default(Text("OK"))
                )
            }
            .blur(radius: isReloading ? 15 : 0)
                        if isReloading {
                            ReloadingView()
                        }
        }
    }
    
}

