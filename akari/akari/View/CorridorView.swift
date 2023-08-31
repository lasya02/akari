//
//  CorridorView.swift
//  akari
//
//  Created by Lasya Kambhampati on 7/31/23.
//

import SwiftUI

struct CorridorView: View {
    var row: Int
    var col: Int
    @State var lightOn: Bool
   // @EnvironmentObject var dm: DataModel
    
    var body: some View {
        VStack{
            Button {
                lightOn.toggle()
                //if clicked on, turns on a light
            } label: {
                Rectangle()
                    .border(.black)
                    .foregroundColor(lightOn ? .yellow : .clear)
                    .frame(width: 45, height: 45)
//                    .padding(.all)
              
//                    .padding(.all)
                
               
                //add formatting as needed
            }
            
        }
    }
}

struct CorridorView_Previews: PreviewProvider {
    static var previews: some View {
        CorridorView(row: 0, col: 0, lightOn: true)
           // .environmentObject(DataModel())
    }
}
