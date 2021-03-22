//
//  ContentView.swift
//  course04
//
//  Created by hqy2000 on 2020/11/13.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            CityView(chinese: "南京", english: "Nanjing")
            CityView(chinese: "北京", english: "Beijing")
            CityView(chinese: "上海", english: "Shanghai")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
