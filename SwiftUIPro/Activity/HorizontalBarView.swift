//
//  HorizontalBarView.swift
//  Activity
//
//  Created by 石玉龙 on 2021/1/7.
//

import SwiftUI

struct HorizontalBarView: View {
    @Binding var isAnimationState:Bool
    var body: some View {
        RoundedRectangle(cornerRadius: 10)
            .fill(Color.purple)
            .frame(width: 100, height: 10)
            .offset(x: isAnimationState ? 100 : -100, y: 0)
            .animation(Animation.easeInOut(duration: 1).repeatForever(autoreverses: true))
    }
}
