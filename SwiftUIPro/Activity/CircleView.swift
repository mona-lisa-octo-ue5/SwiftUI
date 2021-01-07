//
//  CircleView.swift
//  Activity
//
//  Created by 石玉龙 on 2021/1/7.
//

import SwiftUI

struct CircleView: View {
    @Binding var isAnimationState: Bool
    var circleViewCount:Int
    var body: some View {
        HStack{
            ForEach(0..<circleViewCount){index in
                Circle()
                    .fill(Color.green)
                    .frame(width: 20, height: 20)
                    .scaleEffect(isAnimationState ? 1.0 : 0.5)
                    .animation(Animation.easeInOut(duration: 0.5).repeatForever().delay(Double(index)*0.2))
            }
        }
    }
}
