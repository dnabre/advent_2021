module Main where
import System.Environment
import System.Exit
import Text.Printf
import Data.List.Split
import Data.List
import Data.Char
import qualified Data.IntSet as IntSet
import qualified Data.Set as Set
import qualified Data.Map as Map
import qualified Data.MultiSet as MultiSet


-- Advent of Code 2021
-- Day 15
--  part 1 solution: 
--  part 2 solution: 

day15_answers = (0, 0)


part_1_test::[Char]
part_1_test = "../day15/aoc_15_test_1.txt"
part_2_test::[Char]
part_2_test = "../day15/aoc_15_test_2.txt"
part_1_input::[Char]
part_1_input = "../day15/aoc_15_part_1.txt"
part_2_input::[Char]
part_2_input = "../day15/aoc_15_part_2.txt"

part1 ::  String
part1 =  do
            printf "\n   Part 1    Solution: %s" answer1   
                where
                    answer1 = "undefined"

part2 ::  String
part2 =  do
            printf "\n   Part 2    Solution: %s" answer2   
                where
                    answer2 = "undefined"


        
           
getStringVals :: FilePath -> IO [String]
getStringVals path = do 
                        contents <- readFile path
                        return  (lines contents)

string2int::[Char]->Int               
string2int = r
    where 
        r:: [Char] -> Int
        r = read

rowString2list :: [Char] -> [Int]
rowString2list xs = map string2int (filter (\x->x /= "") $ splitOn " " xs)

splitEmptyLine::[[Char]]->([[Char]],[[Char]])
splitEmptyLine ls = splitEmptyLine' ls []
    where
        splitEmptyLine' ("":xs) p =  (reverse p,xs)
        splitEmptyLine' (x:xs) p = splitEmptyLine' xs (x:p)

-- Look at advent 2023, day 17 for similair search task

main :: IO()
main = do 
            printf "Advent of Code 2021, Day 15:\n"
            vals1 <- getStringVals part_1_input
            vals2 <- getStringVals part_2_input
    
         
            let answer1 = part1 
            putStrLn answer1
            

            let answer2 = part2 
            putStrLn answer2

            printf "\n---                 done                 ---\n"
        







