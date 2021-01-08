//
//  Extension.swift
//  Clock
//
//  Created by 石玉龙 on 2021/1/8.
//

import SwiftUI

extension CGPoint{
    static func inCircle(_ circle: CGRect,for angle:Angle, margin:CGFloat = 0.0) -> Self {
        let radians = CGFloat(angle.radians) - .pi / 2
        return CGPoint(
            x: circle.midX + (circle.radius - margin) * cos(radians),
            y: circle.midY + (circle.radius - margin) * sin(radians)
        )
    }
}
extension CGRect {
    static func circle(center: CGPoint,radius: CGFloat) -> Self{
        .init(x: center.x - radius, y: center.y - radius, width: radius * 2, height: radius * 2)
    }
    var center: CGPoint{
        .init(x: midX, y: midY)
    }
    var radius: CGFloat{
        min(width, height) / 2
    }
}
extension GeometryProxy{
    var radius: CGFloat{
        min(size.width, size.height) / 2
    }
    var circle: CGRect{
        frame(in: .local)
    }
}
