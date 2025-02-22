//
//  main.swift
//  EnumAndSwich
//
//  Created by Sercan Yeşilyurt on 6.11.2024.
//  TÜM AŞAMALAR YORUM SATIRLARINA ALINMIŞTIR SIRAYLA KALDIRARAK BAKABİLİRSİNİZ
import Foundation

enum Team{
    case iOSdevelopment
    case androiddevelopment
    case UIuXdesign
}

struct NeonAcademyMember{
    var firstName : String
    var lastName : String
    var age : Int
    var contactInfo : String
    var team : Team
}

let members : [NeonAcademyMember] = [
    NeonAcademyMember(firstName: "Sercan", lastName: "Yeşilyurt", age: 26, contactInfo: "+90 543 123 456", team: .iOSdevelopment),
    NeonAcademyMember(firstName: "Kerem", lastName: "Akpınar", age: 28, contactInfo: "123456", team: .androiddevelopment),
    NeonAcademyMember(firstName: "Zafer", lastName: "Çevik", age: 35, contactInfo: "25134356", team: .UIuXdesign),
    NeonAcademyMember(firstName: "Miraç", lastName: "Kenkül", age: 22, contactInfo: "1221434", team: .iOSdevelopment)
]

let iosTeamMembers = members.filter { $0.team == .iOSdevelopment}
//iosTeamMembers.forEach { print("\($0.firstName) \($0.lastName)") }

let teamCounts = members.reduce(into: [:]) { counts, member in
    counts[member.team, default: 0] += 1
}
//print("UI/UX Design Team count: \(teamCounts[.UIuXdesign] ?? 0)")
//print("Android Development Team count: \(teamCounts[.androiddevelopment] ?? 0)")
//print("iOS Development Team count: \(teamCounts[.iOSdevelopment] ?? 0)")

func printMembers(of team: Team) {
    members.filter { $0.team == team }
           .forEach { print("\($0.firstName) \($0.lastName)") }
}
//printMembers(of: .UIuXdesign)

func describeMember(member: NeonAcademyMember) {
    switch member.team {
    case .iOSdevelopment:
        print("\(member.firstName) is a skilled iOS developer")
    case .androiddevelopment:
        print("\(member.firstName) is an innovative Android developer")
    case .UIuXdesign:
        print("\(member.firstName) is a talented designer")
    }
}

//members.forEach { describeMember(member: $0) }

func printOlderMembers(in team: Team, olderThan age: Int) {
    members.filter { $0.team == team && $0.age > age }
           .forEach { print("\($0.firstName) \($0.lastName)") }
}

//printOlderMembers(in: .iOSdevelopment, olderThan: 23)

func promoteMember(_ member: NeonAcademyMember) {
    switch member.team {
    case .iOSdevelopment:
        print("\(member.firstName) is now promoted to Senior iOS Developer")
    case .androiddevelopment:
        print("\(member.firstName) is now promoted to Lead Android Developer")
    case .UIuXdesign:
        print("\(member.firstName) is now promoted to Lead Designer")
    }
}

//members.forEach { promoteMember($0) }

func averageAge(of team: Team) -> Double {
    let teamMembers = members.filter { $0.team == team }
    let totalAge = teamMembers.reduce(0) { $0 + $1.age }
    return teamMembers.isEmpty ? 0 : Double(totalAge) / Double(teamMembers.count)
}

//print("Average age of iOS Development Team: \(averageAge(of: .iOSdevelopment))")

func teamMessage(for team: Team) {
    switch team {
    case .iOSdevelopment:
        print("The iOS Development Team is the backbone of our academy")
    case .androiddevelopment:
        print("The Android Development Team is the innovation engine")
    case .UIuXdesign:
        print("The UI/UX Design Team is the face of our academy")
    }
}

//teamMessage(for: .UIuXdesign)

func contactInfo(for team: Team) -> [String] {
    return members.filter { $0.team == team }.map { $0.contactInfo }
}

//print("Contact info for iOS Development Team: \(contactInfo(for: .iOSdevelopment))")
//print("Contact info for Android Development Team: \(contactInfo(for: .androiddevelopment))")
//print("Contact info for UI/UX Design Team: \(contactInfo(for: .UIuXdesign))")

func teamAgeMessage(for member: NeonAcademyMember) {
    switch (member.team, member.age) {
    case (.iOSdevelopment, let age) where age > 23:
        print("\(member.firstName) is a seasoned iOS developer")
    case (.UIuXdesign, let age) where age < 36:
        print("\(member.firstName) is a rising star in the android")
    case (.androiddevelopment, let age) where age < 29:
        print("\(member.firstName) is a rising star in the design world")
    default:
        print("\(member.firstName) is an invaluable team member")
    }
}

//members.forEach { teamAgeMessage(for: $0) }








