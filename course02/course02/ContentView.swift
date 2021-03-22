//
//  ContentView.swift
//  course02
//
//  Created by hqy2000 on 2020/10/30.
//

import SwiftUI


struct ContentView: View {
    @State var string = ""
    @State var showTextfield = true
    @State var progress = 0.0
    var body: some View {
        VStack{
            if showTextfield {
                TextField("请在此处输入一些文字", text: $string)
            }
            
            
        
            Button("修改文字") {
                string = "修改过了"
            }
            
            Slider(value: $progress)
            
            Toggle("显示", isOn: $showTextfield)
            Button("显示") {
                showTextfield = !showTextfield
            }
        }.alert(isPresented: $showTextfield, content: {
            Alert(title: Text("提示").bold(), message: Text("打开了"), primaryButton: Alert.Button.default(Text("OK")), secondaryButton: Alert.Button.destructive(Text("关闭")))
        })
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
        
    }
}
