//
//  ContentView.swift
//  AsyncAwaitTaskDemo
//
//  Created by Thongchai Subsaidee on 16/2/24.
//

import SwiftUI

struct ContentView: View {
    
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
            performTasks()
        }
    }
    
    func performTasks() {
        DispatchQueue.global().async {
            // Task 1
            Thread.sleep(forTimeInterval: 3)
            DispatchQueue.main.async {
                task1Done = true
            }
            
            // Task 2
            Thread.sleep(forTimeInterval: 3)
            DispatchQueue.main.async {
                task2Done = true
            }
            
            // Task 3
            Thread.sleep(forTimeInterval: 3)
            DispatchQueue.main.async {
                task3Done = true
            }
            
            // Task 4
            Thread.sleep(forTimeInterval: 3)
            DispatchQueue.main.async {
                task4Done = true
            }
        }
    }
}

func awitTime(sec: UInt64) async {
    try! await Task.sleep(nanoseconds: sec * 1_000_000_000)
}



#Preview {
    ContentView()
}
