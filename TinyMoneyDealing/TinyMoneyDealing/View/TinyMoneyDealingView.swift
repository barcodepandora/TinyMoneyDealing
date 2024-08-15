//
//  TinyMoneyDealingView.swift
//  TinyMoneyDealing
//
//  Created by Juan Manuel Moreno on 15/08/24.
//

import SwiftUI

struct TinyMoneyDealingView: View {
    
    @EnvironmentObject private var vm: TinyMoneyDealingViewModel
    @State var tiny =  TinyModelDealingModel()
    
    var body: some View {
        ScrollView(.vertical, showsIndicators: false) {
            VStack(alignment: .leading) {
                VStack(alignment: .leading) {
                    HStack {
                        Text("Due in \(tiny.paymentDetails!.dueInDays!) days")
                            .font(.headline)
                            .foregroundColor(.secondary) // Color grisáceo para texto secundario

                        Spacer()

                        Image(systemName: "calendar") // Ícono de calendario
                            .foregroundColor(.secondary)
                    }

                    Text("$325.93")
                        .font(.largeTitle)
                        .fontWeight(.bold)

                    Text("Next payment 24 Feb")
                        .font(.subheadline)
                        .foregroundColor(.secondary)

                    Button("Make a payment") {
                    }
                    .frame(maxWidth: .infinity)
                    .padding(10) // Add a margin of 1
                    .background(Color.purple) // Color azul para el botón
                    .foregroundColor(.white)
                    .cornerRadius(8)
                }
                .frame(maxWidth: .infinity)
                
                VStack(alignment: .leading) {
                    VStack {
                        Text("Loan \nDetails")
                            .font(.title)
                            .bold()
                        Spacer()
                    }
                    .padding(.bottom)
                    HStack {
                        Text("Left ")
                            .font(.title)
                            .bold()
                        Text("\(tiny.loanDetails!.remainingBalance!)")
                            .font(.title)
                            .bold()
                        Spacer()
                    }
                }
                
                VStack(alignment: .leading) {
                    Text("Email:")
                    Text(tiny.email!)
                        .foregroundColor(.secondary)
                }
                
                VStack(alignment: .leading) {
                    Text("Payment Details")
                        .font(.title2)
                        .bold()
                    VStack(alignment: .leading) {
                        Text("Due in:")
                        Text("\(tiny.paymentDetails!.dueInDays!) days")
                            .foregroundColor(.secondary)
                        Text("Amount Due:")
                        Text("$ \((tiny.paymentDetails?.amountDue!)!, specifier: "%.2f")")
                            .foregroundColor(.secondary)
                        Text("Next Payment Date:")
                        Text((tiny.paymentDetails?.nextPaymentDate!)!)
                            .foregroundColor(.secondary)
                    }
                    .padding(.top)
                }
                
                VStack(alignment: .leading) {
                    Text("Payment Progress")
                        .font(.title2)
                        .bold()
                    VStack(alignment: .leading) {
                        Text("Current Payment Number:")
                        Text("\(tiny.paymentDetails!.paymentProgress!.currentPaymentNumber!)")
                            .foregroundColor(.secondary)
                        Text("Total Payments:")
                        Text("\(tiny.paymentDetails!.paymentProgress!.totalPayments!)")
                            .foregroundColor(.secondary)
                    }
                    .padding(.top)
                }
                
                VStack(alignment: .leading) {
                    Text("Loan Details")
                        .font(.title2)
                        .bold()
                    VStack(alignment: .leading) {
                        Text("Loan ID:")
                        Text((tiny.loanDetails?.loanID!)!)
                            .foregroundColor(.secondary)
                        Text("Remaining Balance:")
                        Text("$ \(tiny.loanDetails!.remainingBalance!, specifier: "%.0f")")
                            .foregroundColor(.secondary)
                        Text("Amount Borrowed:")
                        Text("$ \(tiny.loanDetails!.amountBorrowed!, specifier: "%.0f")")
                            .foregroundColor(.secondary)
                        Text("Interest Paid to Date:")
                        Text("$ \(tiny.loanDetails!.interestPaidToDate!, specifier: "%.2f")")
                            .foregroundColor(.secondary)
                        Text("Interest Rate:")
                        Text("\(tiny.loanDetails!.interestRate!, specifier: "%.1f")%")
                            .foregroundColor(.secondary)
                        Text("Max Credit Amount:")
                        Text("$ \(tiny.loanDetails!.maxCreditAmount!, specifier: "%.0f")")
                            .foregroundColor(.secondary)
                        Text("Repayment Day:")
                        Text("\(tiny.loanDetails!.repaymentDay!)")
                            .foregroundColor(.secondary)
                        Text("Last Four Payment Card:")
                        Text((tiny.loanDetails?.lastFourPaymentCard!)!)
                            .foregroundColor(.secondary)
                        Text("Number of Documents:")
                        Text("\(tiny.loanDetails!.numberOfDocuments!)")
                            .foregroundColor(.secondary)
                    }
                    .padding(.top)
                }
                .onAppear { tiny = vm.deal()! }
            }
            .padding()
        }
    }
}

#Preview {
    TinyMoneyDealingView()
}
