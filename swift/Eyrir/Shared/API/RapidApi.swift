//
//  RapidApi.swift
//  Eyrir (iOS)
//
//  Created by Vincent Bacalso on 7/29/22.
//

import Foundation

public enum RapidApi {
  
  public static let urlId = "RAPID_API_CC-BASE_URL"
  public static let keyId = "RAPID_API_CC-KEY"
  public static let hostId = "RAPID_API_CC-HOST"

  private static let infoDictionary: [String: Any] = {
    guard let dict = Bundle.main.infoDictionary else {
      fatalError("Plist file not found")
    }
    return dict
  }()

  private static let config: [String: Any] = {
    guard let dict =  RapidApi.infoDictionary["Config"] as? [String: Any] else {
      fatalError("Plist file not found")
    }
    return dict
  }()
  
  public static let url = RapidApi.config[RapidApi.urlId] as! String
  public static let key = RapidApi.config[RapidApi.keyId] as! String
  public static let host = RapidApi.config[RapidApi.hostId] as! String

}
