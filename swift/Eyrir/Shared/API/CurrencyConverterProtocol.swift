//
//  CurrencyConverterProtocol.swift
//  Eyrir (iOS)
//
//  Created by Vincent Bacalso on 7/29/22.
//

import Foundation

public protocol CurrencyConverterProtocol {
  func getAvailableCurrencies() -> [CurrencyData]
  func convert(value: Double, from: String, to: String) -> ConversionData
}

public enum APIError: Error {
  case decodingError
  case httpError(String)
  case unknown
}

public struct CurrencyData: Decodable {
  let id: String
  let description: String
}

public struct ConversionData: Decodable {
  let from: String
  let to: String
  let fromAmount: Double
  let toAmount: Double
}
