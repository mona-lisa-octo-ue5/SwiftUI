//
//  ContentView.swift
//  Touch
//
//  Created by 石玉龙 on 2021/1/6.
//

import SwiftUI

struct ContentView: View {
    @State var percentage:Float=50
    var body: some View {
        ZStack{
            Color.gray.opacity(0.8).edgesIgnoringSafeArea(.all)
            TouchSlider(percentage: $percentage)
                .accentColor(.white)
                .frame(width: 300, height: 50, alignment: .center)
                .offset(x: 0, y: -250)
            TouchSlider(percentage: $percentage)
                .accentColor(.red)
                .frame(width: 300, height: 50, alignment: .center)
                .offset(x: 0, y: -150)
            TouchSlider(percentage: $percentage)
                .accentColor(.orange)
                .frame(width: 300, height: 50, alignment: .center)
                .offset(x: 0, y: -50)
            TouchSlider(percentage: $percentage)
                .accentColor(.blue)
                .frame(width: 300, height: 50, alignment: .center)
                .offset(x: 0, y: 50)
            TouchSlider(percentage: $percentage)
                .accentColor(.green)
                .frame(width: 300, height: 50, alignment: .center)
                .offset(x: 0, y: 150)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
