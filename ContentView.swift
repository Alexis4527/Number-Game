//=============================================================================
// PROGRAMMER: Alexis Willey
// PANTHER ID: 6447592
//
// CLASS: COP4655
// SECTION: Your class section: RVC
// SEMESTER: The current semester: Fall 2025
//
// CERTIFICATION: I certify that this work is my own and that
// none of it is the work of any other person.
//=============================================================================


import SwiftUI

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
        VStack {
            Spacer()
                .frame(width: 140, height: 150, alignment: .center)

            HStack {
                
                Spacer()
                
                VStack {
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
                VStack {
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
           
            HStack {
                Button(action: {
                    LadybugNumber = Int.random(in: 1...999)
                    AntNumber = Int.random(in: 1...999)
                    GameNumber = Int.random(in: 1...999)
                    PlayCount += 1

                    if LadybugNumber > GameNumber {
                        winCountLadyBug += 1
                    }
                    if AntNumber > GameNumber {
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
        
            Text("Number of times played: \(PlayCount)")
                    
                    
                }
            }

    


#Preview {
    ContentView()
}
