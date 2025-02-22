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

// Struct ve Class üyelerini oluşturuyoruz.
let newMemberContact = ContactInfo(phone: "1233445", email: "asrtdadtayrfD@gmail.com")
let newMember = NeonAcademyMemberStruct(name: "asd", title: "asd", horoscope: "as", memberLevel: "A4", homeTown: "TRA", age: 23, contactInfo: newMemberContact)

let member1Contact = ContactInformation(phoneNumber: "0537 565 1304", email: "sercanyesilyurts@gmail.com")
let member1 = NeonAcademyMember(fullName: "Sercan Yesilyurt", title: "Developer", horoscope: "scorpio", memberLevel: "A1", homeTown: "Erzurum", age: 26, contactInformation: member1Contact)

let member2Contact = ContactInformation(phoneNumber: "1233435", email: "sresdsd@gmail.com")
let member2 = NeonAcademyMember(fullName: "Kerem", title: "Dev", horoscope: "as", memberLevel: "A2", homeTown: "ERZ", age: 30, contactInformation: member2Contact)

let member3Contact = ContactInformation(phoneNumber: "12334", email: "ashd")
let member3 = NeonAcademyMember(fullName: "Akif", title: "UI Design", horoscope: "sa", memberLevel: "A3", homeTown: "İZM", age: 35, contactInformation: member3Contact)

let member4Contact = ContactInformation(phoneNumber: "1234454", email: "asdjasgdfuags")
let member4 = NeonAcademyMember(fullName: "Yusuf", title: "iOS", horoscope: "asad", memberLevel: "A4", homeTown: "ANT", age: 40, contactInformation: member4Contact)

// Her iki yapıyı tek bir listeye ekliyoruz.
var allMembers: [MemberInfoDisplayable] = [newMember, member1, member2, member3, member4]

// Üye bilgilerini topluca yazdırma
func displayAllMembersInfo(members: [MemberInfoDisplayable]) {
    for member in members {
        member.displayInfo()
        print("---")
    }
}

func main() {
    displayAllMembersInfo(members: allMembers)
}
main()

