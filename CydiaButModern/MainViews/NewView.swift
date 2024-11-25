//
//  CydiaButModern
//
//  Created by @timi2506 on 24.11.1024.
//

import SwiftUI

struct NewView: View {
    @State private var isReloading = false
    @Environment(\.openURL) var openURL
    
    var body: some View {
        ZStack {
            
            NavigationView {

                List {
                    Text("Once again Note this is just a placeholder, the Packages shown here are from https://sunstar16.github.io/CydiaWeb/, because, well, this whole app has been designed to look similar to the website as i (the dev, @timi2506) don't have access to a real cydia device to compare to")
                        .font(.caption)
                        .padding()
                    HStack {
                        Image("sidebox-3d")
                            .resizable()
                            .scaledToFit()
                            .cornerRadius(10)
                            .frame(width: 50, height: 50)
                        Text("Side Box 3D")
                            .onTapGesture {
                                openURL(URL(string: "https://files.iextras.org/app/inifty-theme/secure/sidebox.mobileconfig")!)
                            }
                    }
                    HStack {
                        Image("mac_lion_os")
                            .resizable()
                            .scaledToFit()
                            .cornerRadius(10)
                            .frame(width: 50, height: 50)
                        Text("Mac lion")
                            .onTapGesture {
                                openURL(URL(string: "https://files.iextras.org/app/flemino/secure/mac_lions.mobileconfig")!)
                            }
                    }
                    HStack {
                        Image("craven")
                            .resizable()
                            .scaledToFit()
                            .cornerRadius(10)
                            .frame(width: 50, height: 50)
                        Text("Craven Theme")
                            .onTapGesture {
                                openURL(URL(string: "http://files.iextras.org/app/inifty-theme/secure/craven.mobileconfig")!)
                            }
                    }
                    HStack {
                        Image("popit")
                            .resizable()
                            .scaledToFit()
                            .cornerRadius(10)
                            .frame(width: 50, height: 50)
                        Text("Popit Theme")
                            .onTapGesture {
                                openURL(URL(string: "http://files.iextras.org/app/12/dreamstore/secure/popit.mobileconfig")!)
                            }
                    }
                    HStack {
                        Image("inifty")
                            .resizable()
                            .scaledToFit()
                            .cornerRadius(10)
                            .frame(width: 50, height: 50)
                        Text("iNifty")
                    }
                    HStack {
                        Image("dreamstore")
                            .resizable()
                            .scaledToFit()
                            .cornerRadius(10)
                            .frame(width: 50, height: 50)
                        Text("Virtual OS store")
                            .onTapGesture {
                                openURL(URL(string: "http://files.iextras.org/app/12/dreamstore/secure/main.mobileconfig")!)
                            }
                    }
                    HStack {
                        Image("flemino")
                            .resizable()
                            .scaledToFit()
                            .cornerRadius(10)
                            .frame(width: 50, height: 50)
                        Text("Flemino")
                            .onTapGesture {
                                openURL(URL(string: "http://files.iextras.org/app/12/flemino/secure/flemino.mobileconfig")!)
                            }
                    }
                    HStack {
                        Image("win_98")
                            .resizable()
                            .scaledToFit()
                            .cornerRadius(10)
                            .frame(width: 50, height: 50)
                        Text("Windows 98")
                            .onTapGesture {
                                openURL(URL(string: "http://iextras.org/zjailbreak/apps/secure/os/windows-98.mobileconfig")!)
                            }
                    }
                    // Placeholders
                    HStack {
                        Image("sidebox-3d")
                            .resizable()
                            .scaledToFit()
                            .cornerRadius(10)
                            .frame(width: 50, height: 50)
                        Text("Side Box 3D")
                            .onTapGesture {
                                openURL(URL(string: "https://files.iextras.org/app/inifty-theme/secure/sidebox.mobileconfig")!)
                            }
                    }
                    HStack {
                        Image("sidebox-3d")
                            .resizable()
                            .scaledToFit()
                            .cornerRadius(10)
                            .frame(width: 50, height: 50)
                        Text("Side Box 3D")
                            .onTapGesture {
                                openURL(URL(string: "https://files.iextras.org/app/inifty-theme/secure/sidebox.mobileconfig")!)
                            }
                    }
                    HStack {
                        Image("sidebox-3d")
                            .resizable()
                            .scaledToFit()
                            .cornerRadius(10)
                            .frame(width: 50, height: 50)
                        Text("Side Box 3D")
                            .onTapGesture {
                                openURL(URL(string: "https://files.iextras.org/app/inifty-theme/secure/sidebox.mobileconfig")!)
                            }
                    }
                    HStack {
                        Image("sidebox-3d")
                            .resizable()
                            .scaledToFit()
                            .cornerRadius(10)
                            .frame(width: 50, height: 50)
                        Text("Side Box 3D")
                            .onTapGesture {
                                openURL(URL(string: "https://files.iextras.org/app/inifty-theme/secure/sidebox.mobileconfig")!)
                            }
                    }
                    HStack {
                        Image("sidebox-3d")
                            .resizable()
                            .scaledToFit()
                            .cornerRadius(10)
                            .frame(width: 50, height: 50)
                        Text("Side Box 3D")
                            .onTapGesture {
                                openURL(URL(string: "https://files.iextras.org/app/inifty-theme/secure/sidebox.mobileconfig")!)
                            }
                    }
                    HStack {
                        Image("sidebox-3d")
                            .resizable()
                            .scaledToFit()
                            .cornerRadius(10)
                            .frame(width: 50, height: 50)
                        Text("Side Box 3D")
                            .onTapGesture {
                                openURL(URL(string: "https://files.iextras.org/app/inifty-theme/secure/sidebox.mobileconfig")!)
                            }
                    }
                    HStack {
                        Image("sidebox-3d")
                            .resizable()
                            .scaledToFit()
                            .cornerRadius(10)
                            .frame(width: 50, height: 50)
                        Text("Side Box 3D")
                            .onTapGesture {
                                openURL(URL(string: "https://files.iextras.org/app/inifty-theme/secure/sidebox.mobileconfig")!)
                            }
                    }
                    HStack {
                        Image("sidebox-3d")
                            .resizable()
                            .scaledToFit()
                            .cornerRadius(10)
                            .frame(width: 50, height: 50)
                        Text("Side Box 3D")
                            .onTapGesture {
                                openURL(URL(string: "https://files.iextras.org/app/inifty-theme/secure/sidebox.mobileconfig")!)
                            }
                    }
                    HStack {
                        Image("sidebox-3d")
                            .resizable()
                            .scaledToFit()
                            .cornerRadius(10)
                            .frame(width: 50, height: 50)
                        Text("Side Box 3D")
                            .onTapGesture {
                                openURL(URL(string: "https://files.iextras.org/app/inifty-theme/secure/sidebox.mobileconfig")!)
                            }
                    }
                    HStack {
                        Image("sidebox-3d")
                            .resizable()
                            .scaledToFit()
                            .cornerRadius(10)
                            .frame(width: 50, height: 50)
                        Text("Side Box 3D")
                            .onTapGesture {
                                openURL(URL(string: "https://files.iextras.org/app/inifty-theme/secure/sidebox.mobileconfig")!)
                            }
                    }
                    HStack {
                        Image("sidebox-3d")
                            .resizable()
                            .scaledToFit()
                            .cornerRadius(10)
                            .frame(width: 50, height: 50)
                        Text("Side Box 3D")
                            .onTapGesture {
                                openURL(URL(string: "https://files.iextras.org/app/inifty-theme/secure/sidebox.mobileconfig")!)
                            }
                    }
                    HStack {
                        Image("sidebox-3d")
                            .resizable()
                            .scaledToFit()
                            .cornerRadius(10)
                            .frame(width: 50, height: 50)
                        Text("Side Box 3D")
                            .onTapGesture {
                                openURL(URL(string: "https://files.iextras.org/app/inifty-theme/secure/sidebox.mobileconfig")!)
                            }
                    }
                    HStack {
                        Image("sidebox-3d")
                            .resizable()
                            .scaledToFit()
                            .cornerRadius(10)
                            .frame(width: 50, height: 50)
                        Text("Side Box 3D")
                            .onTapGesture {
                                openURL(URL(string: "https://files.iextras.org/app/inifty-theme/secure/sidebox.mobileconfig")!)
                            }
                    }
                    HStack {
                        Image("sidebox-3d")
                            .resizable()
                            .scaledToFit()
                            .cornerRadius(10)
                            .frame(width: 50, height: 50)
                        Text("Side Box 3D")
                            .onTapGesture {
                                openURL(URL(string: "https://files.iextras.org/app/inifty-theme/secure/sidebox.mobileconfig")!)
                            }
                    }
                    HStack {
                        Image("sidebox-3d")
                            .resizable()
                            .scaledToFit()
                            .cornerRadius(10)
                            .frame(width: 50, height: 50)
                        Text("Side Box 3D")
                            .onTapGesture {
                                openURL(URL(string: "https://files.iextras.org/app/inifty-theme/secure/sidebox.mobileconfig")!)
                            }
                    }
                    HStack {
                        Image("sidebox-3d")
                            .resizable()
                            .scaledToFit()
                            .cornerRadius(10)
                            .frame(width: 50, height: 50)
                        Text("Side Box 3D")
                            .onTapGesture {
                                openURL(URL(string: "https://files.iextras.org/app/inifty-theme/secure/sidebox.mobileconfig")!)
                            }
                    }
                    HStack {
                        Image("sidebox-3d")
                            .resizable()
                            .scaledToFit()
                            .cornerRadius(10)
                            .frame(width: 50, height: 50)
                        Text("Side Box 3D")
                            .onTapGesture {
                                openURL(URL(string: "https://files.iextras.org/app/inifty-theme/secure/sidebox.mobileconfig")!)
                            }
                    }
                    HStack {
                        Image("sidebox-3d")
                            .resizable()
                            .scaledToFit()
                            .cornerRadius(10)
                            .frame(width: 50, height: 50)
                        Text("Side Box 3D")
                            .onTapGesture {
                                openURL(URL(string: "https://files.iextras.org/app/inifty-theme/secure/sidebox.mobileconfig")!)
                            }
                    }
                    HStack {
                        Image("sidebox-3d")
                            .resizable()
                            .scaledToFit()
                            .cornerRadius(10)
                            .frame(width: 50, height: 50)
                        Text("Side Box 3D")
                            .onTapGesture {
                                openURL(URL(string: "https://files.iextras.org/app/inifty-theme/secure/sidebox.mobileconfig")!)
                            }
                    }
                    HStack {
                        Image("sidebox-3d")
                            .resizable()
                            .scaledToFit()
                            .cornerRadius(10)
                            .frame(width: 50, height: 50)
                        Text("Side Box 3D")
                            .onTapGesture {
                                openURL(URL(string: "https://files.iextras.org/app/inifty-theme/secure/sidebox.mobileconfig")!)
                            }
                    }
                    HStack {
                        Image("sidebox-3d")
                            .resizable()
                            .scaledToFit()
                            .cornerRadius(10)
                            .frame(width: 50, height: 50)
                        Text("Side Box 3D")
                            .onTapGesture {
                                openURL(URL(string: "https://files.iextras.org/app/inifty-theme/secure/sidebox.mobileconfig")!)
                            }
                    }
                    HStack {
                        Image("sidebox-3d")
                            .resizable()
                            .scaledToFit()
                            .cornerRadius(10)
                            .frame(width: 50, height: 50)
                        Text("Side Box 3D")
                            .onTapGesture {
                                openURL(URL(string: "https://files.iextras.org/app/inifty-theme/secure/sidebox.mobileconfig")!)
                            }
                    }
                    HStack {
                        Image("sidebox-3d")
                            .resizable()
                            .scaledToFit()
                            .cornerRadius(10)
                            .frame(width: 50, height: 50)
                        Text("Side Box 3D")
                            .onTapGesture {
                                openURL(URL(string: "https://files.iextras.org/app/inifty-theme/secure/sidebox.mobileconfig")!)
                            }
                    }
                    HStack {
                        Image("sidebox-3d")
                            .resizable()
                            .scaledToFit()
                            .cornerRadius(10)
                            .frame(width: 50, height: 50)
                        Text("Side Box 3D")
                            .onTapGesture {
                                openURL(URL(string: "https://files.iextras.org/app/inifty-theme/secure/sidebox.mobileconfig")!)
                            }
                    }
                    HStack {
                        Image("sidebox-3d")
                            .resizable()
                            .scaledToFit()
                            .cornerRadius(10)
                            .frame(width: 50, height: 50)
                        Text("Side Box 3D")
                            .onTapGesture {
                                openURL(URL(string: "https://files.iextras.org/app/inifty-theme/secure/sidebox.mobileconfig")!)
                            }
                    }
                    HStack {
                        Image("sidebox-3d")
                            .resizable()
                            .scaledToFit()
                            .cornerRadius(10)
                            .frame(width: 50, height: 50)
                        Text("Side Box 3D")
                            .onTapGesture {
                                openURL(URL(string: "https://files.iextras.org/app/inifty-theme/secure/sidebox.mobileconfig")!)
                            }
                    }
                    HStack {
                        Image("sidebox-3d")
                            .resizable()
                            .scaledToFit()
                            .cornerRadius(10)
                            .frame(width: 50, height: 50)
                        Text("Side Box 3D")
                            .onTapGesture {
                                openURL(URL(string: "https://files.iextras.org/app/inifty-theme/secure/sidebox.mobileconfig")!)
                            }
                    }
                    HStack {
                        Image("sidebox-3d")
                            .resizable()
                            .scaledToFit()
                            .cornerRadius(10)
                            .frame(width: 50, height: 50)
                        Text("Side Box 3D")
                            .onTapGesture {
                                openURL(URL(string: "https://files.iextras.org/app/inifty-theme/secure/sidebox.mobileconfig")!)
                            }
                    }
                    HStack {
                        Image("sidebox-3d")
                            .resizable()
                            .scaledToFit()
                            .cornerRadius(10)
                            .frame(width: 50, height: 50)
                        Text("Side Box 3D")
                            .onTapGesture {
                                openURL(URL(string: "https://files.iextras.org/app/inifty-theme/secure/sidebox.mobileconfig")!)
                            }
                    }
                    HStack {
                        Image("sidebox-3d")
                            .resizable()
                            .scaledToFit()
                            .cornerRadius(10)
                            .frame(width: 50, height: 50)
                        Text("Side Box 3D")
                            .onTapGesture {
                                openURL(URL(string: "https://files.iextras.org/app/inifty-theme/secure/sidebox.mobileconfig")!)
                            }
                    }
                    HStack {
                        Image("sidebox-3d")
                            .resizable()
                            .scaledToFit()
                            .cornerRadius(10)
                            .frame(width: 50, height: 50)
                        Text("Side Box 3D")
                            .onTapGesture {
                                openURL(URL(string: "https://files.iextras.org/app/inifty-theme/secure/sidebox.mobileconfig")!)
                            }
                    }
                    HStack {
                        Image("sidebox-3d")
                            .resizable()
                            .scaledToFit()
                            .cornerRadius(10)
                            .frame(width: 50, height: 50)
                        Text("Side Box 3D")
                            .onTapGesture {
                                openURL(URL(string: "https://files.iextras.org/app/inifty-theme/secure/sidebox.mobileconfig")!)
                            }
                    }
                    HStack {
                        Image("sidebox-3d")
                            .resizable()
                            .scaledToFit()
                            .cornerRadius(10)
                            .frame(width: 50, height: 50)
                        Text("Side Box 3D")
                            .onTapGesture {
                                openURL(URL(string: "https://files.iextras.org/app/inifty-theme/secure/sidebox.mobileconfig")!)
                            }
                    }
                    
                }
                // Toolbar
                .toolbar {
                    ToolbarItem(placement: .principal) {
                        Text("New")
                            .font(.headline)
                    }
                    ToolbarItem(placement: .navigationBarLeading) {
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
            .blur(radius: isReloading ? 15 : 0)
            if isReloading {
                ReloadingView()
            }
        }
            
        }
    }

