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
            .frame(width: Constants.listWidthValue)
        } detail: {
            if let index = selectedIndex {
                Image(data[index])
                    .resizable()
                    .scaledToFit()
            } else {
                Text(Constants.selectionPlaceholder)
                    .frame(maxWidth: .infinity, maxHeight: .infinity)
            }
        }
        .frame(minWidth: Constants.navigatorMinDemetions.width, minHeight: Constants.navigatorMinDemetions.height)
    }
    
    private let data = ["nssl0033", "nssl0034", "nssl0041", "nssl0042", "nssl0043", "nssl0045", "nssl0046", "nssl0049", "nssl0051", "nssl0091"]
    
    @State private var selectedIndex: Int?
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

extension ContentView {
    private struct Constants {
        static let selectionPlaceholder = "Please select an image"
        static let listWidthValue: CGFloat = 150
        static let navigatorMinDemetions: (width: CGFloat, height: CGFloat) = (width: 480, height: 320)
    }
}
