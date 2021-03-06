//
//  CustomNames.swift
//  SolutisTeste
//
//  Created by marcelo frost marchesan on 21/10/21.
//

import Foundation
import UIKit

struct CustomNames {
    
    let pagamento = "Pagamento"
    let recebimento = "Recebimento"
    
    func customOperationLabels (amount: Double) -> String {
        if (amount <= 0) {
            return pagamento
        } else {
            return recebimento
        }
    }
    
    func customDateLabels (date: String) -> String {
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "yyyy-MM-dd'T'HH:mm:ssZZZZZ"
        let result : Date = dateFormatter.date(from: date) ?? .distantFuture
        dateFormatter.dateStyle = .short
        dateFormatter.locale = Locale(identifier: "pt_BR")
        return dateFormatter.string(from: result)
    }
    
    func customAmountLabel (amount: Double) -> String {
        let amountString = String(format: "%.2f", abs(amount))
        let brazilianAmount = amountString.replacingOccurrences(of: ".", with: ",")
        if (amount < 0) {
            return "- R$ \(brazilianAmount)"
        } else {
            return "R$ \(brazilianAmount)"
        }
    }
    
    func customAmountColor (amount: Double) -> UIColor {
        if (amount < 0) {
            return .red
        } else {
            return .systemGreen
        }
    }
}
