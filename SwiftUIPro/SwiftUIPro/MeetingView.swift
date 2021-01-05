//
//  MeetingView.swift
//  SwiftUIPro
//
//  Created by 石玉龙 on 2021/1/5.
//

import SwiftUI

struct MeetingView: View {
    var body: some View {
        ProgressView(value: 5, total: 15)
        HStack{
            Text("Seconds Elapsed")
        }
    }
}

struct MeetingView_Previews: PreviewProvider {
    static var previews: some View {
        MeetingView()
    }
}
