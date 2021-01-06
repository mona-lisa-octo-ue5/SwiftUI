//
//  ContentView.swift
//  Charge
//
//  Created by 石玉龙 on 2021/1/6.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView{
            HomeView().preferredColorScheme(.dark)
                .navigationTitle("LockScreenBattery")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
