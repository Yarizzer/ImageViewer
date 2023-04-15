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
        Window(Constants.windowName, id: Constants.windowID) {
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

extension ImageViewerApp {
    private struct Constants {
        static let windowName = "ImageViewer"
        static let windowID = "main"
    }
}
