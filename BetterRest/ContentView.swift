//
//  ContentView.swift
//  BetterRest
//
//  Created by Leo  on 09.11.23.
//

import SwiftUI

struct ContentView: View {
    
    @State private var sleepAmount = 8.0
    @State private var wakeUp = Date.now
    
    var body: some View {
//        Text(Date.now, format: .dateTime.day().month().year().hour().minute())
        
        Text(Date.now.formatted(date: .long, time: .shortened))
        
        DatePicker("Please enter a date", selection: $wakeUp, in: Date.now..., displayedComponents: .date)
            .labelsHidden()
        Stepper("\(sleepAmount.formatted()) hours", value: $sleepAmount, in: 4...12, step: 0.25)
    }
    
    func exampleDates() {
//        var components = DateComponents()
//        components.hour = 8
//        components.minute = 0
//        let date = Calendar.current.date(from: components) ?? .now
        
        let components = Calendar.current.dateComponents([.hour, .minute], from: .now)
        let hour = components.hour ?? 0
        let minute = components.minute ?? 0
        
    }
    
}

#Preview {
    ContentView()
}
