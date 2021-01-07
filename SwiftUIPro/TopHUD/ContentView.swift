//
//  ContentView.swift
//  TopHUD
//
//  Created by 石玉龙 on 2021/1/7.
//

import SwiftUI

struct ContentView: View {
    @State var isShow=false
    @State var offset:CGFloat=0
    @State private var isSingleTap=false
    let animation:Animation=Animation.interpolatingSpring(stiffness: 200, damping: 10)
    var body: some View {
        ZStack{
            TopHUD()
                .offset(x: 0, y: offset)
                .animation(self.animation)
            Button(action: {
                if offset<=0{
                    offset+=300
                    DispatchQueue.main.asyncAfter(deadline: .now()+2) {
                        self.offset-=300
                    }
                }
            }){
                Text("Pop Up Top HUD")
                    .font(.headline)
                    .foregroundColor(.white)
                    .frame(width: 200, height: 50, alignment: .center)
                    .background(Color.purple)
                    .cornerRadius(10)
                    .shadow(color: .black, radius: 5, x: -2, y: -1)
                    .lineLimit(2)
                    .multilineTextAlignment(.center)
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
