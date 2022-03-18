//
//  SideMenuHeaderView.swift
//  SideMeauSwiftUI
//
//  Created by Devin Allen on 11/28/21.
//

import SwiftUI

struct SideMenuHeaderView: View {
    @Binding var isShowing: Bool
    
    var body: some View {
        ZStack(alignment: .topTrailing) {
            
            Button(action: {
                    withAnimation(.spring()) {
                        isShowing.toggle()
                }
            }, label: {
                Image(systemName: "xmark")
                    .frame(width: 32, height: 32)
                    .foregroundColor(.black)
                    .padding()
            })
            
            VStack (alignment: .leading) {
                Image("Dev1")
                    .resizable()
                    .scaledToFit()
                    .clipped()
                    .frame(width: 64, height: 64)
                    .clipShape(Circle())
                    .padding(.bottom, 16)
                
                Text("Devin Allen")
                    .font(.system(size: 24, weight: .semibold))
                
                Text("@_dev0512")
                    .font(.system(size: 14))
                    .padding(.bottom, 32)
                
                HStack(spacing: 12) {
                    HStack(spacing: 4) {
                        Text("2,859").bold()
                        Text("following")
                }
                    
                    HStack(spacing: 4) {
                        Text("2,196").bold()
                        Text("Followers")
                    }
                    Spacer()
                }
                
                Spacer()
            }
        }
    }
}

struct SideMenuHeaderView_Previews: PreviewProvider {
    static var previews: some View {
        SideMenuHeaderView(isShowing: .constant(true))
    }
}
