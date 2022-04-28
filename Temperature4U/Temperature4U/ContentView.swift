//
//  ContentView.swift
//  Temperature4U
//
//  Application will convert Temparature to different units C, F, K
//
//  Challenge Day #1 from 100 Days of SwiftUI
//  https://www.hackingwithswift.com/100/swiftui/19
//  Created by Petie Positivo on 4/28/22.
//

import SwiftUI

enum TemperatureUnit {
    case celsius
    case fahrenheit
    case kelvin
}

struct ContentView: View {
    //MARK: Properties & Formulas
    @State private var inputTemp = 0.0
    @State private var inputUnit: TemperatureUnit = .celsius
    @State private var outputTemp = 0.0
    let temperatureUnits = ["Celsius", "Fahrenheit", "Kelvin"]
    
    // Celsius to Fahrenheit by multiplying by 9, dividing by 5, then adding 32
    // Fahrenheit to Celsuis by subtracting 32, multiply by 5, divide by 9
    
    // Celsius to Kelvin is done by adding 273.15
    // Kelvin to Celsius is done by subtracting 273.15
    
    //Convert the input to Celsius, then convert from their to the target unit
        //if conversion is to celsius, just return the value
        //if conversion is to fahrenheit,
    var body: some View {
        
        //MARK: UI

        //TODO: Segmented Control to choose output unit (Picker)

        //TODO: Text View to display result
        
        Form {
            //TODO: Text Field to enter a number
            Section {
                TextField("Input", value: $inputTemp, format: .number)
                    .keyboardType(.decimalPad)
            } header: {
                Text("Input Temperature")
            }
            
            //TODO: Segmented Control to choose input unit (Picker)
            Section {
                Picker("Input Unit", selection: $inputUnit) {
                    ForEach(temperatureUnits, id: \.self) {
                        Text($0)
                    }
                }.pickerStyle(.segmented)
            } header: {
                Text("Input Unit")
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
