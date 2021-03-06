/*
* Copyright (C) 2018  Ennemoser Ernst <ernenn@gmail.com>
* 
* This program is free software: you can redistribute it and/or modify
* it under the terms of the GNU General Public License as published by
* the Free Software Foundation, either version 3 of the License, or
* (at your option) any later version.
* 
* This program is distributed in the hope that it will be useful,
* but WITHOUT ANY WARRANTY; without even the implied warranty of
* MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
* GNU General Public License for more details.
* 
* You should have received a copy of the GNU General Public License
* along with this program.  If not, see <http://www.gnu.org/licenses/>.
*/
using Game.Board;
using App.Configs;

namespace Game.AI {

    public class GameAI {
       
        public void initialize_game(GameBoard game_board) {

            for (int i = 0; i < 3; i++) {
                for (int j = 0; j < 3; j++) {
                    game_board.board[i,j] = Constants.INITIAL_BOARD_STATE;                
                }
            }            
        }

        public bool win() {
            if (Constants.WIN_CONDITION == 2)
                return true;
            else
                return false;
        } 

        public bool loosing_game() {
            return false;
        }
    }
}