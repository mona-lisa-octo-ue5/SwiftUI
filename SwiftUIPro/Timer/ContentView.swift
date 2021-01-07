//
//  ContentView.swift
//  Timer
//
//  Created by 石玉龙 on 2021/1/7.
//

import SwiftUI

struct ContentView: View {
    @State var start=false
    @State var counter:Int=0
    @State var countDown:CGFloat=10
    @State var timer=Timer.publish(every: 1, on: .main, in: .common).autoconnect()
    var body: some View {
        VStack{
            ZStack{
                ProgressTrackView()
                ProgressBar(counter: counter, totalCountdown: countDown)
                ClockView(counter: counter, totalCountdown: countDown)
            }
            HStack(spacing:20){
                Button(action: {
                    self.start.toggle()
                    print("是否播放：\(self.start)")
                }){
                    HStack(spacing:15){
                        Image(systemName: self.start ? "pause.fill" : "play.fill")
                        Text(self.start ? "Pause" : "Play")
                            .foregroundColor(.white)
                    }
                    .padding(.vertical)
                    .frame(width: UIScreen.main.bounds.width/2-55)
                    .background(Color.orange)
                    .clipShape(Capsule())
                    .shadow(radius: 6)
                }
                Button(action: {
                    print("重置······")
                    self.counter=0
                    withAnimation(.default){
                        self.countDown=self.countDown
                    }
                }){
                    HStack(spacing:15){
                        Image(systemName: "arrow.clockwise")
                            .foregroundColor(.orange)
                        Text("Restart")
                            .foregroundColor(.orange)
                    }
                    .padding(.vertical)
                    .frame(width: UIScreen.main.bounds.width/2-55)
                    .background(Capsule().stroke(Color.orange,lineWidth: 2))
                    .shadow(radius: 6)
                }
            }
            .padding(.top,55)
        }
        .onReceive(timer) { (timer) in
            self.startCounting()
        }
    }
    
    func startCounting(){
        if self.start {
            if self.counter<Int(self.countDown) {
                self.counter += 1
            }else{
                self.start.toggle()
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
