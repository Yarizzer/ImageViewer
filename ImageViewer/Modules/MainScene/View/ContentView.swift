//
//  ContentView.swift
//  ImageViewer
//
//  Created by Yaroslav Abaturov on 15.04.2023.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationSplitView {
            List(0..<data.count, id: \.self, selection: $selectedIndex) { index in
                Text(data[index])
            }
            .frame(width: 150)
        } detail: {
            if let index = selectedIndex {
                Image(data[index])
                    .resizable()
                    .scaledToFit()
            } else {
                Text("Please select an image")
                    .frame(maxWidth: .infinity, maxHeight: .infinity)
            }
        }
        .frame(minWidth: 480, minHeight: 320)
    }
    
    private let data = ["nssl0033", "nssl0034", "nssl0041", "nssl0042", "nssl0043", "nssl0045", "nssl0046", "nssl0049", "nssl0051", "nssl0091"]
    
    @State private var selectedIndex: Int?
    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
