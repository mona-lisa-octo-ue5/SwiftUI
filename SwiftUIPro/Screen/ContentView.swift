//
//  ContentView.swift
//  Screen
//
//  Created by 石玉龙 on 2021/1/7.
//

import SwiftUI

struct ContentView: View {
    
    @State private var isShutDown=false
    private let screenW:CGFloat=UIScreen.main.bounds.width
    private let screenH:CGFloat=UIScreen.main.bounds.height
    var body: some View {
        VStack{
            ZStack{
                if isShutDown {
                    PowerView()
                    Text("Successfully unlocked !")
                        .font(.largeTitle)
                        .foregroundColor(.white)
                }else{
                    LockScreen(state: .PowerOff)
                }
            }
            .onReceive(NotificationCenter.default.publisher(for: Notification.Name("Success"))) { (_) in
                withAnimation {
                    self.isShutDown=true
                }
            }
        }
        .background(Color.black)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
