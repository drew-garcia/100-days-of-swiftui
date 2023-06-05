//
//  ContentView.swift
//  Temperature Conversion
//
//  Created by drewdev on 6/3/23.
//

import SwiftUI

struct ContentView: View {
    @State private var input = 32.0
    @State private var inputUnit = "Fahrenheit"
    @State private var outputUnit = "Celsius"
    @FocusState private var inputIsFocused: Bool
    
    let units = ["Celsius", "Fahrenheit", "Kelvin"]
    
    var result: String {
        let inputToCelsius: Double
        let celsiusToOutput: Double
        
        switch inputUnit {
        case "Celsius":
            inputToCelsius = input
        case "Fahrenheit":
            inputToCelsius = (input - 32.0) * (5/9)
        case "Kelvin":
            inputToCelsius = input - 273.15
        default:
            inputToCelsius = input
        }
        
        switch outputUnit {
        case "Celsius":
            celsiusToOutput = inputToCelsius
        case "Fahrenheit":
            celsiusToOutput = inputToCelsius * (9/5) + 32.0
        case "Kelvin":
            celsiusToOutput = inputToCelsius + 273.15
        default:
            celsiusToOutput = inputToCelsius
        }

        let output = celsiusToOutput

        let outputString = output.formatted()
        return "\(outputString) \(outputUnit.lowercased())"
    }
    
    var body: some View {
        NavigationView {
            Form {
                Section {
                    TextField("Amount", value: $input, format: .number)
                        .keyboardType(.decimalPad)
                } header: {
                    Text("Amount to convert")
                }
                
                Section {
                    Picker("Convert from", selection: $inputUnit) {
                        ForEach(units, id: \.self) {
                            Text($0)
                        }
                    }
                    
                    Picker("Convert to", selection: $outputUnit) {
                        ForEach(units, id: \.self) {
                            Text($0)
                        }
                    }
                } header: {
                    Text("Units")
                }
                
                Section {
                    Text(result)
                } header: {
                    Text("Result")
                }
            }
            .navigationTitle("Temp Conversion")
            .toolbar {
                ToolbarItemGroup(placement: .keyboard) {
                    Spacer()
                    
                    Button("Done") {
                        inputIsFocused = false
                    }
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
