//
//  NewMessageView.swift
//  ExamMessager
//
//  Created by Дима Кожемякин on 03.02.2024.
//

import SwiftUI

struct NewMessageView: View {
    @State private var searchtext = ""
    @Environment(\.dismiss) var dissmis
    var body: some View {
        NavigationStack {
            ScrollView {
                TextField("To:", text: $searchtext)
                    .frame(height: 44)
                    .padding(.leading)
                    .background(Color(.systemGroupedBackground))
                    .textFieldStyle(.plain)
                
                Text("CONTACTS")
                    .foregroundColor(.gray)
                    .font(.footnote)
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .padding()
                ForEach(0 ... 10, id: \.self) {user in
                    VStack {
                        HStack {
                            Image(systemName: "person.circle.fill")
                                .resizable()
                                .frame(width: 32, height: 32)
                                .foregroundColor(Color(.systemGray4))
                            
                            Text("lera")
                                .font(.subheadline)
                                .fontWeight(.semibold)
                            Spacer()
                        }
                        .padding(.leading)
                        
                        Divider()
                            .padding(.leading, 40)
                    }
                }
            }
            .navigationTitle("New Message")
            .navigationBarTitleDisplayMode(.inline)
            .toolbar {
                ToolbarItem(placement: .navigationBarLeading) {
                    Button("Cancle") {
                        dissmis()
                    }
                }
            }
        }
        
    }
}

struct NewMessage_Previews: PreviewProvider {
    static var previews: some View {
        NavigationStack {
            NewMessageView()
        }
    }
}
