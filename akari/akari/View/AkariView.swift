//
//  AkariView.swift
//  akari
//
//  Created by Lasya Kambhampati on 7/31/23.
//

import SwiftUI

struct AkariView: View {
    
    @EnvironmentObject var dm: DataModel
    
    var tempData: [Box] = []
    
    var body: some View {
        ZStack {
            VStack(spacing: 1){
                ForEach(0..<7){rows in
                    HStack(spacing: 1){
                        ForEach(0..<7){cols in
                            if Data.PUZZLE1[rows][cols] == 6{
                                CorridorView(row: rows, col: cols, lightOn: false)
                                tempData.append(Box(boxType: Types.Corridor, illuminated: false, clueCompleted: false, xCoordinate: rows, yCoordinate: cols))
                            }
                            else if Data.PUZZLE1[rows][cols] == 5{
                                WallView(row: rows, col: cols)
                                    .padding(0)
                                tempData.append(Box(boxType: Types.Wall, illuminated: false, clueCompleted: false, xCoordinate: rows, yCoordinate: cols))
                            }
                            else{
                                ClueView(row: rows, col: cols, clueValue: Data.PUZZLE1[rows][cols], clueCompleted: false)
                                tempData.append(Box(boxType: Types.Clue, illuminated: false, clueCompleted: false, xCoordinate: rows, yCoordinate: cols))
                                
                            }
                        }
                        
                    }
                    dm.Boxes.append(tempData)
                    tempData = []
                }
                
            }
            dm.printOut()
        }
        
        
        
    }
}


struct AkariView_Previews: PreviewProvider {
    static var previews: some View {
        AkariView()
            .environmentObject(DataModel())
    }
}
