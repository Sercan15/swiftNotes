import Foundation
enum Team {
    case iOSdevelopment
    case androiddevelopment
    case UIuXdesign
}
struct NeonAcademyMember {
    var firstName: String
    var lastName: String
    var age: Int
    var contactInfo: String
    var team: Team
    var motivationLevel: Int? // motivasyonleveli
    
    // motivasyon arttıran fonksiyon
    // motivasyon arttıran fonksiyon
    mutating func increaseMotivation(by amount: Int) {
        if let currentLevel = motivationLevel {
            motivationLevel = currentLevel + amount
        } else {
            motivationLevel = amount
        }
    }
}
var members: [NeonAcademyMember] = [
    NeonAcademyMember(firstName: "Sercan", lastName: "Yeşilyurt", age: 26, contactInfo: "+90 543 123 456", team: .iOSdevelopment,motivationLevel: 0),
    NeonAcademyMember(firstName: "Kerem", lastName: "Akpınar", age: 28, contactInfo: "123456", team: .androiddevelopment,motivationLevel: 2),
    NeonAcademyMember(firstName: "Zafer", lastName: "Çevik", age: 35, contactInfo: "25134356", team: .UIuXdesign,motivationLevel: 1),
    NeonAcademyMember(firstName: "Miraç", lastName: "Kenkül", age: 22, contactInfo: "1221434", team: .iOSdevelopment,motivationLevel: 3)
]
func printMotivationMessage(for member: NeonAcademyMember) {
    guard let level = member.motivationLevel else {
        print("This member has no motivation level set")
        return
    }
    
    if level > 5 {
        print("\(member.firstName) is highly motivated!")
    } else {
        print("\(member.firstName) has a moderate level of motivation.")
    }
}
func motivationStatus(for level: Int?) -> String {
    guard let level = level else { return "No motivation level set" }
    
    switch level {
    case 6...:
        return "Highly motivated"
    case 3...5:
        return "Moderately motivated"
    default:
        return "Not very motivated"
    }
}
func getMotivationLevel(for member: NeonAcademyMember) -> Int {
    return member.motivationLevel ?? 0
}
func meetsMotivationTarget(for member: NeonAcademyMember, targetLevel: Int) -> Bool {
    if let level = member.motivationLevel, level >= targetLevel {
        return true
    }
    return false
}

members[0].increaseMotivation(by: 1)
printMotivationMessage(for: members[0])
print(motivationStatus(for: members[0].motivationLevel))
print("Motivation level is: \(getMotivationLevel(for: members[0]))")
print(meetsMotivationTarget(for: members[0], targetLevel: 2)) 


members[1].increaseMotivation(by: 2)
printMotivationMessage(for: members[1])
print(motivationStatus(for: members[1].motivationLevel))
print("Motivaitonal level is : \(getMotivationLevel(for: members[1]))")
print(meetsMotivationTarget(for: members[1], targetLevel: 2))

members[2].increaseMotivation(by: 3)
printMotivationMessage(for: members[2])
print(motivationStatus(for: members[2].motivationLevel))
print("Motivaitonal level is : \(getMotivationLevel(for: members[2]))")
print(meetsMotivationTarget(for: members[2], targetLevel: 2))

members[3].increaseMotivation(by: 1)
printMotivationMessage(for: members[3])
print(motivationStatus(for: members[3].motivationLevel))
print("Motivation level is: \(getMotivationLevel(for: members[3]))")
print(meetsMotivationTarget(for: members[3], targetLevel: 2))
