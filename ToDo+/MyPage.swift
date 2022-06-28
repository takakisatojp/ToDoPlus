//
//  MyPage.swift
//  ToDo+
//
//  Created by 佐藤貴輝 on 2021/11/19.
//

import SwiftUI

struct MyPage: View {
    var body: some View {
        
        
        // 垂直方向
        //NavigationView {
            VStack(spacing: -150){
                // 水平方向
                
                HStack{
                    Text("ToDo")
                        .font(Font.futuraMedium(size: 60))
                        .fontWeight(.bold)
                        .foregroundColor(Color("Font"))
                        .padding(.trailing)
                    
                    Text("+")
                        .font(Font.futuraMedium(size: 40))
                        .fontWeight(.bold)
                        .foregroundColor(Color("Font"))
                        .padding(.leading, -30.0)
                        .padding(.top, -20)
                    
                } // HStackここまで
                .frame(maxWidth: .infinity)
                .padding(-214) // ToDo+の場所
                
                //NavigationView {
                
                // 垂直方向
                VStack(alignment: .leading, spacing: -20) {
                    //NavigationView {
                    //NavigationLink(destination: Settings()) {
                        Text("バージョン 1.0.0")
                            .font(Font.futuraMedium(size: 15))
                            .fontWeight(.bold)
                            .foregroundColor(Color("Font"))
                        //.frame(maxWidth: .infinity, alignment: .leading)
                            .padding()
                    //}
                    //                } // NavigationViewここまで
                    
                    Text("このアプリをポイントで評価してください。")
                        .font(Font.futuraMedium(size: 15))
                        .fontWeight(.bold)
                        .foregroundColor(Color("Font"))
                    //.frame(maxWidth: .infinity, alignment: .leading)
                        .padding()
                    //.padding(.trailing)
                    
                    Text("このアプリを勧めてください。")
                        .font(Font.futuraMedium(size: 15))
                        .fontWeight(.bold)
                        .foregroundColor(Color("Font"))
                    //.frame(maxWidth: .infinity, alignment: .leading)
                        .padding()
                    //.padding(.trailing)
                }// VStackここまで
                //.frame(width: 400, height: 300)
                //} // NavigationViewここまで
            //}
            // NavigationViewここまで
            .frame(width: 350, height: 250)
            
        } // varここまで
    } // structここまで
}

struct MyPage_Previews: PreviewProvider {
    static var previews: some View {
        MyPage()
    }
}



