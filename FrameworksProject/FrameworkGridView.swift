//
//  FrameworkGridView.swift
//  FrameworksProject
//
//  Created by Atalay Çıtak on 21.07.2025.
//

import SwiftUI

struct FrameworkGridView: View {
    let columns: [GridItem] = [GridItem(.flexible()),
                               GridItem(.flexible()),
                               GridItem(.flexible())]
    
    
    var body: some View {
        NavigationView{
            ScrollView{
                LazyVGrid(columns: columns){
                    ForEach(MockData.frameworks) { Framework in
                        frameworkAppView(framework: Framework)
                    }
                    
                 
                    
                }
            }
            .navigationTitle(Text("Apple Frameworks"))
            
          
            
        }
       
    }
}

#Preview {
    FrameworkGridView()
}

struct frameworkAppView: View{
    var framework: Framework
    var body: some View {
        
        VStack(spacing: 0){
            Image(framework.imageName)
                .resizable()
                .frame(width: 60, height: 60)
                .cornerRadius(20)
                
            Text(framework.name)
                .font(.title2)
                .fontWeight(.semibold)
                .scaledToFit()
                .minimumScaleFactor(0.6)
        }
        .padding()
    }
}
