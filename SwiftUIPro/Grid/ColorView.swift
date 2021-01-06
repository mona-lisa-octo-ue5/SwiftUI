//
//  ColorView.swift
//  Grid
//
//  Created by 石玉龙 on 2021/1/6.
//

import SwiftUI

struct ColorView: View {
    var data:[Color]{
        [
            Color.random(),
            Color.random(),
            Color.random(),
            Color.random(),
            Color.random(),
            Color.random()
        ]
    }
    var body: some View {
        VStack{
            ForEach(0..<data.count){index in
                self.data[index]
            }
        }
        .edgesIgnoringSafeArea(.vertical)
    }
}
extension Double{
    static func randomData()->Double{
        Double(arc4random())/Double(UInt32.max)
    }
}
extension Color{
    static func random()->Color{
        .init(red:Double.randomData(),green:Double.randomData(),blue:Double.randomData())
    }
}

struct ColorView_Previews: PreviewProvider {
    static var previews: some View {
        ColorView()
    }
}
