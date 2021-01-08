//
//  ClockView.swift
//  Clock
//
//  Created by 石玉龙 on 2021/1/8.
//

import SwiftUI

struct ClockView: View {
    @Binding var isDark:Bool
    @State var currentTime=Time(sec: 0, min: 0, hour: 0)
    @State var receiver=Timer.publish(every: 1, on: .current, in: .default).autoconnect()
    @State var secondColor:Color=Color.primary
    @State var dialThemeColor:Color=Color("Color")
    @State var is12HourClock:Bool=false
    var body: some View {
        VStack{
            TopView(isDark:$isDark)
            Spacer(minLength: 0)
            ClockDialView(currentTime: $currentTime, isDark: $isDark,secondColor: secondColor,dialColor: dialThemeColor)
                .frame(width: screenW, height: screenW)
            TimeZoneView(is12h: $is12HourClock)
            Spacer(minLength: 0)
        }
        .onAppear(perform: {
            let calender = Calendar.current
            let min = calender.component(.minute, from: Date())
            let sec = calender.component(.second, from: Date())
            let hour = calender.component(.hour, from: Date())
            withAnimation(Animation.linear(duration: 0.01)) {
                self.currentTime = Time(sec: sec, min: min, hour: hour)
            }
        })
        .onReceive(receiver) { (_) in
            let calender = Calendar.current
            let min = calender.component(.minute, from: Date())
            let sec = calender.component(.second, from: Date())
            let hour = calender.component(.hour, from: Date())
            withAnimation(Animation.linear(duration: 0.01)) {
                self.currentTime = Time(sec: sec, min: min, hour: hour)
            }
        }
    }
}

