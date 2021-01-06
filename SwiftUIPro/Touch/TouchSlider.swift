//
//  TouchSlider.swift
//  Touch
//
//  Created by 石玉龙 on 2021/1/6.
//

import SwiftUI

struct TouchSlider: View {
    @Binding var percentage:Float
    var body: some View {
        GeometryReader{ geometry in
            ZStack(alignment: .leading){
                Rectangle()
                    .foregroundColor(.gray)
                Rectangle()
                    .foregroundColor(.accentColor)
                    .frame(width: geometry.size.width*CGFloat(self.percentage/100))
            }
            .cornerRadius(15)
            .gesture(DragGesture(minimumDistance: 0).onChanged({value in
                self.percentage=min(max(0, Float(value.location.x/geometry.size.width*100)), 100)
            }))
        }
    }
}


