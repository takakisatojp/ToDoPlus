//
//  Settings.swift
//  ToDo+
//
//  Created by 佐藤貴輝 on 2021/11/19.
//

import SwiftUI

struct Settings: View {
    var body: some View {
        // 垂直方向
        VStack(spacing: -150){
            
            // 水平方向
            HStack{
                Text("ToDo")
                    .font(Font.futuraMedium(size: 60))
                    .fontWeight(.bold)
                    .foregroundColor(Color.black)
                    .padding(.trailing)
                
                Text("+")
                    .font(Font.futuraMedium(size: 40))
                    .fontWeight(.bold)
                    .foregroundColor(Color.black)
                    .padding(.leading, -30.0)
                    .padding(.top, -20)
                
            } // HStackここまで
            .frame(maxWidth: .infinity)
            .padding(-214) // ToDo+の場所
            
            //NavigationView {
                
            VStack(alignment: .leading) {
                
            Text("設定")
                .font(Font.futuraMedium(size: 15))
                .fontWeight(.bold)
                .foregroundColor(Color.black)
                //.frame(maxWidth: .infinity, alignment: .leading)
                .padding()
                    
               
                HStack {
            Text("バージョン")
                .font(Font.futuraMedium(size: 15))
                .fontWeight(.bold)
                .foregroundColor(Color.black)
                //.frame(maxWidth: .infinity, alignment: .leading)
                //.padding()
                //.padding(.trailing)
            
            Text("1.0.0")
                .font(Font.futuraMedium(size: 15))
                .fontWeight(.bold)
                .foregroundColor(Color.black)
                //.frame(maxWidth: .infinity, alignment: .leading)
                //.padding()
                //.padding(.trailing)
                
                }
            }// VStackここまで
            .frame(width: 400, height: 300)
            
            //} // NavigationViewここまで
            
        } // VStackここまで
        
        
        
    } // varここまで
    
    
    
    
    
    
    
}

struct Settings_Previews: PreviewProvider {
    static var previews: some View {
        Settings()
    }
}
