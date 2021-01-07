//
//  ContentView.swift
//  Vector
//
//  Created by 石玉龙 on 2021/1/7.
//

import SwiftUI

struct ContentView: View {
    @State private var vector:AnimatableVector = .zero
    var body: some View {
        LineChart(vector:vector).stroke(Color.red).animation(Animation.default.repeatForever())
            .onAppear{
                self.vector=AnimatableVector(values: [10,20,30,40,50,60,70,80,90,100,10,20,30,40,50,60,70,80,90])
            }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
