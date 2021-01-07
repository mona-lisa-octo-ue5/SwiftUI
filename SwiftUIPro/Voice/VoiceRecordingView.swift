//
//  VoiceRecordingView.swift
//  Voice
//
//  Created by 石玉龙 on 2021/1/7.
//

import SwiftUI

struct VoiceRecordingView: View {
    @State private var animateSmallCircle=false
    @State private var animateBigCircle=false
    var body: some View {
        VStack{
            Text("Hello, do you need any help?")
                .font(.title)
                .foregroundColor(.gray)
                .fontWeight(.heavy)
            ZStack{
                Circle()
                    .stroke()
                    .frame(width: 340, height: 340, alignment: .center)
                    .foregroundColor(.gray)
                    .scaleEffect(animateBigCircle ? 1 : 0.3)
                    .opacity(animateBigCircle ? 0 : 1)
                    .animation(Animation.easeInOut(duration: 2).repeatForever(autoreverses: false))
                    .onAppear(){
                        self.animateBigCircle.toggle()
                    }
                Circle()
                    .stroke()
                    .frame(width: 340, height: 340, alignment: .center)
                    .foregroundColor(.gray)
                    .scaleEffect(animateBigCircle ? 1 : 0.3)
                    .opacity(animateBigCircle ? 0 : 1)
                    .animation(Animation.easeInOut(duration: 3).repeatForever(autoreverses: false))
                Circle()
                    .stroke()
                    .frame(width: 340, height: 340, alignment: .center)
                    .foregroundColor(.gray)
                    .scaleEffect(animateBigCircle ? 1 : 0.3)
                    .opacity(animateBigCircle ? 0 : 1)
                    .animation(Animation.easeInOut(duration: 4).repeatForever(autoreverses: false))
                Circle()
                    .frame(width: 150, height: 150, alignment: .center)
                    .foregroundColor(Color(red: 0.905, green: 0.91, blue: 0.91))
                    .scaleEffect(animateSmallCircle ? 0.5 : 1.1)
                    .animation(Animation.easeInOut(duration: 0.7).repeatForever(autoreverses: false))
                    .onAppear(){
                        self.animateSmallCircle.toggle()
                    }
                Image(systemName: "mic.circle.fill")
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: 80, height: 80, alignment: .center)
                    .foregroundColor(.red)
                Text("Siri")
                    .font(.title)
                    .foregroundColor(.gray)
                    .offset(y:80)
            }
            .offset(y:300)
        }
    }
}

struct VoiceRecordingView_Previews: PreviewProvider {
    static var previews: some View {
        VoiceRecordingView()
    }
}
