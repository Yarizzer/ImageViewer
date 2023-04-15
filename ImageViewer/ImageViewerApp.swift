//
//  ImageViewerApp.swift
//  ImageViewer
//
//  Created by Yaroslav Abaturov on 15.04.2023.
//

import SwiftUI

@main
struct ImageViewerApp: App {
    var body: some Scene {
        Window("ImageViewer", id: "main") {
            ContentView()
                .onAppear {
                    NSWindow.allowsAutomaticWindowTabbing = true
                }
        }
        .commands {
            CommandGroup(replacing: .newItem) { }
            CommandGroup(replacing: .undoRedo) { }
            CommandGroup(replacing: .pasteboard) { }
        }
    }
}
