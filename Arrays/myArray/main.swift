//
//  main.swift
//  myArray
//
//  Created by Sercan Yeşilyurt on 5.11.2024.
//
import Foundation

protocol MemberInfoDisplayable {
    func displayInfo()
}

struct ContactInfo {
    let phone: String
    let email: String
}

struct NeonAcademyMemberStruct: MemberInfoDisplayable {
    let name: String
    let title: String
    let horoscope: String
    let memberLevel: String
    let homeTown: String
    let age: Int
    let contactInfo: ContactInfo
    
    func displayInfo() {
        print("Name: \(name)")
        print("Title: \(title)")
        print("Horoscope: \(horoscope)")
        print("Member Level: \(memberLevel)")
        print("Home Town: \(homeTown)")
        print("Age: \(age)")
        print("Contact: \(contactInfo.email)")
    }
}

class ContactInformation {
    let phoneNumber: String
    let email: String
    
    init(phoneNumber: String, email: String) {
        self.phoneNumber = phoneNumber
        self.email = email
    }
}

class NeonAcademyMember: MemberInfoDisplayable {
    let fullName: String
    let title: String
    let horoscope: String
    let memberLevel: String
    let homeTown: String
    let age: Int
    let contactInformation: ContactInformation
    
    init(fullName: String, title: String, horoscope: String, memberLevel: String, homeTown: String, age: Int, contactInformation: ContactInformation) {
        self.fullName = fullName
        self.title = title
        self.horoscope = horoscope
        self.memberLevel = memberLevel
        self.homeTown = homeTown
        self.age = age
        self.contactInformation = contactInformation
    }
    
    func displayInfo() {
        print("Full Name: \(fullName)")
        print("Title: \(title)")
        print("Horoscope: \(horoscope)")
        print("Member Level: \(memberLevel)")
        print("Home Town: \(homeTown)")
        print("Age: \(age)")
        print("Contact: \(contactInformation.email)")
    }
}

// New Mentor Class
class Mentor: MemberInfoDisplayable {
    let fullName: String
    let title: String
    let mentorLevel: String
    let contactInformation: ContactInformation
    
    init(fullName: String, title: String, mentorLevel: String, contactInformation: ContactInformation) {
        self.fullName = fullName
        self.title = title
        self.mentorLevel = mentorLevel
        self.contactInformation = contactInformation
    }
    
    func displayInfo() {
        print("Mentor Name: \(fullName)")
        print("Title: \(title)")
        print("Mentor Level: \(mentorLevel)")
        print("Contact: \(contactInformation.email)")
    }
}

// Ana sınıf
class NeonAcademy {
    
    var members: [MemberInfoDisplayable]
    
    init(members: [MemberInfoDisplayable]) {
        self.members = members
    }
    
    func addMember(_ member: MemberInfoDisplayable) {
        members.append(member)
    }
    
    func displayAllMembers() {
        printMembers()
    }
    // 3.uyeyi sil
    func deleteThirdMember() {
        if members.count >= 3 {
            members.remove(at: 2)
            print("3 silindi :")
            printMembers()
        } else {
            print("Üye sayısı 3'ten az olduğu için silme işlemi yapılamadı.")
        }
    }
    
    func printMembers() {
        for (index, member) in members.enumerated() { // Enumerated kullanarak index'i elde ediyoruz
            if let academyMember = member as? NeonAcademyMember {
                print("Index: \(index) - Full Name: \(academyMember.fullName)")
            } else if let academyStructMember = member as? NeonAcademyMemberStruct {
                print("Index: \(index) - Name: \(academyStructMember.name)")
            }
            member.displayInfo() // Her üyenin displayInfo() metodunu çağır
            print() // Boş bir satır eklemek için
        }
    }
    
    // Yaşa göre büyükten küçüğe sıralama
    func sortMembersByAgeDescending() {
        members.sort {
            let age1 = ($0 as? NeonAcademyMember)?.age ?? ($0 as? NeonAcademyMemberStruct)?.age ?? 0
            let age2 = ($1 as? NeonAcademyMember)?.age ?? ($1 as? NeonAcademyMemberStruct)?.age ?? 0
            return age1 > age2
        }
        print("Yaşa göre sıralandı (büyükten küçüğe):")
        printMembers()
    }
    
    // İsme göre Z-A sıralama
    func sortMembersByNameDescending() {
        members.sort {
            let name1 = ($0 as? NeonAcademyMember)?.fullName ?? ($0 as? NeonAcademyMemberStruct)?.name ?? ""
            let name2 = ($1 as? NeonAcademyMember)?.fullName ?? ($1 as? NeonAcademyMemberStruct)?.name ?? ""
            return name1 > name2
        }
        
        print("İsme göre sıralandı (Z-A):")
        
        printMembers()
    }
    
    // 24 yaşından büyükleri filtreleme ve yeni diziye aktarma
    func filterMembersOlderThan24() -> [MemberInfoDisplayable] {
        let filteredMembers = members.filter {
            let age = ($0 as? NeonAcademyMember)?.age ?? ($0 as? NeonAcademyMemberStruct)?.age ?? 0
            return age > 24
        }
        print("24 yaşından büyük üyeler:")
        for member in filteredMembers {
            if let academyMember = member as? NeonAcademyMember {
                print(academyMember.fullName)
            } else if let academyStructMember = member as? NeonAcademyMemberStruct {
                print(academyStructMember.name)
            }
        }
        return filteredMembers
    }
    
    // iOS Developer sayısını yazdırma
    func countIOSDevelopers() {
        let iosDeveloperCount = members.filter {
            let title = ($0 as? NeonAcademyMember)?.title ?? ($0 as? NeonAcademyMemberStruct)?.title ?? ""
            return title.lowercased() == "ios"
        }.count
        print("Toplam iOS Developer sayısı: \(iosDeveloperCount)")
    }
    
    // uye grubunu kaldırma
    func removeMembers (withMemberLevel memberLevel:String)
    {
        members.removeAll {
            if let AcademyMember = $0 as? NeonAcademyMember {
                return AcademyMember.memberLevel == memberLevel
            } else if let AcademyMemberStruct = $0 as? NeonAcademyMemberStruct {
                return AcademyMemberStruct.memberLevel == memberLevel
            } else {
                return false
            }
            
        }
        print("Remaining members after removing those with member level \(memberLevel):")
        printMembers()
        
    }
    //en yaşlı üye
    func oldestMember() {
        var oldestMember: (name: String, age: Int)? = nil
        
        for member in members {
            if let academyMember = member as? NeonAcademyMember {
                if oldestMember == nil || academyMember.age > oldestMember!.age {
                    oldestMember = (academyMember.fullName, academyMember.age)
                }
            } else if let academyStructMember = member as? NeonAcademyMemberStruct {
                if oldestMember == nil || academyStructMember.age > oldestMember!.age {
                    oldestMember = (academyStructMember.name, academyStructMember.age)
                }
            }
        }
        
        if let oldest = oldestMember {
            print("Oldest Member: \(oldest.name), Age: \(oldest.age)")
        } else {
            print("No members found.")
        }
    }
    
    // ismi en uzun üye
    func findLongestNameMember() {
        var longestNameMember: (name: String, length: Int)? = nil
        
        for member in members {
            let name: String
            
            if let academyMember = member as? NeonAcademyMember {
                name = academyMember.fullName
            } else if let academyStructMember = member as? NeonAcademyMemberStruct {
                name = academyStructMember.name
            } else if let mentor = member as? Mentor {
                name = mentor.fullName
            } else {
                continue
            }
            
            let nameLength = name.count
            if longestNameMember == nil || nameLength > longestNameMember!.length {
                longestNameMember = (name, nameLength)
            }
        }
        
        if let longest = longestNameMember {
            print("Member with the Longest Name: \(longest.name), Length: \(longest.length)")
        } else {
            print("No members found.")
        }
    }
    
    // burca göre sınıflandırma
    
    func groupMembersByHoroscope() {
        var horoscopeGroups: [String: [String]] = [:]
        for member in members {
            var horoscope: String?
            var name: String? = nil
            
            if let academyMember = member as? NeonAcademyMember {
                horoscope = academyMember.horoscope
                name = academyMember.fullName
            } else if let academyStructMember = member as? NeonAcademyMemberStruct {
                horoscope = academyStructMember.horoscope
                name = academyStructMember.name
            } else {
                continue
            }
            
            if let horoscope = horoscope, let name = name {
                if horoscopeGroups[horoscope] != nil {
                    horoscopeGroups[horoscope]!.append(name)
                } else {
                    horoscopeGroups[horoscope] = [name]
                }
            }
        }
        
        for (horoscope, names) in horoscopeGroups {
            print("Horoscope: \(horoscope)")
            for name in names {
                print(" - \(name)")
            }
        }
    }
    
    // ikamet cogunlugu
    func mostCommonHometown() {
        var hometownCounts: [String: Int] = [:]
    
        for member in members {
            var hometown: String?
            
            if let academyMember = member as? NeonAcademyMember {
                hometown = academyMember.homeTown
            } else if let academyStructMember = member as? NeonAcademyMemberStruct {
                hometown = academyStructMember.homeTown
            } else {
                continue
            }
            
            if let hometown = hometown {
                hometownCounts[hometown, default: 0] += 1
            }
        }
        
        if let (mostCommonHometown, _) = hometownCounts.max(by: { $0.value < $1.value }) {
            print("The most common hometown is: \(mostCommonHometown)")
        } else {
            print("No hometown data available.")
        }
    }
    
    // yas ort
    func averageAge() {
        var totalAge = 0
        var count = 0

        for member in members {
            if let academyMember = member as? NeonAcademyMember {
                totalAge += academyMember.age
                count += 1
            } else if let academyStructMember = member as? NeonAcademyMemberStruct {
                totalAge += academyStructMember.age
                count += 1
            } else { continue}
        }
        
        
        if count > 0 {
            let averageAge = Double(totalAge) / Double(count)
            print("The average age of all members is: \(averageAge)")
        } else {
            print("No age data available.")
        }
    }
    
    // mailleri yazdırma
    
    func printAllEmails() {
        print("All Member Emails:")
        for member in members {
            if let academyMember = member as? NeonAcademyMember {
                print(academyMember.contactInformation.email)
            } else if let academyStructMember = member as? NeonAcademyMemberStruct {
                print(academyStructMember.contactInfo.email)
            } else if let mentor = member as? Mentor {
                print(mentor.contactInformation.email)
            }
        }
    }
    
    // seviyeye gore siralama
    func sortMembersByMemberLevel() {
        members.sort {
            let level1 = ($0 as? NeonAcademyMember)?.memberLevel ?? ($0 as? NeonAcademyMemberStruct)?.memberLevel ?? ""
            let level2 = ($1 as? NeonAcademyMember)?.memberLevel ?? ($1 as? NeonAcademyMemberStruct)?.memberLevel ?? ""
            return level1 > level2
        }
        
        print("Members sorted by member level (highest to lowest):")
        for member in members {
            if let academyMember = member as? NeonAcademyMember {
                print(academyMember.fullName, academyMember.memberLevel)
            } else if let academyStructMember = member as? NeonAcademyMemberStruct {
                print(academyStructMember.name, academyStructMember.memberLevel)
            }
        }
    }
    
    // ayni title a sahip olanların tel no listeleme
    func getContactsGroupedByTitle() -> [String: [ContactInformation]] {
        var titleGroups: [String: [ContactInformation]] = [:]
        
        // Üyeleri title'a göre gruplandırdık ve  iletişim bilgilerini ekledik
        for member in members {
            var title: String? = nil
            var contactInfo: ContactInformation? = nil
            
            if let academyMember = member as? NeonAcademyMember {
                title = academyMember.title
                contactInfo = academyMember.contactInformation
            } else if let academyStructMember = member as? NeonAcademyMemberStruct {
                title = academyStructMember.title
                contactInfo = ContactInformation(phoneNumber: academyStructMember.contactInfo.phone, email: academyStructMember.contactInfo.email)
            }
            
            if let title = title, let contactInfo = contactInfo {
                titleGroups[title, default: []].append(contactInfo)
            }
        }
        return titleGroups
    }
    func printPhoneNumbersOfMembersWithSameTitle() {
        let groupedContacts = getContactsGroupedByTitle()
        
        print("Phone numbers of members with the same title:")
        for (title, contacts) in groupedContacts {
            print("Title Group: \(title)")
            for contact in contacts {
                print("Phone: \(contact.phoneNumber)")
            }
            print()
        }
    }
}

// Üye bilgilerini ekleme
let newMemberContact = ContactInfo(phone: "1233445", email: "asrtdadtayrfD@gmail.com")
let newMember = NeonAcademyMemberStruct(name: "asd", title: "asd", horoscope: "as", memberLevel: "A4", homeTown: "TRA", age: 23, contactInfo: newMemberContact)

let member1Contact = ContactInformation(phoneNumber: "05375651304", email: "sercan@gmail.com")
let member1 = NeonAcademyMember(fullName: "Sercan", title: "Developer", horoscope: "scorpio", memberLevel: "A1", homeTown: "Erz", age: 26, contactInformation: member1Contact)

let member2Contact = ContactInformation(phoneNumber: "1233435", email: "sresdsd@gmail.com")
let member2 = NeonAcademyMember(fullName: "Kerem", title: "asd", horoscope: "as", memberLevel: "A2", homeTown: "ERZ", age: 30, contactInformation: member2Contact)

let member3Contact = ContactInformation(phoneNumber: "12334", email: "ashd")
let member3 = NeonAcademyMember(fullName: "Akif", title: "UI Design", horoscope: "sa", memberLevel: "A3", homeTown: "İZM", age: 35, contactInformation: member3Contact)

let member4Contact = ContactInformation(phoneNumber: "1234454", email: "asdjasgdfuags")
let member4 = NeonAcademyMember(fullName: "Yusuf", title: "iOS", horoscope: "asad", memberLevel: "A4", homeTown: "ANT", age: 40, contactInformation: member4Contact)

let member5Contact = ContactInformation(phoneNumber: "1234454", email: "asdjasgdfuags")
let member5 = NeonAcademyMember(fullName: "Batuhan", title: "iOS", horoscope: "asad", memberLevel: "A4", homeTown: "ANT", age: 40, contactInformation: member5Contact)


// New Mentor
let mentorContact = ContactInformation(phoneNumber: "9876543", email: "mentor@example.com")
let mentor = Mentor(fullName: "Ali Mentor", title: "Lead Mentor", mentorLevel: "Expert", contactInformation: mentorContact)


// Akademi sınıfını başlat
let academy = NeonAcademy(members: [newMember, member1, member2, member3, member4, member5, mentor])

print("Tüm Üyeler:")
academy.displayAllMembers()




// İşlemleri çalıştırmak için yorum satırlarını sırayla kaldırabilirsiniz



//academy.deleteThirdMember()
//academy.sortMembersByAgeDescending()
//academy.sortMembersByNameDescending()
//let filteredMembers = academy.filterMembersOlderThan24()
//academy.countIOSDevelopers()
//academy.removeMembers(withMemberLevel: "A1")
//academy.oldestMember()
//academy.findLongestNameMember()
//academy.groupMembersByHoroscope()
//academy.mostCommonHometown()
//academy.averageAge()
//academy.printAllEmails()
//academy.sortMembersByMemberLevel()
//academy.printPhoneNumbersOfMembersWithSameTitle()
