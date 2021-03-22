//
//  Assignment4.swift
//  homework1
//
//  Created by bytedance on 2020/11/7.
//

import SwiftUI

struct Assignment4: View {
    @State var progress = 0.0
    var body: some View {
        VStack {
            if progress > 0.5 {
                Text("进度已经过半啦！")
                    .foregroundColor(.red)
            }
            Slider(value: $progress)
        }
    }
}

struct Assignment4_Previews: PreviewProvider {
    static var previews: some View {
        Assignment4()
    }
}
