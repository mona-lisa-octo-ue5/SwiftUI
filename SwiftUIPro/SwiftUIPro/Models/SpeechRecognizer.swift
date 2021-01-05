//
//  SpeechRecognizer.swift
//  SwiftUIPro
//
//  Created by 石玉龙 on 2021/1/5.
//

import SwiftUI
import Foundation
import Speech
import AVFoundation

struct SpeechRecognizer {
    private class SpeechAssist {
        var audioEngine:AVAudioEngine?
        var recognitionRequest:SFSpeechAudioBufferRecognitionRequest?
        var recognitionTask:SFSpeechRecognitionTask?
        var speechRecognizer=SFSpeechRecognizer()
        deinit {
            reset()
        }
        func reset() {
            recognitionTask?.cancel()
            audioEngine?.stop()
            audioEngine=nil
            recognitionRequest=nil
            recognitionTask=nil
        }
    }
    private let assistant=SpeechAssist()
    func record(to speech:Binding<String>){
        relay(speech, message: "Requesting access")
        canAccess { (authorized) in
            guard authorized else {
                relay(speech, message: "Access denied")
                return
            }
            relay(speech, message: "Access granted")
        }
    }
    private func relay(_ binding:Binding<String>,message:String){
        DispatchQueue.main.async {
            binding.wrappedValue=message
        }
    }
    private func canAccess(withHandler handler:@escaping (Bool)->Void){
        SFSpeechRecognizer.requestAuthorization{status in
            if status == .authorized{
                AVAudioSession.sharedInstance().requestRecordPermission { (authorized) in
                    handler(authorized)
                }
            }else{
                handler(false)
            }
        }
    }
}
