//
//  ContentView.swift
//  Indicator
//
//  Created by 石玉龙 on 2021/1/8.
//

import SwiftUI

struct ContentView: View {
    @State var isShowing=false
    var body: some View {
        ZStack{
            Button(action: {
                self.isShowing=true
                DispatchQueue.main.asyncAfter(deadline: .now()+3) {
                    self.isShowing=false
                }
            }, label: {
                Text("网络请求开始模拟")
            })
            if isShowing {
                IndicatorView(isShowing: $isShowing, style: .large)
            }
        }
        .disabled(isShowing)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
