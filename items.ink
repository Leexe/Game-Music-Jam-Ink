-> items 

=== items === 

+ [The love letter.] #items 
-> love_letter

+ [The coat.] #items 
-> coat_item

+ [The astrology book.] #items 
-> ast_book 

+ [The plate of unfinished food.] #items 
-> food_item

+ [The business card. ]
-> ned_card 

=== love_letter === 

You can tell that this envelope was never opened. #LL
It reads: #LL 

Dearest Mina, #LL
My affection for you grows by the day, both in size and strength. 
I begin to fear that it may overcome me completely. 
I enjoy our time together but wish that you would acknowledge 
that I want more. I'll do anything. You know I support your every
endeavor. You mean so much to me. Can't you see? It feels so 
obvious. Yet you deny me. I don't know what I'll do if things
go on like this. Please. #LL

With deepest fondness, #LL
your faithful servant #LL

+ Finish reading. #LL
-> items 

=== coat_item === 

The coat appears to have mud splattered on it with a tear in the fabric. #coat 
It is still damp. Lumina must have worn this yesterday. #coat
You search the pockets and find... a letter. #coat 
Read it? #coat
+ Yes. #coat 
-> love_letter 

+ No. 
-> items 

=== ast_book === 

It's an astrology book. It's open on the pages for Leo. #ast_book
You see "August 8th, 1964," written at the bottom of one of the pages.  #ast_book 
That must have been her birthday.  #ast_book
Take a picture of it? #ast_book
+ Yes.  #ast_book
-> items. 

+ No.  #ast_book
-> items

=== food_item === 

You examine the plate of unfinished food. Gingerly, you touch it. It's still ever so slightly
warm. Someone ate here this morning before leaving in a hurry. #food 
+ Finish looking. #food 
-> items 

=== ned_card === 

You examine the business card. It has an appointment time written on the back. You're not sure who it's from. #bus_card

Take a picture of it? #bus_card
* Yes. #bus_card 
-> items. 

* No. #bus_card 
-> items. 






