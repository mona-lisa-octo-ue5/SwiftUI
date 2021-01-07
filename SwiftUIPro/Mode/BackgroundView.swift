//
//  BackgroundView.swift
//  Mode
//
//  Created by 石玉龙 on 2021/1/7.
//

import SwiftUI

struct BackgroundView: View {
    @Binding var offset: CGSize
    
    var body: some View {
        VStack{
            Text("Background View")
                .font(.largeTitle)
                .fontWeight(.black)
                .padding(EdgeInsets(top: -screenH / 3, leading: 0, bottom: 0, trailing: 10))
                .foregroundColor(.white)
                .lineLimit(nil)
                .multilineTextAlignment(.center)
        }
        .frame(width: screenW, height: screenH + 60)
        .background(LinearGradient(gradient: Gradient(colors: [Color.blue, Color.yellow]), startPoint: .topLeading, endPoint: .bottomTrailing))
        .cornerRadius(32)
        .shadow(radius: 20)
        .edgesIgnoringSafeArea(.all)
        .padding(.top, 120)
        .animation(.spring())
        .offset(y:offset.height > 100 ? -60 : 0)
        .onTapGesture(perform: {
            self.offset = .zero
        })
    }
}
