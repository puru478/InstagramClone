//
//  InstaGridView.swift
//  InstagramClone
//
//  Created by Purushottam Chandra on 04/11/19.
//  Copyright © 2019 Purushottam Chandra. All rights reserved.
//

import SwiftUI

struct InstaGridView: View {
    
    
    
    var body: some View {
        NavigationView {
            ScrollView(.vertical, showsIndicators: false) {
                VStack(alignment: .leading, spacing: 1) {
                    ProfileHeaderView()
                        .padding(.top)
                    
                    Text("Jon Snow")
                        .font(Font.system(size: 14, weight: .bold, design: .serif))
                        .padding(.leading)
                        .padding(.top, 10)
                    
                    Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris euismod semper nisi nec suscipit. Vestibulum iaculis ultricies felis vel varius. Nunc eu laoreet mi. Nulla facilisi.")
                        .font(Font.system(size: 12, weight: .regular, design: .default))
                        .foregroundColor(.secondary)
                        .lineLimit(3)
                        .fixedSize(horizontal: false, vertical: true)
                        .padding([.leading, .trailing])
                        .padding(.top, 4)
                    
                    VStack(alignment: .center) {
                        HStack {
                            Spacer()
                            Button(action: {
                                print("Edit Profile")
                            }) {
                                Text("Edit Profile")
                                    .foregroundColor(.primary)
                                .font(Font.system(size: 12, weight: .semibold, design: .default))
                            }
                            .frame(width: UIScreen.main.bounds.width * 0.9, height: 30)
                            .overlay(
                                RoundedRectangle(cornerRadius: 10)
                                    .stroke(Color.gray, lineWidth: 0.5)
                            )
                            Spacer()

                        }.padding([.top])
                    }
                    
                    HStack(alignment: .top) {
                        VStack {
                            Image(systemName: "plus")
                                .resizable()
                                .frame(width: 20, height: 20)
                                .overlay(
                                    Circle()
                                        .stroke(Color.gray, lineWidth: 0.5)
                                        .frame(width: 50, height: 50)
                            )
                                .padding([.leading, .top])
                                .padding(.bottom, 13)
                            
                            Text("New")
                                .font(Font.system(size: 12, weight: .semibold, design: .default))
                                .padding(.leading)
                        }.padding()
                        
                        VStack {
                            Image("Status")
                                .resizable()
                                .aspectRatio(contentMode: .fill)
                                .frame(width: 50, height: 50)
                            .clipped()
                            .cornerRadius(25)
                                .overlay(
                                    Circle()
                                        .stroke(Color.gray, lineWidth: 0.5)
                                        .frame(width: 55, height: 55)
                            )
//                                .padding([.top])
//                                .padding(.bottom, 10)
                            
                            Text("New")
                                .font(Font.system(size: 12, weight: .semibold, design: .default))
//                                .padding(.leading)
                        }.padding()

                    }
                    TwoButtonHView()
                    
                    GridViewCustom()
                }
            }.navigationBarTitle("jon.snow007", displayMode: .inline)
        }
    }
}

struct InstaGridView_Previews: PreviewProvider {
    static var previews: some View {
        InstaGridView()
    }
}
