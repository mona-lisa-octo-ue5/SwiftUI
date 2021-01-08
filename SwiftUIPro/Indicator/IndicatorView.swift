//
//  IndicatorView.swift
//  Indicator
//
//  Created by 石玉龙 on 2021/1/8.
//

import SwiftUI

struct IndicatorView: UIViewRepresentable {
    @Binding var isShowing:Bool
    let style:UIActivityIndicatorView.Style
    let color:UIColor?=nil
    
    func makeUIView(context: UIViewRepresentableContext<IndicatorView>) -> UIActivityIndicatorView {
        let v=UIActivityIndicatorView(style: style)
        v.color=color
        return v
    }
    
    func updateUIView(_ uiView: UIActivityIndicatorView, context: UIViewRepresentableContext<IndicatorView>) {
        isShowing ? uiView.startAnimating() : uiView.stopAnimating()
    }
    
    typealias UIViewType = UIActivityIndicatorView
}

struct IndicatorView_Previews: PreviewProvider {
    static var previews: some View {
        IndicatorView(isShowing: .constant(false), style: .large)
    }
}
