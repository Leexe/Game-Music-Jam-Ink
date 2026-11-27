-> new_interview

=== new_interview === 

Who to call? 

+ [Laila, the assistant.]
-> asst_interview 

+ [Naismith, the lawyer.]
-> lawyer_interview

+ [Mitch, the chauffeur.]
-> driver_greet

+ [The chief. I know who to arrest.]
-> chief_convince

+ [Put down the phone.]
-> END

/* 

Beginning of Lawyer Interview 

*/ 

=== lawyer_interview ===

PROTAG: What do you know about... #call_Naismith

+ ...the missing car? #call_Naismith
-> LAWYER_CAR
  
+ ...the safe? #call_Naismith
 -> LAWYER_SAFE

+ ...the knife? #call_Naismith
  -> LAWYER_KNIFE

+ ...her appointment with you? #call_Naismith
  -> LAWYER_APPT

+ You know what, nevermind. Thanks for all your help. #call_Naismith
-> new_interview

=== LAWYER_CAR === 
NAISMITH: Lumina's car is missing? I never did like that chauffeur of hers. Mitch. He has a criminal record, you know. #call_Naismith
PROTAG: Interesting. Thank you. #call_Naismith

->lawyer_interview

=== LAWYER_SAFE === 
NAISMITH: I imagine she kept important documents in it. I've never been to her house; I wouldn't know. #call_Naismith
->lawyer_interview

=== LAWYER_KNIFE === 
NAISMITH: Knife? I wouldn't touch her knives with a 20-foot pole. They're not even made of stainless steel. #call_Naismith
->lawyer_interview

== LAWYER_APPT === 
NAISMITH: We had an appointment yesterday, that's true. The nature of what we discussed is private due to attorney-client privilege, I'm sure you can understand. #call_Naismith
->lawyer_interview

/* 

Beginning of assistant interview 

*/
=== asst_interview === 

PROTAG: What do you know about... #call_Laila
+ ...Lumina's appointment with her lawyer? #call_Laila
-> asst_appt 

+ The missing car? #call_Laila
-> asst_car 

+ The safe? #call_Laila
-> asst_safe

+ the knife? #call_Laila
-> asst_knife

+ You know what, nevermind. Thanks for all your help. #call_Laila

-> new_interview
=== asst_appt === 
LAILA: I didn’t know she had an appointment with Ned. When was this? #call_Laila
PROTAG: Yesterday. #call_Laila
LAILA: Strange. She usually tells me everything. #call_Laila
PROTAG: Noted. #call_Laila
-> asst_interview 
=== asst_car === 
LAILA: She left yesterday afternoon with the car. She came back without it. You’d have to ask Mitch, her driver. #call_Laila
-> asst_interview 
=== asst_safe === 
LAILA: She keeps everything important in there. #call_Laila

PROTAG: Like what? #call_Laila

LAILA: Her will, deed to the house, those kinds of things. #call_Laila

PROTAG: Would you happen to know the combination? #call_Laila

LAILA: It’s 4-3-9-1. #call_Laila
(Add SAFE COMBINATION to the Notepad.)
-> asst_interview 
=== asst_knife === 
LAILA: I saw that this morning. #call_Laila

PROTAG: You were here this morning? #call_Laila

LAILA: Yes, I was reporting to work. I was eating breakfast. I came in through the back door. #call_Laila

PROTAG: And? #call_Laila

LAILA: And I noticed the knife was missing. Then the chief found me and led me out. #call_Laila
-> asst_interview 

/* 

Beginning of driver interview 

*/

=== driver_greet === 
PROTAG: Hello, Mr. Ackleman. #call_Mitch
-> driver_interview 

=== driver_interview === 
PROTAG: What do you know about... #call_Mitch

+ ...the missing car? #call_Mitch
-> dr_car
  
+ ...the safe? #call_Mitch
 -> dr_safe

+ ...the knife? #call_Mitch
  -> dr_knife

+ ...her appointment with her lawyer? #call_Mitch
  -> dr_appt

+ You know what, nevermind. Thanks for all your help. #call_Mitch
-> new_interview
=== dr_car === 
MITCH: Is that what this is about? I swear I didn’t have anything to do with it. #call_Mitch
PROTAG: Do with what? #call_Mitch
MITCH: Totalling the car. #call_Mitch
PROTAG: Who totalled Ms. Wainwright’s car? #call_Mitch
MITCH: Well, she did. After she left yesterday afternoon. She came home and said it was a wreck and I may as well go home. #call_Mitch
PROTAG: Then? #call_Mitch
MITCH: I left. In my car. #call_Mitch
PROTAG: Noted. Thank you. #call_Mitch

-> driver_interview 

=== dr_appt ===
MITCH: Is that where she went yesterday? #call_Mitch
PROTAG: That does seem to be the case, Mr. Ackleman. #call_Mitch
MITCH: I never trusted him. I met the guy once when he came over. Real piece of work. Practically drooled all over Lumina, too. She never paid him any attention, though, beyond what was polite. #call_Mitch
-> driver_interview 

=== dr_safe === 
MITCH: Oh, I don’t know. She spent a lot of time in her office. Ask Laila. #call_Mitch
PROTAG: Thank you. #call_Mitch
-> driver_interview 

=== dr_knife === 
MITCH: Lumina-- sorry, Ms. Wainwright-- had these cheap knives she got from somewhere. She said they weren't really for cooking. #call_Mitch
PROTAG: Then what were they for? #call_Mitch
MITCH: Self defense? She always did think she was like a girl from one of the movies. #call_Mitch

-> driver_interview 

/* 
Convince the chief to arrest someone
*/ 

=== chief_convince === 
PROTAG: Hi, Chief. I think I found our suspect. #call_Chief
CHIEF: Lay it out for me. #call_Chief
PROTAG: I think it's the... #call_Chief
+ The lawyer. #call_Chief
-> law_ev
+ The assistant. #call_Chief
-> asst_ev
+ The chauffeur. #call_Chief
-> dr_ev

=== law_ev ===
CHIEF: Why do you think it's the lawyer? #call_Chief
PROTAG: He had a vested interest in Ms. Wainwright's affairs. She was run off the road after leaving his office yesterday, after having a secret appointment she didn't want anyone to know about. And he lied to me. #call_Chief
CHIEF: He lied? #call_Chief
PROTAG: He said he's never been here before. But he commented on the quality of her kitchen knives. And the chauffeur said he met the guy at the house before. #call_Chief
CHIEF: Smart eye, detective. What's his motive? #call_Chief
PROTAG: I think he was interested in her and she rejected him. And now that she's gone, he's the one in charge of her money. #call_Chief
CHIEF: Rejection can lead a man to do crazy things. Especially when he decides if he can't take her money one way, he'll do it the other. Alright, detective. I'll bring him in. Do you have any evidence? #call_Chief
PROTAG: That camera you gave me takes some very interesting photographs. #call_Chief
-> arrest_sequence 

=== asst_ev === 
CHIEF: Why do you think it's the assistant? #call_Chief
PROTAG: She was here this morning when you got here. She claimed not to know about an appointment Ms. Wainwright had, even though she must've seen her leave. #call_Chief
CHIEF: A woman showing up to do her job is hardly damning. #call_Chief
PROTAG: How do you explain her having the combination to the safe? #call_Chief
CHIEF: She works for the woman. Anyway, if she wanted what was in the safe, she could've stolen it herself while Ms. Wainwright was out. Do better, detective. #call_Chief
-> END

=== dr_ev === 
CHIEF: Why do you think it's the chauffeur? #call_Chief
PROTAG: He has no alibi for last night and claims to have let Ms. Wainwright drive herself to an appointment, after which she crashed her car. Hardly doing his job. And according to Mr. Naismith, he has a criminal record. #call_Chief
CHIEF: No one could have an alibi given the absolute torrential downpour we all suffered. And ol' Mitch just has a charge for drunken and disorderly for peeing on a fire hydrant a couple years back. Do better, detective. #call_Chief
-> END 

=== arrest_sequence === 

PROTAG: Ned Naismith, despite his many years in the profession, did not practice in criminal court and got the full sentence for first-degree murder with the help of those photographs. 
-> END 

