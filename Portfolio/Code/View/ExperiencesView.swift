//
//  ExperiencesView.swift
//  Portfolio
//
//  Created by Rushil on 29/12/23.
//

import SwiftUI

struct ExperiencesView: View {
    //MARK: Variables
    var experiences:[Experience] = PortfolioViewModel().portfolio.experiences
    @State var showExperiences = true
    
    //MARK: Views
    var body: some View {
        VStack(alignment: .leading){
            HStack(spacing: 16){
                Text("Experiences")
                    .font(Montserrat.bold.font(size: 21))
                    .opacity(0.9)
                Button(action: {
                    withAnimation(.easeInOut(duration: 0.5)) {
                        showExperiences.toggle()
                    }
                }, label: {
                    Image(systemName: "chevron.up")
                        .font(.system(size: 18, weight: .medium))
                        .rotationEffect(self.showExperiences ? .zero : .degrees(180))
                })
                .buttonStyle(PlainButtonStyle())
            }
            .padding(.bottom, 14)
            if(showExperiences){
                    ForEach(experiences){ experience in
                        ExperienceView(experience: experience)
                    }
                .padding(.top, 38)
            }
        }
    }
}

#Preview {
    GeometryReader(content: { geometry in
        ExperiencesView()
            .padding(24)
    })
}
