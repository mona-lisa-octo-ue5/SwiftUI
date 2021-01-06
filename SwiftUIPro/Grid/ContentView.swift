//
//  ContentView.swift
//  Grid
//
//  Created by 石玉龙 on 2021/1/6.
//

import SwiftUI

struct ContentView: View {
    var itemPerRow=3
    var contentViews:[AnyView]=[]
    init(){
        for i in 1...9 {
            contentViews.append(AnyView(Image("\(i)").resizable().aspectRatio(contentMode: .fill)))
        }
    }
    var body: some View {
        VStack(alignment: .leading, spacing: 0, content: {
            ForEach(0..<rowCount(contentNums: contentViews.count, itemPerRow: itemPerRow)){i in
                RowView(itemPerRow: self.itemPerRow, views: self.rowViews(currentRow: i, itemPerRow: self.itemPerRow))
            }
        })
    }
    func rowCount(contentNums:Int,itemPerRow:Int)->Int{
        if contentNums%itemPerRow==0{
            return contentNums/itemPerRow
        }
        return contentNums/itemPerRow+1
    }
    func rowViews(currentRow:Int,itemPerRow:Int)->[AnyView]{
        var views=[AnyView]()
        for i in 0..<itemPerRow {
            let index=i+itemPerRow*currentRow
            if index<contentViews.count{
                views.append(contentViews[index])
            }
        }
        return views
    }
}
struct RowView: View {
    var itemPerRow:Int
    var views:[AnyView]
    var itemWidth:CGFloat{
        UIScreen.main.bounds.width/CGFloat(itemPerRow)
    }
    var body: some View{
        HStack(spacing:0){
            ForEach(0..<views.count){ index in
                self.views[index].frame(width:self.itemWidth,height:self.itemWidth).clipped()
            }
        }
    }
}
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
