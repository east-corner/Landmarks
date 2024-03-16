//
//  LandmarkList.swift
//  Landmarks
//
//  Created by 余杭斌 on 2024/3/16.
//

import SwiftUI

struct LandmarkList: View {
    var body: some View {
        NavigationSplitView {
            List(landmarks) { landmark in
                NavigationLink {
                    LandmarkDetail(landmark: landmark)
                } label: {
                    LandmarkRow(landmark: landmark)
                }
            }
            .navigationTitle("Landmarks")
        }detail: {
            Text("Select a Landmark")
        }
    } 
    
}

#Preview {
    LandmarkList()
}