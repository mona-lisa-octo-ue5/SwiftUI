//
//  TopView.swift
//  Clock
//
//  Created by 石玉龙 on 2021/1/8.
//

import SwiftUI

struct TopView: View {
    @Binding var isDark:Bool
    var body: some View {
        HStack{
            Text("Beautiful, Clock!")
                .font(.title)
                .fontWeight(.heavy)
            Spacer(minLength: 0)
            Button(action: {
                isDark.toggle()
            }) {
                Image(systemName: isDark ? "sun.min.fill" : "moon.fill")
                    .font(.system(size: 22))
                    .foregroundColor(isDark ? .black : .white)
                    .padding()
                    .background(Color.primary)
                    .clipShape(Circle())
            }
        }
        .padding()
    }
}

