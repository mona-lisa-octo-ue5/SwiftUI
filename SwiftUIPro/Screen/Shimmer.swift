//
//  Shimmer.swift
//  Screen
//
//  Created by 石玉龙 on 2021/1/7.
//

import SwiftUI

struct Shimmer: AnimatableModifier {
    @State private var position: CGFloat=0
    private var duration:Double
    private let gradient:Gradient
    init(sideColor: Color = Color(white: 0.25), middleColor:Color = .white, animationDuaration:Double=2) {
        gradient = Gradient(colors: [sideColor, middleColor, sideColor])
        duration = animationDuaration
    }
    
    var animatableData: CGFloat {
        get{
            position
        }
        set{
            position=newValue
        }
    }
    
    func body(content: Content) -> some View {
        content.overlay(LinearGradient(gradient: gradient, startPoint: .init(x: position-0.2*(1-position), y: 0.5), endPoint: .init(x: position+0.2*position, y: 0.5)))
            .mask(content)
            .onAppear{
                withAnimation(Animation.linear(duration: self.duration).delay(1).repeatForever(autoreverses: false)) {
                    position=1
                }
            }
    }
}
