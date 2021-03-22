//
//  ContentView.swift
//  course01
//
//  Created by hqy2000 on 2020/10/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        HStack{
            Image("cde")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(height: 100)
                .blur(radius: 1)
                .clipShape(Circle())
            Text("胡清阳").font(.largeTitle)
                .foregroundColor(.blue)
           
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            ContentView()

        }
    }
}
