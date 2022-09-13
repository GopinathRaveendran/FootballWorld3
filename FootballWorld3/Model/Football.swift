//
//  Football.swift
//  FootballWorld3
//
//  Created by gopinath.raveendran on 13/09/2022.
//

import Foundation

// MARK: - Football
struct Football: Codable {
    let filters: Filters?
    let resultSet: ResultSet?
    let matches: [Match]?
}

// MARK: - Filters
struct Filters: Codable {
    let dateFrom, dateTo, permission: String?
}

// MARK: - Match
struct Match: Codable {
    let area: Area?
    let competition: Competition?
    let season: Season?
    let id: Int?
    let status: String?
    let matchday: Int?
    let stage: String?
    let homeTeam, awayTeam: Team?
    let score: Score?
    let odds: Odds?
    let referees: [Referee]?
}

// MARK: - Area
struct Area: Codable {
    let id: Int?
    let name, code: String?
    let flag: String?
}

// MARK: - Team
struct Team: Codable {
    let id: Int?
    let name, shortName, tla: String?
    let crest: String?
}

// MARK: - Competition
struct Competition: Codable {
    let id: Int?
    let name, code, type: String?
    let emblem: String?
}

// MARK: - Odds
struct Odds: Codable {
    let msg: String?
}

// MARK: - Referee
struct Referee: Codable {
    let id: Int?
    let name, type, nationality: String?
}

// MARK: - Score
struct Score: Codable {
    let duration: String?
}


// MARK: - Season
struct Season: Codable {
    let id: Int?
    let startDate, endDate: String?
    let currentMatchday: Int?
}

// MARK: - ResultSet
struct ResultSet: Codable {
    let count: Int?
    let competitions, first, last: String?
    let played: Int?
}
