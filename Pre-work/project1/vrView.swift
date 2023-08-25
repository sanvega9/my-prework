//
//  vrView.swift
//  project1
//
//  Created by Antonio vega on 8/23/23.
//

import SwiftUI

struct vrView: View {
    var body: some View {
        GeometryReader{geomRE in
            ZStack {
                Image("Image")
                    .resizable()
                    .scaledToFill()
                    .edgesIgnoringSafeArea(.all)
                    .frame(width: geomRE.size.width, height: geomRE.size.height, alignment: .center)
                VStack{
                    Text("VR")
                        .font(.system(size: 50,design: .default))
                        .fontWeight(.heavy)
                        .foregroundStyle(LinearGradient(colors:[.teal,.indigo], startPoint: .top, endPoint: .center))
                        .frame(width: 129, height: 90)
                        .background(Circle().fill(Color.white).shadow(radius: 3))
                    ZStack {
                        RoundedRectangle(cornerRadius: 4.0)
                            .fill(Color.indigo)
                            .frame(width: 360, height: 300)
                            .opacity(0.5)
                        
                        VStack{
                            Text("VR is a virtual reality simulated 3D environment that promotes users to explore and interact with a virtual surrounding. ")
                                .foregroundColor(.white)
                                .font(.system(size:27, design: .rounded))
                                .fontWeight(.heavy)
                                .multilineTextAlignment(.center)
                                .lineSpacing(1)
                            VStack{
                                Text("Best VR Games")
                                    .foregroundColor(.pink)
                                    .font(.system(.largeTitle, design: .rounded))
                                    .fontWeight(.heavy)
                                    .multilineTextAlignment(.center)
                                    .lineSpacing(1)
                                VStack{
                                    Text("1. Beat Saber ")
                                        .foregroundColor(.white)
                                        .font(.system(size:27, design: .rounded))
                                        .fontWeight(.heavy)
                                        .multilineTextAlignment(.center)
                                        .lineSpacing(1)
                                    VStack{
                                        Text("2.Half Life: Alyx")
                                            .foregroundColor(.white)
                                            .font(.system(size:27, design: .rounded))
                                            .fontWeight(.heavy)
                                            .multilineTextAlignment(.center)
                                            .lineSpacing(1)
                                        VStack{
                                            Text("3.Tetris Effect")
                                                .foregroundColor(.white)
                                                .font(.system(size:27, design: .rounded))
                                                .fontWeight(.heavy)
                                                .multilineTextAlignment(.center)
                                                .lineSpacing(1)
                                        }
                                    }
                                }
                                
                            }
                            
                        }
                        
                    }
                    Spacer()
                }
            }
        }
    }
}

struct vrView_Previews: PreviewProvider {
    static var previews: some View {
        vrView()
    }
}
