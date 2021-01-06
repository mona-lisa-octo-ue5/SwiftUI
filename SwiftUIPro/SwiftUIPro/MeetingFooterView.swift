//
//  MeetingFooterView.swift
//  SwiftUIPro
//
//  Created by 石玉龙 on 2021/1/6.
//

import SwiftUI

struct MeetingFooterView: View {
    @Binding var speakers:[ScrumTimer.Speaker]
    var body: some View {
        HStack{
            Text("Speaker 1 of 3")
            Button(action: {}) {
                Image(systemName: "forward.fill")
            }
            .accessibilityLabel(Text("Next speaker"))
        }
    }
}

struct MeetingFooterView_Previews: PreviewProvider {
    static var speakers=[ScrumTimer.Speaker(name: "Kim", isCompleted: false),ScrumTimer.Speaker(name: "Bill", isCompleted: false)]
    static var previews: some View {
        MeetingFooterView(speakers: .constant(speakers))
            .previewLayout(.sizeThatFits)
    }
}
