//
//  History.swift
//  SwiftUIPro
//
//  Created by 石玉龙 on 2021/1/5.
//

import Foundation

struct History: Identifiable,Codable {
    let id:UUID
    let date:Date
    let attendees:[String]
    var lengthInMinutes:Int
    var transcript:String?
    init(id:UUID=UUID(),date:Date=Date(),attendees:[String],lengthInMinutes:Int,transcript:String?=nil) {
        self.id=id
        self.date=date
        self.attendees=attendees
        self.lengthInMinutes=lengthInMinutes
        self.transcript=transcript
    }
}
