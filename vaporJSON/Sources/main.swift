import Vapor
import Foundation

let drop = try Droplet()



func getRandomJSON() -> [String: String] {
    var rndJSON = [String: String]()
    
    for i in 1...100 {
        let rndNumber = arc4random_uniform(UInt32(9))
        rndJSON["Index: \(i)"] = "Random Number \(rndNumber)"
    }
    return rndJSON
}


//drop.get("json") { req in
//    let jsonObject: [String: Any] = [
//        "firstname": "aaa",
//        "lastname": "sss",
//        "email": "my_email",
//        "nickname": "ddd",
//        "password": "123",
//        "username": "qqq"
//    ]
//    
//    do {
//        let jsonData = try JSONSerialization.data(withJSONObject: jsonObject, options: .prettyPrinted)
//        // here "jsonData" is the dictionary encoded in JSON data
//        
//        let decoded = try JSONSerialization.jsonObject(with: jsonData, options: [])
//        // here "decoded" is of type `Any`, decoded from JSON data
//        
//        // you can now cast it with the right type
//        if let dictFromJSON = decoded as? [String:String] {
//            print(dictFromJSON)
////            return dictFromJSON         }
//    } catch {
//        print(error.localizedDescription)
//    }
//}

    
    drop.get("hello") { request in

        return "Hello, \(getRandomJSON())!"
    }

//drop.get("json") { req in
//    do {
//        let jsonDic = getRandomJSON()
//        let jsonData = try JSONSerialization.data(withJSONObject: jsonDic, options: .prettyPrinted)
//        
//        return jsonData
//        
//    } catch {
//        print(error.localizedDescription)
//    }
//}




try drop.run()
