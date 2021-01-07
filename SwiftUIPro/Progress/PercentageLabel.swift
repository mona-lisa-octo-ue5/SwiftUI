//
//  PercentageLabel.swift
//  Progress
//
//  Created by 石玉龙 on 2021/1/7.
//

import SwiftUI

struct PercentageLabel: View {
    @Binding var percentage:CGFloat
    @Binding var isDownload:Bool
    var body: some View {
        ZStack{
            Text(isDownload ? "\(Int(percentage*100)) %" : "Start")
                .font(.system(size: 32, weight: .bold))
                .fontWeight(.black)
                .foregroundColor(.white)
        }
        .onTapGesture {
            self.isDownload.toggle()
            self.startLoading()
        }
    }
    
    func startLoading(){
        _ = Timer.scheduledTimer(withTimeInterval: 0.1, repeats: true, block: { (timer) in
            withAnimation() {
                self.percentage+=0.01
                if self.percentage>=1.0{
                    timer.invalidate()
                }
            }
        })
    }
}
