//
//  ContentView.swift
//  Portfolio
//
//  Created by Rushil on 28/12/23.
//

import SwiftUI

struct PortfolioView: View {
    
    //MARK: Variables
    var portfolioViewModel: PortfolioViewModel = PortfolioViewModel()
    
    //MARK: Views
    var body: some View {
        ZStack {
            Color(UIColor.systemBackground)
                .ignoresSafeArea()
            ScrollView(.vertical, showsIndicators: false) {
                VStack(alignment: .leading, content: {
                    HeaderView()
                    SkillsView()
                        .padding(.top, 32)
                    ExperiencesView()
                        .padding(.top, 32)
                })
                .padding(24)
            }
        }
    }
}

#Preview {
    PortfolioView()
        .preferredColorScheme(.dark)
}
