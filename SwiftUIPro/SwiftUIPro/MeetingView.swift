//
//  MeetingView.swift
//  SwiftUIPro
//
//  Created by 石玉龙 on 2021/1/5.
//

import SwiftUI

struct MeetingView: View {
    var body: some View {
        VStack{
            ProgressView(value: 5, total: 15)
            HStack{
                VStack(alignment: .leading){
                    Text("Seconds Elapsed")
                        .font(.caption)
                    Label("300", systemImage:"hourglass.bottomhalf.fill")
                }
                Spacer()
                VStack(alignment: .trailing){
                    Text("Seconds Remaining")
                        .font(.caption)
                    Label("600", systemImage:"hourglass.tophalf.fill")
                }
            }
        }
    }
}

struct MeetingView_Previews: PreviewProvider {
    static var previews: some View {
        MeetingView()
    }
}
