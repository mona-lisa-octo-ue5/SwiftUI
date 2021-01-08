//
//  TimeIntervalView.swift
//  NotificationPro
//
//  Created by 石玉龙 on 2021/1/8.
//

import SwiftUI

struct TimeIntervalView: View {
    @State var alert=false
    @State var second=""
    var body: some View {
        VStack{
            TextField("请输入秒数，将在n秒后收到通知",text:$second)
                .textFieldStyle(RoundedBorderTextFieldStyle())
            Button(action: {
                guard let second=Double(self.second) else{
                    return
                }
                UNUserNotificationCenter.current()
                    .requestAuthorization(options: [.alert,.badge,.sound]) { (status, error) in
                        if !status {
                            self.alert.toggle()
                            return
                        }
                        let content=UNMutableNotificationContent()
                        content.title="Title"
                        content.subtitle="subtitle"
                        content.body="Hello Kitty !"
                        content.badge=1
                        let trigger=UNTimeIntervalNotificationTrigger(timeInterval: second, repeats: false)
                        let request=UNNotificationRequest(identifier: "Notify", content: content, trigger: trigger)
                        UNUserNotificationCenter.current().add(request){ err in
                            err != nil ? print("添加本地通知错误", err!.localizedDescription) : print("添加本地通知正确")
                        }
                    }
            }){
                Text("本地通知")
            }
        }
        .alert(isPresented: $alert){
            Alert(title: Text("app 需要你给予通知权限，才能每天提醒你记录成功日记哦，点击确定前往设置开启。"),message: nil,primaryButton: .cancel(Text("取消"),action: {}),secondaryButton: .default(Text("确定"),action: {
                guard let url=URL(string: UIApplication.openSettingsURLString) else{return}
                if UIApplication.shared.canOpenURL(url){
                    UIApplication.shared.open(url, completionHandler: nil)
                }
            }))
        }
    }
}

struct TimeIntervalView_Previews: PreviewProvider {
    static var previews: some View {
        TimeIntervalView()
    }
}
