//
//  ContentView.swift
//  SwiftScrollView
//
//  Created by Fatih Gümüş on 16.04.2024.
//

import SwiftUI

struct InstagramClone :View{
    var body : some View{
        VStack(alignment: .leading){
            
            HStack{
                Image(systemName: "circle")
                    .resizable()
                    .aspectRatio(contentMode: /*@START_MENU_TOKEN@*/.fill/*@END_MENU_TOKEN@*/)
                    .frame(width: 40,height: 40)
                
                VStack(alignment : .leading){
                    Text("@fatihgumus59")
                        .font(.headline)
                    Text("Istanbul")
                        .font(.subheadline)
                        .foregroundStyle(Color(.gray))
                }
                
                Spacer()
                    Image(systemName: "ellipsis")
            }
            .padding(.horizontal)
            AsyncImage(url: URL(string: "https://placehold.co/400x400?text=Hello+World"))
                .aspectRatio(contentMode: /*@START_MENU_TOKEN@*/.fill/*@END_MENU_TOKEN@*/)
                .frame(maxHeight: 300)
                .padding(.bottom,50)
                .padding(.top,50)
            HStack{
                Image(systemName: "heart")
                Image(systemName: "message")
                Image(systemName: "paperplane")
                Spacer()
                Image(systemName: "bookmark")
            }
            .padding(.horizontal)
            .padding(.bottom,5)
            HStack{
                Text("@fatihgumus59")
                    .font(.subheadline)
                    .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                Text("Merhaba Dünya!")
                    .font(.subheadline)
            }
            .padding(.horizontal)
            VStack(alignment: .leading){
                Text("Test amaçlı deneme yorum")
                    .font(.subheadline)
                Text("Tüm yorumları gör")
                    .font(.subheadline)
                    .foregroundStyle(Color(.gray))
                Text("10 dakika önce")
                    .font(.subheadline)
                    .foregroundStyle(Color(.gray))
                    .padding(.vertical,4)
                
            }
            .padding(.horizontal)
           
        }

    }
}

struct ContentView: View {
    var body: some View {
        VStack(alignment: .center){
            Text("Instagram")
                .font(.title)
                .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                .fontDesign(.serif)

            ScrollView{
                InstagramClone()
                InstagramClone()
                InstagramClone()
                InstagramClone()
            }
        }
      
                
    }
}

#Preview {
    ContentView()
}
