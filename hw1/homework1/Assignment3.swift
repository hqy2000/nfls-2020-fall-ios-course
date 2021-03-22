//
//  Assignment3.swift
//  homework1
//
//  Created by bytedance on 2020/11/7.
//

import SwiftUI

struct Assignment3: View {
    @State var content = "我的个人信息"
    var body: some View {
        VStack {
            HStack {
                Text("关于我").font(.title).padding()
                Spacer()
            }
            
            Text(content).font(.title2)
            
            Button("我的名字") {
                self.content = "胡清阳"
            }.padding()
            Button("我的班级") {
                self.content = "Muir"
            }.padding()
            Button("我的学校") {
                self.content = "UCSD"
            }.padding()
        }
    }
}

struct Assignment3_Previews: PreviewProvider {
    static var previews: some View {
        Assignment3()
    }
}
