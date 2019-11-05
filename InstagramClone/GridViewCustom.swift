//
//  GridViewCustom.swift
//  InstagramClone
//
//  Created by Purushottam Chandra on 04/11/19.
//  Copyright © 2019 Purushottam Chandra. All rights reserved.
//

import SwiftUI

struct GridViewCustom: View {
    
    let chunkedDishes = ["moreTea", "moreTea", "moreTea",
    "moreTea", "moreTea", "moreTea",
    "moreTea", "moreTea", "moreTea",
    "Status", "moreTea", "Status",
    "moreTea"].chunked(into: 3)
    
    var body: some View {
        VStack(alignment: .leading, spacing: 1) {
            ForEach(0..<chunkedDishes.count) { index in
                HStack(spacing: 1) {
                    ForEach(self.chunkedDishes[index], id: \.self) { dish in
                        
                        Image(dish)
                            .resizable()
                            .aspectRatio(contentMode: .fill)
                            .frame(width: UIScreen.main.bounds.width / 3, height: UIScreen.main.bounds.width / 3)
                            .clipped()
                        
                    }
                }
                
            }
        }
    }
}

struct GridViewCustom_Previews: PreviewProvider {
    static var previews: some View {
        GridViewCustom()
    }
}

public extension Array {
    func chunked(into size:Int) -> [[Element]] {
        
        var chunkedArray = [[Element]]()
        
        for index in 0...self.count {
            if index % size == 0 && index != 0 {
                chunkedArray.append(Array(self[(index - size)..<index]))
            } else if(index == self.count) {
                chunkedArray.append(Array(self[(index - (index % size))..<count]))
            }
        }
        
        return chunkedArray
    }
}
