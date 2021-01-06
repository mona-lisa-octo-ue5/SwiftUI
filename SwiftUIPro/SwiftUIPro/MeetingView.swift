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
    var player:AVPlayer{AVPlayer.sharedDingPlayer}
    var body: some View {
        ZStack{
            RoundedRectangle(cornerRadius: 16.0)
                .fill(scrum.color)
            VStack{
                MeetingHeaderView(secondsElapsed: $scrumTimer.secondsElapsed, secondsRemaining: $scrumTimer.secondsRemaining, scurmColor: scrum.color)
                MeetingTimerView(speakers: $scrumTimer.speakers, isRecording: <#Binding<Bool>#>, scrumColor: scrum.color)
                MeetingFooterView(speakers: $scrumTimer.speakers, skipAction: scrumTimer.skipSpeader)
            }
            .padding()
            .foregroundColor(scrum.color.accessibleFontColor)
            .onAppear{
                scrumTimer.reset(lengthInMinutes: scrum.lengthInMinutes, attendees: scrum.attendees)
                scrumTimer.speakerChangedAction={
                    player.seek(to: .zero)
                    player.play()
                }
                scrumTimer.startScrum()
            }
            .onDisappear{
                scrumTimer.stopScrum()
                let newHistory=History(attendees: scrum.attendees, lengthInMinutes: scrumTimer.secondsElapsed/60)
                scrum.history.insert(newHistory, at: 0)
            }
        }
    }
}

struct MeetingView_Previews: PreviewProvider {
    static var previews: some View {
        MeetingView(scrum: .constant(DailyScrum.data[0]))
    }
}
