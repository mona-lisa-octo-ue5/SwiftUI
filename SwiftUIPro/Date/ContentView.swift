//
//  ContentView.swift
//  Date
//
//  Created by 石玉龙 on 2021/1/7.
//

import SwiftUI

struct UDatePicker: UIViewRepresentable {
    func updateUIView(_ uiView: UIDatePicker, context: Context) {
        datePicker.date=date
    }
    
    @Binding var date: Date
    private let datePicker=UIDatePicker()
    
    func makeUIView(context: Context) -> UIDatePicker {
        datePicker.datePickerMode = .date
        datePicker.addTarget(context.coordinator, action: #selector(Coordinator.changed(_:)), for: .valueChanged)
        return datePicker
    }
    
    func makeCoordinator() -> UDatePicker.Coordinator {
        Coordinator(date: $date)
    }
    
    class Coordinator: NSObject {
        private let date: Binding<Date>
        init(date: Binding<Date>) {
            self.date=date
        }
        @objc func changed(_ sender:UIDatePicker){
            self.date.wrappedValue=sender.date
        }
    }
    
}

struct ContentView: View {
    @State var date=Date()
    var body: some View {
        VStack{
            UDatePicker(date: self.$date)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
