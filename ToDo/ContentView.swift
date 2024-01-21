//
//  ContentView.swift
//  ToDo
//
//  Created by sasayoshi on 2024/01/21.
//

import SwiftUI

struct ContentView: View {
    @State var taskData = [(title: "ジョギングする", completed: false),
                           (title: "お花に水をやる", completed: false),
                           (title: "勉強する", completed: false),
                           (title: "仕事する", completed: false)
    ]
    
    var body: some View {
        NavigationStack {
            List(0..<taskData.count, id: \.self){index in
                Button{
                    taskData[index].completed.toggle()
                }
                label :
                {
                    HStack{
                        Image(systemName: taskData[index].completed == true ? "checkmark.circle.fill" : "circle")
                        Text(taskData[index].title)
                    }
                }.foregroundColor(.black)
                
            }
            .navigationTitle("ToDoリスト")
        }
    }
}

#Preview {
    ContentView()
}
