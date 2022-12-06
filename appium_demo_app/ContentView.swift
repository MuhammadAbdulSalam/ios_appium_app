//
//  ContentView.swift
//  appium_demo_app
//
//  Created by Muhammad AbdulSalam on 05/12/2022.
//

import SwiftUI

struct Currency: Identifiable {
    var id: Int
    var image: String
    var name: String
    var value: String
}


struct ContentView: View {
    @State var amount = ""
    @State var fetchVisibility = false
    let currencyList = getDummyCurrencyList()

    
    var body: some View {
        
        VStack {
            
            VStack {
                HStack{
                    Text("Default Currency")
                    Spacer()
                    Text("EUR")
                }
                
                HStack{
                    Text("Amount")
                    Spacer()
                    TextField("amount", text: $amount).fixedSize()
                }.padding(.top)
                
                HStack{
                    if(self.fetchVisibility){
                    Button("History"){}
                    }
                  
                    Spacer()
                    Button("Fetch"){self.fetchVisibility = true}
                    
                }.padding(.top)
                
                Divider().padding(.all)

            }.padding(10)
            
            Spacer()
            
            if(self.fetchVisibility){
                List(currencyList){ currency in
                    
                    HStack{
                        Image(currency.image)
                        Text(currency.name)
                        Spacer()
                        Text(currency.value)
                    }
                 
                }
            }
        
        }
    }
}

func getDummyCurrencyList() -> Array<Currency>{
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



struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
