//
//  CardView.swift
//  Hike
//
//  Created by Sahaj Totla on 10/15/23.
//

import SwiftUI

struct CardView: View {
    // MARK: PROPERTIES
    @State private var imageNumber: Int = 1
    @State private var randomNumber: Int = 1
    
    //MARK: FUNCTIONS
    
    func randomImage() {
        repeat {
            randomNumber = Int.random(in: 1...5)
        } while randomNumber == imageNumber
        imageNumber = randomNumber
    }
    
    var body: some View {
        
        //MARK: CARD
        
        ZStack {
            
            CustomBackgroundView()
            
            VStack {
                
                //MARK: - HEADER
                VStack(alignment: .leading){
                    
                    HStack {
                        
                        Text("Hiking")
                            .fontWeight(.black)
                            .font(.system(size: 52))
                            .foregroundStyle(
                                LinearGradient(
                                    colors: [.customGrayLight, .customGrayMedium],
                                    startPoint: .top,
                                    endPoint: .bottom
                                )
                        )
                        
                        Spacer()
                        
                        Button {
                            //: ACTION: SHOW A SHEET
                            print("Button was pressed")
                        } label: {
                            CustomButtonView()
                        }
                    }
                    
                    Text("Fun and enjoyable outdoor activities with family and friends.")
                        .italic()
                        .foregroundColor(.customGrayMedium)
                }
                .padding(.horizontal, 30)
                
                
                //MARK: - MAIN CONTENT
                
                ZStack {
                    
                    Circle()
                        .fill(
                            LinearGradient(
                                colors: [
                                    .customIndigoMedium,
                                    .customSalmonLight
                                ],
                                startPoint: .topLeading,
                                endPoint: .bottomTrailing
                            )
                        )
                        .frame(width: 256, height: 256)
                    
                    Image("image-\(imageNumber)")
                        .resizable()
                        .scaledToFit()
                        .animation(
                            .easeOut(duration: 0.5),
                            value: imageNumber)
                }
                
                //MARK: - FOOTER
                
                Button{
                    //ACTION: Generate a random Number
                    print("Button was pressed")
                    randomImage()
                } label: {
                    Text("Explore More")
                        .font(.title2)
                        .fontWeight(.heavy)
                        .foregroundStyle(
                            LinearGradient(
                                colors: [
                                    .customGreenLight,
                                    .customGreenMedium
                                ],
                                startPoint: .top,
                                endPoint: .bottom
                            )
                        )
                        .shadow(
                            color: .black.opacity(0.25),
                            radius: 0.25,
                            x: 1,
                            y: 2
                        )
                }
                .buttonStyle(GradientButton())
            }//: VSTACK
        }//: CARD
        .frame(width: 320, height: 570)
    }
}

#Preview {
    CardView()
}
