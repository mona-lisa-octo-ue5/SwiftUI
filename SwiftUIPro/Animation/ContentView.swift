//
//  ContentView.swift
//  Animation
//
//  Created by 石玉龙 on 2021/1/8.
//

import SwiftUI

struct AnimationView:View {
    @State private var showRedStroke=false
    @State private var showGreenStroke=false
    @State private var showBlueStroke=false
    var body: some View{
        ZStack{
            RadialGradient(gradient: Gradient(colors: [Color.red, Color.blue]), center: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/, startRadius: /*@START_MENU_TOKEN@*/5/*@END_MENU_TOKEN@*/, endRadius: /*@START_MENU_TOKEN@*/500/*@END_MENU_TOKEN@*/)
                .scaleEffect(1.2)
            Circle()
                .trim(from: showRedStroke ? 1/8 : 1, to: 1.0)
                .stroke(style: StrokeStyle(lineWidth: 30, lineCap: .round, lineJoin: .round))
                .frame(width: 250, height: 250)
                .foregroundColor(Color(red: 0.859, green: 0.014, blue: 0.092))
                .rotationEffect(.degrees(90))
                .rotation3DEffect(
                    .degrees(180),
                    axis: (x: 1.0, y: 0.0, z: 0.0))
                .shadow(color: .black, radius: 20, y: 5)
                .animation(Animation.easeIn(duration: 1))
                .onAppear() {
                    self.showRedStroke.toggle()
                }
            Circle()
                .trim(from: showGreenStroke ? 1/6 : 1, to: 1.0)
                .stroke(style: StrokeStyle(lineWidth: 30, lineCap: .round, lineJoin: .round))
                .frame(width: 189, height: 189)
                .foregroundColor(Color(red: 0.618, green: 0.968, blue: -0.013))
                .rotationEffect(.degrees(90))
                .rotation3DEffect(.degrees(180), axis: (x: 1.0, y: 0.0, z: 0.0))
                .shadow(color: .black, radius: 20, y: 5)
                .animation(Animation.easeOut(duration: 1))
                .onAppear() {
                    self.showGreenStroke.toggle()
                }
            Circle()
                .trim(from: showBlueStroke ? 1/4 : 1, to: 1.0)
                .stroke(style: StrokeStyle(lineWidth: 30, lineCap: .round, lineJoin: .round))
                .frame(width: 128, height: 128)
                .foregroundColor(Color(red: 0.002, green: 0.884, blue: 0.842))
                .rotationEffect(.degrees(90))
                .rotation3DEffect(.degrees(180), axis: (x: 1.0, y: 0.0, z: 0.0))
                .shadow(color: .black, radius: 20, y: 5)
                .animation(Animation.easeOut(duration: 1))
                .onAppear() {
                    self.showBlueStroke.toggle()
                }
            Button(action: {
                self.showRedStroke.toggle()
                self.showGreenStroke.toggle()
                self.showBlueStroke.toggle()
            }, label: {
                Image(systemName: "waveform.path.ecg").font(.largeTitle)
            }).padding()
        }
    }
}

struct ContentView: View {
    var body: some View {
        NavigationView {
            AnimationView()
                .preferredColorScheme(.dark)
                .navigationBarTitle("ActivityRing")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
