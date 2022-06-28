//
//  ToDoList_today.swift
//  ToDo+
//
//  Created by 佐藤貴輝 on 2021/11/18.
//

import SwiftUI
import CoreData

import SwiftUI
import CoreData

struct ToDoList_today: View {
    // CoreDataからデータ取得処理
    @FetchRequest(
        sortDescriptors: [NSSortDescriptor(keyPath: \ToDo.name_today, ascending: false)],
        animation: .default
    )
    
    // フェッチした結果はFetchResults型として返されるので、以下のようにして取得する。
    var tasks: FetchedResults<ToDo>
    
    // CoreDataを使ったデータベース操作にはNSManagedObjectContextのインスタンスが必要になるので、以下でインスタンスを取得する
    @Environment(\.managedObjectContext) var viewContext
    @State var new = ""
    
    //List全体の背景色の設定
    init(){
        UITableView.appearance().backgroundColor = UIColor.white
    }
    
    var body: some View {
        // 垂直方向に配置
        VStack {
            Text("ToDoList - Today")
                .font(Font.futuraMedium(size: 27))
                .fontWeight(.bold)
                .frame(maxWidth: .infinity, alignment: .leading)
                .foregroundColor(Color("Font"))
            
            
            List {
                ForEach(tasks, id: \.self) { task in
                    Text("\(task.name_today ?? "")") // 謎の変更
                }.onDelete(perform: removeTask)
            } // Listここまで
            
            
            
            HStack {
                TextField("What are you gonna do today ? ", text: $new)
                    .font(Font.futuraMedium(size: 20))
                    //.fontWeight(.bold)
                    //.foregroundColor(Color.black)
                    .foregroundColor(Color("Font"))
                    .multilineTextAlignment(.center)
                    .textFieldStyle(RoundedBorderTextFieldStyle()) // 入力域の周りを枠で囲む
                
                
                Button(action: {
                    // TaskクラスのインスタンスであるnewTaskを生成し、name属性に入力した値self.newを設定している。このときTaskクラスのイニシャライザには、ManagedObjectContextを渡す必要がある。
                    let newTask = ToDo(context: self.viewContext)
                    newTask.name_today = self.new
                    
                    do {
                        try self.viewContext.save()
                    } catch {
                        let nsError = error as NSError
                        fatalError("Unresolved error \(nsError), \(nsError.userInfo)")
                    }
                    
                    self.new = ""
                }) {
                    Text("add")
                        .font(Font.futuraMedium(size: 20))
                        .fontWeight(.bold)
                        //.foregroundColor(Color.black)
                        .foregroundColor(Color("Font"))
                }
            } // HStackここまで
            
            
            
            
            
            
            
            
            
            
        } // Vstackここまで
        .padding()
        
        
    } // var ここまで
    
    
    private func removeTask(at offsets: IndexSet) {
        for index in offsets {
            let putTask = tasks[index]
            viewContext.delete(putTask)
        }
        do {
            try self.viewContext.save()
        } catch {
            let nsError = error as NSError
            fatalError("Unresolved error \(nsError), \(nsError.userInfo)")
        }
    }
    
} //struct ContentView ここまで（関数入れるなら、上の{}の中に入れる。








struct ToDoList_today_Previews: PreviewProvider {
    static var previews: some View {
        ToDoList_today()
    }
}
