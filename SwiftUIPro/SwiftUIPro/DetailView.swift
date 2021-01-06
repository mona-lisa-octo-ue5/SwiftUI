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
                
            }
        }
    }
}

struct DetailView_Previews: PreviewProvider {
    static var previews: some View {
        DetailView(scrum: DailyScrum.data[0])
    }
}
