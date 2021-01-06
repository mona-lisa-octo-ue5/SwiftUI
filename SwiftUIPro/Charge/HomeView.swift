//
//  HomeView.swift
//  Charge
//
//  Created by 石玉龙 on 2021/1/6.
//

import SwiftUI

struct HomeView: View {
    @State private var size=UIScreen.main.bounds.width-100
    @State private var progress:CGFloat=0
    @State private var angle:Double=0
    @State private var showWhiteCircleStroke=false
    var body: some View {
        VStack{
            ZStack{
                Circle()
                    .stroke(Color.init(UIColor.darkGray),style: StrokeStyle(lineWidth: 25, lineCap: .round, lineJoin: .round))
                    .frame(width: size, height: size)
                Circle()
                    .trim(from: 0, to: progress)
                    .stroke(Color.green,style: StrokeStyle(lineWidth: 25, lineCap: .round))
                    .frame(width: size, height: size)
                    .rotationEffect(.init(degrees: -90))
                if showWhiteCircleStroke {
                    Circle()
                        .fill(Color.white)
                        .frame(width: 35, height: 35)
                        .offset(x: size/2)
                        .rotationEffect(.init(degrees: angle))
                        .gesture(DragGesture().onChanged(onDrag(value:)))
                        .rotationEffect(.init(degrees: -90))
                }
                Button(action: {
                    self.showWhiteCircleStroke.toggle()
                }){
                    Image(systemName: "bolt.fill")
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .frame(width: 100, height: 100)
                        .foregroundColor(.green)
                }
                .padding()
            }
            Text(String(format: "%.0f", progress*100)+"% Charged")
                .offset(x: 0, y: 30)
                .font(.largeTitle)
        }
    }
    
    private func onDrag(value:DragGesture.Value){
        let vector=CGVector(dx: value.location.x, dy: value.location.y)
        let radians=atan2(vector.dy-17.5, vector.dx-17.5)
        var angle=radians * 180 / .pi
        if angle<0{
            angle=360+angle
        }
        withAnimation(Animation.linear(duration: 0.15)) {
            let progress=angle/360
            self.progress=progress
            self.angle=Double(angle)
        }
    }
}
