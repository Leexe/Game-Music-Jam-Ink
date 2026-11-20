-> new_interview

=== new_interview === 

Who to call? 

* Laila, the assistant. 
-> asst_interview 

* Naismith, the lawyer. 
-> lawyer_interview

* Mitch, the chauffeur. 
-> driver_greet

* The chief. I know who to arrest. 
-> chief_convince
/* 

Beginning of Lawyer Interview 

*/ 

=== lawyer_interview ===

PROTAG: What do you know about... 

* ...the missing car?
-> LAWYER_CAR
  
* ...the safe?
 -> LAWYER_SAFE

* ...the knife?
  -> LAWYER_KNIFE

* ...her appointment with you?
  -> LAWYER_APPT

* You know what, nevermind. Thanks for all your help.
-> new_interview

=== LAWYER_CAR === 
NAISMITH: Lumina's car is missing? I never did like that chauffeur of hers. Mitch. He has a criminal record, you know. 
PROTAG: Interesting. Thank you. 

->lawyer_interview

=== LAWYER_SAFE === 
NAISMITH: I imagine she kept important documents in it. I've never been to her house; I wouldn't know. 
->lawyer_interview

=== LAWYER_KNIFE === 
NAISMITH: Knife? I wouldn't touch her knives with a 20-foot pole. They're not even made of stainless steel. 
->lawyer_interview

== LAWYER_APPT === 
NAISMITH: We had an appointment yesterday, that's true. The nature of what we discussed is private due to attorney-client privilege, I'm sure you can understand.
->lawyer_interview

/* 

Beginning of assistant interview 

*/
=== asst_interview === 

PROTAG: What do you know about... 
* ...Lumina's appointment with her lawyer?
-> asst_appt 

* The missing car?
-> asst_car 

* The safe?
-> asst_safe

* the knife?
-> asst_knife

* You know what, nevermind. Thanks for all your help.

-> new_interview
=== asst_appt === 
LAILA: I didn’t know she had an appointment with Ned. When was this?
PROTAG: Yesterday.
LAILA: Strange. She usually tells me everything. 
PROTAG: Noted. 
-> asst_interview 
=== asst_car === 
LAILA: She left yesterday afternoon with the car. She came back without it. You’d have to ask Mitch, her driver. 
-> asst_interview 
=== asst_safe === 
LAILA: She keeps everything important in there. 

PROTAG: Like what?

LAILA: Her will, deed to the house, those kinds of things. 

PROTAG: Would you happen to know the combination?

LAILA: It’s 4-3-9-1. 
(Add SAFE COMBINATION to the Notepad.)
-> asst_interview 
=== asst_knife === 
LAILA: I saw that this morning. 

PROTAG: You were here this morning?

LAILA: Yes, I was reporting to work. I was eating breakfast. I came in through the back door. 

PROTAG: And?

LAILA: And I noticed the knife was missing. Then the chief found me and led me out. 
-> asst_interview 

/* 

Beginning of driver interview 

*/

=== driver_greet === 
PROTAG: Hello, Mr. Ackleman. 
-> driver_interview 

=== driver_interview === 
PROTAG: What do you know about... 

* ...the missing car?
-> dr_car
  
* ...the safe?
 -> dr_safe

* ...the knife?
  -> dr_knife

* ...her appointment with her lawyer?
  -> dr_appt

* You know what, nevermind. Thanks for all your help.
-> new_interview
=== dr_car === 
MITCH: Is that what this is about? I swear I didn’t have anything to do with it. 
PROTAG: Do with what?
MITCH: Totalling the car. 
PROTAG: Who totalled Ms. Wainwright’s car?
MITCH: Well, she did. After she left yesterday afternoon. She came home and said it was a wreck and I may as well go home. 
PROTAG: Then?
MITCH: I left. In my car.
PROTAG: Noted. Thank you. 

-> driver_interview 

=== dr_appt ===
MITCH: Is that where she went yesterday? 
PROTAG: That does seem to be the case, Mr. Ackleman. 
MITCH: I never trusted him. I met the guy once when he came over. Real piece of work. Practically drooled all over Lumina, too. She never paid him any attention, though, beyond what was polite. 
-> driver_interview 

=== dr_safe === 
MITCH: Oh, I don’t know. She spent a lot of time in her office. Ask Laila. 
PROTAG: Thank you.
-> driver_interview 

=== dr_knife === 
MITCH: Lumina-- sorry, Ms. Wainwright-- had these cheap knives she got from somewhere. She said they weren't really for cooking. 
PROTAG: Then what were they for?
MITCH: Self defense? She always did think she was like a girl from one of the movies. 

-> driver_interview 

/* 
Convince the chief to arrest someone
*/ 

=== chief_convince === 
PROTAG: Hi, Chief. I think I found our suspect. 
CHIEF: Lay it out for me. 
PROTAG: I think it's the...
* The lawyer. 
-> law_ev
* The assistant. 
-> asst_ev
* The chauffeur. 
-> dr_ev

=== law_ev ===
CHIEF: Why do you think it's the lawyer?
PROTAG: He had a vested interest in Ms. Wainwright's affairs. She was run off the road after leaving his office yesterday, after having a secret appointment she didn't want anyone to know about. And he lied to me. 
CHIEF: He lied?
PROTAG: He said he's never been here before. But he commented on the quality of her kitchen knives. And the chauffeur said he met the guy at the house before. 
CHIEF: Smart eye, detective. What's his motive?
PROTAG: I think he was interested in her and she rejected him. And now that she's gone, he's the one in charge of her money. 
CHIEF: Rejection can lead a man to do crazy things. Especially when he decides if he can't take her money one way, he'll do it the other. Alright, detective. I'll bring him in. Do you have any evidence?
PROTAG: That camera you gave me takes some very interesting photographs. 
-> arrest_sequence 

=== asst_ev === 
CHIEF: Why do you think it's the assistant?
PROTAG: She was here this morning when you got here. She claimed not to know about an appointment Ms. Wainwright had, even though she must've seen her leave. 
CHIEF: A woman showing up to do her job is hardly damning. 
PROTAG: How do you explain her having the combination to the safe?
CHIEF: She works for the woman. Anyway, if she wanted what was in the safe, she could've stolen it herself while Ms. Wainwright was out. Do better, detective. 
-> END

=== dr_ev === 
CHIEF: Why do you think it's the chauffeur?
PROTAG: He has no alibi for last night and claims to have let Ms. Wainwright drive herself to an appointment, after which she crashed her car. Hardly doing his job. And according to Mr. Naismith, he has a criminal record. 
CHIEF: No one could have an alibi given the absolute torrential downpour we all suffered. And ol' Mitch just has a charge for drunken and disorderly for peeing on a fire hydrant a couple years back. Do better, detective. 
-> END 

=== arrest_sequence === 

PROTAG: Ned Naismith, despite his many years in the profession, did not practice in criminal court and got the full sentence for first-degree murder with the help of those photographs. 
-> END 

