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
    var contenue : [Contenue]
}

enum ExpenseType : String {
    case income = "Dépots"
    case expense = "Envoies"
    case all = "ALL"
}

struct Contenue: Identifiable,Hashable {
    var id = UUID().uuidString
    var sent :String
    var date: Date
    var amount : Double
}

var sample_expenses : [Expense] = [
    Expense(remark: "Repas", amount: 2599, date: Date(timeIntervalSince1970: 1952987245), type: ExpenseType.income, color: "Yellow", contenue: sample_contenue),
    Expense(remark: "Essences", amount: 1219, date: Date(timeIntervalSince1970: 1952987245), type: ExpenseType.income, color: "Red", contenue: sample_contenue),
    Expense(remark: "Factures", amount: 1299, date: Date(timeIntervalSince1970: 1952987245), type: ExpenseType.expense, color: "Purple", contenue: sample_contenues),
    Expense(remark: "Depenses", amount: 1220, date: Date(timeIntervalSince1970: 1952987245), type: ExpenseType.expense, color: "Green", contenue: sample_contenues),
    Expense(remark: "Ravitallement", amount: 2299, date: Date(timeIntervalSince1970: 1952987245), type: ExpenseType.income, color: "Yellow", contenue: sample_contenue)
]

var sample_contenue:[Contenue] = [
    Contenue(sent: "77 853 21 04", date: Date(timeIntervalSince1970: 1952987245), amount: 2599),
    Contenue(sent: "77 853 21 05", date: Date(timeIntervalSince1970: 1952987245), amount: 2599),
    Contenue(sent: "77 853 21 07", date: Date(timeIntervalSince1970: 1952987245), amount: 2599),
]

var sample_contenues:[Contenue] = [
    Contenue(sent: "Abdoulaye", date: Date(timeIntervalSince1970: 1952987245), amount: 2599),
    Contenue(sent: "Sall", date: Date(timeIntervalSince1970: 1952987245), amount: 2599),
    Contenue(sent: "BabaGalle", date: Date(timeIntervalSince1970: 1952987245), amount: 2599),
]
