//
//  Expense.swift
//  TrackerExpensive
//
//  Created by Abdoulaye Aliou SALL on 05/04/2023.
//

import Foundation


//Expense Model and Sample Data

struct SousCompte : Identifiable, Hashable{
    var id = UUID().uuidString
    var remark : String
    var amount : Double
    var date : Date
    var type : TransactionType
    var color : String
    var contenue : [Transaction]
}

enum TransactionType : String {
    case income = "Dépots"
    case expense = "Envoies"
    case all = "ALL"
}

struct Transaction: Identifiable,Hashable {
    var id = UUID().uuidString
    var sent :String
    var date: Date
    var amount : Double
}

var sample_expenses : [SousCompte] = [
    SousCompte(remark: "Repas", amount: 2599, date: Date(timeIntervalSince1970: 1952987245), type: TransactionType.income, color: "Yellow", contenue: sample_contenue),
    SousCompte(remark: "Essences", amount: 1219, date: Date(timeIntervalSince1970: 1952987245), type: TransactionType.income, color: "Red", contenue: sample_contenue),
    SousCompte(remark: "Factures", amount: 1299, date: Date(timeIntervalSince1970: 1952987245), type: TransactionType.expense, color: "Purple", contenue: sample_contenues),
    SousCompte(remark: "Depenses", amount: 1220, date: Date(timeIntervalSince1970: 1952987245), type: TransactionType.expense, color: "Green", contenue: sample_contenues),
    SousCompte(remark: "Ravitallement", amount: 2299, date: Date(timeIntervalSince1970: 1952987245), type: TransactionType.income, color: "Yellow", contenue: sample_contenue)
]

var sample_contenue:[Transaction] = [
    Transaction(sent: "77 853 21 04", date: Date(timeIntervalSince1970: 1952987245), amount: 2599),
    Transaction(sent: "77 853 21 05", date: Date(timeIntervalSince1970: 1952987245), amount: 2599),
    Transaction(sent: "77 853 21 07", date: Date(timeIntervalSince1970: 1952987245), amount: 2599),
]

var sample_contenues:[Transaction] = [
    Transaction(sent: "Abdoulaye", date: Date(timeIntervalSince1970: 1952987245), amount: 2599),
    Transaction(sent: "Sall", date: Date(timeIntervalSince1970: 1952987245), amount: 2599),
    Transaction(sent: "BabaGalle", date: Date(timeIntervalSince1970: 1952987245), amount: 2599),
]
