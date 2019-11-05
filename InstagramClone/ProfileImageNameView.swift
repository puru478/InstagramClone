//
//  ProfileImageNameView.swift
//  Menu
//
//  Created by Purushottam Chandra on 25/10/19.
//  Copyright © 2019 Purushottam Chandra. All rights reserved.
//

import SwiftUI

struct ProfileImageNameView: View {
    
    @State private var show_modal: Bool = false
    
    var body: some View {
        VStack {
            Image("face2")
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(width: 80, height: 80)
                .clipped()
                .cornerRadius(40)
                
            Text("Jon Snow")
                .lineLimit(1)
                .frame(width: 80)
                .font(.subheadline)
                .foregroundColor(.secondary)
        }
        .sheet(isPresented: self.$show_modal, onDismiss: {
            print("Dismiss")
        }) {
            FullScreenStatusView()
        }
        .padding([.leading, .top])
            
        .gesture(
            TapGesture()
                .onEnded({ (_) in
                    self.show_modal = !self.show_modal
                    print(self.show_modal)
                    
                })
            
        )
//            .onAppear {
//                print("John Snow viewed")
//        }
            
    }
}

struct ProfileImageNameView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileImageNameView()
    }
}
