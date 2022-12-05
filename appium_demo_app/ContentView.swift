//
//  ContentView.swift
//  appium_demo_app
//
//  Created by Muhammad AbdulSalam on 05/12/2022.
//

import SwiftUI

struct ContentView: View {
    @State var testUi = "Hello, World!"
    
    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundColor(.accentColor)
            Text($testUi.wrappedValue)
            Button("Click Me"){
                self.testUi = "New Text"
            }
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
