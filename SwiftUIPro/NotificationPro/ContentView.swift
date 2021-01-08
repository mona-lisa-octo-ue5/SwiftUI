//
//  ContentView.swift
//  NotificationPro
//
//  Created by 石玉龙 on 2021/1/8.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            List {
                NavigationLink(
                    destination: TimeIntervalView(),
                    label: {
                        Text("UNTimeIntervalNotificationTrigger")
                    })
                NavigationLink(
                    destination: CalendarView(),
                    label: {
                        Text("UNCalendarNotificationTrigger")
                    })
            }
            .navigationBarTitle("Main")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
