//
//  Example.swift
//  Landmarks
//
//  Created by 余杭斌 on 2024/3/17.
//

import SwiftUI

struct Example: View {
    var body: some View {
        Path { path in
            path.move(to: CGPoint(x: 20, y: 0))
            path.addLine(to: CGPoint(x: 20, y: 200))
                       path.addLine(to: CGPoint(x: 220, y: 200))
                       path.addLine(to: CGPoint(x: 220, y: 0))
        }
//        }.fill(
//            .linearGradient(
//                Gradient(colors: [.green, .blue]),
//                startPoint: .init(x: 0.5, y: 0),
//                endPoint: .init(x: 0.5, y: 0.5)
//            ))
    }
}

#Preview {
    Example()
}
