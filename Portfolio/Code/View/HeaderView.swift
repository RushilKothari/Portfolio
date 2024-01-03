//
//  HeaderView.swift
//  Portfolio
//
//  Created by Rushil on 29/12/23.
//

import SwiftUI

struct HeaderView: View {
    
    //MARK: Variables
    var portfolioViewModel: PortfolioViewModel = PortfolioViewModel()
    
    //MARK: Views
    var body: some View {
        VStack{
            HStack {
                Spacer()
                Image("profile")
                    .resizable()
                    .frame(width: 150, height: 150)
                    .padding([.leading,.trailing,.bottom],30)
                    .padding(.top, 10)
                    .background{
                        Circle()
                            .fill(.brown)
                            .shadow(radius: 15)
                }
                Spacer()
            }
            Text(portfolioViewModel.portfolio.name)
                .font(Montserrat.bold.font(size: 22))
                .padding(.top, 5)
            Text(portfolioViewModel.portfolio.role)
                .font(Montserrat.mediumItalic.font(size: 18))
                .opacity(0.8)
                .padding(.top, -3)
            HStack{
                Image(systemName: "location.fill")
                    .font(.system(size: 16, weight: .semibold))
                Text(portfolioViewModel.portfolio.location)
                    .font(Montserrat.medium.font(size: 18))
            }
            .padding(.top, 2)
            .opacity(0.5)
            Text(portfolioViewModel.portfolio.description)
            .font(Montserrat.italic.font(size: 16))
            .padding(.top, 24)
            .lineSpacing(7)
        }
    }
}

#Preview {
    HeaderView()
        .padding(24)
}
