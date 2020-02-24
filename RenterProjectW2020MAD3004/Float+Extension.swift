import Foundation

extension Float 
{
  func currency() -> String
  {
  let s = String.init(format: "$%.2f", self)
          return s
  }
}