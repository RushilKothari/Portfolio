//
//  PortfolioModel.swift
//  Portfolio
//
//  Created by Rushil on 29/12/23.
//

import Foundation

struct Skill: Identifiable{
    var id: String
    let skillname: String
    let image: String
}

struct Experience: Identifiable{
    var id: String
    var companyName: String
    var role: String
    var duration: String
}

struct Portfolio{
    let name: String
    let role: String
    let description: String
    let location: String
    let skills: [Skill]
    let experiences: [Experience]
}
