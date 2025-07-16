import Alamofire
import SwiftyJSON
import PromiseKit

class CurrencyConverter {
    static let apiKey = "YOUR_API_KEY"

    static func convertToLocalCurrency(usdAmount: Double) -> Promise<Double> {
        let url = "http://data.fixer.io/api/latest?access_key=\(apiKey)&symbols=USD,NGN"
        return Promise { seal in
            AF.request(url).responseJSON { response in
                switch response.result {
                case .success(let value):
                    let json = JSON(value)
                    let usdRate = json["rates"]["USD"].doubleValue
                    let ngnRate = json["rates"]["NGN"].doubleValue
                    let converted = usdAmount * (ngnRate / usdRate)
                    seal.fulfill(converted)
                case .failure(let error):
                    seal.reject(error)
                }
            }
        }
    }
}
