import SwiftUI
//set states and varibles
struct ContentView: View {
    @State private var GameNumber = Int.random(in: 1...999)
    @State private var winGame = 0
    @State private var resultGame = ""
    @State private var LadybugNumber = Int.random(in: 1...999)
    @State private var winCountLadyBug = 0
    @State private var resultTextLadyBug = ""
    @State private var AntNumber = Int.random(in: 1...999)
    @State private var winCountAnt = 0
    @State private var resultAnt = ""
    @State private var PlayCount = 0

    var body: some View {
        VStack { //main design stack
            Spacer()
                .frame(width: 140, height: 150, alignment: .center)

            HStack { //stack for the ladybug and ant sections
                
                Spacer()
                
                VStack { //stack for ladybug section
                    Text("Random Number")
                    Text("\(LadybugNumber)")
                    Image(systemName: "ladybug")
                        .padding(.all)
                        .scaleEffect(3.0)
                    Text("\(winCountLadyBug)")
                        .font(.largeTitle)
                        .fontWeight(.black)
                        .frame(width: 100, height: 100)
                }
                Spacer()
                VStack { //stack or any section
                    Text("Random Number")
                    Text("\(AntNumber)")
                    Image(systemName: "ant")
                        .padding(.all)
                        .scaleEffect(3.0)

                    Text("\(winCountAnt)")
                        .font(.largeTitle)
                        .fontWeight(.black)
                        .frame(width: 100, height: 100)
                }
                Spacer()
            }
           
            HStack { //stack for the button
                Button(action: {
                    LadybugNumber = Int.random(in: 1...999)
                    AntNumber = Int.random(in: 1...999)
                    GameNumber = Int.random(in: 1...999)
                    PlayCount += 1 //play count goes up 1 per click

                    if LadybugNumber > GameNumber { //if ladybug is higher then game add a point to ladybug
                        winCountLadyBug += 1
                    }
                    if AntNumber > GameNumber { //if ant is higher then game give a point to ant
                        winCountAnt += 1
                    }
                }) {
                    Image("PlayButton")
                        .resizable()
                        .frame(width: 100, height: 100)
                }
            }
            }
        HStack(spacing: 2) {
            ForEach(String(GameNumber).map { String($0) }, id: \.self) { digit in
                Image(digit)

            }
        }

            
            Spacer()
        
            Text("Number of times played: \(PlayCount)") //display playcount
                    
                    
                }
            }

    


#Preview {
    ContentView()
}
