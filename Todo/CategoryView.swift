//
//  CategoryView.swift
//  Todo
//
//  Created by 田中優成 on 2022/02/07.
//

import SwiftUI

struct CategoryView: View {
    var category: TodoEntity.Category
    @State var numberOfTasks = 0
    
    var body: some View {
        VStack(alignment: .leading) {
            VStack {
                Image(systemName: category.image())
                    .font(.largeTitle)
                Text(category.toString())
                Text("・\(numberOfTasks)タスク")
            }
            Button(action: {}) {
                Image(systemName: "plus")
            }
            Spacer()
        }
        .padding()
        .frame(maxWidth: .infinity, minHeight: 150)
        .foregroundColor(.white)
            .background(category.color())
            .cornerRadius(20)
        
    }
}

struct CategoryView_Previews: PreviewProvider {
    static var previews: some View {
        VStack {
            CategoryView(category: .ImpUrg_1st, numberOfTasks: 50)
            CategoryView(category: .ImpNUrg_2nd, numberOfTasks: 10)
            CategoryView(category: .NImpUrg_3rd, numberOfTasks: 3)
            CategoryView(category: .NImpNUrg_4th, numberOfTasks: 21)
        }
    }
}
