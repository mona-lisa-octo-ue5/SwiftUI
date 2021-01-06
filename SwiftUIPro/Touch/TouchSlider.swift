//
//  TouchSlider.swift
//  Touch
//
//  Created by 石玉龙 on 2021/1/6.
//

import SwiftUI

struct TouchSlider: View {
    @Binding var parcentage:Float
    var body: some View {
        GeometryReader{ geometry in
            ZStack(alignment: .leading){
                Rectangle()
                    .foregroundColor(.gray)
                Rectangle()
                    .foregroundColor(.accentColor)
                    .frame(width: geometry.size.width*CGFloat(self), height: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
            }
        }
    }
}

struct TouchSlider_Previews: PreviewProvider {
    static var previews: some View {
        TouchSlider()
    }
}
