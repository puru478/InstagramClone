//
//  TabBarView.swift
//  InstagramClone
//
//  Created by Purushottam Chandra on 04/11/19.
//  Copyright © 2019 Purushottam Chandra. All rights reserved.
//

import SwiftUI

struct TabBarView: View {
    var body: some View {
        TabView {
            NewsFeedView()
                .tabItem {
                    Image("home")
            }.tag(0)
            
            InstaGridView()
                .tabItem {
                    Image("profileOutline")
            }.tag(1)
        }
    }
}

struct TabBarView_Previews: PreviewProvider {
    static var previews: some View {
        TabBarView()
    }
}
