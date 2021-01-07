//
//  ContentView.swift
//  AnimData
//
//  Created by 石玉龙 on 2021/1/7.
//

import SwiftUI

struct ContentView: View {
    @State private var scale:CGFloat=1
    @State private var coordinate:CGFloat=0
    @State private var x:CGFloat=100
    @State private var y:CGFloat=100
    
    var body: some View {
        VStack{
            Spacer()
            Button("Button"){
                self.scale+=1
            }
            .padding()
            .foregroundColor(.white).background(Color.orange)
            .cornerRadius(8).scaleEffect(scale).animation(.default)
            Spacer()
            Line(coordinate: coordinate)
                .stroke(Color.red).animation(Animation.linear(duration: 1).repeatForever())
                .onAppear{
                    self.coordinate=100
                }
        }
    }
}
struct Line:Shape {
    var coordinate:CGFloat
    var animatableData: CGFloat{
        get{
            coordinate
        }
        set{
            coordinate=newValue
        }
    }
    func path(in rect: CGRect) -> Path {
        Path{path in
            path.move(to: .zero)
            path.addLine(to: CGPoint(x: coordinate, y: coordinate))
        }
    }
}
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
