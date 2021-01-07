//
//  ContentView.swift
//  Chat
//
//  Created by 石玉龙 on 2021/1/7.
//

import SwiftUI

struct MainRow:View {
    var body: some View{
        HStack(alignment:.top){
            Image("1")
                .resizable().frame(width: 46, height: 46)
                .cornerRadius(6)
                .overlay(Color.red.overlay(Text("1").font(.caption).foregroundColor(.white))
                            .frame(width: 16, height: 16)
                            .cornerRadius(8)
                            .offset(x: 23, y: -23))
            VStack{
                VStack(alignment: .leading, spacing: 6){
                    HStack{
                        Text("Title").font(.body)
                        Spacer()
                        Text("15:21")
                            .font(.caption)
                            .foregroundColor(Color.gray.opacity(0.5))
                    }
                    Text("sub title")
                        .font(.callout)
                        .foregroundColor(Color.gray)
                }
                .padding(.trailing)
                Divider()
            }
        }
        .padding(.top)
        .padding(.leading)
    }
}

struct ContentView: View {
    init(){
        UITableView.appearance().separatorStyle = .none
    }
    var body: some View {
        List{
            ForEach(0..<20){item in
                MainRow().listRowInsets(EdgeInsets())
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
