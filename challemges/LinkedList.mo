// import List "mo:base/List";

// actor Challenge {

//     public type List<T> = ?(T, List<T>);

//     // Check if the list is empty
//     public func is_null<T>(l: List<T>) : async Bool {
//         switch (l) {
//             case (null) return true;
//             case (_) return false;
//         };
//     };

//     // Get the last element of the list
//     public func last<T>(list: List<T>) : async ?T {
//         switch (list) {
//             case (null) { return null };
//             case (?(element, null)) { return ?element };
//             case (?(element, next_list)) { return last<T>(next_list) };
//         };
//     };

//     // Get the element at a specific index (0-based index)
//     public func get<T>(list: List<T>, n: Nat) : async ?T {
//         switch (list) {
//             case (null) { return null };
//             case (?(element, next_list)) {
//                 if (n == 0) {
//                     return ?element;
//                 } else {
//                     return get<T>(next_list, n - 1);
//                 };
//             };
//         };
//     };

//     // Get the element before a given value
//     public func previous<T>(list: List<T>, value: T) : async ?T {
//         switch (list) {
//             case (null) { return null };
//             case (?(element, null)) { return null };  // No previous element in a single-node list
//             case (?(element, ?(next_element, next_list))) {
//                 if (next_element == value) {
//                     return ?element;
//                 } else {
//                     return previous<T>(?(next_element, next_list), value);
//                 };
//             };
//         };
//     };

//      // Reverse the linked list (Single function implementation)
//     public func reverse<T>(list: List<T>) : List<T> {
//         var curr = list;
//         var prev : List<T> = null;

//         while (curr != null) {
//             switch (curr) {
//                 case (?(element, next_list)) {
//                     curr := next_list;
//                     prev := ?(element, prev);
//                 };
//             };
//         };

//         return prev;
//     };
// }
