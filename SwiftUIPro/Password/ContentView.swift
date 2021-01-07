//
//  ContentView.swift
//  Password
//
//  Created by 石玉龙 on 2021/1/7.
//

import SwiftUI

struct ContentView: View {
    @State var unLocked = false
    var body: some View {
        ZStack{
            if unLocked {
                Text("Successfully unlocked!")
                    .font(.title2)
                    .fontWeight(.heavy)
            }else{
                LockScreen(unLocked: $unLocked)
            }
        }
        .preferredColorScheme(unLocked ? .light : .dark )
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
