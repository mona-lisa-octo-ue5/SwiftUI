//
//  DetailView.swift
//  SwiftUIPro
//
//  Created by 石玉龙 on 2021/1/5.
//

import SwiftUI

struct DetailView: View {
    let scrum:DailyScrum
    @State private var isPresented=false
    @State private var data:DailyScrum.Data=DailyScrum.Data()
    var body: some View {
        List{
            Section(header: Text("Meeting Info")) {
                NavigationLink(destination: MeetingView()){
                    Label("Start Meeting",systemImage:"timer")
                        .font(.headline)
                        .foregroundColor(.accentColor)
                        .accessibilityLabel(Text("Start meeting"))
                }
                HStack{
                    Label("Length",systemImage:"clock")
                        .accessibilityLabel(Text("Meeting length"))
                    Spacer()
                    Text("\(scrum.lengthInMinutes) minutes")
                }
                HStack{
                    Label("Color",systemImage:"paintpalette")
                    Spacer()
                    Image(systemName: "checkmark.circle.fill")
                        .foregroundColor(scrum.color)
                }
                .accessibilityElement(children: .ignore)
            }
            
            Section(header: Text("Attendees")) {
                ForEach(scrum.attendees,id:\.self){ attendee in
                    Label(attendee,systemImage:"person")
                        .accessibilityLabel(Text("person"))
                        .accessibilityValue(Text(attendee))
                }
            }
        }
        .listStyle(InsetGroupedListStyle())
        .navigationBarItems(trailing: Button("Edit"){
            isPresented=true
            data=scrum.data
        })
        .navigationTitle(scrum.title)
        .fullScreenCover(isPresented: $isPresented){
            NavigationView{
                EditView(scrumData: $data)
                    .navigationTitle(scrum.title)
                    .navigationBarItems(leading: Button("Cancel"){
                        isPresented=false
                    }, trailing: Button("Done"){
                        isPresented=false
                        scrum.update(from:data)
                    })
            }
        }
    }
}

struct DetailView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView{
            DetailView(scrum: .constant(DailyScrum.data[0]))
        }
    }
}
