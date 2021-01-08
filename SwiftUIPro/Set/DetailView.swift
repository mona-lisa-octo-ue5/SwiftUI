//
//  DetailView.swift
//  Set
//
//  Created by 石玉龙 on 2021/1/8.
//

import SwiftUI

struct DetailView: View {
    let message:String
    var body: some View {
        Text(message)
            .navigationBarTitle(Text("Detail View"),displayMode: .inline)
    }
}
