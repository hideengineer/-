public struct RandGenerator : RandomNumberGenerator{
  private var rnd: UInt64    //その時の乱数の計算結果
  
  init(seed:Int) {        //乱数の初期値を与える
    rnd = UInt64(seed)
    for _ in 0 ..< 10 { _ = self.next()}
  }

  public mutating func next() -> UInt64 {
    rnd = (rnd &* 10777) &+ 13577 ;  //混合合同法
    return rnd
  }
  
}