//
//  ProgressTrackView.swift
//  Timer
//
//  Created by 石玉龙 on 2021/1/7.
//

import SwiftUI

struct ProgressTrackView: View {
    var body: some View {
        Circle()
            .fill(Color.clear)
            .frame(width: 250, height: 250)
            .overlay(Circle().stroke(Color.black.opacity(0.09),lineWidth: 15))
    }
}

