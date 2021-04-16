void main () {
  var deck = new Deck();
 
//   print(deck);
  
  deck.printCards();
  
}
// this is a collection of cards
class Deck {
  // collection of 52 playing cards
  List<Card> cards = [];
  
  Deck () {
    //create 52 cards and assign it to the cards field
    List<String> ranks = ["Ace", "Two","Three","Four","Five","Six"];
    List<String> suits = ["Spade","Clubs","Hearts","Diamonds"];
    
    // nested for loop
//     for( int i = 0; i< suits.length; i++) {
//       for(int j =0; j< ranks.length; j++ ){
//         //create a new Card and add it to cards
//         var card = new Card(suits[i], ranks[j]);
//         cards.add(card);
        
//       }
//     }
    for(var suit in suits){
      for(var rank in ranks){
        
        var card = new Card(suit,rank);
        cards.add(card);
        
      }
    }
//     for(int i= 0;i<suits.length; i++){
//       var suit = suits[i];
//     }
  }
  
  void printCards() {
    print(cards);
  }
  
  @override
  String toString() {
    return "It is a deck";
  }
  
  
}
class Card {
  // represents the rank such as Ace, Queen, Jack
  String rank;
  // represents the suit such as Spade, Club
  String suit;
  
  Card(this.suit, this.rank);
  
  @override
 String toString(){
   return "$rank of $suit";
  }
  
  
}
