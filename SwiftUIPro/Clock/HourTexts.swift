//
//  HourTexts.swift
//  Clock
//
//  Created by 石玉龙 on 2021/1/8.
//

import SwiftUI

struct HourTexts: View {
    @State var index:Int=0
    let marginRatio:CGFloat
    var body: some View {
        Text(index/5==0 ? "12" : "\(index/5)")
            .modifier(PositionInCircle(angle: .degrees(Double(index)*6), marginRatio: marginRatio))
    }
}
