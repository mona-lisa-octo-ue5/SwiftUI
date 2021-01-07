//
//  ContentView.swift
//  SpringIndicator
//
//  Created by 石玉龙 on 2021/1/7.
//

import SwiftUI

struct ContentView: View {
    @State private var offsetY:CGFloat=0
    private let colors:[Color]=[.red,.orange,.blue,.green,.yellow,.purple,.gray]
    private let animations:[Animation]=[
        Animation.interpolatingSpring(stiffness: 100, damping: 10),
        Animation.interpolatingSpring(stiffness: 100, damping: 10).delay(0.1),
        Animation.interpolatingSpring(stiffness: 100, damping: 10).delay(0.2),
        Animation.interpolatingSpring(stiffness: 100, damping: 10).delay(0.3),
        Animation.interpolatingSpring(stiffness: 100, damping: 10).delay(0.4),
        Animation.interpolatingSpring(stiffness: 100, damping: 10).delay(0.5),
        Animation.interpolatingSpring(stiffness: 100, damping: 10).delay(0.6)
    ]
    var body: some View {
        VStack{
            HStack{
                ForEach(0..<colors.count){item in
                    Circle()
                        .fill(self.colors[item])
                        .frame(width:40,height:40)
                        .offset(x: 0, y: self.offsetY)
                        .animation(self.animations[item])
                }
            }
            .offset(x: 0, y: -300)
            Button(action: {
                if offsetY<=0{
                    self.offsetY+=200
                    DispatchQueue.main.asyncAfter(deadline: .now()+2) {
                        self.offsetY-=200
                    }
                }
            }, label: {
                Text("Start execute animations")
                    .foregroundColor(.white)
                    .frame(width: 220, height: 40, alignment: .center)
                    .background(Color.black)
                    .cornerRadius(10)
                    .shadow(color: .black, radius: 5, x: -5, y: -3)
            })
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
