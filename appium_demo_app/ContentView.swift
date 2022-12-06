//
//  ContentView.swift
//  appium_demo_app
//
//  Created by Muhammad AbdulSalam on 05/12/2022.
//

import SwiftUI

struct ContentView: View {
    @State var amount = ""
    @State var fetchVisibility = false
    
    var body: some View {
        VStack {
            VStack {
                UiGenerator.currencyFirstRow()
                UiGenerator.currencySecondRow(amount: $amount)
                UiGenerator.getButtonRow(visibility: $fetchVisibility, onClick: {self.fetchVisibility = true})
                Divider().padding(.all)
            }.padding(10)
            Spacer()
            if(self.fetchVisibility){UiGenerator.getCurrencyListView()}
        }
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
