//
//  AppCore.swift
//  ImageViewer
//
//  Created by Yaroslav Abaturov on 15.04.2023.
//

protocol AppCoreDataProvider {
    var dataLayer: AppDataLayerType { get }
}

class AppCore {
    static let shared = AppCore()
    
    private init() {
        self.dataL = AppDataLayer()
    }
    
    private let dataL: AppDataLayerType
}

extension AppCore: AppCoreDataProvider {
    var dataLayer: AppDataLayerType { dataL }
}
