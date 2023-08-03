//
//  ContentView.swift
//  Slot Machine
//
//  Created by Phuong Vu on 02/08/2023.
//

import SwiftUI

struct ContentView: View {
    @State var creditScore = 1000
    
    
    @State var slot1 = 1
    @State var slot2 = 1
    @State var slot3 = 1
    
    var body: some View {
        VStack {
            //Spacer()
            Text("The Great Simple Slots").font(.subheadline)
            Spacer()
            Text("Credit \(creditScore)").font(.largeTitle)
            Spacer()
            //Slot Image
            HStack{
                Spacer()
                Image("fruit\(slot1)") .resizable()
                    .aspectRatio(contentMode: .fit)
                Spacer()
                Image("fruit\(slot2)") .resizable()
                    .aspectRatio(contentMode: .fit)
                Spacer()
                Image("fruit\(slot3)") .resizable()
                    .aspectRatio(contentMode: .fit)
                Spacer()
            }.frame(width: 280, height:  280)
            Spacer()
            Spacer()
            //Button to control
            Button("Spin") {
                //randomize a number or an arrray
                //asssign that random number to a dynamic var
                //pass that dynamic var to change Image
                //compare the Image to update the score
                slot1 = Int.random(in:1...3)
                slot2 = Int.random(in:1...3)
                slot3 = Int.random(in:1...3)
                
                if (slot1==slot2)&&(slot2==slot3){
                    creditScore+=350
                } else {
                    creditScore-=20
                }
                
            }
                .foregroundStyle(.white)
                .bold()
                .padding(.horizontal, 140)
                .padding(.vertical, 16)
                .background(Color(red: 0.86, green: 0.24, blue: 0.00))
                .clipShape(RoundedRectangle(cornerRadius: 16, style: .continuous))

        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
