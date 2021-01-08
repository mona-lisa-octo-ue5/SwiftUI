//
//  CalendarView.swift
//  NotificationPro
//
//  Created by 石玉龙 on 2021/1/8.
//

import SwiftUI

struct CalendarView: View {
    @State var alert=false
    @State var date=Date()
    @State var isEveryDay=false
    var body: some View {
        VStack {
            DatePicker(selection: $date, label: {
                Text("Date")
            })
            Toggle(isOn: $isEveryDay, label: {
                Text("是否每天进行提醒")
            })
            Button(action: {
                UNUserNotificationCenter.current().requestAuthorization(options: [.alert,.badge,.sound]) { (status, err) in
                    if !status {
                        self.alert.toggle()
                        return
                    }
                    let cnt = UNMutableNotificationContent()
                    cnt.title = "Title"
                    cnt.subtitle = "subtitle"
                    cnt.body = "Hello World!"
                    cnt.badge = 1
                    
                    _ = Calendar.current.dateComponents([.year,.month,.day,.hour,.minute,.second], from: self.date)
                    let trigger = UNCalendarNotificationTrigger(dateMatching: DateComponents(second: 5), repeats: true)
                    let request = UNNotificationRequest(identifier: "Notify", content: cnt, trigger: trigger)
                    UNUserNotificationCenter.current().add(request) { (err) in
                        err != nil ? print("添加本地通知错误", err!.localizedDescription) : print("添加本地通知成功")
                    }
                }
            }, label: {
                Text("本地通知")
            })
        }
        .alert(isPresented: $alert, content: {
            Alert(title: Text("app 需要你给予通知权限，才能每天提醒你记录成功日记，点击前往设置开启。"), message: nil, primaryButton: .cancel(Text("取消"), action: {}), secondaryButton: .default(Text("确定"), action: {
                guard let url = URL(string: UIApplication.openSettingsURLString) else { return }
                if UIApplication.shared.canOpenURL(url) {
                    UIApplication.shared.open(url, completionHandler: nil)
                }
            }))
        })
    }
}

struct CalendarView_Previews: PreviewProvider {
    static var previews: some View {
        CalendarView()
    }
}
