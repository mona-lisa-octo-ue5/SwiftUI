//
//  PasswordView.swift
//  Password
//
//  Created by 石玉龙 on 2021/1/7.
//

import SwiftUI

struct PasswordView: View {
    var index:Int
    @Binding var password:String
    var body: some View {
        ZStack{
            Circle()
                .stroke(Color.white,lineWidth: 2)
                .frame(width: 20, height: 20)
            if password.count > index {
                Circle()
                    .fill(Color.white)
                    .frame(width: 20, height: 20)
            }
        }
    }
}
