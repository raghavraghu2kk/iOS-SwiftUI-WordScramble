//
//  ContentView.swift
//  WordScramble
//
//  Created by Raghavendra Mirajkar on 26/03/24.
//

import SwiftUI

struct ContentView: View {
    let people = ["Raghav","Rajat","Rahul","Sanath"]
    
    var body: some View {
        List{
            Section("Section 1"){
                Text("Static Row 1")
                Text("Static Row 2")
            }
            
            Section("Section 2"){
                ForEach(0..<5){num in
                    Text("Dynamic Row \(num)")
                }
            }
            
            Section("Section 3"){
                Text("Static Row 3")
                Text("Static Row 4")
            }
            
            Text("Static Row")
            ForEach(people, id: \.self){num in
                Text("\(num)")
            }
            
            List(people, id: \.self) {num in
                Text("\(num)")
            }
        }
    }
}

#Preview {
    ContentView()
}
