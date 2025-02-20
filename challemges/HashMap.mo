import HashMap "mo:base/HashMap";
import Text "mo:base/Text";

actor Challenge {

    // Creating a HashMap to store favorite numbers
    let favoriteNumber = HashMap.HashMap<Text, Nat>(10, Text.equal, Text.hash);

    // Function to check if the user is anonymous
    public func is_anonymous(user: Text) : async Bool {
        return user == "" or user == "anonymous";
    };

    // Function to add favorite number and prevent overwriting
    public func add_favorite_number_v2(user: Text, n: Nat) : async Text {
        switch (favoriteNumber.get(user)) {
            case (?_) { 
                return "You've already registered your number"; 
            };
            case (null) { 
                favoriteNumber.put(user, n);
                return "You've successfully registered your number"; 
            };
        };
    };

    // Function to show the favorite number
    public func show_favorite_number(user: Text) : async ?Nat {
        return favoriteNumber.get(user);
    };

}
