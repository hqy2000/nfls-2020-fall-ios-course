//
//  Assignment5.swift
//  homework1
//
//  Created by bytedance on 2020/11/7.
//

import SwiftUI

struct Assignment5: View {
    @State var username = ""
    @State var secret = ""
    @State var isOpen = false
    var body: some View {
        VStack {
            Text("游戏大厅").font(.title)
            TextField("用户名", text: $username)
            TextField("暗号", text: $secret)
            Button("进入游戏") {
                if self.secret == "NFLS" {
                    self.isOpen = true
                }
            }
        }.alert(isPresented: $isOpen, content: {
            Alert(
                title: Text(username),
                message: Text("您已成功进入游戏服务器！"),
                primaryButton: Alert.Button.default(Text("好的")),
                secondaryButton: Alert.Button.destructive(Text("退出")) {
                    self.username = ""
                    self.secret = ""
                })
        })
        
    }
}

struct Assignment5_Previews: PreviewProvider {
    static var previews: some View {
        Assignment5()
    }
}
