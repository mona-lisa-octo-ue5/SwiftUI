//
//  LockScreen.swift
//  Password
//
//  Created by 石玉龙 on 2021/1/7.
//

import SwiftUI

struct LockScreen: View {
    @AppStorage("lock_Password") var key="1234"
    @Binding var unLocked:Bool
    @State var password=""
    @State var wrongPassword=false
    let height=UIScreen.main.bounds.width
    var body: some View {
        VStack{
            HStack{
                Spacer(minLength: 0)
                Menu(content: {
                    Label(title: {Text("Help")}, icon: {Image(systemName: "info.circle.fill")}).onTapGesture {
                        
                    }
                    Label(title: {Text("Reset Password")}, icon: {
                        Image(systemName: "key.fill")
                            .onTapGesture { } })
                }){
                    Image(systemName: "gearshape.fill")
                        .renderingMode(.template)
                        .resizable()
                        .frame(width: 30, height: 30)
                        .foregroundColor(.white)
                        .padding()
                }
            }
            .padding(.leading)
            
            Image("YinYang")
                .resizable()
                .frame(width: 100, height: 100)
                .padding(.top,20)
            Text("Enter Your Password to Unlock")
                .font(.title3)
                .fontWeight(.heavy)
                .padding(.top, 20)
            HStack(spacing: 20) {
                ForEach(0..<4,id: \.self) { index in
                    PasswordView(index: index, password: $password)
                }
            }
            .padding(.top,height<750 ? 20 : 30)
            Spacer(minLength: 0)
            Text(wrongPassword ? "The password is incorrect" : "")
                .foregroundColor(.red)
                .fontWeight(.heavy)
            Spacer(minLength: 0)
            
            LazyVGrid(columns: Array(repeating: GridItem(.flexible()), count: 3), spacing: height < 750 ? 10 : 15) {
                ForEach(1...9, id: \.self) { value in
                    PasswordButton(value: "\(value)", password: $password, key: $key, unlocked: $unLocked, wrongPass: $wrongPassword)
                }
                PasswordButton(value: "Cancel", password: $password, key: $key, unlocked: $unLocked, wrongPass: $wrongPassword)
                PasswordButton(value: "0", password: $password, key: $key, unlocked: $unLocked, wrongPass: $wrongPassword)
                PasswordButton(value: "delete.fill", password: $password, key: $key, unlocked: $unLocked, wrongPass: $wrongPassword)
            }
            Spacer()
        }
        .navigationTitle("")
        .navigationBarHidden(true)
    }
}
