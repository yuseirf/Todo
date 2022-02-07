//
//  QuickNewTask.swift
//  Todo
//
//  Created by 田中優成 on 2022/02/07.
//

import SwiftUI

struct QuickNewTask: View {
    
    let category: TodoEntity.Category
    
    @State var newTask: String = ""
    
    fileprivate func addNewTask() {
        self.newTask = ""
    }
    
    fileprivate func cancelTask() {
        self.newTask = ""
    }
    
    var body: some View {
        HStack {
            TextField("新しいタスク", text: $newTask) {
                self.addNewTask()
            }
            .textFieldStyle(RoundedBorderTextFieldStyle())
            Button(action: {
                self.addNewTask()
            }) {
                Text("追加")
            }
            Button(action: {
                self.cancelTask()
            }) {
                Text("キャンセル")
                    .foregroundColor(Color(.systemRed))
            }
        }
    }
}

struct QuickNewTask_Previews: PreviewProvider {
    static var previews: some View {
        QuickNewTask(category: .ImpUrg_1st)
    }
}
