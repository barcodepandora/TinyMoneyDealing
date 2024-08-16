import SwiftUI

struct TinyMoneyDealingView: View {
    @EnvironmentObject private var vm: TinyMoneyDealingViewModel
    @State var tiny = TinyModelDealingModel()
    let dateFormatter = DateFormatter()

    var body: some View {
        GeometryReader { geometry in
            ScrollView(.vertical, showsIndicators: false) {
                VStack(alignment: .leading, spacing: 20) { // Added spacing for better visual separation
                    
                    VStack(alignment: .leading) {
                        HStack {
                            Text("Due in \(tiny.paymentDetails!.dueInDays!) days")
                                .font(.headline)
                                .foregroundColor(.secondary)
                            Spacer()
                            Image(systemName: "calendar")
                                .foregroundColor(.secondary)
                        }
                        
                        Text("$325.93")
                            .font(.largeTitle)
                            .fontWeight(.bold)
                        
                        HStack {
                            Text("Next payment")
                                .padding(.leading, 24)
                                .font(.subheadline)
                            Text("\(formattedDate)")
                                .font(.subheadline)
                                .bold()
                            Spacer()
                            Text("\(tiny.paymentDetails!.paymentProgress!.currentPaymentNumber!) ")
                                .font(.subheadline)
                                .bold()
                            Text("of \(tiny.paymentDetails!.paymentProgress!.totalPayments!) ")
                                .padding(.trailing, 24)
                                .font(.subheadline)
                        }

                        Button("Make a payment") {}
                        .frame(maxWidth: .infinity)
                        .padding(10)
                        .background(Color(red: 209/255, green: 115/255, blue: 205/255))
                        .foregroundColor(.white)
                        .cornerRadius(24)
                    }
                    .frame(maxWidth: .infinity)
                    .padding()
                    .cornerRadius(24)
                    
                    Spacer()
                    
                    // Loan Details
                    VStack(alignment: .leading) {
                        Text("Loan \nDetails")
                            .padding(.leading, 24)
                            .font(.title)
                            .bold()
                        
                        HStack {
                            Text("Left ")
                                .padding(.leading, 24)
                                .font(.subheadline)
                            Text("$\(tiny.loanDetails!.remainingBalance!)")
                                .font(.subheadline)
                                .bold()
                            Spacer()
                            Text("Amount borrowed ")
                                .font(.subheadline)
                            Text("$\(tiny.loanDetails!.amountBorrowed!)")
                                .padding(.trailing, 24)
                                .font(.subheadline)
                                .bold()
                        }
                        
                        Button("") {}
                        .frame(maxWidth: .infinity)
                        .padding(10)
                        .background(Color.green)
                        .foregroundColor(.white)
                        .cornerRadius(8)
                        
                        HStack(spacing: 20) { // Added spacing between the two VStacks
                            VStack {
                                Text("Interest")
                                    .padding(.leading, 24)
                                    .font(.subheadline)
                                Spacer()
                                Text("$\(String(format: "%.2f", tiny.loanDetails!.interestPaidToDate!))")
                                    .font(.title2)
                                    .bold()
                            }
                            .padding()
                            .frame(height: geometry.size.height * 14 / 100)
                            .background(Color.white)
                            .cornerRadius(10)
                            
                            VStack {
                                Text("Interests Rate")
                                    .padding(.leading, 24)
                                    .font(.subheadline)
                                Spacer()
                                Text("\(String(format: "%.1f", tiny.loanDetails!.interestRate!))%")
//                                Text("\(tiny.loanDetails!.interestRate!)")
                                    .font(.title2)
                                    .bold()
                            }
                            .padding()
                            .frame(height: geometry.size.height * 14 / 100)
                            .background(Color.white)
                            .cornerRadius(10)
                        }
                        .frame(maxWidth: .infinity)
                        .padding(10)
                        
                        HStack(spacing: 20) {
                            VStack {
                                Text("Loan ID ")
                                    .padding(.leading, 24)
                                    .font(.subheadline)
                                Spacer()
                                Text("\(tiny.loanDetails!.loanID!)")
                                    .font(.title2)
                                    .bold()
                            }
                            .padding()
                            .frame(width: geometry.size.width * 42 / 100, height: geometry.size.height * 14 / 100)
                            .background(Color.white)
                            .cornerRadius(10)
                            
                            VStack {
                                Spacer()
                                Spacer()
                                Text("Upcoming \npayments")
                                    .font(.subheadline)
                                    .bold()
                                    .foregroundColor(Color.white)
                            }
                            .padding()
                            .frame(width: geometry.size.width * 42 / 100, height: geometry.size.height * 14 / 100)
                            .background(Color(red: 209/255, green: 115/255, blue: 205/255))
                            .cornerRadius(10)
                        }
                        .frame(maxWidth: .infinity)
                        
                        Spacer()
                    }
                    .background(Color(red: 228/255, green: 228/255, blue: 228/255))
                    .cornerRadius(24)
                    
                    Spacer()
                    
                    // More options
                    VStack(alignment: .leading) {
                        Text("More \nOptions")
                            .font(.title)
                            .bold()
                            .padding()
                        
                        VStack {
                            Text("Increase Paydown Credit")
                                .padding(.leading, 24)
                                .font(.headline)
                                .bold()
                                .foregroundColor(Color.white)
                            Text("Up to $\(tiny.loanDetails!.maxCreditAmount!)")
                                .padding(.leading, 24)
                                .font(.subheadline)
                                .foregroundColor(Color.white)
                        }
                        .padding()
                        .frame(width: geometry.size.width * 80 / 100)
                        .background(Color.purple)
                        .cornerRadius(10)
                        
                        Spacer()
                        
                        VStack {
                            Text("Change repayment date")
                                .padding(.leading, 24)
                                .font(.headline)
                                .bold()
                            Text("Currently on the \(tiny.loanDetails!.repaymentDay!)th")
                                .padding(.leading, 24)
                                .font(.subheadline)
                        }
                        .padding()
                        .frame(width: geometry.size.width * 80 / 100)
                        .background(Color.white)
                        .cornerRadius(10)
                        
                        Spacer()
                        
                        VStack {
                            Text("Update payment details")
                                .padding(.leading, 24)
                                .font(.headline)
                                .bold()
                            Text("Account ending \(tiny.loanDetails!.lastFourPaymentCard!)")
                                .padding(.leading, 24)
                                .font(.subheadline)
                        }
                        .padding()
                        .frame(width: geometry.size.width * 80 / 100)
                        .background(Color.white)
                        .cornerRadius(10)
                        
                        Spacer()
                        
                        VStack {
                            Text("Update personal information")
//                                .padding(.leading, 24)
                                .font(.headline)
                                .bold()
                            Text("dyalland@gmail.com")
//                                .padding(.leading, 24)
                                .font(.subheadline)
                        }
                        .padding()
                        .frame(width: geometry.size.width * 80 / 100)
                        .background(Color.white)
                        .cornerRadius(10)
                        
                        Spacer()
                        
                        VStack {
                            Text("View saved documents")
                                .padding(.leading, 24)
                                .font(.headline)
                                .bold()
                            Text("\(tiny.loanDetails!.numberOfDocuments!) documents")
                                .padding(.leading, 24)
                                .font(.subheadline)
                        }
                        .padding()
                        .frame(width: geometry.size.width * 80 / 100)
                        .background(Color.white)
                        .cornerRadius(10)
                    }
                    .frame(maxWidth: .infinity)
                    .background(Color(red: 228/255, green: 228/255, blue: 228/255))
                    .cornerRadius(24)
                    
                    Spacer()
                }
                .padding() // Added padding to the main VStack for better visual appearance on different screen sizes
            }
            .onAppear { tiny = vm.deal()! }
        }
    }
    
    var formattedDate: String {
        dateFormatter.dateFormat = "yyyy-MM-dd"
        if let date = dateFormatter.date(from: tiny.paymentDetails!.nextPaymentDate!) {
            dateFormatter.dateFormat = "dd MMM"
            return dateFormatter.string(from: date)
        } else {
            return "Invalid date"
        }
    }
}

#Preview {
    TinyMoneyDealingView()
}
