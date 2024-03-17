//
//  ContentView.swift
//  Landmarks
//
//  Created by 余杭斌 on 2024/3/3.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        LandmarkList()
    }
}

#Preview {
    ContentView()
        .environment(ModelData())
}
