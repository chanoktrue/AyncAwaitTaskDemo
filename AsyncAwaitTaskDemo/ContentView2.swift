//
//  ContentView2.swift
//  AsyncAwaitTaskDemo
//
//  Created by Thongchai Subsaidee on 16/2/24.
//

import SwiftUI

struct ContentView2: View {
    
    @State private var task1Done = false
    @State private var task2Done = false
    @State private var task3Done = false
    @State private var task4Done = false
        
    var body: some View {
        VStack {
            Text("Task 1 : \(task1Done ? "Done" : "Not Done")")
            Text("Task 2 : \(task2Done ? "Done" : "Not Done")")
            Text("Task 3 : \(task3Done ? "Done" : "Not Done")")
            Text("Task 4 : \(task4Done ? "Done" : "Not Done")")
        }
        .onAppear {
            Task {
                await performTasks()
            }
        }
    }
    
    func performTasks() async {

        await awaitTime(sec: 3)
           task1Done = true
           
        await awaitTime(sec: 3)
           task2Done = true
           
        await awaitTime(sec: 3)
           task3Done = true
           
        await awaitTime(sec: 3)
           task4Done = true
    }
}

func awaitTime(sec: UInt64) async {
    try! await Task.sleep(nanoseconds: sec * 1_000_000_000) // sec x วินาที
}



#Preview {
    ContentView()
}
