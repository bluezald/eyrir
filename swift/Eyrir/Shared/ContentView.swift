//
//  ContentView.swift
//  Shared
//
//  Created by Vincent Bacalso on 4/25/22.
//

import SwiftUI

struct SimpleRow: View, Identifiable {
  var id: Int
  var imageName: String
  var label: String
  var subLabel: String
  
  var body: some View {
    HStack {
      Image("AvatarPlaceholder")
        .resizable()
        .scaledToFit()
        .frame(width: 20.0, height: 20.0)
        .padding(.trailing, 2)
      VStack(alignment: .leading, spacing: 0) {
        HStack {
          Text(label)
            .font(.body)
            .fontWeight(.semibold)
          Spacer()
          Text(subLabel)
            .font(.subheadline)
        }
        .padding(.bottom, 4)
      }
    }
    .padding()
  }
}

struct SimpleRow_Previews: PreviewProvider {
    static var previews: some View {
      SimpleRow(
        id: 1,
        imageName: "currencyImageName",
        label: "USD",
        subLabel: "$1.00"
      )
    }
}


struct Currency {
  let id: Int
  let symbol: String
  let value: Double
  let imageName: String
}

struct ContentView: View {
  
  let list = [
    Currency(id: 0, symbol: "USD", value: 51.00, imageName: ""),
    Currency(id: 1, symbol: "PHP", value: 1.00, imageName: "")
  ]
  
  var body: some View {
    VStack {
      List {
        ForEach(Array(list.enumerated()), id: \.offset) { index, currency in
          SimpleRow(
            id: currency.id,
            imageName: currency.imageName,
            label: currency.symbol,
            subLabel: "\(currency.value)"
          )
        }
      }
    }
  }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
