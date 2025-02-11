actor Bank {

// Private variable to store account balance
private var balance: Nat = 0;

// Function to deposit funds
public func deposit(amount: Nat): async () {
balance += amount;
};

// Function to withdraw funds (if sufficient balance exists)
public func withdraw(amount: Nat): async Bool {
if (amount <= balance) {
balance -= amount;
return true;
} else {
return false;
};
};

// Function to check the balance
public query func getBalance(): async Nat {
return balance;
};

// Function to reset balance to zero
public func resetBalance(): async () {
balance := 0;
};
};
