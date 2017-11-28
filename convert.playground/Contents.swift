func convertNum (number: Int) -> String {
    var result = ""
    var sNum = String(number)
    var count = sNum.count
    var out = [Int] ()
    var num1 :[String] =  ["","one","two","three","four","five","six","seven","eight","nine","ten"]
    var num2 : [String] = ["ten","eleven","twelve","thirteen","fouteen","fifteen","sixteen","seventeen","eighteen","nineteen"]
    var num3 : [String] = ["","ten","twenty","thirty","fourty","fifty","sixty","seventy","eighty","ninety"]
    var num4 : [String] = [""," hundred ","thousand"]
    
            func convert (num: Int) -> Int {
            var div = num
                    for _ in 2 ... 2 {
                        div = div/(10)
                    }
                return div
            }
            
                        func twoDigit (numb: Int) -> String {
                            if(numb/10 == 1){
                               return num2[numb%10]
                            }
                            else {
                                 return num3 [convert(num : numb)] + num1 [numb%10]
                            }
                        }
    
                        func threeDigit (tNum: Int) -> String {
                            var cond = ""
                            cond += (tNum/100 == 0) ? num4[0] : num4[1]
                            return num1[tNum/100] + cond + twoDigit(numb: tNum%100)
                        }
            
    
    if (count == 1 )
    {
        result += (number != 0) ? num1[number] : "zero"
    }
    else if (count == 2 )
    {
        result += twoDigit(numb: number)
    }
    else if(count == 3 )
    {
        count = count-1;
        result += threeDigit(tNum: number)
    }
    else if (count == 4)
    {
        result += num1[number/1000] + " thousand " + threeDigit(tNum: number%1000)
    }
    else if (count == 5)
    {
        result += twoDigit(numb: number/1000) + " thousand " + threeDigit(tNum : number%1000)
    }
    return result
}

print(convertNum (number: 610092))
