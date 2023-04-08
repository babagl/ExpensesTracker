//
//  Expense.swift
//  TrackerExpensive
//
//  Created by Abdoulaye Aliou SALL on 05/04/2023.
//

import Foundation


//Expense Model and Sample Data

struct Expense : Identifiable, Hashable{
    var id = UUID().uuidString
    var remark : String
    var amount : Double
    var date : Date
    var type : ExpenseType
    var color : String
}

enum ExpenseType : String {
    case income = "Income"
    case expense = "expenses"
    case all = "ALL"
}

var sample_expenses : [Expense] = [
    Expense(remark: "Magic keyboard", amount: 99, date: Date(timeIntervalSince1970: 1952987245), type: ExpenseType.expense, color: "Yellow"),
    Expense(remark: "snack  ", amount: 19, date: Date(timeIntervalSince1970: 1952987245), type: ExpenseType.expense, color: "Red"),
    Expense(remark: "Magic keyboard", amount: 99, date: Date(timeIntervalSince1970: 1952987245), type: ExpenseType.expense, color: "Purple"),
    Expense(remark: "Magic keyboard", amount: 20, date: Date(timeIntervalSince1970: 1952987245), type: ExpenseType.expense, color: "Green"),
    Expense(remark: "Magic keyboard", amount: 299, date: Date(timeIntervalSince1970: 1952987245), type: ExpenseType.expense, color: "Yellow"),
    Expense(remark: "Magic keyboard", amount: 399, date: Date(timeIntervalSince1970: 1952987245), type: ExpenseType.expense, color: "Green"),
    Expense(remark: "Magic keyboard", amount: 5.99, date: Date(timeIntervalSince1970: 1952987245), type: ExpenseType.income, color: "Purple")

]
