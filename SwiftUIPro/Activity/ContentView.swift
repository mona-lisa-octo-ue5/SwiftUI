//
//  ContentView.swift
//  Activity
//
//  Created by 石玉龙 on 2021/1/7.
//

import SwiftUI

struct ContentView: View {
    @State private var isAnimate = false
    var body: some View {
        VStack(spacing:60){
            ActivityIndicator(isAnimationState: $isAnimate, indicatorCount: 6, spacing: 10)
            SeismicWaveView(isAnimationState: $isAnimate)
            RotatingDotsIndicatorView()
                .foregroundColor(.green)
                .frame(width: 100, height: 100, alignment: .center)
            AudioEqualizer(isAnimationState: $isAnimate)
            AccordionView(isAnimationState: $isAnimate)
            HorizontalBarView(isAnimationState: $isAnimate)
            CircleView(isAnimationState: $isAnimate, circleViewCount: 6)
        }
        .onAppear(){
            self.isAnimate.toggle()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
