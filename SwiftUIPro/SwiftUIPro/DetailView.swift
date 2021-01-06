//
//  DetailView.swift
//  SwiftUIPro
//
//  Created by 石玉龙 on 2021/1/5.
//

import SwiftUI

struct DetailView: View {
    let scrum:DailyScrum
    var body: some View {
        List{
            Section(header: Text("Meeting Info")) {
                Label("Start Meeting",systemImage:"timer")
                    .font(.headline)
                    .foregroundColor(.accentColor)
                    .accessibilityLabel(Text("Start meeting"))
                HStack{
                    Label("Length",systemImage:"clock")
                        .accessibilityLabel(Text("Meeting length"))
                    Spacer()
                    Text("\(scrum.lengthInMinutes) minutes")
                }
                HStack{
                    Label("Color",systemImage:"paintpalette")
                }
            }
        }
    }
}

struct DetailView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView{
            DetailView(scrum: DailyScrum.data[0])
        }
    }
}
