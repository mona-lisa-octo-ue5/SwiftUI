//
//  MeetingView.swift
//  SwiftUIPro
//
//  Created by 石玉龙 on 2021/1/5.
//

import SwiftUI

struct MeetingView: View {
    @Binding var scrum:DailyScrum
    var body: some View {
        ZStack{
            VStack{
                Circle()
                    .strokeBorder(lineWidth: 24, antialiased: true)
                HStack{
                    Text("Speaker 1 of 3")
                    Button(action: {}) {
                        Image(systemName: "forward.fill")
                    }
                    .accessibilityLabel(Text("Next speaker"))
                }
            }
            .padding()
            .foregroundColor(scrum.color.accessibleFontColor)
        }
    }
}

struct MeetingView_Previews: PreviewProvider {
    static var previews: some View {
        MeetingView(scrum: .constant(DailyScrum.data[0]))
    }
}
