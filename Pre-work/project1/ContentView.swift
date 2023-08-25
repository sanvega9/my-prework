//
//  ContentView.swift
//  project1
//
//  Created by bell vega on 8/23/23.
//

import SwiftUI

struct ContentView: View {
    @State private var buttondetails = false
    var body: some View {
        GeometryReader{geomRE in
            NavigationView{
                ZStack {
                    Image("wallpaper")
                        .resizable()
                        .scaledToFill()
                        .edgesIgnoringSafeArea(.all)
                        .frame(width: geomRE.size.width, height: geomRE.size.height, alignment: .center)
                    VStack(){
                        Text("Welcome")
                            .font(.system(size: 40,design: .default))
                            .fontWeight(.heavy)
                            .foregroundStyle(LinearGradient(colors: [.pink,.orange], startPoint: .leading, endPoint: .trailing))
                        
                        
                        VStack(){
                            Image("logo")
                                .renderingMode(.original)
                                .resizable()
                                .aspectRatio( contentMode: .fill)
                                .frame(width: 299,height: 96)
                            
                            VStack(){
                                Button("Show more inform"){
                                    buttondetails.toggle()
                                    
                                }
                                .buttonStyle(.borderedProminent)
                                .font(.system(size:19))
                                .fontWeight(.heavy)
                                .foregroundColor(.blue)
                                .tint(.orange)
                                ScrollView{
                                    if buttondetails{
                                        Text("Learn about new technology and how rapidly is advancing!!!")
                                            .foregroundColor(.white)
                                            .font(.largeTitle)
                                    }
                                      
                                }
                                VStack{
                                    NavigationLink(destination: vrView(),label: {
                                        Image("navigationimage")
                                            .renderingMode(.original)
                                            .resizable()
                                                                                        .cornerRadius(30)
                                            .frame(width: 264,height:440 )
                                    })
                                    
                                }
                                
                            }
                            Spacer()

                        }
                        
                        
                    }
                    
                }
            }
        }
    }
}


    

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
