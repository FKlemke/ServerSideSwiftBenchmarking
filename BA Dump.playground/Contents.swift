

import vapor

func getJSON() -> [String: String] {
        var rndJSON = [String: String]()

        for i in 1...1000 {
            let randomNumber = Int(arc4random_uniform(UInt32(10)))
            rndJSON["Index \(i)"] = "\(randomNumber)"
        }
        return rndJSON
    }
