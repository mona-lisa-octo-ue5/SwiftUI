//
//  Color+Extension.swift
//  Progress
//
//  Created by 石玉龙 on 2021/1/7.
//

import SwiftUI

extension Color{
    static func rgb(r:Double,g:Double,b:Double)->Color{
        return Color(red:r/255.0,green:g/255.0,blue:b/255.0)
    }
    static let backgroundColor=Color.rgb(r: 21, g: 22, b: 33)
    static let outlineStrokeColor=Color.rgb(r: 234, g: 46, b: 111)
    static let trackStrokeColor=Color.rgb(r: 56, g: 25, b: 49)
    static let pulsatingFillColor=Color.rgb(r: 86, g: 30, b: 63)
}
