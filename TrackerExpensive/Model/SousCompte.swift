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
    var type : TypeDeTransaction
    var color : String
    var transactions : [Transaction]
    
    init(id: String = UUID().uuidString, remark: String, amount: Double, date: Date, type: TypeDeTransaction, color: String, transactions: [Transaction]) {
        self.id = id
        self.remark = remark
        self.amount = transactions.reduce(0, {firstValue, secondValue in
            return firstValue + (secondValue.types == .entrants ? secondValue.amount : -secondValue.amount)
        })
        self.date = date
        self.type = type
        self.color = color
        self.transactions = transactions
    }
}

enum TypeDeTransaction : String {
    case entrants = "Dépots"
    case sortants = "Envoies"
    case touts = "ALL"
}

struct Transaction: Identifiable,Hashable {
    var id = UUID().uuidString
    var destinataire :String
    var date: Date
    var types : TypeDeTransaction
    var amount : Double
}

var donneesStatic_souscompte : [SousCompte] = [
    SousCompte(remark: "Repas", amount: 0, date: Date(timeIntervalSince1970: 1952987245), type: TypeDeTransaction.entrants, color: "Yellow", transactions: donneesStaticTransactionsUn),
    SousCompte(remark: "Essences", amount: 0, date: Date(timeIntervalSince1970: 1952987245), type: TypeDeTransaction.entrants, color: "Red", transactions: donneesStaticTransactionsUn),
    SousCompte(remark: "Factures", amount: 0, date: Date(timeIntervalSince1970: 1952987245), type: TypeDeTransaction.sortants, color: "Purple", transactions: donneesStaticTransactionDeux),
    SousCompte(remark: "Depenses", amount: 0, date: Date(timeIntervalSince1970: 1952987245), type: TypeDeTransaction.sortants, color: "Green", transactions: donneesStaticTransactionDeux),
    SousCompte(remark: "Ravitallement", amount: 0, date: Date(timeIntervalSince1970: 1952987245), type: TypeDeTransaction.entrants, color: "Yellow", transactions: donneesStaticTransactionsUn)
]

var donneesStaticTransactionsUn:[Transaction] = [
    Transaction(destinataire: "77 853 21 04", date: Date(timeIntervalSince1970: 1952987245), types: .entrants, amount: 1000),
    Transaction(destinataire: "77 853 21 05", date: Date(timeIntervalSince1970: 1952987245), types: .sortants, amount: 2000),
    Transaction(destinataire: "77 853 21 07", date: Date(timeIntervalSince1970: 1952987245), types: .entrants, amount: 3000)
    
]

var donneesStaticTransactionDeux:[Transaction] = [
    Transaction(destinataire: "Abdoulaye", date: Date(timeIntervalSince1970: 1952987245), types: .sortants, amount: 10000),
    Transaction(destinataire: "Sall", date: Date(timeIntervalSince1970: 1952987245), types: .entrants, amount: 9500),
    Transaction(destinataire: "BabaGalle", date: Date(timeIntervalSince1970: 1952987245), types: .entrants, amount: 15000),
]
