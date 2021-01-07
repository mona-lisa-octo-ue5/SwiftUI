//
//  TopHUD.swift
//  TopHUD
//
//  Created by 石玉龙 on 2021/1/7.
//

import SwiftUI

struct TopHUD: View {
    private let screenW: CGFloat = UIScreen.main.bounds.width
    private let screenH: CGFloat = UIScreen.main.bounds.height
    var body: some View {
        ZStack{
            VStack{
                Text("Top, HUD!")
                    .font(.largeTitle)
                    .fontWeight(.black)
                    .foregroundColor(.white)
                    .padding(EdgeInsets(top: 0, leading: 0, bottom: 0, trailing: 0))
                Text("This type of banner floats and has the capability of growing to an infinite amout of lines. This one also has a shadow.")
                    .fontWeight(.black)
                    .font(.headline)
                    .foregroundColor(.white)
                    .padding(EdgeInsets(top: 0, leading: 0, bottom: 0, trailing: 0))
                    .lineLimit(4)
                    .multilineTextAlignment(.leading)
            }
        }
        .frame(width: screenW-50, height: 170, alignment: .center)
        .background(LinearGradient(gradient: Gradient(colors: [Color.blue, Color.green]), startPoint: .topLeading, endPoint: .bottomTrailing))
        .cornerRadius(20)
        .shadow(color: .green, radius: 10, x: 1, y: 1)
        .offset(x: 0, y: -600)
    }
}

struct TopHUD_Previews: PreviewProvider {
    static var previews: some View {
        TopHUD()
    }
}
