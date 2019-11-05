//
//  ProfileHeaderView.swift
//  InstagramClone
//
//  Created by Purushottam Chandra on 04/11/19.
//  Copyright © 2019 Purushottam Chandra. All rights reserved.
//

import SwiftUI

struct ProfileHeaderView: View {
    
    var body: some View {
        HStack(spacing: 20) {
            Image("face2")
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(width: 80, height: 80)
                .clipped()
                .cornerRadius(40)
                .padding(.leading)
            
            HStack(spacing: 30) {
                VStack {
                    Text("235")
                        .font(.headline)
                    
                    Text("Posts")
                        .font(.caption)
                }

                VStack {
                    Text("1000")
                        .font(.headline)
                    
                    Text("Followers")
                        .font(.caption)
                }

                VStack {
                    Text("1")
                        .font(.headline)
                    
                    Text("Following")
                        .font(.caption)
                }
            }.padding([.leading, .trailing])
        }
    }
}

struct ProfileHeaderView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileHeaderView()
    }
}
