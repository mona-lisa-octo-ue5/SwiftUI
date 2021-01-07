//
//  OutLineView.swift
//  Progress
//
//  Created by 石玉龙 on 2021/1/7.
//

import SwiftUI

struct OutLineView: View {
    @Binding var percentage:CGFloat
    var colors:[Color]=[Color.outlineStrokeColor]
    var body: some View {
        ZStack{
            Circle()
                .fill(Color.clear)
                .frame(width: 250, height: 250)
                .overlay(
                    Circle()
                        .trim(from: 0, to: percentage)
                        .stroke(style: StrokeStyle(lineWidth: 20, lineCap: .round, lineJoin: .round))
                        .fill(AngularGradient(gradient: .init(colors: colors), center: .center, startAngle: .zero, endAngle: .init(degrees: 360)))
                        .rotationEffect(.init(radians: -.pi/2))
                )
                .animation(.spring(response: 1.0, dampingFraction: 1.0, blendDuration: 1.0))
        }
    }
}
