//
//  ContentView.swift
//  Notification
//
//  Created by 石玉龙 on 2021/1/8.
//

import SwiftUI
import UserNotifications

struct ContentView: View {
    var body: some View {
        VStack{
            VStack{
                Button("请求权限"){
                    UNUserNotificationCenter.current()
                        .requestAuthorization(options: [.alert,.badge,.sound]) { (success, error) in
                            if success {
                                print("All set!")
                            }else if let error = error{
                                print(error.localizedDescription)
                            }
                        }
                }
                .padding()
                Button("调度消息"){
                    let content=UNMutableNotificationContent()
                    content.title="提示"
                    content.subtitle="内容"
                    content.sound=UNNotificationSound.default
                    let trigger=UNTimeIntervalNotificationTrigger(timeInterval: 1, repeats: false)
                    let request=UNNotificationRequest(identifier: UUID().uuidString, content: content, trigger: trigger)
                    UNUserNotificationCenter.current().add(request)
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
