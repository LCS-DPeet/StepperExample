//
//  ContentView.swift
//  Stepper example
//
//  Created by Danika Peet on 2024-01-15.
//

import SwiftUI

struct BracketView: View {
    
    // MARK: Stored properties
   @State var base: Int = 1
    
    // MARK: Computed properties
    var squared: Int {
        return base * base
    }
   var body: some View {
        VStack {
            
            Spacer()
            
            HStack(alignment: .top) {

               // Text("5")
                if base >= 0 {
                    Text("\(base)")
                        .font(.system(size: 96))
                } else {
                    Text("(\(base))")
                        .font(.system(size: 96))
                }
                Text("2")
                    .font(.system(size: 44))

                Text("=")
                    .font(.system(size: 96))

               // Text("25")
                Text("\(squared)")
                    .font(.system(size: 96))
            }

            Stepper(value: $base, label: {
                Text("Base")
                
            })
            Spacer()
        }
        .padding()
    }
}

#Preview {
    BracketView()
}
