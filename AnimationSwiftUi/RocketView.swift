//
//  RocketView.swift
//  AnimationSwiftUi
//
//  Created by Максим Гурков on 17.05.2022.
//

import SwiftUI

struct RocketView: View {
    var body: some View {
        GeometryReader { geometry in
        Path { path in
            path.move(to: CGPoint(x: 50, y: 10))
            path.addLine(to: CGPoint(x: 80, y: 50))
            path.addLine(to: CGPoint(x: 80, y: 150))
            path.addLine(to: CGPoint(x: 20, y: 150))
            path.addLine(to: CGPoint(x: 20, y: 50))
            
            path.move(to: CGPoint(x: 80, y: 150))
            path.addLine(to: CGPoint(x: 90, y: 190))
            path.addLine(to: CGPoint(x: 50, y: 150))
            path.addLine(to: CGPoint(x: 10, y: 190))
            path.addLine(to: CGPoint(x: 20, y: 150))
            
            path.move(to: CGPoint(x: 50, y: 160))
            path.addQuadCurve(to: CGPoint(x: 50, y: 240),
                              control: CGPoint(x: 80, y: 190))
            path.addQuadCurve(to: CGPoint(x: 50, y: 160),
                              control: CGPoint(x: 30, y: 190))
            
        }
            .fill(
                LinearGradient(colors: [.gray, .brown, .red, .yellow],
                               startPoint: .top,
                               endPoint: .bottom)
            )
        Path { path in
            path.move(to: CGPoint(x: 50, y: 50))
            path.addQuadCurve(to: CGPoint(x: 50, y: 70),
                              control: CGPoint(x: 65, y: 60))
            path.addQuadCurve(to: CGPoint(x: 50, y: 50),
                              control: CGPoint(x: 35, y: 60))
        }
        .fill(
            LinearGradient(colors: [.white, .blue],
                           startPoint: .top,
                           endPoint: .bottom)
        )
        }
    }
}

struct FishView_Previews: PreviewProvider {
    static var previews: some View {
        RocketView()
            .frame(width: 100, height: 250)
    }
}
