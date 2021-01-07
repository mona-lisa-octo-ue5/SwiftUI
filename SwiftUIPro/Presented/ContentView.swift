//
//  ContentView.swift
//  Presented
//
//  Created by 石玉龙 on 2021/1/7.
//

import SwiftUI

struct ContentView: View {
    @State private var isPresented=false
    var body: some View {
        Text("Hello, world!")
            .padding()
        Button(action: {
            self.isPresented=true
        }, label: {
            Text("Button present modally")
        })
        .sheet(isPresented: $isPresented, content: {
            PresentedView()
        })
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
