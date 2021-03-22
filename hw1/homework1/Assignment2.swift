//
//  Assignment2.swift
//  homework1
//
//  Created by bytedance on 2020/11/7.
//

import SwiftUI

struct Assignment2: View {
    var body: some View {
        VStack {
            HStack {
                Image("NFLS")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 80)
                VStack {
                    Text("南京外国语学校")
                        .font(.title)
                    Text("Nanjing Foreign Languages School")
                        .font(.caption)
                }
            }
            Text("南京外国语学校（Nanjing Foreign Language School，简称南外或NFLS）是1963年在中国时任总理周恩来的提议下，创办的全国首批外国语学校之一。")
                .padding()
                .font(.caption)
            
            HStack {
                Text("历史")
                    .font(.title)
                    .padding()
                Spacer()
            }
            
            
            List {
                Text("1963年， 南京外国语学校在总理周恩来的提议下，与北京、武汉、重庆、长春等城市的8所外国语学校一起创立。江苏省教育厅受国务院、教育部的委托，在南京筹办了南京外国语学校。")
                Text("2003年秋季，南京外国语学校创办并仙林分校正式开始招生")
                Text("2012年，南京外国语学校创办河西分校和南京市浦口外国语学校并正式开始招生。")
            }
            
            
    
        }
    }
}

struct Assignment2_Previews: PreviewProvider {
    static var previews: some View {
        Assignment2()
    }
}
