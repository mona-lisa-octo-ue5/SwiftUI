//
//  HomeView.swift
//  Home
//
//  Created by 石玉龙 on 2021/1/7.
//

import SwiftUI

struct HomeView: View {
    func scaleValue(mainFrame:CGFloat,minY:CGFloat)->CGFloat{
        withAnimation(.easeOut){
            let scale=(minY-25)/mainFrame
            if scale>1 {
                return 1
            }else{
                return scale
            }
        }
    }
    
    var body: some View {
        VStack(spacing:0){
            HStack{
                Text("Zoom Animation")
                    .font(.system(size: 40))
                    .fontWeight(.bold)
                    .foregroundColor(.black)
                Spacer(minLength: 0)
            }
            .padding()
            .padding(.top,UIApplication.shared.windows.first?.safeAreaInsets.top)
            .background(Color.white.shadow(color: Color.black.opacity(0.18), radius: 5, x: 0, y: 5))
            .zIndex(0)
            GeometryReader{mainView in
                ScrollView{
                    VStack(spacing:15){
                        ForEach(items,id:\.name){thisItem in
                            GeometryReader{item in
                                ItemView(item: thisItem)
                                    .scaleEffect(scaleValue(mainFrame: mainView.frame(in: .global).minY, minY: item.frame(in: .global).maxY),anchor:.bottom)
                                    .opacity(Double(scaleValue(mainFrame: mainView.frame(in: .global).minY, minY: item.frame(in: .global).minY)))
                            }
                            .frame(height:100)
                        }
                    }
                    .padding(.horizontal)
                    .padding(.top,25)
                }
                .zIndex(1)
            }
        }
        .background(Color.black.opacity(0.06).edgesIgnoringSafeArea(.all))
        .edgesIgnoringSafeArea(.top)
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
