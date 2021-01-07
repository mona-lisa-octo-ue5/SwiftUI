//
//  AudioEqualizer.swift
//  Activity
//
//  Created by 石玉龙 on 2021/1/7.
//

import SwiftUI

struct AudioEqualizer: View {
    @Binding var isAnimationState:Bool
    var body: some View {
        HStack(alignment: .bottom, spacing: 10) {
            Capsule(style: .continuous)
                .fill(Color.red)
                .frame(width: 10, height: isAnimationState ? 100 : 20)
                .animation(Animation.linear(duration: 0.6).repeatForever().speed(2))
            Capsule(style: .continuous)
                .fill(Color.orange)
                .frame(width: 10, height: isAnimationState ? 100 : 20)
                .animation(Animation.linear(duration: 0.8).repeatForever().speed(2))
            Capsule(style: .continuous)
                .fill(Color.green)
                .frame(width: 10, height: isAnimationState ? 100 : 20)
                .animation(Animation.linear(duration: 0.7).repeatForever().speed(2))
            Capsule(style: .continuous)
                .fill(Color.blue)
                .frame(width: 10, height: isAnimationState ? 100 : 20)
                .animation(Animation.linear(duration: 0.5).repeatForever().speed(2))
            Capsule(style: .continuous)
                .fill(Color.yellow)
                .frame(width: 10, height: isAnimationState ? 20 : 100)
                .animation(Animation.linear(duration: 0.9).repeatForever().speed(2))
        }
    }
}
