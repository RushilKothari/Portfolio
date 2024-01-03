//
//  AppViewModel.swift
//  Portfolio
//
//  Created by Rushil on 29/12/23.
//

import Foundation

class PortfolioViewModel: ObservableObject{
    var portfolio: Portfolio = Portfolio(name: "Rushil Kothari", role: "iOS Developer", description: "I am a passionate Software Developer currently working in Mobile App Development domain. I love to explore and understand different technologies.", location: "Chennai, India",
        skills: [Skill(id: UUID().uuidString, skillname: "iOS", image: "iphone"),
                 Skill(id: UUID().uuidString, skillname: "Swift", image: "swift"),
//                 Skill(id: UUID().uuidString, skillname: "Java", image: "java"),
                 Skill(id: UUID().uuidString, skillname: "Java", image: "chevron.left.forwardslash.chevron.right"),
                 Skill(id: UUID().uuidString, skillname: "UI/UX", image: "hand.tap.fill")],
        experiences: [Experience(id: UUID().uuidString, companyName: "Sparks Foundation", role: "Mobile App Developer", duration: "May 2021 - June 2021"),
                      Experience(id: UUID().uuidString, companyName: "Infosys", role: "iOS Developer Intern", duration: "April 2023 - May 2023")])
}
