//
//  TimeZoneView.swift
//  Clock
//
//  Created by 石玉龙 on 2021/1/8.
//

import SwiftUI

struct TimeZoneView: View {
    @Binding var is12h:Bool
    func getTime()->String{
        let df=DateFormatter()
        df.locale=Locale.autoupdatingCurrent
        if is12h{
            df.dateFormat="hh:mm a"
        }else{
            df.dateFormat="HH:mm"
        }
        df.timeZone=TimeZone.current
        return df.string(from: Date())
    }
    var body: some View {
        VStack{
            Text(Locale.current.localizedString(forRegionCode: "cn") ?? "")
                .font(.largeTitle)
                .fontWeight(.heavy)
                .padding(.top,35)
            Text(getTime())
                .font(.system(size: 45))
                .fontWeight(.heavy)
                .padding(.top,10)
        }
    }
}

