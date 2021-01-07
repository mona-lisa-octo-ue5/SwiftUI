//
//  ActivityIndicator.swift
//  Activity
//
//  Created by 石玉龙 on 2021/1/7.
//

import SwiftUI

struct ActivityIndicator: View {
    @Binding var isAnimationState:Bool
    var indicatorCount=0
    var spacing:CGFloat=5
    var body: some View {
        HStack(alignment: .center, spacing: spacing){
            ForEach(0..<indicatorCount){index in
                Capsule(style: .continuous)
                    .fill(Color.red)
                    .frame(width: 10, height: 50)
                    .scaleEffect(isAnimationState ? 0.5 : 1.0)
                    .animation(Animation.easeInOut(duration: 0.5).repeatForever().delay(Double(index)*0.1))
            }
        }
    }
}
