//
//  ExperienceView.swift
//  Portfolio
//
//  Created by Rushil on 29/12/23.
//

import SwiftUI

struct ExperienceView: View {
    //MARK: Variables
    var experience:Experience = PortfolioViewModel().portfolio.experiences[0]
    var width: CGFloat = 120
    
    //MARK: Views
    var body: some View {
        VStack(alignment: .leading){
            Circle()
                .frame(width: 10, height: 10)
                .opacity(0.65)
            HStack{
                RoundedRectangle(cornerRadius: 8)
                    .frame(width: 3)
                    .padding(.leading,3)
                VStack(alignment: .leading){
                    Text(experience.role)
                        .font(Montserrat.semibold.font(size: 18.5))
                    Text(experience.companyName)
                        .font(Montserrat.semibold.font(size: 16.5))
                        .opacity(0.75)
                        .padding(.top, 4)
                    Text(experience.duration)
                        .font(Montserrat.mediumItalic.font(size: 16))
                        .opacity(0.45)
                        .padding(.top, 4)
                }
                .padding(.leading, 16)
            }
            .padding(.top, 8)
        }
        .fixedSize()
    }
}

#Preview {
    GeometryReader(content: { geometry in
        ExperienceView()
            .padding(24)
    })
}
