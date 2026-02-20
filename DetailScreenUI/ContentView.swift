//
//  ContentView.swift
//  DetailScreenUI
//
//  Created by next on 17/02/26.
//

import SwiftUI

//struct FirstScreen: View {
//    var body: some View {
//        NavigationView {
//
//            VStack {
//                Spacer()
//
//                NavigationLink(destination: ContentView()) {
//                    Text("Detail View")
//                        .font(.system(size: 18, weight: .semibold))
//                        .foregroundColor(.white)
//                        .padding()
//                        .frame(width: 200)
//                        .background(Color.blue)
//                        .cornerRadius(12)
//                }
//
//                Spacer()
//            }
//            .navigationBarHidden(true)
//        }
//    }
//}
//struct ContentView: View {
//
//    @Environment(\.presentationMode) var presentationMode
//
//    var body: some View {
//        Group {
//            VStack(spacing: 0) {
//
//                customNavigationBar
//
//
//                VStack(alignment: .leading) {
//
//                    CourseInfoView()
//                    InstructorCardView()
//                    DateTimeView()
//                    Spacer().frame(height: 32)
//                    QuestionSectionView()
//                    Spacer().frame(height: 32)
//                    Divider()
//                        .frame(height: 1)
//                        .background(Color(hex: "#D2DBE7"))
//                        .padding(.trailing, 15)
//                        .padding(.leading, 22)
//
//                    Spacer().frame(height: 32)
//
//                    RatingView()
//
//                    Spacer()
//                }
//
//            }
//            .navigationBarHidden(true)
//            .ignoresSafeArea(edges: .top)
//        }
//    }
//}
//extension ContentView {
//
//    var customNavigationBar: some View {
//        VStack(spacing: 0) {
//
//            HStack {
//
//                Button(action: {
//                    presentationMode.wrappedValue.dismiss()
//                }) {
//                    Image(systemName: "chevron.left")
//                        .font(.system(size: 16, weight: .semibold))
//                        .foregroundColor(Color(hex: "#324045"))
//                }
//
//                Text("View Details")
//                    .font(.system(size: 17, weight: .semibold))
//                    .foregroundColor(Color(hex: "#000000"))
//
//                Spacer()
//            }
//            .padding(.horizontal, 12)
//            .padding(.top, 60)
//            .padding(.bottom, 12)
//            .background(Color.white)
//
//            Divider()
//                .background(Color(hex: "#D2DBE7"))
//        }
//    }
//}

import SwiftUI

struct FirstScreen: View {
    var body: some View {

        NavigationView {

            VStack {
                Spacer()

                NavigationLink(destination: ContentView()) {
                    Text("Detail View")
                        .font(.system(size: 18, weight: .semibold))
                        .foregroundColor(.white)
                        .padding()
                        .frame(width: 200)
                        .background(Color.blue)
                        .cornerRadius(12)
                }

                Spacer()
            }
            .navigationBarHidden(true)
        }
    }
}


struct ContentView: View {

    @Environment(\.presentationMode) var presentationMode

    var body: some View {

        VStack(spacing: 0) {

            VStack(alignment: .leading) {
                Divider().foregroundColor(Color(hex: "#F5F7F8"))
                CourseInfoView()
                InstructorCardView()
                DateTimeView()

               

                QuestionSectionView()

             

                Divider()
                    .frame(height: 1)
                    .background(Color(hex: "#D2DBE7"))
                    .padding(.horizontal, 15)
                    .padding(.top,32)

                

                RatingView()

                Spacer()
            }
        }

        
        .navigationBarTitle("", displayMode: .inline)
        .navigationBarBackButtonHidden(true)
        .navigationBarItems(leading:
            HStack(spacing: 8) {

                Button(action: {
                    presentationMode.wrappedValue.dismiss()
                }) {
                    Image(systemName: "chevron.left")
                        .font(.system(size: 16, weight: .semibold))
                        .foregroundColor(.black)
                }

                Text("View Details")
                    .font(.system(size: 17, weight: .semibold))
                    .foregroundColor(.black)
            }
        )
    }
}
struct CourseInfoView: View {
    var body: some View {
        VStack(alignment: .leading) {
            
            Text("Java Full Stack Course Jan 2026")
                .font(.system(size: 16, weight: .semibold))
                .foregroundColor(Color(hex: "#000000"))
                .frame(height: 20, alignment: .leading)
                .frame(maxWidth: .infinity, alignment: .leading)
                .opacity(1)
                .padding(.leading,12)
                .padding(.top,16)
            Spacer().frame(height:4)
            Text("Java Programming for Complete Beginners")
                .font(.system(size: 12, weight: .medium))
                .foregroundColor(Color(hex: "#575B6E"))
                .frame(height: 15, alignment: .leading)
                .frame(maxWidth: .infinity, alignment: .leading)
                .opacity(1)
                .padding(.leading,12)

            Text("Completed")
                .font(.system(size: 8, weight: .medium))
                .foregroundColor(Color(hex: "#379840"))
                .frame(width: 59, height: 15, alignment: .center)
                .background(
                    Capsule()
                        .fill(Color(hex: "#4CA054").opacity(0.16))
                        .frame(width: 75, height: 20)
                )
                .opacity(1)
                .padding(.leading,18)
        }
    }
}

struct InstructorCardView: View {
    var body: some View {
        Spacer().frame(height:16)
        HStack (spacing:6){
            Image("Image")
                .resizable()
                .scaledToFit()
                .frame(width: 40, height: 40)
                .padding()
            VStack(alignment: .leading, spacing: 4) {
                Text("David Chen")
                    .font(.system(size: 14, weight: .medium))
                    .foregroundColor(Color(hex: "#212121"))
                    .frame(height: 18, alignment: .leading)
                
                Text("Professor of Web Architecture")
                    .font(.system(size: 12, weight: .regular))
                    .foregroundColor(Color(hex: "#575B6E"))
                    .frame(height: 15, alignment: .leading)
            }.padding(.horizontal,6)
            
            Spacer()
        }
        
        .frame(height: 64)
        .background(Color(hex: "#F0F3F8"))
        .cornerRadius(8)
        .opacity(1)
        .padding(.horizontal,12)
    }
}


struct DateTimeView: View {
    var body: some View {

        Spacer().frame(height: 16)

        VStack(spacing: 20) {

            HStack {

                InfoItem(icon: "calendar",
                         title: "Date",
                         value: "Dec 11, 2025")
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .foregroundColor(Color(hex: "#5F6368"))

                InfoItem(icon: "clock",
                         title: "Time",
                         value: "3:00 PM - 3:45 PM")
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .foregroundColor(Color(hex: "#5F6368"))
            }

            InfoItem(icon: "stopwatch",
                     title: "Duration",
                     value: "45 Minutes")
                .frame(maxWidth: .infinity, alignment: .leading)
                .foregroundColor(Color(hex: "#5F6368"))
        }
        .padding(.horizontal, 12)
    }
}
struct QuestionSectionView: View {
    
    var body: some View {
        
        VStack(alignment: .leading, spacing: 0) {

            Text("Your Question")
                .font(.system(size: 14, weight: .semibold))
                .foregroundColor(Color(hex: "#575B6E"))
                .frame(height: 18, alignment: .leading)
                .padding(.horizontal, 15)
                .padding(.top,32)
             
            
            Text("In this advanced masterclass, we explored complex user behaviour patterns and high-fidelity research synthesis.")
                .font(.system(size: 12, weight: .regular))
                .foregroundColor(Color(hex: "#575B6E"))
                .frame(height: 32, alignment: .leading)
                .padding(.horizontal, 17).padding(.top,6)

            
            

            
            Button(action: {
                print("Download tapped")
            }) {
                HStack(spacing: 8) {
                    
                    Image(systemName: "doc.text.fill")
                        .resizable()
                        .frame(width: 20, height: 23)
                        .foregroundColor(.red)
                    
                    Text("PDF 1 name here.pdf")
                        .font(.system(size: 13, weight: .regular))
                        .foregroundColor(Color(hex: "#575B6E"))
                        .frame(height: 16, alignment: .leading)
                    
                    Spacer().frame(width:35)
                    
                    ZStack {
                        Circle()
                            .fill(Color(hex: "#0179FF").opacity(0.08))
                            .frame(width: 24, height: 24)
                        
                        Image(systemName: "arrow.down.to.line")
                            .resizable()
                            .frame(width: 12, height: 12)
                            .foregroundColor(Color(hex: "#0179FF"))
                    }
                }
                .padding()
                .frame(height: 36)
                .background(Color(hex: "#FFFFFF"))
                .cornerRadius(8)
                .overlay(
                    RoundedRectangle(cornerRadius: 8)
                        .stroke(Color(hex: "#EAEBF9"), lineWidth: 1)
                )
                .shadow(color: Color.black.opacity(0.04), radius: 6, x: 0, y: 2)
            }
            .buttonStyle(.plain)
            .padding(.leading, 15).padding(.top,12)
        }
    }
}

struct RatingView: View {
    
    let rating: Double = 4.8
    let maxStars: Int = 5

    var body: some View {
        let safeRating = min(max(rating, 0), Double(maxStars))

        VStack(alignment: .leading, spacing: 0) {

            
            Text("Your Rating & Feedback")
                .font(.system(size: 14, weight: .semibold))
                .foregroundColor(Color(hex: "#575B6E"))
                .frame(height: 18, alignment: .leading)

            
           

            
            HStack(spacing: 6) {

                let fullStars = Int(floor(safeRating))
                let hasHalfStar = safeRating.truncatingRemainder(dividingBy: 1) >= 0.5

                ForEach(0..<maxStars, id: \.self) { index in
                    
                    if index < fullStars {
                        
                        Image(systemName: "star.fill")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 14, height: 14)
                            .foregroundColor(Color(hex: "#0179FF"))
                    
                    } else if index == fullStars && hasHalfStar {
                        
                        ZStack {
                            
                            
                            Image(systemName: "star.fill")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 14, height: 14)
                                .foregroundColor(.orange.opacity(0.5))
                            
                            
                            Image(systemName: "star.fill")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 14, height: 14)
                                .foregroundColor(Color(hex: "#0179FF"))
                                .mask(
                                    Rectangle()
                                        .frame(width: 7, height: 14)
                                        .offset(x: -3.5)
                                )
                        }
                    
                    } else {
                        
                        Image(systemName: "star.fill")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 14, height: 14)
                            .foregroundColor(.orange.opacity(0.5))
                    }
                }

                Text(String(format: "%.1f", safeRating))
                    .font(.system(size: 15, weight: .semibold))
                    .foregroundColor(.black)
                    .padding(.leading, 6)
            }
            .padding(.top,10)
           
            Spacer().frame(height: 5)

            
            Text("In this advanced masterclass, we explored complex user behaviour patterns and high-fidelity research synthesis.")
                .font(.system(size: 12, weight: .regular))
                .foregroundColor(Color(hex: "#575B6E"))
                .frame(height: 32, alignment: .leading)
        }
        .padding(.horizontal, 15)
        .padding(.top,32)
    }
}
struct InfoItem: View {

    let icon: String
    let title: String
    let value: String

    var body: some View {
        HStack(spacing: 12) {

            Image(systemName: icon)
                .resizable()
                .scaledToFit()
                .frame(width: 16, height: 16)
                .padding(13)
                .background(Color(hex: "#F0F3F8"))
                .cornerRadius(10)

            VStack(alignment: .leading, spacing: 2) {
                Text(title)
                    .font(.system(size: 12, weight: .medium))
                    .foregroundColor(Color(hex: "#95A2B6"))

                Text(value)
                    .font(.system(size: 14))
                    .foregroundColor(.black)
                    .lineLimit(1)
            }
        }
    }
}

extension Color {
    init(hex: String, opacity: Double = 1.0) {
        let hex = hex.trimmingCharacters(in: .alphanumerics.inverted)
        var int: UInt64 = 0
        Scanner(string: hex).scanHexInt64(&int)
        
        self.init(
            red: Double((int >> 16) & 0xFF) / 255,
            green: Double((int >> 8) & 0xFF) / 255,
            blue: Double(int & 0xFF) / 255,
            opacity: opacity
        )
    }
}
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            ContentView()
        }
    }
}
