import Debug "mo:base/Debug";
import Float "mo:base/Float";
persistent actor Project{
 // var greeting = "Hello UCC";
 // Debug.print(greeting);
  //Decentralize banking system
  //CheckBalance, TopUp, WithDraw
  //Checkbalance
  stable var balance : Float = 100;
  public func checkbalance(): async Text{
    return "Your balance is :" # Float.toText(balance)
  };

// TopUp Function
public func TopUp(amount : Float): async Text {
  balance :=balance + amount;
  return "An amount : " # Float.toText(amount) # "added";
}
};


