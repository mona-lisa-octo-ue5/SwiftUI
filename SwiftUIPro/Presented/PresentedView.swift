//
//  PresentedView.swift
//  Presented
//
//  Created by 石玉龙 on 2021/1/7.
//

import SwiftUI

struct PresentedView: View {
    @Environment(\.presentationMode) var mode
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
        Button(action: {
            self.mode.wrappedValue.dismiss()
        }, label: {
            Text("Button dismiss")
        })
    }
}

struct PresentedView_Previews: PreviewProvider {
    static var previews: some View {
        PresentedView()
    }
}
