//
//  SkillsView.swift
//  Portfolio
//
//  Created by Rushil on 29/12/23.
//

import SwiftUI

struct SkillsView: View {
    //MARK: Variables
    var skills:[Skill] = PortfolioViewModel().portfolio.skills
    var width: CGFloat = 400
    @State var showSkills = true
    //MARK: Views
    var body: some View {
        VStack(alignment: .leading){
            HStack(spacing: 16){
                Text("Skills")
                    .font(Montserrat.bold.font(size: 21))
                    .opacity(0.9)
                Button(action: {
                    withAnimation(.easeInOut(duration: 0.5)) {
                        showSkills.toggle()
                    }
                }, label: {
                    Image(systemName: "chevron.up")
                        .font(.system(size: 18, weight: .medium))
                        .rotationEffect(self.showSkills ? .zero : .degrees(180))
                })
                .buttonStyle(PlainButtonStyle())
            }
            if(showSkills){
                LazyVGrid(columns: [GridItem(), GridItem(), GridItem()], alignment: .leading, spacing: 12,  content: {
                    ForEach(skills){ skill in
                        SkillView(skill: skill, width: width/3 - 25)
                    }
                })
                .padding(.top, 38)
            }
        }
    }
}

#Preview {
    GeometryReader(content: { geometry in
        SkillsView()
            .padding(24)
    })
}
