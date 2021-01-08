//
//  ContentView.swift
//  Launch
//
//  Created by 石玉龙 on 2021/1/8.
//

import SwiftUI

struct LaunchView:View {
    var body: some View{
        VStack{
            HStack{
                Text("Twitter")
                    .font(.largeTitle)
                    .fontWeight(.heavy)
                    .foregroundColor(Color("Bg"))
                Spacer()
            }
            .padding()
            .padding(.top,UIApplication.shared.windows.first?.safeAreaInsets.top)
            .background(Color.white)
            Spacer()
        }
        .ignoresSafeArea(.all, edges: .top)
        .background(Color.black.opacity(0.06).ignoresSafeArea(.all, edges: .all))
    }
}

struct ContentView: View {
    @State var animate=false
    @State var endAnimate=false
    func animationLogo(){
        DispatchQueue.main.asyncAfter(deadline: .now()+0.25) {
            withAnimation(Animation.easeOut(duration: 0.45)) {
                animate.toggle()
            }
            withAnimation(Animation.easeIn(duration: 0.36)) {
                endAnimate.toggle()
            }
        }
    }
    var body: some View {
        ZStack{
            LaunchView()
            ZStack{
                Color("Bg")
                Image("twitterLarge")
                    .resizable()
                    .renderingMode(.original)
                    .aspectRatio(contentMode: animate ? .fill : .fit)
                    .frame(width: animate ? nil : 85, height: animate ? nil : 85, alignment: .center)
                    .scaleEffect(animate ? 3 : 1)
                    .frame(width: UIScreen.main.bounds.width)
            }
            .ignoresSafeArea(.all, edges: .all)
            .onAppear(perform: animationLogo)
            .opacity(endAnimate ? 0 : 1)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
