//
//  SideMeauView.swift
//  SideMeauSwiftUI
//
//  Created by Devin Allen on 11/28/21.
//

import SwiftUI

struct SideMenuView: View {
    @Binding var isShowing: Bool
    var body: some View {
        ZStack {
            LinearGradient(colors: [Color.blue, Color.purple], startPoint: .top, endPoint: .bottom)
                .ignoresSafeArea()
            
            VStack {
                SideMenuHeaderView(isShowing: $isShowing)
                    .foregroundColor(Color.white)
                    .frame(height: 240)
                
                
                ForEach(SideMenuViewModel.allCases, id: \.self) { option in
                    NavigationLink(
                        destination: Text (option.title),
                        label: {
                            SideMenuCellView(viewModel: option)
                            
                        })
                }
                
                Spacer()
            }
        }.navigationBarHidden(true)
    }
}

struct SideMeauView_Previews: PreviewProvider {
    static var previews: some View {
        SideMenuView(isShowing: .constant(true))
    }
}
