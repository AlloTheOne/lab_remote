//
//  ContentView.swift
//  lab
//
//  Created by Alaa Alabdullah on 24/10/2022.
//

import SwiftUI

struct ContentView: View {
    @State var isOn = false
    @State var isOn1 = true
    @State var isOn2 = false
// hi
    @State var step = 0
    var body: some View {
        VStack {
            Text("Coffee ☕️").font(.title)
            
            Toggle(isOn: $isOn){
                    Text("Include Milk 🥛")}.padding()
           
            Toggle(isOn: $isOn1){
                Text("Iced 🧊 ")}.padding()
            
            Toggle(isOn: $isOn2){
                Text("spoon of sugar ")}.padding()
            
            Stepper(value: $step){
                Text("Quantity : \(step)")
            }.padding()
            
            Button("Order",action: excuteFunc)
            
            .padding()
        }
    }
    func excuteFunc(){
        print("Coffee Done")
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .preferredColorScheme(/*@START_MENU_TOKEN@*/.light/*@END_MENU_TOKEN@*/)
    }
}
