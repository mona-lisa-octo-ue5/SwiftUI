//
//  ContentView.swift
//  Mode
//
//  Created by 石玉龙 on 2021/1/7.
//

import SwiftUI

struct ContentView: View {
    @State private var offset = CGSize.zero
    
    var body: some View {
        ZStack{
            BackgroundView(offset: $offset)
            DragView(offset: $offset)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
