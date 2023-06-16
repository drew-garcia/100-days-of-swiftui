//
//  FormStyle-LocalCurrency.swift
//  iExpense
//
//  Created by drewdev on 6/15/23.
//

import Foundation
 
extension FormatStyle where Self == FloatingPointFormatStyle<Double>.Currency {
    static var localCurrency: Self {
        .currency(code: Locale.current.currency?.identifier ?? "USD")
    }
}
