//
//  Open_1.swift
//  ToDo+
//
//  Created by 佐藤貴輝 on 2021/11/18.
//


import SwiftUI

struct Open_1: View {
    var body: some View {
        
        
        NavigationView {
            
            
            //VStack {
            // 水平方向
            HStack {
                
                Text("ToDo")
                    .font(Font.futuraMedium(size: 60))
                    .fontWeight(.bold)
                    .foregroundColor(Color("Font"))
                    //.foregroundColor(Color.black)
                    .padding(.trailing)
                
                Text("+")
                    .font(Font.futuraMedium(size: 40))
                    .fontWeight(.bold)
                    .foregroundColor(Color("Font"))
                    .padding(.leading, -30.0)
                    .padding(.top, -20)
                
            } // HStackここまで
            
            
            
            // 水平方向
            //                HStack {
            //
            //                    Text("ToDo")
            //
            //
            //                } // HStackここまで
            
            
            //} // VStackここまで
            
            
            .toolbar {
                //                ToolbarItemGroup(placement: .bottomBar) {
                //
                //
                //
                //                    NavigationLink(destination: ToDoList_today()){
                //                        Text("today")
                //                            .font(Font.futuraMedium(size: 20))
                //                            .fontWeight(.bold)
                //                            .foregroundColor(Color.black)
                //                    }
                //
                //
                //
                //                    NavigationLink(destination: ToDoList_today()){
                //                        Image(systemName: "person")
                //
                //                    }
                //
                //                    NavigationLink(destination: ToDoList_tomorrow()){
                //                        Text("tomorrow")
                //                            .font(Font.futuraMedium(size: 20))
                //                            .fontWeight(.bold)
                //                            .foregroundColor(Color.black)
                //
                //
                //
                //
                //
                //
                //                    }
                //
                //
                //
                //
                //
                //                }
                
                
                
                ToolbarItem(placement: .bottomBar) {
                    NavigationLink(destination: ToDoList_today()){
                        Text("today")
                            .font(Font.futuraMedium(size: 20))
                            .fontWeight(.bold)
                            .foregroundColor(Color("Font"))
                           
                        
                        
                    }
                }
                
                ToolbarItem(placement: .status) {
                    NavigationLink(destination: MyPage()){
                        Text("+")
                            .font(Font.futuraMedium(size: 20))
                            .fontWeight(.bold)
                            .foregroundColor(Color("Font"))
                        
                        
                    }
                }
                
                ToolbarItem(placement: .bottomBar) {
                    NavigationLink(destination: ToDoList_tomorrow()){
                        Text("tomorrow")
                            .font(Font.futuraMedium(size: 20))
                            .fontWeight(.bold)
                            .foregroundColor(Color("Font"))
                        
                        
                    }
                }
            } // toolbarここまで
            
        } // NAvigationViewここまで
        
    }
}





//        // 縦方向に配置
//        VStack(spacing: 0) {
//            // 水平方向
//            HStack {
//
//                Text("ToDo")
//                    .font(Font.futuraMedium(size: 60))
//                    .fontWeight(.bold)
//                    .foregroundColor(Color.black)
//                    .padding(.trailing)
//
//                Text("+")
//                    .font(Font.futuraMedium(size: 40))
//                    .fontWeight(.bold)
//                    .foregroundColor(Color.black)
//                    .padding(.leading, -30.0)
//                    .padding(.top, -20)
//
//            } // HStackここまで
//
//
//
//
//
//        } // VStackここまで
//
//
//    }
//
//}



struct Open_1_Previews: PreviewProvider {
    static var previews: some View {
        Open_1()
    }
}

