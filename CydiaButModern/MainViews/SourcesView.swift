import SwiftUI

struct Item: Identifiable {
    var id = UUID()
    var iconName: String
    var url: String
}

struct SourcesView: View {
    @State private var items: [Item] = []
    @State private var newSourceURL = ""
    @State private var showAlert = false
    @State private var alertMessage = ""
    @State private var isReloading = false
    
    let sourcesFileURL = FileManager.default.urls(for: .documentDirectory, in: .userDomainMask).first!.appendingPathComponent("Sources.txt")
    
    // Default Sources with unique icons for each
    let defaultSources = [
        Item(iconName: "1", url: "https://bigboss.org"),
        Item(iconName: "2", url: "https://chariz.com"),
        Item(iconName: "3", url: "https://ellekit.com"),
        Item(iconName: "4", url: "https://havoc.app"),
        Item(iconName: "5", url: "https://amysrepo.com"),
        Item(iconName: "6", url: "https://procursus.app")
    ]
    
    var body: some View {
        ZStack {
            NavigationView {
                VStack {
                    Text("This View is just a placeholder, it has no actual use, was made with ChatGPT and is very broken, its intended to be replaced by something better in case someone wants to make this app actually work as an alternative to Cydia/Sileo/Zebra")
                        .font(.caption)
                    List {
                        ForEach(items) { item in
                            HStack {
                                Image(item.iconName)  // Displays the respective icon for each source
                                    .resizable()
                                    .scaledToFit()
                                    .cornerRadius(5)
                                    .frame(width: 30, height: 30)
                                    .padding(.trailing, 10)
                                
                                Text(item.url)  // Display URL without quotes
                                    .font(.headline)
                                
                                Spacer()
                            }
                            .padding(.vertical, 5)
                        }
                        .onDelete(perform: deleteItems)
                    }
                    
                    HStack {
                        TextField("Enter repository URL", text: $newSourceURL)
                            .padding(10)
                            .background(Color.gray.opacity(0.1))
                            .cornerRadius(5)
                        
                        Button("Add") {
                            addSource(url: newSourceURL)
                        }
                        .padding(.horizontal)
                    }
                    .padding()
                    // Toolbar
                    .toolbar {
                        ToolbarItem(placement: .navigationBarLeading) {
                            Button("Refresh") {
                                isReloading = true
                                DispatchQueue.main.asyncAfter(deadline: .now() + 5) {
                                    isReloading = false
                                }
                            }
                        }
                        ToolbarItem(placement: .principal) {
                            Text("Sources")
                                .font(.headline)
                        }
                    }
                    // Toolbar End
                }
                .navigationBarItems(trailing: EditButton())
                .onAppear {
                    loadSources()
                }
                
                .alert(isPresented: $showAlert) {
                    Alert(
                        title: Text("Add Source"),
                        message: Text("Enter the URL of the new source."),
                        primaryButton: .default(Text("Add")) {
                            if !newSourceURL.isEmpty {
                                addSource(url: newSourceURL)
                            }
                        },
                        secondaryButton: .cancel()
                    )
                }
                .alert(isPresented: .constant(!alertMessage.isEmpty)) {
                    Alert(
                        title: Text("Did not Find Repository"),
                        message: Text(alertMessage),
                        dismissButton: .default(Text("OK"))
                    )
                }
                
            }
            .blur(radius: isReloading ? 15 : 0)
            if isReloading {
                ReloadingView()
            }
        }
    }
    
    // Function to load sources from file or use defaults
    func loadSources() {
        if FileManager.default.fileExists(atPath: sourcesFileURL.path) {
            do {
                let data = try Data(contentsOf: sourcesFileURL)
                if let content = String(data: data, encoding: .utf8) {
                    parseSources(content)
                }
            } catch {
                print("Error loading sources from file: \(error.localizedDescription)")
                items = defaultSources
            }
        } else {
            items = defaultSources
        }
    }
    
    // Function to parse sources from file content
    func parseSources(_ content: String) {
        var parsedItems: [Item] = []
        let lines = content.split(separator: "\n")
        for line in lines {
            if line.hasPrefix("url:") {
                // Remove leading "url:" and any surrounding quotes from the URL string
                let url = line.replacingOccurrences(of: "url:", with: "")
                    .replacingOccurrences(of: "\"", with: "") // Remove quotes
                    .trimmingCharacters(in: .whitespacesAndNewlines)
                parsedItems.append(Item(iconName: "default_source", url: url))
            }
        }
        items = parsedItems
    }
    
    // Function to save sources to file
    func saveSources() {
        let sourcesText = items.map { "url: \"\( $0.url )\"\n" }.joined()  // Ensure quotes are added in saved file
        do {
            try sourcesText.write(to: sourcesFileURL, atomically: true, encoding: .utf8)
        } catch {
            print("Error saving sources: \(error.localizedDescription)")
        }
    }
    
    // Function to delete items from the list
    func deleteItems(at offsets: IndexSet) {
        items.remove(atOffsets: offsets)
        saveSources() // Save after deletion
    }
    
    // Function to add a new source
    func addSource(url: String) {
        // Simulating URL validation (in real use, you would probably want to check the URL's availability)
        // In this case, we're just displaying the "repository not found" message after every URL submission
        alertMessage = """
        The indicated repository could not be found. This could be because you are trying to add a legacy Installer repository (these are not supported).
        Also, this interface is only capable of working with exact repository URLs.
        """
        let cleanedURL = url.replacingOccurrences(of: "\"", with: "").trimmingCharacters(in: .whitespacesAndNewlines)
        items.append(Item(iconName: "default_source", url: cleanedURL))  // Use default icon for new items
        saveSources() // Save after adding
        newSourceURL = "" // Clear input field
    }
}
