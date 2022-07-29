//
//  CurrencyConverter.swift
//  Eyrir (iOS)
//
//  Created by Vincent Bacalso on 7/29/22.
//

import Foundation

public struct CurrencyConverter: CurrencyConverterProtocol {
  
  private let headers = [
    "X-RapidAPI-Key": RapidApi.key,
    "X-RapidAPI-Host": RapidApi.host
  ]
  
  public func getAvailableCurrencies() -> [CurrencyData] {
    let request = NSMutableURLRequest(
      url: NSURL(string: "\(RapidApi.url)/availablecurrencies")! as URL,
      cachePolicy: .useProtocolCachePolicy,
      timeoutInterval: 10.0
    )
    
    request.httpMethod = "GET"
    request.allHTTPHeaderFields = headers
    
    let session = URLSession.shared
    let dataTask = session.dataTask(
      with: request as URLRequest,
      completionHandler: { (data, response, error) -> Void in
      if (error != nil) {
        print(error as Any)
      } else {
        let httpResponse = response as? HTTPURLResponse
        print(httpResponse as Any)
      }
    })

    dataTask.resume()
  }
  
  public func convert(value: Double, from: String, to: String) -> ConversionData {
    <#code#>
  }
  
}

