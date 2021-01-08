//
//  PositionInCircle.swift
//  Clock
//
//  Created by 石玉龙 on 2021/1/8.
//

import SwiftUI

struct PositionInCircle:ViewModifier {
    let angle:Angle
    let marginRatio:CGFloat
    func body(content: Content) -> some View {
        GeometryReader{geometry in
            content.position(.inCircle(geometry.circle, for: self.angle,margin: geometry.radius*self.marginRatio))
        }
    }
}
