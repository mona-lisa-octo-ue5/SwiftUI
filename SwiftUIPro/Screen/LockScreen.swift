//
//  LockScreen.swift
//  Screen
//
//  Created by 石玉龙 on 2021/1/7.
//

import SwiftUI

enum LockState {
    case UnLock
    case PowerOff
    case SOS
}

struct LockScreen: View {
    @State var textOpacity:Double=1.0
    @State private var offset:CGFloat=0
    @State private var progress=0
    private var capsuleWidth:CGFloat=300
    private var capsuleHeight:CGFloat=70
    private var displayText:String
    private var sliderPictureName:String=""
    private var currentLockState:LockState
    init(state:LockState) {
        currentLockState=state
        switch state {
        case .PowerOff:
            displayText="silde to power off"
            sliderPictureName="power"
        case .UnLock:
            displayText="slide to unlock"
            sliderPictureName="chevron.right.2"
        case .SOS:
            displayText="Emergency SOS"
            sliderPictureName=""
        }
    }
    
    var body: some View {
        ZStack{
            Color(.black)
            VStack{
                ZStack{
                    Capsule()
                        .fill(Color.gray.opacity(0.1))
                    Text(displayText)
                        .fontWeight(.regular)
                        .font(.system(size: 25))
                        .modifier(Shimmer())
                        .padding(.trailing,-40)
                    
                    HStack{
                        ZStack{
                            if currentLockState == .SOS{
                                Text("SOS")
                                    .font(.title)
                            }else{
                                Image(systemName: sliderPictureName)
                                    .resizable()
                                    .aspectRatio(contentMode: .fill)
                                    .frame(width: 30, height: 30)
                            }
                        }
                        .frame(width: capsuleHeight, height: capsuleHeight)
                        .foregroundColor(currentLockState == .SOS ? .white : .red)
                        .background(currentLockState == .SOS ? Color.red : .white)
                        .clipShape(Circle())
                        .offset(x: self.offset)
                        .gesture(
                            DragGesture()
                                .onChanged(self.onChanged(_:))
                                .onEnded(self.onEnd(_:)))
                        Spacer()
                    }
                }
                .frame(width: capsuleWidth, height: capsuleHeight, alignment: .center)
                .padding(.vertical)
            }
        }
    }
}

extension LockScreen {
    func onChanged(_ value:DragGesture.Value){
        let currentX=value.translation.width
        if currentX>0 && self.offset<=capsuleWidth-capsuleHeight{
            self.offset=currentX
            self.textOpacity=Double(1.0-currentX/capsuleWidth)
        }
    }
    func onEnd(_ value:DragGesture.Value){
        withAnimation(Animation.easeOut(duration: 0.3)) {
            if offset > capsuleWidth/2 {
                offset=capsuleWidth-capsuleHeight
                DispatchQueue.main.asyncAfter(deadline: .now()+0.25) {
                    NotificationCenter.default.post(name: NSNotification.Name("Success"), object: nil)
                }
            }else{
                offset=0
            }
        }
    }
}
