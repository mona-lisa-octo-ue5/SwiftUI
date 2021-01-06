//
//  SwiftUIProApp.swift
//  SwiftUIPro
//
//  Created by 石玉龙 on 2021/1/5.
//

import SwiftUI

@main
struct SwiftUIProApp: App {
    @ObservedObject private var data=ScrumData()
    var body: some Scene {
        WindowGroup {
            NavigationView{
                ScrumsView(scrums: $data.scrums){
                    data.save()
                }
            }
            .onAppear{
                data.load()
            }
        }
    }
}
