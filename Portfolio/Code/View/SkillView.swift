//
//  SkillView.swift
//  Portfolio
//
//  Created by Rushil on 29/12/23.
//

import SwiftUI

struct SkillView: View {
    //MARK: Variables
    var skill:Skill = PortfolioViewModel().portfolio.skills[2]
    var width: CGFloat = 120
    
    //MARK: Views
    var body: some View {
        VStack{
//            if(skill.skillname == "Java"){
//                Image(skill.image)
//                    .resizable()
//                    .frame(height: 40)
//                    .foregroundStyle(.white)
//                    .opacity(0.9)
//                Text(skill.skillname)
//                    .padding(.top, 6)
//            }
//            else{
//                Image(systemName: skill.image)
//                    .font(.system(size: 35, weight: .medium))
//                    .opacity(0.8)
//                Text(skill.skillname)
//                    .padding(.top, 6)
//            }
            Image(systemName: skill.image)
                .font(.system(size: 35, weight: .medium))
                .opacity(0.8)
            Text(skill.skillname)
                .padding(.top, 6)
        }
        .padding()
        .frame(width: width, height: 110)
        .background{
            RoundedRectangle(cornerRadius: 12)
                .opacity(0.075)
        }
    }
}

#Preview {
    SkillView()
}
