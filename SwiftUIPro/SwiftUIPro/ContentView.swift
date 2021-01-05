//
//  ContentView.swift
//  SwiftUIPro
//
//  Created by 石玉龙 on 2021/1/5.
//

import SwiftUI

struct ContentView: View {
    @State private var scrums = DailyScrum.data
    var body: some View {
        MeetingView()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
