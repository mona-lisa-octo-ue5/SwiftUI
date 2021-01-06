//
//  EditView.swift
//  SwiftUIPro
//
//  Created by 石玉龙 on 2021/1/6.
//

import SwiftUI

struct EditView: View {
    @State private var scrumData: DailyScrum.Data=DailyScrum.Data()
    var body: some View {
        List{
            Section(header: Text("Meeting info")) {
                TextField("Title",text:$scrumData.title)
                HStack{
                    Slider(value: $scrumData.lengthInMinutes,in:5...30,step:1.0){
                        Text("Length")
                    }
                    Spacer()
                    Text("\(Int(scrumData.lengthInMinutes)) minutes")
                }
                ColorPicker("Color",selection:$scrumData.color)
            }
        }
    }
}

struct EditView_Previews: PreviewProvider {
    static var previews: some View {
        EditView()
    }
}
