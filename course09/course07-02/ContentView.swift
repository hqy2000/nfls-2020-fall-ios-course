//
//  ContentView.swift
//  course07-02
//
//  Created by hqy2000 on 2020/12/4.
//

import SwiftUI
import CoreML
import Vision

struct ContentView: View {
    @State var text: String = ""
    var body: some View {
        HStack {
            Text(text)
                .padding()
            Button("识别") {
                do {
                    let model = try VNCoreMLModel(for: MobileNet().model)
                    let request = VNCoreMLRequest(model: model) { (request, error) in
                        
                        let result = request.results as? [VNClassificationObservation]
                        
                        self.text = result?[0].identifier ?? "n/a"
                    }
                    let handler = VNImageRequestHandler(ciImage: CIImage(contentsOf: Bundle.main.url(forResource: "flower", withExtension: "jpg")!)!, options: [:])
                    try handler.perform([request])
                } catch {
                    
                }
                
            }
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
