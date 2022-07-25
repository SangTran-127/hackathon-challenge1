import Array "mo:base/Array";
import List "mo:base/List";
actor Challange{
    // Challenge 1
    public query func add(number1 : Nat, number2: Nat) : async Nat {
      return number1 + number2
    };
    // Challenge 2
    public query func square(number : Nat) : async Nat {
      return (number * number);
    };
    // Challenge 3
    public query func days_to_second(days : Nat): async Nat{
      return (days * 24 * 60 * 60)
    };
    // Challenge 4
    var number = 10;
    public query func increment_counter(n: Nat) : async Nat {
      return number + n;
    };
    public func clear_counter() {
      number := 0;
    };
    // Challenge 5
    public query func divide(n : Nat, m : Nat) : async Bool {
      return (n % m == 0);
    };
    // Challenge 6 
    public query func is_even(number : Nat) : async Bool {
      return (number % 2 == 0)
    };
    // Challenge 7
    public query func sum_of_array(arr : [Nat]) : async Nat {
      var sum : Nat = 0;
      for (i in arr.vals()) {
        sum := sum + i;
      };
      return sum;
    };
    // Challenge 8 
    public query func maximum(arr : [Nat]) : async Nat {
      var max = arr[0];
      for (i in arr.vals()) {
        if (i >= max) {
          max := i;
        }
      };
      return max;
    };
    // Challenge 9
    public query func remove_from_array(arr : [Nat], n : Nat) : async [Nat] {
      var newArray : List.List<Nat> = List.nil<Nat>();
      for (i in arr.vals()) {
        if (i != n) {
          newArray := List.push(i, newArray);
        }
      };
      return List.toArray<Nat>(List.reverse<Nat>(newArray));
    };
    // Challenge 10 
    public query func selection_sort(arr : [Nat]) : async [Nat] {
      // chuyen tu mutable sang imutable
      let newArr : [var Nat] = Array.thaw(arr);
    var i : Nat = 0;
    var temp : Nat = 0;
    var n : Nat = newArr.size();
    while(i < n) {
      var i_temp = i;
      var j = i + 1;
      while(j < n) {
        if(newArr[j] < newArr[i_temp]) {
          i_temp := j;
        };
        j := j + 1;
      };
      // swapping 
      temp := newArr[i_temp];
      newArr[i_temp] := newArr[i];
      newArr[i] := temp;
      i := i + 1;
    };
    // chuyen ve lai tu imutable sang mutable
    return Array.freeze(newArr);
    }
};
