//
//  ContentView.swift
//  Particle
//
//  Created by 石玉龙 on 2021/1/7.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack{
            Color.black
            Circle()
                .fill(Color.red)
                .frame(width: 40, height: 40)
                .modifier(ParticleEffectView(count: 100))
            Circle()
                .fill(Color.green)
                .frame(width: 40, height: 40)
                .modifier(ParticleEffectView(count: 100))
            Circle()
                .fill(Color.blue)
                .frame(width: 40, height: 40)
                .modifier(ParticleEffectView(count: 100))
        }
        .edgesIgnoringSafeArea(.all)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
