=== Bartender ===
Well now, that's a face I haven't seen before. #d_bartender
Welcome to my bar, traveler. #d_bartender
Truth be told, you arrived at a rather convenient time. #d_bartender
There is a small matter that's been troubling me lately. #d_bartender
You see that lighthouse on the little island just across from town? #d_bartender
The keeper there and I had ourselves quite the argument some years back. #d_bartender
We haven't spoken since. #d_bartender
But lately the light hasn't been shining quite right. #d_bartender
And the seas around here have been getting rougher by the day. #d_bartender
I may be a stubborn old fool, but I still worry about the guy. #d_bartender

+ [You want me to check on him?] #d_bartender
    Aye, that's exactly it. -> Bartender_Accepted

+ [Not right now] #d_bartender
    Fair enough. Come back if you change your mind. #d_bartender
    -> END


=== Bartender_Accepted ===
Just go see if the old keeper is still alive and kicking. #d_bartender
And... tell him I was asking about him. #d_bartender
Don't go twisting my words though. #d_bartender
I ain't apologizing yet. #d_bartender
I'll be right here when you get back. #d_bartender
-> END


=== Bartender_Return ===
// ~ temp can_advance = CanAdvanceQuest("bartender_check_lighthouse")
Back already? #d_bartender
Did you see the lighthouse keeper? #d_bartender

// + {can_advance} [Yes, I checked on him.] #d_bartender
+ [Yes, I checked on him.] #d_bartender
    Good... good. -> Bartender_Resolved

+ [Not yet.] #d_bartender
    No rush, friend. #d_bartender
    Just come back once you've had a look. #d_bartender
    -> END


=== Bartender_Resolved ===
So he's still alive then? #d_bartender
Heh. Stubborn fellow. #d_bartender
But you say he's exhausted... #d_bartender
That lighthouse work isn't easy, especially with these storms rolling in. #d_bartender
You've done me a kindness today, traveler. #d_bartender
Here, take this bobber. #d_bartender #sfx_reward
Caught plenty of fish with it back in my younger days. #d_bartender
Consider it a thank-you from an old bartender. #d_bartender
-> END


=== Bartender_Finished ===
Back again, eh? #d_bartender
Thanks for checking on the old keeper for me. #d_bartender
-> END