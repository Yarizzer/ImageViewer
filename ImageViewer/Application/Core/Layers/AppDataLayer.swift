//
//  AppDataLayer.swift
//  ImageViewer
//
//  Created by Yaroslav Abaturov on 15.04.2023.
//

protocol AppDataLayerType {
    var data: [String] { get }
}

class AppDataLayer: AppDataLayerType {
    
    var data: [String] { Constants.data }
}

extension AppDataLayer {
    private struct Constants {
        static let data = ["nssl0033", "nssl0034", "nssl0041", "nssl0042", "nssl0043", "nssl0045", "nssl0046", "nssl0049", "nssl0051", "nssl0091"]
    }
}
