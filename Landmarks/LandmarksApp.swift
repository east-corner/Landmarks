//
//  LandmarksApp.swift
//  Landmarks
//
//  Created by 余杭斌 on 2024/3/3.
//

import SwiftUI

@main
struct LandmarksApp: App {
    @State private var modelData = ModelData()
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(modelData)
        }
    }
}
