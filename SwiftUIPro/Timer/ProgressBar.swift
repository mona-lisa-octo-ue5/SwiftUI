//
//  ProgressBar.swift
//  Timer
//
//  Created by 石玉龙 on 2021/1/7.
//

import SwiftUI

struct ProgressBar: View {
    var counter:Int
    var totalCountdown:CGFloat
    let gradient=AngularGradient(gradient: Gradient(colors: [.yellow,.orange]), center: UnitPoint(x: 0.5, y: 0.5),angle: Angle(degrees: 360))
    func startProgress()->CGFloat{
        return (CGFloat(counter)/CGFloat(totalCountdown))
    }
    func completed()->Bool{
        return startProgress() == 1
    }
    var body: some View {
        Circle()
            .fill(Color.clear)
            .frame(width: 250, height: 250)
            .overlay(Circle().trim(from: 0, to: startProgress())
                        .stroke(style: StrokeStyle(lineWidth: 15, lineCap: .round, lineJoin: .round))
                        .rotationEffect(.init(degrees: -90))
                        .foregroundColor((completed() ? Color.green : Color.orange))
                        .animation(.easeInOut(duration: 0.2)))
    }
}
