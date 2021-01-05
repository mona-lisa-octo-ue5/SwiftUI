//
//  AVPlayer+Ding.swift
//  SwiftUIPro
//
//  Created by 石玉龙 on 2021/1/5.
//

import Foundation
import AVFoundation

extension AVPlayer {
    static let sharedDingPlayer:AVPlayer={
        guard let url = Bundle.main.url(forResource: "ding", withExtension: "wav") else { fatalError("Failed to find sound file.") }
        return AVPlayer(url: url)
    }()
}
