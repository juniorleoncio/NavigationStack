//
//  ContentView.swift
//  NavigationStack
//
//  Created by Junior Leoncio on 14/07/23.
//

import SwiftUI

struct ContentView: View {

    var platforms: [Platform] = [
        .init(name: "Xbox", imageName: "", color: .green)
    ]
    
    var body: some View {
        List {
            Section("Platforms") {
                ForEach(platforms, id: \.name) { platform in
                    Label(platform.name, systemImage: platform.imageName)
                        .foregroundColor(platform.color)
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct Platform {
    let name: String
    let imageName: String
    let color: Color
}
