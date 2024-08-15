//
//  TinyMoneyDealingViewModel.swift
//  TinyMoneyDealing
//
//  Created by Juan Manuel Moreno on 15/08/24.
//

import Foundation

protocol TinyMoneyDealingViewModelProtocol {
    func deal() -> TinyModelDealingModel?
}

final class TinyMoneyDealingViewModel: TinyMoneyDealingViewModelProtocol, ObservableObject {
    var mock: String = """
    {
        \"email\": \"example@example.com\", \"paymentDetails\": {
            \"dueInDays\": 2,
            \"amountDue\": 325.93, \"nextPaymentDate\": \"2024-02-24\", \"paymentProgress\": {
            \"currentPaymentNumber\": 8,
            \"totalPayments\": 10 }
    }, \"loanDetails\": {
            \"loanID\": \"JMI-923429\", \"remainingBalance\": 652, \"amountBorrowed\": 3250, \"interestPaidToDate\": 319.77, \"interestRate\": 9.9, \"maxCreditAmount\": 10000, \"repaymentDay\": 12, \"lastFourPaymentCard\": \"7284\", \"numberOfDocuments\": 4
    } }
    """
    
    func deal() -> TinyModelDealingModel? {
        print("Trying")
        var jsonString = mock
        let jsonData = jsonString.data(using: .utf8)!
        let decoder = JSONDecoder()
        do {
            let tiny = try decoder.decode(TinyModelDealingModel.self, from: jsonData)
            print(tiny.email)
            return tiny
        } catch {
            print("Error: \(error)")
            return nil
        }
    }
}
