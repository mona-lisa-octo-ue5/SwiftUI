//
//  AccordionView.swift
//  Activity
//
//  Created by 石玉龙 on 2021/1/7.
//

import SwiftUI

struct AccordionView: View {
    @Binding var isAnimationState:Bool
    var body: some View {
        HStack(alignment: .center, spacing: isAnimationState ? 15 : 5){
            ForEach(0..<7){index in
                if index%2==0 {
                    Capsule(style: .continuous)
                        .fill(Color.orange)
                        .frame(width: 10, height: 50)
                }else{
                    Capsule(style: .continuous)
                        .fill(Color.orange)
                        .frame(width: 10, height: 30)
                }
            }
        }
        .frame(width: isAnimationState ? 150 : 100)
        .animation(Animation.easeInOut(duration: 0.9).repeatForever(autoreverses: true))
    }
}
