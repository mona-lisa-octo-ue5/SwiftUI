//
//  PasswordButton.swift
//  Password
//
//  Created by 石玉龙 on 2021/1/7.
//

import SwiftUI

struct PasswordButton: View {
    var value:String
    @Binding var password:String
    @Binding var key:String
    @Binding var unlocked:Bool
    @Binding var wrongPass:Bool
    
    private func isTyping(){
        if password.count != 4 {
            password.append(value)
            DispatchQueue.main.asyncAfter(deadline: .now()+0.3) {
                withAnimation{
                    if password.count == 4 {
                        if password == key{
                            unlocked = true
                        }else{
                            wrongPass=true
                            password.removeAll()
                        }
                    }
                }
            }
        }
    }
    private func setPassword(){
        withAnimation {
            if value.count > 1 {
                if password.count != 0 {
                    password.removeLast()
                }
            }else{
                isTyping()
            }
        }
    }
    
    var body: some View {
        Button(action: setPassword, label:{
            VStack{
                if value.count > 6 {
                    Image(systemName: "delete.left")
                        .font(.system(size: 20))
                        .foregroundColor(.white)
                }else if value == "Cancel" {
                    Text(value)
                        .font(.system(size:15))
                        .font(.title)
                        .foregroundColor(.white)
                }else{
                    Text(value)
                        .font(.system(size: 30))
                        .font(.title)
                        .foregroundColor(.white)
                }
            }
            .padding()
        })
        .frame(width: 80, height: 80)
        .overlay(RoundedRectangle(cornerRadius: 40,style: .circular)
                    .stroke(Color.gray,lineWidth: 1))
    }
}
