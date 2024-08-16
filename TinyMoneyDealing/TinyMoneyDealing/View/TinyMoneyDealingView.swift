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
                    .padding(10)
                    .background(Color(red: 209/255, green: 115/255, blue: 205/255))
                    .foregroundColor(.white)
                    .cornerRadius(8)
                }
                .frame(maxWidth: .infinity)
                
                Spacer()
                
                VStack(alignment: .leading) {
                    VStack {
                        Text("Loan \nDetails")
                            .padding(.leading, 24)
                            .font(.title)
                            .bold()
                        Spacer()
                    }
                    .padding(.bottom)
                    HStack {
                        Text("Left ")
                            .padding(.leading, 24)
                            .padding(.trailing, -8)
                            .font(.subheadline)
                        Text("$\(tiny.loanDetails!.remainingBalance!)")
                            .font(.subheadline)
                            .bold()
                        Spacer()
                        Text("Amount borrowed ")
                            .font(.subheadline)
                        Text("$\(tiny.loanDetails!.amountBorrowed!)")
                            .padding(.leading, -8)
                            .padding(.trailing, 24)
                            .font(.subheadline)
                            .bold()
                    }
                    Button("") {
                    }
                    .frame(maxWidth: .infinity)
                    .padding(10)
                    .background(Color.green) // Color azul para el botón
                    .foregroundColor(.white)
                    .cornerRadius(8)
                    
                    VStack {
                        HStack {
                            VStack {
                                Text("Interest")
                                    .padding(.leading, 24)
//                                    .padding(.trailing, -8)
                                    .font(.subheadline)
                                Spacer()
                                Text("$\(tiny.loanDetails!.interestPaidToDate!)")
                                    .font(.title)
                                    .bold()
                            }
                            .padding()
                            .background(Color.white)
                            .cornerRadius(10)
                            
                            Spacer()
                            
                            
                            VStack {
                                Text("Interests Rate")
                                    .padding(.leading, 24)
                                    .padding(.trailing, -8)
                                    .font(.subheadline)
                                Text("\(tiny.loanDetails!.interestRate!)")
                                    .font(.title)
                                    .bold()
                            }
                            .padding()
                            .background(Color.white)
                            .cornerRadius(10)
                        }
                        .frame(maxWidth: .infinity)
                        .padding(10)
                        
                        HStack {
                            VStack {
                                Text("Loan ID ")
                                    .padding(.leading, 24)
                                    .padding(.trailing, -8)
                                    .font(.subheadline)
                                Text("\(tiny.loanDetails!.loanID!)")
                                    .font(.title)
                                    .bold()
                            }
                            .padding()
                            .background(Color.white)
                            .cornerRadius(10)
                            
                            Spacer()

                            VStack {
                                Text("Upcoming \npayments")
                                    .font(.title)
                                    .bold()
                                    .foregroundColor(Color.white)
                            }
                            .padding()
                            .background(Color(red: 209/255, green: 115/255, blue: 205/255))
                            .cornerRadius(10)
                            
                        }
                    }
                    //                    .frame(height: 32)
                    //                    .padding(.horizontal, 100)
                    //                    .background(Color.green)
                    //                    .cornerRadius(4)
                    Spacer()
                    
                }
                .background(Color(red: 228/255, green: 228/255, blue: 228/255))
                .cornerRadius(24)
                
                Spacer()
                
                VStack {
                    VStack {
                        Text("More Options")
                            .font(.title)
                            .bold()
                            .padding()
                        
                        VStack {
                            Text("Increase Paydown Credit")
                                .font(.headline)
                                .bold()
                                .foregroundColor(Color.white)
                            Text("Up to $\(tiny.loanDetails!.maxCreditAmount!)")
                                .font(.subheadline)
                                .foregroundColor(Color.white)
                        }
                        .padding()
                        .background(Color.purple)
                        .cornerRadius(10)
                        
                        Spacer()
                        
                        VStack {
                            Text("Change repayment date")
                                .font(.headline)
                                .bold()
                            Text("Currently on the \(tiny.loanDetails!.repaymentDay!)th")
                                .font(.subheadline)
                        }
                        .padding()
                        .background(Color.white)
                        .cornerRadius(10)
                        
                        Spacer()
                        
                        VStack {
                            Text("Update payment details")
                                .font(.headline)
                                .bold()
                            Text("Account ending \(tiny.loanDetails!.lastFourPaymentCard!)")
                                .font(.subheadline)
                        }
                        .padding()
                        .background(Color.white)
                        .cornerRadius(10)
                        
                        Spacer()
                        
                        VStack {
                            Text("Update personal information")
                                .font(.headline)
                                .bold()
                            Text("dyalland@gmail.com")
                                .font(.subheadline)
                        }
                        .padding()
                        .background(Color.white)
                        .cornerRadius(10)
                        
                        Spacer()
                        
                        VStack {
                            Text("View saved documents")
                                .font(.headline)
                                .bold()
                            Text("\(tiny.loanDetails!.numberOfDocuments!) documents")
                                .font(.subheadline)
//                                .padding()
//                                .background(Color.gray.opacity(0.2))
//                                .cornerRadius(10)
                        }
                        .padding()
                        .background(Color.white)
                        .cornerRadius(10)
                        
                    }
                }
                .background(Color(red: 228/255, green: 228/255, blue: 228/255))
                .cornerRadius(24)

            }
            .onAppear { tiny = vm.deal()! }
        }
    }
}

#Preview {
    TinyMoneyDealingView()
}
