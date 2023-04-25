//
//  FormExpensesView.swift
//  TrackerExpensive
//
//  Created by Abdoulaye Aliou SALL on 23/04/2023.
//

import SwiftUI

struct FormExpensesView: View {
    @StateObject var expensesViewModel : ExpenseViewModel = .init()
    @EnvironmentObject var expenseViewModel : ExpenseViewModel
    var body: some View {
        VStack{
            VStack(spacing: 15){
                Text("Transactions")
                    .font(.title)
                    .fontWeight(.bold)
                    .opacity(0.5)
                
                if let symbol = expensesViewModel.convertNumberToPrice(value: 0){
                    TextField("0", text: $expensesViewModel.amount)
                        .font(.system(size: 32))
                        .foregroundColor(Color("Gradient2"))
                        .multilineTextAlignment(.center)
                        .background{
                            Text(expensesViewModel.amount == "" ? "0" : expensesViewModel.amount)
                                .font(.system(size: 32))
                                .opacity(0)
                                .overlay(alignment: .leading){
                                    Text(String(symbol))
                                        .opacity(0.5)
                                        .offset(x: -15, y: 5)
                                }
                        }
                        .padding()
                        .frame(maxWidth: .infinity)
                        .background{Capsule()
                                .fill(.white)
                        }
                        .padding(.horizontal)
                        .padding(.top)
                }
                Label {
                    TextField("Destinataire",text: $expensesViewModel.remark)
                        .padding(.leading , 10)
                }icon: {
                    Image(systemName: "list.bullet.rectangle.portrait.fill")
                        .font(.title3)
                        .foregroundColor(Color("Gray"))
                }
                .padding(.vertical,20)
                .padding(.horizontal, 15)
                .background{
                    RoundedRectangle(cornerRadius: 12, style: .continuous)
                        .fill( .white)
                }
                .padding(.top, 20)
                
                        
                    
            }
        }
        .padding()
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background{
            Color("BabaGl")
                .ignoresSafeArea()
        }
    }
}

struct FormExpensesView_Previews: PreviewProvider {
    static var previews: some View {
        FormExpensesView()
    }
}


