//
//  LineChart.swift
//  Vector
//
//  Created by 石玉龙 on 2021/1/7.
//

import SwiftUI

struct LineChart: Shape {
    var vector:AnimatableVector
    var animatableData: AnimatableVector{
        get{
            vector
        }
        set {
            vector=newValue
        }
    }
    func path(in rect:CGRect)->Path{
        Path{path in
            let xStep=rect.width/CGFloat(vector.values.count)
            var currentX:CGFloat=xStep
            path.move(to: .zero)
            vector.values.forEach {
                path.addLine(to: CGPoint(x: currentX, y: CGFloat($0)))
                currentX+=xStep
            }
        }
    }
}
