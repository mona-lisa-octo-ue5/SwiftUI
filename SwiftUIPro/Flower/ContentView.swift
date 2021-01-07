//
//  ContentView.swift
//  Flower
//
//  Created by 石玉龙 on 2021/1/7.
//

import SwiftUI

struct ContentView: View {
    @State private var shouldRotate:Bool=false
    @State private var shouldScale:Bool=false
    var body: some View {
        ZStack{
            FlowerView()
                .rotationEffect(.degrees(shouldRotate ? 0 : 360), anchor:.center)
                .animation(Animation.easeOut(duration: 5).repeatForever().speed(3))
                .onTapGesture {
                    self.shouldRotate.toggle()
                }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
