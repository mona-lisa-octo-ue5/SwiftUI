//
//  DragView.swift
//  Mode
//
//  Created by 石玉龙 on 2021/1/7.
//

import SwiftUI

let screenW: CGFloat = UIScreen.main.bounds.width
let screenH: CGFloat = UIScreen.main.bounds.height

struct DragView: View {
    @Binding var offset:CGSize
    var body: some View {
        VStack{
            HStack{
                Text("Drag Gesture View")
                    .font(.largeTitle)
                    .fontWeight(.black)
                    .foregroundColor(.white)
                    .padding(EdgeInsets(top: 0, leading: 0, bottom: 0, trailing: 0))
                    .lineLimit(nil)
                    .multilineTextAlignment(.leading)
            }
        }
        .frame(width: screenW, height: screenH, alignment: .center)
        .background(LinearGradient(gradient: Gradient(colors: [Color.red, Color.blue]), startPoint: .topLeading, endPoint: .bottomTrailing))
        .cornerRadius(32)
        .shadow(radius: 20)
        .edgesIgnoringSafeArea(.all)
        .padding(.top, 150)
        .offset(y:offset.height < 0 ? 0 : offset.height)
        .animation(.spring())
        .gesture(
            DragGesture()
                    .onChanged(onDrag(_:))
                    .onEnded(endDrag(_:)))
    }
}
extension DragView{
    private func onDrag(_ value:DragGesture.Value){
        self.offset = value.translation
    }
    private func endDrag(_ value:DragGesture.Value){
        if self.offset.height > screenH / 4 {
            self.offset = CGSize(width: 0, height: screenH)
        }else{
            self.offset = .zero
        }
    }
}
