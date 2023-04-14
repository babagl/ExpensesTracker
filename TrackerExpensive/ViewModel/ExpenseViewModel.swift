//
//  ExpenseViewModel.swift
//  TrackerExpensive
//
//  Created by Abdoulaye Aliou SALL on 05/04/2023.
//

import SwiftUI

class ExpenseViewModel: ObservableObject {
   // Propreties
    @Published var expenses: [SousCompte] = sample_expenses
    @Environment(\.managedObjectContext) private var viewContext
   

    @Published var startDate : Date = Date()
    @Published var endDate : Date = Date()
    @Published var currentMonthStartDate : Date = Date()
    /// Filter View
    @Published var showFilterView: Bool = false
    
    ///Expense / Income Tab
    @Published var tabName: TransactionType = .expense
    
    //New Expense Propreties
    @Published var addNewExpense : Bool = false
    @Published var amount : String = ""
    @Published var type : TransactionType = .all
    @Published var date : Date = Date()
    @Published var remark : String = ""
    
    init(){
        //fetching Current Month Starting Date
        let calendar = Calendar.current
        let components = calendar.dateComponents([.year, .month], from: Date())
        
        startDate = calendar.date(from: components)!
        currentMonthStartDate = calendar.date(from: components)!
    }
    
    //This is a sample Data of Month May
    ///you can Customize this even more with yout data CoreData
    func currentMonthDateString()-> String {
        return currentMonthStartDate.formatted(date: .abbreviated, time: .omitted) + " - " + Date().formatted(date: .abbreviated, time: .omitted)
    }
    
    func convertExpensesToCurrency(expences : [SousCompte], type: TransactionType = .all) -> String {
        print("\(expences[1].contenue[0].sent)")
        var value : Double = 0
        value = expences.reduce(0, { partialResult, expence in
            return partialResult + (type == .all ? (expence.type == .income ? expence.amount : -expence.amount) : (expence.type == type ? expence.amount : 0))
        })
       return convertNumberToPrice(value: value)
    }
    
    
    //cinvert Number to price
    func convertNumberToPrice(value : Double) -> String {
        let formatter = NumberFormatter()
        formatter.numberStyle = .currency
        
        return formatter.string(from: .init(value: value)) ?? "$Ø.00"
    }
    
    // convert Date to string
    func convertDateToString() -> String {
        return startDate.formatted(date: .abbreviated, time: .omitted) + " - " + endDate.formatted(date: .abbreviated, time: .omitted)
    }
    
    //Clear Data
    
    func clearData(){
        date = Date()
        type = .all
        remark = ""
        amount = ""
    }
    
    //save Data
    func saveData(env : EnvironmentValues){
        print("save")
        let amoutInDouble = (amount as NSString).doubleValue
        let colors = ["Yellow","Red","Purple","Green"]
        let expense = SousCompte(remark: remark, amount: amoutInDouble, date: date, type: type, color: colors.randomElement() ?? "Yellow", contenue: [Transaction(sent: "name", date: Date(), amount: amoutInDouble)])
        withAnimation{expenses.append(expense)}
        expenses = expenses.sorted(by: {first, scnd in
            return scnd.date < first.date
        })
        env.dismiss()
    }
    
    
}
