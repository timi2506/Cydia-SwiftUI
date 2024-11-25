//
//  CydiaButModern
//
//  Created by @timi2506 on 24.11.2024.
//

import SwiftUI

struct PopularView: View {
    @State var tabSelectedValue = 0
    
    var body: some View {
        NavigationView {
            VStack {
                Text("Popular")
                    .font(.headline)
                Picker("", selection: $tabSelectedValue) {
                    Text("User").tag(0)
                    Text("Expert").tag(1)
                    Text("Recent").tag(2)
                    
                }
                .padding(.leading)
                .padding(.trailing)

                .pickerStyle(SegmentedPickerStyle())
                TabView(selection: $tabSelectedValue) {
                    
                    UserTabView()
                        .tag(0)
                    
                    ExpertTabView()
                        .tag(1)
                    
                    RecentTabView()
                        .tag(2)
                    
                    
                }
                .tabViewStyle(.page(indexDisplayMode: .never))
            }
        }
    }
}

struct UserTabView: View {
    var body: some View {
        List {
            HStack {
                Image("battery_mode")
                    .resizable()
                    .scaledToFit()
                    .cornerRadius(10)
                    .frame(width: 50, height: 50)
                NavigationLink("Battery Mode", destination: EmptyView())
            }
            HStack {
                Image("superLPM")
                    .resizable()
                    .scaledToFit()
                    .cornerRadius(10)
                    .frame(width: 50, height: 50)
                NavigationLink("Super LP Mode", destination: EmptyView())
            }
            HStack {
                Image("ShareWi-Fi")
                    .resizable()
                    .scaledToFit()
                    .cornerRadius(10)
                    .frame(width: 50, height: 50)
                NavigationLink("Share Wi-Fi", destination: EmptyView())
            }
            HStack {
                Image("iToggle")
                    .resizable()
                    .scaledToFit()
                    .cornerRadius(10)
                    .frame(width: 50, height: 50)
                NavigationLink("iToggle", destination: EmptyView())
            }
            HStack {
                Image("QuickControlsEN")
                    .resizable()
                    .scaledToFit()
                    .cornerRadius(10)
                    .frame(width: 50, height: 50)
                NavigationLink("Quick Controls EN", destination: EmptyView())
            }
            HStack {
                Image("battery_mode")
                    .resizable()
                    .scaledToFit()
                    .cornerRadius(10)
                    .frame(width: 50, height: 50)
                NavigationLink("Battery Mode", destination: EmptyView())
            }
            HStack {
                Image("superLPM")
                    .resizable()
                    .scaledToFit()
                    .cornerRadius(10)
                    .frame(width: 50, height: 50)
                NavigationLink("Super LP Mode", destination: EmptyView())
            }
            HStack {
                Image("ShareWi-Fi")
                    .resizable()
                    .scaledToFit()
                    .cornerRadius(10)
                    .frame(width: 50, height: 50)
                NavigationLink("Share Wi-Fi", destination: EmptyView())
            }
            HStack {
                Image("iToggle")
                    .resizable()
                    .scaledToFit()
                    .cornerRadius(10)
                    .frame(width: 50, height: 50)
                NavigationLink("iToggle", destination: EmptyView())
            }
            HStack {
                Image("QuickControlsEN")
                    .resizable()
                    .scaledToFit()
                    .cornerRadius(10)
                    .frame(width: 50, height: 50)
                NavigationLink("Quick Controls EN", destination: EmptyView())
            }
            HStack {
                Image("battery_mode")
                    .resizable()
                    .scaledToFit()
                    .cornerRadius(10)
                    .frame(width: 50, height: 50)
                NavigationLink("Battery Mode", destination: EmptyView())
            }
            HStack {
                Image("superLPM")
                    .resizable()
                    .scaledToFit()
                    .cornerRadius(10)
                    .frame(width: 50, height: 50)
                NavigationLink("Super LP Mode", destination: EmptyView())
            }
            HStack {
                Image("ShareWi-Fi")
                    .resizable()
                    .scaledToFit()
                    .cornerRadius(10)
                    .frame(width: 50, height: 50)
                NavigationLink("Share Wi-Fi", destination: EmptyView())
            }
            HStack {
                Image("iToggle")
                    .resizable()
                    .scaledToFit()
                    .cornerRadius(10)
                    .frame(width: 50, height: 50)
                NavigationLink("iToggle", destination: EmptyView())
            }
            HStack {
                Image("QuickControlsEN")
                    .resizable()
                    .scaledToFit()
                    .cornerRadius(10)
                    .frame(width: 50, height: 50)
                NavigationLink("Quick Controls EN", destination: EmptyView())
            }
            HStack {
                Image("battery_mode")
                    .resizable()
                    .scaledToFit()
                    .cornerRadius(10)
                    .frame(width: 50, height: 50)
                NavigationLink("Battery Mode", destination: EmptyView())
            }
            HStack {
                Image("superLPM")
                    .resizable()
                    .scaledToFit()
                    .cornerRadius(10)
                    .frame(width: 50, height: 50)
                NavigationLink("Super LP Mode", destination: EmptyView())
            }
            HStack {
                Image("ShareWi-Fi")
                    .resizable()
                    .scaledToFit()
                    .cornerRadius(10)
                    .frame(width: 50, height: 50)
                NavigationLink("Share Wi-Fi", destination: EmptyView())
            }
            HStack {
                Image("iToggle")
                    .resizable()
                    .scaledToFit()
                    .cornerRadius(10)
                    .frame(width: 50, height: 50)
                NavigationLink("iToggle", destination: EmptyView())
            }
            HStack {
                Image("QuickControlsEN")
                    .resizable()
                    .scaledToFit()
                    .cornerRadius(10)
                    .frame(width: 50, height: 50)
                NavigationLink("Quick Controls EN", destination: EmptyView())
            }
            HStack {
                Image("battery_mode")
                    .resizable()
                    .scaledToFit()
                    .cornerRadius(10)
                    .frame(width: 50, height: 50)
                NavigationLink("Battery Mode", destination: EmptyView())
            }
            HStack {
                Image("superLPM")
                    .resizable()
                    .scaledToFit()
                    .cornerRadius(10)
                    .frame(width: 50, height: 50)
                NavigationLink("Super LP Mode", destination: EmptyView())
            }
            HStack {
                Image("ShareWi-Fi")
                    .resizable()
                    .scaledToFit()
                    .cornerRadius(10)
                    .frame(width: 50, height: 50)
                NavigationLink("Share Wi-Fi", destination: EmptyView())
            }
            HStack {
                Image("iToggle")
                    .resizable()
                    .scaledToFit()
                    .cornerRadius(10)
                    .frame(width: 50, height: 50)
                NavigationLink("iToggle", destination: EmptyView())
            }
            HStack {
                Image("QuickControlsEN")
                    .resizable()
                    .scaledToFit()
                    .cornerRadius(10)
                    .frame(width: 50, height: 50)
                NavigationLink("Quick Controls EN", destination: EmptyView())
            }
        }
    }
}
struct ExpertTabView: View {
    var body: some View {
        List {
            HStack {
                Image("CombineScreenshotsV")
                    .resizable()
                    .scaledToFit()
                    .cornerRadius(10)
                    .frame(width: 50, height: 50)
                NavigationLink("Combine Screenshots V", destination: EmptyView())
            }
            HStack {
                Image("TextEffects")
                    .resizable()
                    .scaledToFit()
                    .cornerRadius(10)
                    .frame(width: 50, height: 50)
                NavigationLink("Text Effects", destination: EmptyView())
            }
            HStack {
                Image("GetLyrics")
                    .resizable()
                    .scaledToFit()
                    .cornerRadius(10)
                    .frame(width: 50, height: 50)
                NavigationLink("Get Lyrics", destination: EmptyView())
            }
            HStack {
                Image("DateCalculator")
                    .resizable()
                    .scaledToFit()
                    .cornerRadius(10)
                    .frame(width: 50, height: 50)
                NavigationLink("Date Calculator", destination: EmptyView())
            }
            HStack {
                Image("AlarmsIntervals")
                    .resizable()
                    .scaledToFit()
                    .cornerRadius(10)
                    .frame(width: 50, height: 50)
                NavigationLink("Alarms w/ Intervals", destination: EmptyView())
            }
            HStack {
                Image("CombineScreenshotsV")
                    .resizable()
                    .scaledToFit()
                    .cornerRadius(10)
                    .frame(width: 50, height: 50)
                NavigationLink("Combine Screenshots V", destination: EmptyView())
            }
            HStack {
                Image("TextEffects")
                    .resizable()
                    .scaledToFit()
                    .cornerRadius(10)
                    .frame(width: 50, height: 50)
                NavigationLink("Text Effects", destination: EmptyView())
            }
            HStack {
                Image("GetLyrics")
                    .resizable()
                    .scaledToFit()
                    .cornerRadius(10)
                    .frame(width: 50, height: 50)
                NavigationLink("Get Lyrics", destination: EmptyView())
            }
            HStack {
                Image("DateCalculator")
                    .resizable()
                    .scaledToFit()
                    .cornerRadius(10)
                    .frame(width: 50, height: 50)
                NavigationLink("Date Calculator", destination: EmptyView())
            }
            HStack {
                Image("AlarmsIntervals")
                    .resizable()
                    .scaledToFit()
                    .cornerRadius(10)
                    .frame(width: 50, height: 50)
                NavigationLink("Alarms w/ Intervals", destination: EmptyView())
            }
            HStack {
                Image("CombineScreenshotsV")
                    .resizable()
                    .scaledToFit()
                    .cornerRadius(10)
                    .frame(width: 50, height: 50)
                NavigationLink("Combine Screenshots V", destination: EmptyView())
            }
            HStack {
                Image("TextEffects")
                    .resizable()
                    .scaledToFit()
                    .cornerRadius(10)
                    .frame(width: 50, height: 50)
                NavigationLink("Text Effects", destination: EmptyView())
            }
            HStack {
                Image("GetLyrics")
                    .resizable()
                    .scaledToFit()
                    .cornerRadius(10)
                    .frame(width: 50, height: 50)
                NavigationLink("Get Lyrics", destination: EmptyView())
            }
            HStack {
                Image("DateCalculator")
                    .resizable()
                    .scaledToFit()
                    .cornerRadius(10)
                    .frame(width: 50, height: 50)
                NavigationLink("Date Calculator", destination: EmptyView())
            }
            HStack {
                Image("AlarmsIntervals")
                    .resizable()
                    .scaledToFit()
                    .cornerRadius(10)
                    .frame(width: 50, height: 50)
                NavigationLink("Alarms w/ Intervals", destination: EmptyView())
            }
            HStack {
                Image("CombineScreenshotsV")
                    .resizable()
                    .scaledToFit()
                    .cornerRadius(10)
                    .frame(width: 50, height: 50)
                NavigationLink("Combine Screenshots V", destination: EmptyView())
            }
            HStack {
                Image("TextEffects")
                    .resizable()
                    .scaledToFit()
                    .cornerRadius(10)
                    .frame(width: 50, height: 50)
                NavigationLink("Text Effects", destination: EmptyView())
            }
            HStack {
                Image("GetLyrics")
                    .resizable()
                    .scaledToFit()
                    .cornerRadius(10)
                    .frame(width: 50, height: 50)
                NavigationLink("Get Lyrics", destination: EmptyView())
            }
            HStack {
                Image("DateCalculator")
                    .resizable()
                    .scaledToFit()
                    .cornerRadius(10)
                    .frame(width: 50, height: 50)
                NavigationLink("Date Calculator", destination: EmptyView())
            }
            HStack {
                Image("AlarmsIntervals")
                    .resizable()
                    .scaledToFit()
                    .cornerRadius(10)
                    .frame(width: 50, height: 50)
                NavigationLink("Alarms w/ Intervals", destination: EmptyView())
            }
            HStack {
                Image("CombineScreenshotsV")
                    .resizable()
                    .scaledToFit()
                    .cornerRadius(10)
                    .frame(width: 50, height: 50)
                NavigationLink("Combine Screenshots V", destination: EmptyView())
            }
            HStack {
                Image("TextEffects")
                    .resizable()
                    .scaledToFit()
                    .cornerRadius(10)
                    .frame(width: 50, height: 50)
                NavigationLink("Text Effects", destination: EmptyView())
            }
            HStack {
                Image("GetLyrics")
                    .resizable()
                    .scaledToFit()
                    .cornerRadius(10)
                    .frame(width: 50, height: 50)
                NavigationLink("Get Lyrics", destination: EmptyView())
            }
            HStack {
                Image("DateCalculator")
                    .resizable()
                    .scaledToFit()
                    .cornerRadius(10)
                    .frame(width: 50, height: 50)
                NavigationLink("Date Calculator", destination: EmptyView())
            }
            HStack {
                Image("AlarmsIntervals")
                    .resizable()
                    .scaledToFit()
                    .cornerRadius(10)
                    .frame(width: 50, height: 50)
                NavigationLink("Alarms w/ Intervals", destination: EmptyView())
            }
            
        }
    }
}
struct RecentTabView: View {
    var body: some View {
        List {
            HStack {
                Image("ChangeFont")
                    .resizable()
                    .scaledToFit()
                    .cornerRadius(10)
                    .frame(width: 50, height: 50)
                NavigationLink("Change Font", destination: EmptyView())
            }
            HStack {
                Image("ImageResizer")
                    .resizable()
                    .scaledToFit()
                    .cornerRadius(10)
                    .frame(width: 50, height: 50)
                NavigationLink("Image Resizer", destination: EmptyView())
            }
            HStack {
                Image("Mergepdf")
                    .resizable()
                    .scaledToFit()
                    .cornerRadius(10)
                    .frame(width: 50, height: 50)
                NavigationLink("Merge PDF", destination: EmptyView())
            }
            HStack {
                Image("CombineScreenshotsV")
                    .resizable()
                    .scaledToFit()
                    .cornerRadius(10)
                    .frame(width: 50, height: 50)
                NavigationLink("Combine Screenshots V", destination: EmptyView())
            }
            HStack {
                Image("TextEffects")
                    .resizable()
                    .scaledToFit()
                    .cornerRadius(10)
                    .frame(width: 50, height: 50)
                NavigationLink("Text Effects" , destination: EmptyView())
            }
            HStack {
                Image("ChangeFont")
                    .resizable()
                    .scaledToFit()
                    .cornerRadius(10)
                    .frame(width: 50, height: 50)
                NavigationLink("Change Font", destination: EmptyView())
            }
            HStack {
                Image("ImageResizer")
                    .resizable()
                    .scaledToFit()
                    .cornerRadius(10)
                    .frame(width: 50, height: 50)
                NavigationLink("Image Resizer", destination: EmptyView())
            }
            HStack {
                Image("Mergepdf")
                    .resizable()
                    .scaledToFit()
                    .cornerRadius(10)
                    .frame(width: 50, height: 50)
                NavigationLink("Merge PDF", destination: EmptyView())
            }
            HStack {
                Image("CombineScreenshotsV")
                    .resizable()
                    .scaledToFit()
                    .cornerRadius(10)
                    .frame(width: 50, height: 50)
                NavigationLink("Combine Screenshots V", destination: EmptyView())
            }
            HStack {
                Image("TextEffects")
                    .resizable()
                    .scaledToFit()
                    .cornerRadius(10)
                    .frame(width: 50, height: 50)
                NavigationLink("Text Effects" , destination: EmptyView())
            }
            HStack {
                Image("ChangeFont")
                    .resizable()
                    .scaledToFit()
                    .cornerRadius(10)
                    .frame(width: 50, height: 50)
                NavigationLink("Change Font", destination: EmptyView())
            }
            HStack {
                Image("ImageResizer")
                    .resizable()
                    .scaledToFit()
                    .cornerRadius(10)
                    .frame(width: 50, height: 50)
                NavigationLink("Image Resizer", destination: EmptyView())
            }
            HStack {
                Image("Mergepdf")
                    .resizable()
                    .scaledToFit()
                    .cornerRadius(10)
                    .frame(width: 50, height: 50)
                NavigationLink("Merge PDF", destination: EmptyView())
            }
            HStack {
                Image("CombineScreenshotsV")
                    .resizable()
                    .scaledToFit()
                    .cornerRadius(10)
                    .frame(width: 50, height: 50)
                NavigationLink("Combine Screenshots V", destination: EmptyView())
            }
            HStack {
                Image("TextEffects")
                    .resizable()
                    .scaledToFit()
                    .cornerRadius(10)
                    .frame(width: 50, height: 50)
                NavigationLink("Text Effects" , destination: EmptyView())
            }
            HStack {
                Image("ChangeFont")
                    .resizable()
                    .scaledToFit()
                    .cornerRadius(10)
                    .frame(width: 50, height: 50)
                NavigationLink("Change Font", destination: EmptyView())
            }
            HStack {
                Image("ImageResizer")
                    .resizable()
                    .scaledToFit()
                    .cornerRadius(10)
                    .frame(width: 50, height: 50)
                NavigationLink("Image Resizer", destination: EmptyView())
            }
            HStack {
                Image("Mergepdf")
                    .resizable()
                    .scaledToFit()
                    .cornerRadius(10)
                    .frame(width: 50, height: 50)
                NavigationLink("Merge PDF", destination: EmptyView())
            }
            HStack {
                Image("CombineScreenshotsV")
                    .resizable()
                    .scaledToFit()
                    .cornerRadius(10)
                    .frame(width: 50, height: 50)
                NavigationLink("Combine Screenshots V", destination: EmptyView())
            }
            HStack {
                Image("TextEffects")
                    .resizable()
                    .scaledToFit()
                    .cornerRadius(10)
                    .frame(width: 50, height: 50)
                NavigationLink("Text Effects" , destination: EmptyView())
            }
            HStack {
                Image("ChangeFont")
                    .resizable()
                    .scaledToFit()
                    .cornerRadius(10)
                    .frame(width: 50, height: 50)
                NavigationLink("Change Font", destination: EmptyView())
            }
            HStack {
                Image("ImageResizer")
                    .resizable()
                    .scaledToFit()
                    .cornerRadius(10)
                    .frame(width: 50, height: 50)
                NavigationLink("Image Resizer", destination: EmptyView())
            }
            HStack {
                Image("Mergepdf")
                    .resizable()
                    .scaledToFit()
                    .cornerRadius(10)
                    .frame(width: 50, height: 50)
                NavigationLink("Merge PDF", destination: EmptyView())
            }
            HStack {
                Image("CombineScreenshotsV")
                    .resizable()
                    .scaledToFit()
                    .cornerRadius(10)
                    .frame(width: 50, height: 50)
                NavigationLink("Combine Screenshots V", destination: EmptyView())
            }
            HStack {
                Image("TextEffects")
                    .resizable()
                    .scaledToFit()
                    .cornerRadius(10)
                    .frame(width: 50, height: 50)
                NavigationLink("Text Effects" , destination: EmptyView())
            }
            
        }
    }
}

