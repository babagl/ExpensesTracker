//
//  DetailsBudgetsView.swift
//  TrackerExpensive
//
//  Created by Abdoulaye Aliou SALL on 13/04/2023.
//

import SwiftUI

struct DetailsBudgetsView: View {
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    var body: some View {
        
        ScrollView(.vertical , showsIndicators: false) {
            VStack(spacing: 12) {
                HStack(spacing: 15){
                    Button {
                        presentationMode.wrappedValue.dismiss()
                    } label: {
                        VStack(alignment: .leading,spacing: 5) {
                            
                            Text("welcome")
                                .foregroundColor(Color("Gray"))
                                .font(.caption)
                                .fontWeight(.semibold)
                            HStack {
                                Image(systemName: "arrowtriangle.backward")
                                Text("BabaGalle")
                                    .font(.title2.bold())
                            }
                            .foregroundColor(.black)
                                
                        }
                        .frame(maxWidth: .infinity, alignment: .leading)
                    }

//                    VStack(alignment: .leading,spacing: 5) {
//
//                        Text("welcome")
//                            .foregroundColor(Color("Gray"))
//                            .font(.caption)
//                            .fontWeight(.semibold)
//                        Text("BabaGalle")
//                            .font(.title2.bold())
//
//                    }
//                    .frame(maxWidth: .infinity, alignment: .leading)
                    
                }
                GeometryReader{proxy in
                    RoundedRectangle(cornerRadius: 20, style: .continuous)
                        .fill(
                            .linearGradient(colors:[
                            Color("Gradient1"),
                            Color("Gradient2"),
                            Color("Gradient3"),
                            ], startPoint: .topLeading, endPoint: .bottomTrailing))
                    VStack(spacing: 15){
                        VStack(spacing: 15){
                            // currently Going Month Date String
                            Text("")
                                .font(.callout)
                                .fontWeight(.semibold)
                            
                            Text("")
                                .font(.system(size: 32, weight: .bold))
                                .lineLimit(1)
                                .padding(.bottom, 5)
                        }
                        .offset(y: -10)
                        HStack(spacing: 15){
                            Image(systemName: "arrow.down")
                                .font(.caption.bold())
                                .foregroundColor(Color("Green"))
                                .frame(width: 30, height: 30)
                                .background(.white.opacity(0.7),in: Circle())
                            
                            VStack(alignment: .leading, spacing: 4){
                                Text("Income")
                                    .font(.caption)
                                    .opacity(0.7)
                                
                                Text("")
                                    .font(.callout)
                                    .fontWeight(.semibold)
                                    .lineLimit(1)
                                    .fixedSize()
                            }
                            .frame(maxWidth: .infinity , alignment: .leading)
                            
                            Image(systemName: "arrow.up")
                                .font(.caption.bold())
                                .foregroundColor(Color("Red"))
                                .frame(width: 30, height: 30)
                                .background(.white.opacity(0.7),in: Circle())
                            
                            VStack(alignment: .leading, spacing: 4){
                                Text("Expenses")
                                    .font(.caption)
                                    .opacity(0.7)
                                Text("")
                                    .font(.callout)
                                    .fontWeight(.semibold)
                                    .lineLimit(1)
                                    .fixedSize()
                            }
                        }
                        .padding(.horizontal)
                        .padding(.trailing)
                        .offset(y: 15)
                    }
                    .foregroundColor(.white)
                    .frame(maxWidth: .infinity, maxHeight: .infinity)
                }
                .frame(height: 220)
            .padding(.top)
            }
            .padding()
        }
        .background(Color("BabaGl"))
    }
}

struct DetailsBudgetsView_Previews: PreviewProvider {
    static var previews: some View {
        DetailsBudgetsView()
    }
}
