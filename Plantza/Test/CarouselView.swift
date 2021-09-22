//
//  CarouselView.swift
//  Plantza
//
//  Created by Satya Prakash Sahu on 21/09/21.
//

import SwiftUI

struct CarouselView: View {
    var body: some View {
        Home()
    }
}

struct CarouselView_Previews: PreviewProvider {
    static var previews: some View {
        CarouselView()
    }
}



struct Home : View {
    
    @State var index = 0
    
    @State var story : [Story] = stories
    
    @State var scrolled = 0
    
    
    var body : some View    {
        ScrollView(.vertical, showsIndicators: false) {
            VStack {
                HStack {
                    Button(action: {}, label: {
                        Image(systemName: "slider.horizontal.3")
                            .renderingMode(.template)
                            .foregroundColor(.white)
                    })
                    Spacer()
                    Button(action: {}, label: {
                        Image(systemName: "magnifyingglass")
                            .renderingMode(.template)
                            .foregroundColor(.white)
                    })
                    
                    
                    
                }
                .padding()
                
                HStack{
                    Text("Trending")
                        .font(.system(size: 40, weight: .bold))
                        .foregroundColor(.white)
                    
                    Spacer(minLength: 0)
                    
                    Button(action: {}, label: {
                        Image(systemName: "rectangle.and.pencil.and.ellipsis")
                            .renderingMode(.template)
                            .foregroundColor(.white)
                        
                    })
                    
                    
                    
                }
                .padding(.horizontal)
                
                HStack  {
                    Text("Animated")
                        .font(.system(size: 15))
                        .foregroundColor(index == 0 ? .white : Color(#colorLiteral(red: 0.2549019754, green: 0.2745098174, blue: 0.3019607961, alpha: 1)).opacity(0.85))
                        .fontWeight(.bold)
                        .padding(.vertical,6)
                        .padding(.horizontal,20)
                        .background(Color(#colorLiteral(red: 0.5843137503, green: 0.8235294223, blue: 0.4196078479, alpha: 1)).opacity(index == 0 ? 1 : 0))
                        .clipShape(Capsule())
                        .onTapGesture {
                            index = 0
                        }
                    
                    
                    
                    
                    Text("25+ Stories")
                        .font(.system(size: 15))
                        .foregroundColor(index == 1 ? .white : Color(#colorLiteral(red: 0.2549019754, green: 0.2745098174, blue: 0.3019607961, alpha: 1)).opacity(0.85))
                        .fontWeight(.bold)
                        .padding(.vertical,6)
                        .padding(.horizontal,20)
                        .background(Color(#colorLiteral(red: 0.5843137503, green: 0.8235294223, blue: 0.4196078479, alpha: 1)).opacity(index == 1 ? 1 : 0))
                        .clipShape(Capsule())
                        .onTapGesture {
                            index = 1
                        }
                    
                    Spacer()
                    
                }
                .padding(.horizontal)
                .padding(.top,10)
                .padding(.bottom,10)
                
                
                ZStack{
                    
                    ForEach(story.reversed())   {   item in
                        
                        HStack {
                            HStack {
                                ZStack(alignment : Alignment(horizontal: .leading, vertical: .bottom)) {
                                    Image(item.image)
                                        .resizable()
                                        .aspectRatio(contentMode: .fill)
                                        
                                        
                                        .frame(width: calculateWidth(), height: (UIScreen.main.bounds.height/1.8) - CGFloat(item.num-scrolled * 50))
                                        .cornerRadius(15)
                                        
                                }
                                .offset(x: item.num - scrolled <= 2 ? CGFloat((item.num - scrolled) * 30) : 50)
                                .contentShape(Rectangle())
                                .offset(x: item.offset)
                                .gesture(
                                    DragGesture()
                                        .onChanged({ value in
                                            withAnimation {
                                                
                                                if value.translation.width < 0 && item.num != story.last!.num {
                                                    story[item.num].offset = value.translation.width
                                                }
                                                else{
                                                    
                                                    
                                                    
                                                    if item.num > 0 {
                                                        story[item.num - 1].offset = -(calculateWidth()+60 + (value.translation.width))
                                                    }
                                                    
                                                    
                                                    
                                                }
                                              
                                            }
                                            
                                            
                                            
                                        })
                                        
                                        .onEnded({ value in
                                            
                                            withAnimation {
                                                
                                                if value.translation.width < 0  {
                                                    
                                                    if -value.translation.width > 180 && item.num != story.last!.num  {
                                                        story[item.num].offset = -(calculateWidth()+60)
                                                        scrolled += 1
                                                        
                                                    }
                                                    else    {
                                                        story[item.num].offset = 0
                                                        
                                                    }
                                                    
                                                    
                                                }
                                                else {
                                                    
                                                    if item.num > 0  {
                                                        if value.translation.width > 180    {
                                                            story[item.num - 1].offset = 0
                                                            scrolled -= 1
                                                        }
                                                        
                                                        else{
                                                                story[item.num - 1].offset = -(calculateWidth()+60)
                               
                                                        }
                                                        
                                                        
                                                    }
                                                    
                                                    
                                                }
                                                
                                                
                                            }
                                            
                                        })
                            )
                            }
                        }
                        
                        Spacer(minLength: 0)
                        
                        
                    }
                    
                }
                
                .frame(height: UIScreen.main.bounds.height/1.8)
                .padding(.horizontal,25)
                
                
                
                
                Spacer()
                
                
            }
            
        }
        
        .background(
            
            LinearGradient(gradient: Gradient(colors: [Color(#colorLiteral(red: 0.9568627477, green: 0.6588235497, blue: 0.5450980663, alpha: 1)), Color(#colorLiteral(red: 0.9254902005, green: 0.2352941185, blue: 0.1019607857, alpha: 1))]), startPoint: .top, endPoint: .bottom)
                .ignoresSafeArea(.all)
            
        )
        
        
        
        
        
        
    }
}




//Smaple Data

struct Story : Identifiable {
    var id = UUID()
    var image : String
    var offset : CGFloat
    var title : String
    var num : Int
}


var stories = [
    
    Story(image: "BlogImage1", offset: 0, title: "Jack the Persian and the Black Castel", num: 0),
    Story(image: "BlogImage2", offset: 0, title: "The Dreaming Moon", num: 1),
    Story(image: "BlogImage3", offset: 0, title: "Falen in Love", num: 2),
    Story(image: "BlogImage1", offset: 0, title: "Hounted Ground", num: 3)
    
    
]

func calculateWidth() -> CGFloat   {
    let screen = UIScreen.main.bounds.width - 30
    
    
    let width = screen - (2*30)
    
    return width
    
    
}
