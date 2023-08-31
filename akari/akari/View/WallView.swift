//
//  WallView.swift
//  akari
//
//  Created by Lasya Kambhampati on 7/31/23.
//

import SwiftUI

struct WallView: View {
    var row: Int
    var col: Int
    @EnvironmentObject var dm: DataModel
    var body: some View {
        VStack{
            Button {
                //lightOn.toggle()
                //if clicked on, turns on a light
            } label: {
                Rectangle()
                    .border(.black)
                    .foregroundColor(.gray)
                    .frame(width: 45, height: 45)
//                    .padding(.all)
              
//                    .padding(.all)
                
               
                //add formatting as needed
            }
           
        }

    }
}

struct WallView_Previews: PreviewProvider {
    static var previews: some View {
        WallView(row: 0, col: 0)
            .environmentObject(DataModel())
    }
}
