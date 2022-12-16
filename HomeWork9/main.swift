//
//  main.swift
//  HomeWork9
//
//  Created by Жаннэт on 11/12/22.
//

import Foundation

print("Hello, World!")

var totalBag : [[String?]] = [[String?]]()

var arrmass : [String?] = []

var cost = 0

var quantity = 0

//

func bazaTovarov(answer: String){

    if answer == "yes"{

        print("ВВЕДИТЕ НАЗВАНИЕ ТОВАРА:")

        let nazvanie = readLine()

        print("ВВЕДИТЕ ПРОИЗВОДИТЕЛЯ ТОВАРА:")

        let proizvoditel = readLine()

        print("ВВЕДИТЕ ВЕС ТОВАРА:")

        let ves = readLine()

        print("ВВЕДИТЕ ШТРИХКОД ТОВАРА:")

        let shtrihcode = readLine()

        print("ВВЕДИТЕ ЦЕНУ ТОВАРА:")

        var cena:String? = readLine()

        print("ВВЕДИТЕ СКИДКУ ТОВАРА:")

        let skidka:String? = readLine()

        print("ВВЕДИТЕ НАЛИЧИЕ ТОВАРА:")

        let nalichie:String? = readLine()

        

        if skidka != nil{

            let b = (Int(cena ?? " ") ?? 0)!  * (Int(skidka ?? " ") ?? 0)! / 100

            cena = "\((Int(cena ?? " ") ?? 0)! - b)"

        }

        //

        

        cost += Int(cena ?? " ") ?? 0

        arrmass.append(nazvanie);

        arrmass.append(proizvoditel);

        arrmass.append(ves);

        arrmass.append(shtrihcode);

        arrmass.append(cena);

        arrmass.append(skidka);

        arrmass.append(nalichie)

        //

        if nalichie == ""{

            quantity+=0

        }else{

            quantity+=1

        }

        //

        for i in 0..<arrmass.count{

            if arrmass[i] == ""{

                arrmass[i] = nil

            }}

        //

        

        print(arrmass)

        totalBag.append(arrmass)

        arrmass = []




        }

  }

bazaTovarov(answer: "yes")

print("hotite prodoljit? (yes/no)")

var answerr = readLine()!




if answerr == "yes"{

    repeat{

        bazaTovarov(answer: "yes")

        print("hotite prodoljit?")

        answerr = readLine()!

    }while answerr != "no"

}

if answerr == "no"{

    print("ВСЕ ТОВАРЫ:\(totalBag)")

    print("ИТОГОВАЯ СУММА : \(cost)")

    print("ВСЕГО ПРОДУКТОВ : \(quantity)")

}



var hp = [1000, 1000, 1000, 1500]
var bossHp = 5000
var round = 0
var a = ""
var damage = [0,0,0,0,0]
var finStat = ["Воин ","Колдун ", "Медик ", "Танк ","Босс "]

repeat{

round += 1

hp[0] -= (200 - 100)
hp[1] -= (200 - 100)
hp[2] -= (200 - 100)
hp[3] -= (200 - 100)
bossHp -= (200 + 300 + 100)

    damage[0] += 200;damage[1] += 300
damage[2] += 400
damage[3] += 100
damage[4] += 800

finStat[0] += "200 "
finStat[1] += "300 "
finStat[2] += "400 "
finStat[3] += "100 "
finStat[4] += "800 "

} while bossHp >= 0 && (hp[0] >= 0 && hp[1] >= 0 && hp[2] >= 0 && hp[3] >= 0)

print(round)
print(finStat[0])
print(finStat[1])
print(finStat[2])
print(finStat[3])
print(finStat[4])
print(damage)
print(hp, bossHp)
