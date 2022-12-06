//
//  UiGenerator.swift
//  appium_demo_app
//
//  Created by Muhammad AbdulSalam on 06/12/2022.
//

import Foundation
import SwiftUI

struct Currency: Identifiable {
    var id: Int
    var image: String
    var name: String
    var value: String
}



class UiGenerator{
    
    
    static func currencyFirstRow() -> some View{
        return HStack{
            Text("Default Currency")
            Spacer()
            Text("EUR")
        }
    }

    static func currencySecondRow(amount: Binding<String>) -> some View {
        return HStack{
            Text("Amount")
            Spacer()
            TextField("amount", text: amount).fixedSize()
        }.padding(.top)
    }

    static func getButtonRow(visibility: Binding<Bool>, onClick: @escaping () -> ()) -> some View{
        return HStack{
            if(visibility.wrappedValue){
            Button("History"){}
            }
          
            Spacer()
            Button("Fetch"){onClick()}
            
        }.padding(.top)
    }

    static func getCurrencyListView() -> some View{
        let currencyList = getDummyCurrencyList()

        return List(currencyList){ currency in
            HStack{
                Image(currency.image)
                Text(currency.name)
                Spacer()
                Text(currency.value)
            }
        }
        
    }

    static func getDummyCurrencyList() -> Array<Currency>{
        var currencyList = [Currency]()
        currencyList.append(Currency(id: 1, image: "ic_gbp", name: "GBP", value: "10.0"))
        currencyList.append(Currency(id: 2, image: "ic_aud", name: "AUD", value: "200.0"))
        currencyList.append(Currency(id: 3, image: "ic_cad", name: "CAD", value: "121.3"))
        currencyList.append(Currency(id: 4, image: "ic_chf", name: "CHF", value: "21.3"))
        currencyList.append(Currency(id: 6, image: "ic_cny", name: "CNY", value: "101.1"))
        currencyList.append(Currency(id: 7, image: "ic_japan", name: "JNY", value: "331.2"))
        currencyList.append(Currency(id: 8, image: "ic_nzd", name: "NZD", value: "121.2"))
        currencyList.append(Currency(id: 9, image: "ic_sek", name: "SEK", value: "110.0"))

        
        return currencyList
    }

    
}
