//
//  TinyModelDealingModel.swift
//  TinyMoneyDealing
//
//  Created by Juan Manuel Moreno on 15/08/24.
//

import Foundation

struct TinyModelDealingModel: Codable {
    let email: String?
    let paymentDetails: PaymentDetails?
    let loanDetails: LoanDetails?
    
    init(email: String? = "", paymentDetails: PaymentDetails? = PaymentDetails(dueInDays: 0, amountDue: 0, nextPaymentDate: "", paymentProgress: PaymentProgress(currentPaymentNumber: 0, totalPayments: 0)), loanDetails: LoanDetails? = LoanDetails()) {
        self.email = email
        self.paymentDetails = paymentDetails
        self.loanDetails = loanDetails
    }
}

struct PaymentDetails: Codable {
    let dueInDays: Int?
    let amountDue: Double?
    let nextPaymentDate: String?
    let paymentProgress: PaymentProgress?
    
    init(dueInDays: Int? = 0, amountDue: Double? = 0, nextPaymentDate: String? = "", paymentProgress: PaymentProgress) {
        self.dueInDays = dueInDays
        self.amountDue = amountDue
        self.nextPaymentDate = nextPaymentDate
        self.paymentProgress = paymentProgress
    }
}

struct PaymentProgress: Codable {
    let currentPaymentNumber: Int?
    let totalPayments: Int?
    
    init(currentPaymentNumber: Int? = 0, totalPayments: Int? = 0) {
        self.currentPaymentNumber = currentPaymentNumber
        self.totalPayments = totalPayments
    }
}

struct LoanDetails: Codable {
    let loanID: String?
    let remainingBalance: Int?
    let amountBorrowed: Int?
    let interestPaidToDate: Double?
    let interestRate: Double?
    let maxCreditAmount: Int?
    let repaymentDay: Int?
    let lastFourPaymentCard: String?
    let numberOfDocuments: Int?
    
    init(loanID: String? = "", remainingBalance: Int? = 0, amountBorrowed: Int? = 0, interestPaidToDate: Double? = 0, interestRate: Double? = 0, maxCreditAmount: Int? = 0, repaymentDay: Int? = 0, lastFourPaymentCard: String? = "", numberOfDocuments: Int? = 0) {
        self.loanID = loanID
        self.remainingBalance = remainingBalance
        self.amountBorrowed = amountBorrowed
        self.interestPaidToDate = interestPaidToDate
        self.interestRate = interestRate
        self.maxCreditAmount = maxCreditAmount
        self.repaymentDay = repaymentDay
        self.lastFourPaymentCard = lastFourPaymentCard
        self.numberOfDocuments = numberOfDocuments
    }
}
