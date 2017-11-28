
func numConvert(number: Int) -> String {
    var result = ""
    var num1 :[String] =  ["zero","one","two","three","four","five","six","seven","eight","nine","ten"]
    var num2 : [String] = ["","eleven","twelve","thirteen","fouteen","fifteen","sixteen","seventeen","eighteen","nineteen"]
    var num3 : [String] = ["","","twenty","thirty","fourty","fifty","sixty","seventy","eighty","ninety"]

    func convert(numb: Int) -> String {
        if(numb/100 != 0){
        result += num1[numb/100]
        }
        else if(numb == 10){
            result += num1[numb]
        }
        else if(numb%10 == 0 && numb/10 != 0) {
            result += num3[numb/10]
        }
        else if(numb%10 != 0 && numb/10 == 0){
            result += "and " + num1[numb%10]
        }
        else if( numb/10 == 1 ) {
            result += num2[numb%10]
        }
        else if(numb/10 >= 2){
            result = num3[numb/10] + " " + num1[numb%10]
        }
        
        return result
    }

    switch number {
    case 0...9 : result += num1[number];
    case 10...99 : convert(numb : number);
    case 100 ... 999 :result = num1[number/100] + " hundred " + convert(numb : number%100)
    case 1000 ... 9999 :result = num1[number/1000]+" thousand " + convert(numb : number%1000) + " hundred " + convert(numb : number%100)
    default : result += "Invalid"
    }
   return result
}

print(numConvert(number:2009))

