//
//  ContentView.swift
//  RockPaperScissors
//
//  Created by drewdev on 6/9/23.
//

// Each turn of the game the app will randomly pick either rock, paper, or scissors.
// Each turn the app will alternate between prompting the player to win or lose.
// The player must then tap the correct move to win or lose the game.
// If they are correct they score a point; otherwise they lose a point.
// The game ends after 10 questions, at which point their score is shown.

import SwiftUI

struct ContentView: View {
    let moves = ["🪨", "🗞️", "✂️"]
    
    @State private var computerChoice = Int.random(in: 0..<3)
    @State private var shouldWin = Bool.random()
    @State private var score = 0
    @State private var questionCount = 1
    @State private var showingResults = false
    
    
    var body: some View {
        VStack {
            Spacer()
            
            Text("Computer has played...")
                .font(.headline)
            
            Text(moves[computerChoice])
                .font(.system(size: 200))
            
            if shouldWin {
                Text("Which one wins?")
                    .foregroundColor(.green)
                    .font(.title)
            } else {
                Text("Which one loses?")
                    .foregroundColor(.red)
                    .font(.title)
            }
            
            HStack {
                ForEach(0..<3) { number in
                    Button(moves[number]) {
                        play(choice: number)
                    }
                    .font(.system(size: 80))
                }
            }
            
            Spacer()
            
            Text("Score: \(score)")
                .font(.subheadline)
            
            Spacer()
        }
        .alert("Game over", isPresented: $showingResults) {
            Button("Play Again", action: reset)
        } message: {
            Text("Your score was \(score).")
        }
    }
    
    func play(choice: Int) {
        let winningMoves = [1, 2, 0]
        let didWin: Bool
        
        if shouldWin {
            didWin = choice == winningMoves[computerChoice]
        } else {
            didWin = winningMoves[choice] == computerChoice
        }
        
        if didWin {
            score += 1
        } else {
            score -= 1
        }
        
        if questionCount == 10 {
            showingResults = true
        } else {
            computerChoice = Int.random(in: 0..<3)
            shouldWin.toggle()
            questionCount += 1
        }
    }
    
    func reset() {
        computerChoice = Int.random(in: 0..<3)
        shouldWin = Bool.random()
        questionCount = 0
        score = 0
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
