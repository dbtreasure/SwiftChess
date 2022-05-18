//
//  Board.swift
//  SwiftChess
//
//  Created by Daniel Treasure on 5/17/22.
//

import SwiftUI

struct Board: View {
    var board: BoardViewModel = BoardViewModel()
    var body: some View {
        VStack {
            Spacer()
            VStack(spacing: 0) {
                HStack(spacing: 0) {
                    ForEach(board.getRank(rank: .eight), id: \.position) { square in
                        ZStack {
                            Rectangle()
                                .fill(square.color == SquareColor.light ? .white : .black)
                                .frame(width: 48, height: 48)
                                
                        }

                    }
                }
                HStack(spacing: 0) {
                    ForEach(board.getRank(rank: .seven), id: \.position) { square in
                        ZStack {
                            Rectangle()
                                .fill(square.color == SquareColor.light ? .white : .black)
                                .frame(width: 48, height: 48)
                        }

                    }
                }
                HStack(spacing: 0) {
                    ForEach(board.getRank(rank: .six), id: \.position) { square in
                        ZStack {
                            Rectangle()
                                .fill(square.color == SquareColor.light ? .white : .black)
                                .frame(width: 48, height: 48)
                        }

                    }
                }
                HStack(spacing: 0) {
                    ForEach(board.getRank(rank: .five), id: \.position) { square in
                        ZStack {
                            Rectangle()
                                .fill(square.color == SquareColor.light ? .white : .black)
                                .frame(width: 48, height: 48)
                        }

                    }
                }
                HStack(spacing: 0) {
                    ForEach(board.getRank(rank: .four), id: \.position) { square in
                        ZStack {
                            Rectangle()
                                .fill(square.color == SquareColor.light ? .white : .black)
                                .frame(width: 48, height: 48)
                        }

                    }
                }
                HStack(spacing: 0) {
                    ForEach(board.getRank(rank: .three), id: \.position) { square in
                        ZStack {
                            Rectangle()
                                .fill(square.color == SquareColor.light ? .white : .black)
                                .frame(width: 48, height: 48)
                        }

                    }
                }
                HStack(spacing: 0) {
                    ForEach(board.getRank(rank: .two), id: \.position) { square in
                        ZStack {
                            Rectangle()
                                .fill(square.color == SquareColor.light ? .white : .black)
                                .frame(width: 48, height: 48)
                        }

                    }
                }
                HStack(spacing: 0) {
                    ForEach(board.getRank(rank: .one), id: \.position) { square in
                        ZStack {
                            Rectangle()
                                .fill(square.color == SquareColor.light ? .white : .black)
                                .frame(width: 48, height: 48)
                        }

                    }
                }
                
            }
            .border(.black, width: 2)
            Spacer()
        }.background(.gray)
            .padding(.zero)
            .ignoresSafeArea()
        
    }
}

class BoardViewModel: ObservableObject {
    @Published private(set) public var squares:[Square] = []
    
    init() {
        squares.append(contentsOf: [
            // First rank
            Square(occupant: Piece(team: Team.white, type: PieceType.rook), position: SquarePosition.a1, color: SquareColor.dark, file: File.a, rank: Rank.one),
            Square(occupant: Piece(team: Team.white, type: PieceType.knight), position: SquarePosition.b1, color: SquareColor.light, file: File.b, rank: Rank.one),
            Square(occupant: Piece(team: Team.white, type: PieceType.bishop), position: SquarePosition.c1, color: SquareColor.dark, file: File.c, rank: Rank.one),
            Square(occupant: Piece(team: Team.white, type: PieceType.queen), position: SquarePosition.d1, color: SquareColor.light, file: File.d, rank: Rank.one),
            Square(occupant: Piece(team: Team.white, type: PieceType.king), position: SquarePosition.e1, color: SquareColor.dark, file: File.e, rank: Rank.one),
            Square(occupant: Piece(team: Team.white, type: PieceType.bishop), position: SquarePosition.f1, color: SquareColor.light, file: File.f, rank: Rank.one),
            Square(occupant: Piece(team: Team.white, type: PieceType.knight), position: SquarePosition.g1, color: SquareColor.dark, file: File.g, rank: Rank.one),
            Square(occupant: Piece(team: Team.white, type: PieceType.rook), position: SquarePosition.h1, color: SquareColor.light, file: File.h, rank: Rank.one),
            // Second rank
            Square(occupant: Piece(team: Team.white, type: PieceType.pawn), position: SquarePosition.a2, color: SquareColor.light, file: File.a, rank: Rank.two),
            Square(occupant: Piece(team: Team.white, type: PieceType.pawn), position: SquarePosition.b2, color: SquareColor.dark, file: File.b, rank: Rank.two),
            Square(occupant: Piece(team: Team.white, type: PieceType.pawn), position: SquarePosition.c2, color: SquareColor.light, file: File.c, rank: Rank.two),
            Square(occupant: Piece(team: Team.white, type: PieceType.pawn), position: SquarePosition.d2, color: SquareColor.dark, file: File.d, rank: Rank.two),
            Square(occupant: Piece(team: Team.white, type: PieceType.pawn), position: SquarePosition.e2, color: SquareColor.light, file: File.e, rank: Rank.two),
            Square(occupant: Piece(team: Team.white, type: PieceType.pawn), position: SquarePosition.f2, color: SquareColor.dark, file: File.f, rank: Rank.two),
            Square(occupant: Piece(team: Team.white, type: PieceType.pawn), position: SquarePosition.g2, color: SquareColor.light, file: File.g, rank: Rank.two),
            Square(occupant: Piece(team: Team.white, type: PieceType.pawn), position: SquarePosition.h2, color: SquareColor.dark, file: File.h, rank: Rank.two),
            // Third rank
            Square(occupant: nil, position: SquarePosition.a3, color: SquareColor.dark, file: File.a, rank: Rank.three),
            Square(occupant: nil, position: SquarePosition.b3, color: SquareColor.light, file: File.b, rank: Rank.three),
            Square(occupant: nil, position: SquarePosition.c3, color: SquareColor.dark, file: File.c, rank: Rank.three),
            Square(occupant: nil, position: SquarePosition.d3, color: SquareColor.light, file: File.d, rank: Rank.three),
            Square(occupant: nil, position: SquarePosition.e3, color: SquareColor.dark, file: File.e, rank: Rank.three),
            Square(occupant: nil, position: SquarePosition.f3, color: SquareColor.light, file: File.f, rank: Rank.three),
            Square(occupant: nil, position: SquarePosition.g3, color: SquareColor.dark, file: File.g, rank: Rank.three),
            Square(occupant: nil, position: SquarePosition.h3, color: SquareColor.light, file: File.h, rank: Rank.three),
            // Fourth rank
            Square(occupant: nil, position: SquarePosition.a4, color: SquareColor.light, file: File.a, rank: Rank.four),
            Square(occupant: nil, position: SquarePosition.b4, color: SquareColor.dark, file: File.b, rank: Rank.four),
            Square(occupant: nil, position: SquarePosition.c4, color: SquareColor.light, file: File.c, rank: Rank.four),
            Square(occupant: nil, position: SquarePosition.d4, color: SquareColor.dark, file: File.d, rank: Rank.four),
            Square(occupant: nil, position: SquarePosition.e4, color: SquareColor.light, file: File.e, rank: Rank.four),
            Square(occupant: nil, position: SquarePosition.f4, color: SquareColor.dark, file: File.f, rank: Rank.four),
            Square(occupant: nil, position: SquarePosition.g4, color: SquareColor.light, file: File.g, rank: Rank.four),
            Square(occupant: nil, position: SquarePosition.h4, color: SquareColor.dark, file: File.h, rank: Rank.four),
            // Fifth rank
            Square(occupant: nil, position: SquarePosition.a5, color: SquareColor.dark, file: File.a, rank: Rank.five),
            Square(occupant: nil, position: SquarePosition.b5, color: SquareColor.light, file: File.b, rank: Rank.five),
            Square(occupant: nil, position: SquarePosition.c5, color: SquareColor.dark, file: File.c, rank: Rank.five),
            Square(occupant: nil, position: SquarePosition.d5, color: SquareColor.light, file: File.d, rank: Rank.five),
            Square(occupant: nil, position: SquarePosition.e5, color: SquareColor.dark, file: File.e, rank: Rank.five),
            Square(occupant: nil, position: SquarePosition.f5, color: SquareColor.light, file: File.f, rank: Rank.five),
            Square(occupant: nil, position: SquarePosition.g5, color: SquareColor.dark, file: File.g, rank: Rank.five),
            Square(occupant: nil, position: SquarePosition.h5, color: SquareColor.light, file: File.h, rank: Rank.five),
            // Sixth rank
            Square(occupant: nil, position: SquarePosition.a6, color: SquareColor.light, file: File.a, rank: Rank.six),
            Square(occupant: nil, position: SquarePosition.b6, color: SquareColor.dark, file: File.b, rank: Rank.six),
            Square(occupant: nil, position: SquarePosition.c6, color: SquareColor.light, file: File.c, rank: Rank.six),
            Square(occupant: nil, position: SquarePosition.d6, color: SquareColor.dark, file: File.d, rank: Rank.six),
            Square(occupant: nil, position: SquarePosition.e6, color: SquareColor.light, file: File.e, rank: Rank.six),
            Square(occupant: nil, position: SquarePosition.f6, color: SquareColor.dark, file: File.f, rank: Rank.six),
            Square(occupant: nil, position: SquarePosition.g6, color: SquareColor.light, file: File.g, rank: Rank.six),
            Square(occupant: nil, position: SquarePosition.h6, color: SquareColor.dark, file: File.h, rank: Rank.six),
            // Seventh rank
            Square(occupant: Piece(team: Team.black, type: PieceType.pawn), position: SquarePosition.a7, color: SquareColor.dark, file: File.a, rank: Rank.seven),
            Square(occupant: Piece(team: Team.black, type: PieceType.pawn), position: SquarePosition.b7, color: SquareColor.light, file: File.b, rank: Rank.seven),
            Square(occupant: Piece(team: Team.black, type: PieceType.pawn), position: SquarePosition.c7, color: SquareColor.dark, file: File.c, rank: Rank.seven),
            Square(occupant: Piece(team: Team.black, type: PieceType.pawn), position: SquarePosition.d7, color: SquareColor.light, file: File.d, rank: Rank.seven),
            Square(occupant: Piece(team: Team.black, type: PieceType.pawn), position: SquarePosition.e7, color: SquareColor.dark, file: File.e, rank: Rank.seven),
            Square(occupant: Piece(team: Team.black, type: PieceType.pawn), position: SquarePosition.f7, color: SquareColor.light, file: File.f, rank: Rank.seven),
            Square(occupant: Piece(team: Team.black, type: PieceType.pawn), position: SquarePosition.g7, color: SquareColor.dark, file: File.g, rank: Rank.seven),
            Square(occupant: Piece(team: Team.black, type: PieceType.pawn), position: SquarePosition.h7, color: SquareColor.light, file: File.h, rank: Rank.seven),
            // Eight rank
            Square(occupant: Piece(team: Team.black, type: PieceType.rook), position: SquarePosition.a8, color: SquareColor.light, file: File.a, rank: Rank.eight),
            Square(occupant: Piece(team: Team.black, type: PieceType.knight), position: SquarePosition.b8, color: SquareColor.dark, file: File.b, rank: Rank.eight),
            Square(occupant: Piece(team: Team.black, type: PieceType.bishop), position: SquarePosition.c8, color: SquareColor.light, file: File.c, rank: Rank.eight),
            Square(occupant: Piece(team: Team.black, type: PieceType.queen), position: SquarePosition.d8, color: SquareColor.dark, file: File.d, rank: Rank.eight),
            Square(occupant: Piece(team: Team.black, type: PieceType.king), position: SquarePosition.e8, color: SquareColor.light, file: File.e, rank: Rank.eight),
            Square(occupant: Piece(team: Team.black, type: PieceType.bishop), position: SquarePosition.f8, color: SquareColor.dark, file: File.f, rank: Rank.eight),
            Square(occupant: Piece(team: Team.black, type: PieceType.knight), position: SquarePosition.g8, color: SquareColor.light, file: File.g, rank: Rank.eight),
            Square(occupant: Piece(team: Team.black, type: PieceType.rook), position: SquarePosition.h8, color: SquareColor.dark, file: File.h, rank: Rank.eight),
        ])
    }
    
    func getRank(rank: Rank) -> [Square] {
        return squares.filter({$0.rank == rank})
    }
}



struct Square {
    
    let occupant: Piece?
    let position: SquarePosition
    let color: SquareColor
    let file: File
    let rank: Rank
}

struct Piece {
    let team: Team
    let type: PieceType
}

enum Rank {
    case one
    case two
    case three
    case four
    case five
    case six
    case seven
    case eight
}

enum File {
    case a
    case b
    case c
    case d
    case e
    case f
    case g
    case h
}

enum Team {
    case white
    case black
}

enum PieceType {
    case pawn
    case rook
    case knight
    case bishop
    case queen
    case king
}

enum SquareColor {
    case light
    case dark
}

public enum SquarePosition: String {
    case a1 = "a1"
    case a2 = "a2"
    case a3 = "a3"
    case a4 = "a4"
    case a5 = "a5"
    case a6 = "a6"
    case a7 = "a7"
    case a8 = "a8"
    case b1 = "b1"
    case b2 = "b2"
    case b3 = "b3"
    case b4 = "b4"
    case b5 = "b5"
    case b6 = "b6"
    case b7 = "b7"
    case b8 = "b8"
    case c1 = "c1"
    case c2 = "c2"
    case c3 = "c3"
    case c4 = "c4"
    case c5 = "c5"
    case c6 = "c6"
    case c7 = "c7"
    case c8 = "c8"
    case d1 = "d1"
    case d2 = "d2"
    case d3 = "d3"
    case d4 = "d4"
    case d5 = "d5"
    case d6 = "d6"
    case d7 = "d7"
    case d8 = "d8"
    case e1 = "e1"
    case e2 = "e2"
    case e3 = "e3"
    case e4 = "e4"
    case e5 = "e5"
    case e6 = "e6"
    case e7 = "e7"
    case e8 = "e8"
    case f1 = "f1"
    case f2 = "f2"
    case f3 = "f3"
    case f4 = "f4"
    case f5 = "f5"
    case f6 = "f6"
    case f7 = "f7"
    case f8 = "f8"
    case g1 = "g1"
    case g2 = "g2"
    case g3 = "g3"
    case g4 = "g4"
    case g5 = "g5"
    case g6 = "g6"
    case g7 = "g7"
    case g8 = "g8"
    case h1 = "h1"
    case h2 = "h2"
    case h3 = "h3"
    case h4 = "h4"
    case h5 = "h5"
    case h6 = "h6"
    case h7 = "h7"
    case h8 = "h8"
    
    var description: String {
        return String(describing: self)
    }
}

struct Board_Previews: PreviewProvider {
    static var previews: some View {
        Board()
    }
}
