//
//  ClockView.swift
//  Timer
//
//  Created by 石玉龙 on 2021/1/7.
//

import SwiftUI

struct ClockView: View {
    var counter:Int
    var totalCountdown:CGFloat
    var body: some View {
        VStack{
            Text(counterToMinutes())
                .font(.custom("Avenir Next", size: 50))
                .fontWeight(.black)
        }
    }
    func counterToMinutes()->String{
        let currentTime=Int(totalCountdown)-counter
        print("总时长：\(totalCountdown)")
        print("计时器：\(counter)")
        let seconds=currentTime%60
        let minutes=Int(currentTime/60)
        return "\(minutes):\(seconds<10 ? "0" : "")\(seconds)"
    }
}
