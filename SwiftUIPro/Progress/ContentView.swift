//
//  ContentView.swift
//  Progress
//
//  Created by 石玉龙 on 2021/1/7.
//

import SwiftUI

struct ContentView: View {
    @State var percentage:CGFloat=0
    @State var isDownload:Bool=false
    var body: some View {
        ZStack{
            Color.backgroundColor
                .edgesIgnoringSafeArea(.all)
            VStack{
                ZStack{
                    PulsationView()
                    TrackView()
                    PercentageLabel(percentage: $percentage, isDownload: $isDownload)
                    OutLineView(percentage: $percentage)
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
