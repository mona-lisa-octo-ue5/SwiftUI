//
//  SeismicWaveView.swift
//  Activity
//
//  Created by 石玉龙 on 2021/1/7.
//

import SwiftUI

struct SeismicWaveView: View {
    @Binding var isAnimationState:Bool
    var body: some View {
        ZStack{
            Circle().fill(Color.blue.opacity(isAnimationState ? 0.0 : 1.0))
                .frame(width: 80, height: 80)
                .scaleEffect(isAnimationState ? 1 : 0)
            Circle().fill(Color.blue.opacity(isAnimationState ? 0 : 1.0))
                .frame(width: 80, height: 80)
                .scaleEffect(isAnimationState ? 2 : 0)
            Circle().fill(Color.blue.opacity(isAnimationState ? 0.0 : 1.0))
                .frame(width: 80, height: 80)
                .scaleEffect(isAnimationState ? 3 : 0)
            Circle().fill(Color.blue.opacity(isAnimationState ? 0.0 : 1.0))
                .frame(width: 80, height: 80)
                .scaleEffect(isAnimationState ? 4 : 0)
            Circle().fill(Color.blue).frame(width: 80, height: 80)
        }
        .animation(Animation.linear(duration: 1.5).repeatForever(autoreverses: false).speed(1.2))
    }
}
