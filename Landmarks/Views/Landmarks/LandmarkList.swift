//
//  LandmarkList.swift
//  Landmarks
//
//  Created by 余杭斌 on 2024/3/16.
//

import SwiftUI


struct LandmarkList: View {
    @Environment(ModelData.self) var modelData
    
    @State private var showFavoritesOnly = true
    
    var filteredLandmarks: [Landmark] {
        modelData.landmarks.filter { landmark in
            (!showFavoritesOnly || landmark.isFavorite)
            
        }
    }
    
    var body: some View {
        NavigationSplitView {
            List {
                Toggle(isOn: $showFavoritesOnly) {
                    Text("Favorites only")
                }
                ForEach(filteredLandmarks) { landmark in
                    NavigationLink {
                        LandmarkDetail(landmark: landmark)
                    } label: {
                        LandmarkRow(landmark: landmark)
                    }
                }
                .animation(.default, value: filteredLandmarks)
                .navigationTitle("Landmarks")
            }
        }detail: {
            Text("Select a Landmark")
        }
    } 
    
}

#Preview {
    LandmarkList()
        .environment(ModelData())
}
