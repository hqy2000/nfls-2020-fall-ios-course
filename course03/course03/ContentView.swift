//
//  ContentView.swift
//  course03
//
//  Created by hqy2000 on 2020/11/6.
//

import SwiftUI

struct ContentView: View {
    @State var text: String = ""
    @State var showName = false
    @State var progress = 0.0
    @State var index = 2
    let cities = ["南京","苏州","无锡"]
    var body: some View {
        VStack {
            Text(cities[index])
            Toggle("允许输入姓名", isOn: $showName).toggleStyle(DefaultToggleStyle())
            Slider(value: $progress)
            Picker(selection: $index, label: Text("")) {
                ForEach(0 ..< cities.count) { value in
                    Text(cities[value])
                }
            }.frame(width: 60).clipped()
        }.alert(isPresented: $showName, content: {
            Alert(title: Text("提示"), message: Text("按钮已经被打开"), primaryButton: Alert.Button.default(Text("OK")) {
                text = "OK"
            }, secondaryButton: Alert.Button.destructive(Text("取消")) {
                text = "已取消"
            })
        })
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
