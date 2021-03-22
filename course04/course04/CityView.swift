//
//  CityView.swift
//  course04
//
//  Created by hqy2000 on 2020/11/13.
//

import SwiftUI

struct CityView: View {
    let chinese: String
    let english: String
    
    init(chinese: String, english: String) {
        self.chinese = chinese
        self.english = english
    }
    
    var body: some View {
        HStack {
            Text(chinese)
            Spacer()
            Text(english)
        }
    }
}

struct CityView_Previews: PreviewProvider {
    static var previews: some View {
        CityView(chinese: "北京", english: "Nanjing")
    }
}
