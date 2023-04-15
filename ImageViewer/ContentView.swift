//
//  ContentView.swift
//  ImageViewer
//
//  Created by Yaroslav Abaturov on 15.04.2023.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        HSplitView {
            Text("Left")
                .frame(maxWidth: .infinity, maxHeight: .infinity)
            Text("Right")
                .frame(maxWidth: .infinity, maxHeight: .infinity)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
