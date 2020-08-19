print("あなたの名前:", terminator:"")
if let name = readLine() {              //文字列を入力して文字コードの和を作る
  let chars = name.filter{ !$0.isWhitespace }
  let v = chars.unicodeScalars.reduce(0){ $0 &+ $1.value }
  print("\(name)さんは、")
  for(elm, val) in analyzer(Int(v)) {
    print(" \(elm):\(val)%", terminator:"")
  }
  print("でできています。")
}