//
//  GridBudgetView.swift
//  TrackerExpensive
//
//  Created by Abdoulaye Aliou SALL on 13/04/2023.
//

import SwiftUI

struct GridBudgetView: View {
    var expense : SousCompte
    @EnvironmentObject var expenseViewModel : ExpenseViewModel
    var body: some View {
        NavigationLink(destination: {
            DetailsBudgetsView()
                .navigationBarBackButtonHidden()
            
        }, label: {
            VStack{
                HStack{
                    VStack {
                        HStack {
                            Text(expense.remark)
                                .foregroundColor(.white)
                                .font(.caption)
                                .fontWeight(.bold)
                            Spacer()
                        }
                        .padding(. horizontal, 5)
                        .padding(.bottom, 20)
                        
                        let price = expenseViewModel.convertNumberToPrice(value: expense.type == .expense ? -expense.amount : expense.amount)
                        Text(price)
                            .font(.callout)
                            .foregroundColor(.white)
                            .fontWeight(.semibold)
                        
                        HStack {
                            Spacer()
                            Text(expense.date.formatted(date: .numeric, time: .omitted))
                                .font(.caption2)
                                .opacity(0.5)
                                .foregroundColor(.black)
                        }
                        .padding(.top, 1)
                        
                    }
                    
                    
                }
                .padding()
                
                
            }
            .frame(width: 120, height: 120)
            .background(.linearGradient(colors: [
                Color("Gradient1"),
                Color("Gradient2"),
                Color("Gradient3"),
            ], startPoint: .topLeading, endPoint: .bottomTrailing))
            .cornerRadius(20)
        })
    }
}

struct GridBudgetView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
