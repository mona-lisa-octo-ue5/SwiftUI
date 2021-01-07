//
//  FlowerView.swift
//  Flower
//
//  Created by 石玉龙 on 2021/1/7.
//

import SwiftUI

struct FlowerCapsule: View {
    var color:Color
    var degree:Double
    
    var body: some View {
        Capsule()
            .foregroundColor(color)
            .frame(width: 50, height: 70)
            .offset(x: 0, y: 38)
            .rotationEffect(.degrees(degree))
            .opacity(0.6)
    }
}

struct FlowerView:View {
    var body: some View{
        ZStack{
            FlowerCapsule(color: .blue, degree: 0)
            FlowerCapsule(color: .orange, degree: 180)
            FlowerCapsule(color: .pink, degree: 90)
            FlowerCapsule(color: .green, degree: -90)
            FlowerCapsule(color: .purple, degree: 45)
            FlowerCapsule(color: .green, degree: -45)
            FlowerCapsule(color: .red, degree: 135)
            FlowerCapsule(color: .yellow, degree: -135)
        }
        .scaleEffect(2.5)
    }
}

struct FlowerView_Previews: PreviewProvider {
    static var previews: some View {
        FlowerView()
    }
}
