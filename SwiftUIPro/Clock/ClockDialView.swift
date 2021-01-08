//
//  ClockDialView.swift
//  Clock
//
//  Created by 石玉龙 on 2021/1/8.
//

import SwiftUI

struct ClockDialView: View {
    @Binding var currentTime:Time
    @Binding var isDark:Bool
    @State var secondColor:Color = Color.red
    @State var dialColor:Color = Color("Color")
    private let secHeight:CGFloat = screenW / 2 - 20
    
    var body: some View {
        ZStack{
            Circle()
                .fill(dialColor)
                .frame(width: screenW - 50, height: screenW - 50)
            Text("ROLEX")
                .foregroundColor(Color.primary)
                .font(.system(size: 25))
                .offset(x: 0, y: -90)
            Text("\(getWeekdayWithNumber()) \(getday())")
                .fontWeight(.bold)
                .background(isDark ? Color.white : Color.black)
                .foregroundColor(isDark ? Color.black : Color.white)
                .offset(x: 70)
            
            ForEach(0..<60, id: \.self) { i in
                Rectangle()
                    .fill(Color.primary)
                    .frame(width: (i % 5) == 0 ? 15 : 5, height: (i % 5) == 0 ? 15 : 5, alignment: .center)
                    .cornerRadius(i % 5 == 0 ? 15 / 2 : 0)
                    .offset(y: (screenW - 110) / 2)
                    .rotationEffect(.init(degrees: Double(i) * 6))
                
                if i % 5 == 0 {
                    HourTexts(index: i, marginRatio: 3 / 8)
                }
            }
            
            Rectangle()
                .fill(Color.primary)
                .frame(width: 6.5, height: secHeight / 3)
                .offset(y:-secHeight / 3 / 2)
                .rotationEffect(.init(degrees: (Double(currentTime.hour) + (Double(currentTime.min) / 60)) * 30))
            
            Rectangle()
                .fill(Color.primary)
                .frame(width: 6, height: secHeight / 2)
                .offset(y: -secHeight / 2 / 2)
                .rotationEffect(.init(degrees: Double(currentTime.min) * 6))
            
            Rectangle()
                .fill(secondColor)
                .frame(width: 2, height: secHeight)
                .offset(x: 0, y: -50)
                .overlay(
                    Circle()
                        .foregroundColor(secondColor)
                        .frame(width: 12, height: 12)
                        .offset(x: 0, y: -100)
                )
                .overlay(
                    Circle()
                        .foregroundColor(secondColor)
                        .frame(width: 10, height: 10)
                        .offset(x: 0, y: secHeight / 2 - 50)
                )
                .rotationEffect(.init(degrees: Double(currentTime.sec) * 6))
            
            Circle()
                .fill(Color.primary)
                .frame(width: 15, height: 15)
        }
    }
}
extension ClockDialView{
    func getWeekdayWithNumber()->String{
        var calender=Calendar.current
        calender.locale=Locale.autoupdatingCurrent
        let number=calender.component(.weekday, from: Date())
        switch number {
        case 1:
            return NSLocalizedString("Sun", comment: "")
        case 2:
            return NSLocalizedString("Mon", comment: "")
        case 3:
            return NSLocalizedString("Tues", comment: "")
        case 4:
            return NSLocalizedString("Wed", comment: "")
        case 5:
            return NSLocalizedString("Thur", comment: "")
        case 6:
            return NSLocalizedString("Fri", comment: "")
        case 7:
            return NSLocalizedString("Sat", comment: "")
        default:
            return ""
        }
    }
    func getday()->String{
        var calender=Calendar.current
        calender.locale=Locale.autoupdatingCurrent
        let day=calender.component(.day, from: Date())
        return "\(day)"
    }
}
