//
//  MeetingView.swift
//  SwiftUIPro
//
//  Created by 石玉龙 on 2021/1/5.
//

import SwiftUI
import AVFoundation

struct MeetingView: View {
    @Binding var scrum:DailyScrum
    @StateObject var scrumTimer = ScrumTimer()
    var body: some View {
        ZStack{
            RoundedRectangle(cornerRadius: 16.0)
                .fill(scrum.color)
            VStack{
                Circle()
                    .strokeBorder(lineWidth: 24, antialiased: true)
                
            }
            .padding()
            .foregroundColor(scrum.color.accessibleFontColor)
            .onAppear{
                scrumTimer.reset(lengthInMinutes: scrum.lengthInMinutes, attendees: scrum.attendees)
                scrumTimer.startScrum()
            }
            .onDisappear{
                scrumTimer.stopScrum()
            }
        }
    }
}

struct MeetingView_Previews: PreviewProvider {
    static var previews: some View {
        MeetingView(scrum: .constant(DailyScrum.data[0]))
    }
}
