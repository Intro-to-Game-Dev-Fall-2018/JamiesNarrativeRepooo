//Parts of the latter Day1 Script are borrowed from classmates. Thank you!

VAR bag = 0
VAR person = -1
VAR gamecount = 0


A Sunny day at Dana's house.
+ [Talk to Mom]
-> Momababy

=== Momababy
Dana: Mom! Look! God sent me a baby!
+[???]
-> what

=== what
Mom: ...Excuse me?
+[She's Kimmy]
-> Introd

=== Introd
Kimmy: ...
+[Next]
-> Noo

=== Noo
Mom: That... No, Dana. God did not send you a baby.
+[What?]
-> Nani

=== Nani
Dana: What do you mean...? You said God sends people babies sometimes! You told me that.
+[Next]
-> Nevermind

=== Nevermind
Mom: Well... nevermind what I said. It doesn’t apply to you. God isn’t about to send you a baby anytime soon, trust me.

+ [Why???] ->wish
= wish
Dana: What! Why? I wished for a baby, and he granted my wish. Isn’t it obvious?
+ [Next] ->where
= where
Mom: Where did you find this little girl? Honey, where’s your house?
+ [Next] ->noanswer
= noanswer
Kimmy: ...
+ [Next] ->parents
= parents
Mom: Kimmy, can you tell me where your parents are?
+ [Next] ->later
= later
Kimmy: I can go home later if I want...
+ [Outta Nowhere] ->nowhere
= nowhere
Dana: Well maybe God didn’t send her, but she came out of nowhere! Kimmy, you just... appeared, right? Where did you come from?
+ [Next] ->United
= United
Kimmy: Ferry Street... I untied myself from the porch so I could go for a walk...
+ [dang] ->dang
= dang
Dana: ...
+ [Next] ->gohome
= gohome
Mom: It’s ok deear, let’s go to your house Kimmy... you said it’s on Ferry Street? Your parents are probably worried.
+[Neighborhood] 
-> Neighborhood
=Neighborhood
Dana: I’m sorry... I thought God sent me a baby and I got so excited...
+ [Next] ->Name
= Name
Mrs.Munro:Oh, don’t worry. Thank you for finding Kimmy and walking her home. What's your name, dear?
+ [Dana] ->0_4
= 0_4
Dana:I’m Dana..
+ [Next] ->friendship
= friendship
Mrs.Munro: I don’t know many kids as responsible as you, walking Kimmy all the way home. I hope you two can be friends. I know Kimmy could learn a lot from you.
+ [Next] ->really
= really
Kimmy: My... friend?
+ [Yes!] ->0_5
= 0_5
Dana: Yes! I’d love to be friends, Kimmy. Can I come by and play with you tomorrow?
+ [Next] ->gran
= gran
Mrs.Munro: I’ve been looking for a babysitter, actually. Her grandma was helping with that before, but she... well, she can’t anymore.
+ [Next] ->porch
= porch
Mrs.Munro: Kimmy’s normally alright in her harness on the porch, but she’s getting a little old for that...
+ [Next] ->mulah
= mulah
Mrs.Munro: If you’d like to play with Kimmy tomorrow, I’d be happy to pay you a quarter to keep an eye on her.
+ [A career!] ->yesplz
= yesplz
Dana: Wow! Yes, please! I’d love to!
+ [Next] ->hectic
= hectic
Mrs.Munro: My work schedule is a little... hectic. It’d be great to have you by in the morning.
+ [Next] ->thx
= thx
Dana: I’ll be here first thing! Wow, I didn’t expect to land a job today. Thanks so much!
+ [Next] ->bounce
= bounce
Mom: Well, that all sounds good to me. A summer job will be a nice way to keep busy. Now then, let’s leave this nice family to their dinner.
+ [Bye] ->whoyou
= whoyou
Dana: Ok. Bye bye Kimmy, and Mrs...?
+ [Next] ->nicetomeet
= nicetomeet
Mrs.Munro: Mrs.Munro. Again, thank you for giving Kimmy a hand. It was nice meeting you, Mrs. Navarro.
+ [Next] ->yea
= yea
Mom: Likewise.
+ [Next] ->ees
= ees
Kimmy:Bye bye.

+ [I'll Come back tomorrow!]

-> MorningKimmy
=== MorningKimmy
The next day, you go to Kimmy's house. Kimmy is standing on the porch.

+ [Talk to Kimmy]
-> hiiiiKimmy
=== hiiiiKimmy
Dana: Mornin’ Kimmy! I’m here to babysit, like I promised! Is your mom around?
+[Next]
-> IsMom

=IsMom
Kimmy: My mommy’s not inside. She left already.
+[Next]
-> whattodo

= whattodo
Dana: Oh, ok… Um, well… Is there anything you’d like to do today, Kimmy?
+[Next]
->muji

=muji
Kimmy: No… I don’t know.
+[Next]
-> tomotachi

=tomotachi
Dana: That’s ok, do you have a friend you’d like to visit?
+[Next]
->tomotachinai

=tomotachinai
Kimmy: No...
+[Next]
-> television

=television
Dana: Should we watch TV or something in your house?
+[Next]
->MoreSuggestionsA

=MoreSuggestionsA
Kimmy: We don’t have a TV. 
+[Next]
-> MoreSuggestionsA2

=MoreSuggestionsA2
Kimmy: My dad is in there too, so we should go play somewhere else. He’s busy.
+[Next]
-> MoreSuggestions2

=MoreSuggestions2
Dana: Ok then! Want to walk around and play some games with the other kids?
+[Next]
->MoreSuggestions2A

=MoreSuggestions2A
Kimmy: Other kids…?
+[Next]
->OtherKids

= OtherKids
Dana: You know, the neighborhood kids. Like Donna. 
+[Next]
->OtherKids2

=OtherKids2
Dana: Isn’t she your age? You’re both going to be in Kindergarten, right?
+[Next]
->UghDonna

=UghDonna
Kimmy: Oh, yeah… I don’t think Donna is my friend though, so she probably wouldn’t want to play...
+[Next]
->EncourageKimmy

=EncourageKimmy
Dana: Well, let’s go become her friend! There's lots of other kids around, too. 
+[Next]
->EncourageKimmy0

=EncourageKimmy0
Dana: Like Anthony. I know him from school. Come on, let’s go!
+[Next]
->LetsGo

=LetsGo
Kimmy: ...!
+[Next]
-> VisitFriends

= VisitFriends
Where would you like to go?
+ [Store]
-> VisitStore

+ [Playground] 
~person = 0
-> MeetJimmy

+[Neighborhood]
~person = 1
-> MeetDonna


= MeetDonna
Kimmy: Hi Donna.
+[Next]
->MeetDonnaA

=MeetDonnaA
Donna: What happened, Kimmy?
+[Next]
->MeetDonnaA2

=MeetDonnaA2
Donna: Did you untie yourself from the porch again?
+[Next]
->MeetDonnaB

=MeetDonnaB
Kimmy: ...
+[I'm Babysitting]
->ExplainDonna

=ExplainDonna
Dana: Hi Donna! I’m babysitting Kimmy now, so--
+[Next]
->ExplainDonnaA

=ExplainDonnaA
Donna: So you untied Kimmy from the porch? 
+[Next]
-> ExplainDonnaA2

=ExplainDonnaA2
Donna: Better not let her parents catch you.
+[First of all..]
-> ExplainDonna2

=ExplainDonna2
Dana: First of all, I’m her babysitter.
+[Secondly..]
-> ExplainDonna20

=ExplainDonna20
Dana: Second, she’s perfectly able to untie herself. 
+[Next]
->ExplainDonna21

=ExplainDonna21
Dana: She’s too old for that thing now, even her mom thinks so.
+[Next]
->ExplainDonna2A

=ExplainDonna2A
Donna: She should probably stay on her porch. 
+[Next]
->ExplainDonna2B

=ExplainDonna2B
Donna: We’re the same age, but my mom takes me everywhere so I won’t get lost. 
+[Next]
->ExplainDonna2C

=ExplainDonna2C
Donna: I bet Kimmy would get lost if she wandered too far.
+[Next]
->ChangeSubject

=ChangeSubject
Dana: I don’t know about that. 
+[Next]
->ChangeSubject1

=ChangeSubject1
Dana: Anyways, I was just going to ask if you wanna play with us... 
+[Next]
->ChangeSubject2

=ChangeSubject2
Dana: but I feel like you're being mean to Kimmy.
+[Next]
->ChangeSubjectA

=ChangeSubjectA
Donna: Oh, no. I'm just being honest!
+[Next]
-> AskDonna

=AskDonna
Dana: Ok... well, I hope you two can get along, since you're neighbors... 
+[Next]
->AskDonna1

=AskDonna1
Dana: ... want to play a game with us?
+[Next]
->AskDonnaA

=AskDonnaA
Donna: Well, I’m trying to avoid Harold so it’s probably good to look busy. 
+[Next]
->AskDonnaB

=AskDonnaB
Donna: He keeps trying to tell me that my ears look childish. He is so snobby.
+[Next]
-> KimmyCompliment

=KimmyCompliment
Kimmy: I like your ears.
+[Next]
->KimmyCompliment2

=KimmyCompliment2
Donna: Oh, thanks. They’re new. Anyways, I wanna play a new game.
+[Next]
->CheckBag

= MeetJimmy
Jimmy: ...Hi Kimmy.
+[Next]
->MeetJimmyA

=MeetJimmyA
Kimmy: Hi Jimmy…
+[Next]
->MeetJimmyB

=MeetJimmyB
Dana: ...
+[Whats Dat]
-> ProdJimmy

= ProdJimmy
Dana: Whatcha reading there, Jimmy? Looks neat.
+[Next]
->ProdJimmyA

=ProdJimmyA
Jimmy: M-my comic… Archie...
+[Next]
->EncourageJimmy

=EncourageJimmy
Dana: Some of my friends at school read that! Did you get it at the bookstore?
+[Next]
->EncourageJimmyA

=EncourageJimmyA
Jimmy: Yeah!
+[Next]
->KimmyComic

=KimmyComic
Kimmy: I’ve never read a comic before.
+[Next]
->KimmyComicA

=KimmyComicA
Jimmy: Y-you can borrow one of mine whenever you like, Kimmy!
+[Next]
->KimmyComicA1

=KimmyComicA1
Jimmy: And then we can uh…
+[Next]
->KimmyComicB

=KimmyComicB
Jimmy: We can talk about it and pick our--our favorite characters!
+[Next]
->ComplimentJimmy

=ComplimentJimmy
Dana: Wow! That’s so nice of you, Jimmy! 
+[Next]
->ComplimentJimmy1

=ComplimentJimmy1
Dana: Guess you have a new friend, Kimmy!
+[Next]
->ComplimentJimmyA

=ComplimentJimmyA
Kimmy: I think… that sounds fun...
+[Next]
->ComplimentJimmyB

=ComplimentJimmyB
Jimmy: A-anytime, anytime… um…
+[Next]
-> ProdJimmyMore

=ProdJimmyMore
Dana: Say, are you free to play a game with us, Jimmy? 
+[Next]
->ProdJimmyMore1

=ProdJimmyMore1
Dana: We’ll teach you something new!
+[Next]
->ProdJimmyMoreA

=ProdJimmyMoreA
Jimmy: I’m not very good at games… b-but, if Kimmy wants me to...
+[Next]
->EncourageJimmy2

=EncourageJimmy2
Dana: I’m teaching Kimmy games and helping her make friends this summer.
+[Next]
->EncourageJimmy2A

=EncourageJimmy2A
Jimmy: If you’re learning games, can I play games with you on the playground sometimes too, Kimmy? 
+[Next]
-> EncourageJimmy2B

=EncourageJimmy2B
Jimmy: Once school starts?
+[Next]
-> KimmySpeaksToJimmy

=KimmySpeaksToJimmy
Kimmy: ...Ok. I don’t play much at school but I will with you if you want.
+[Next]
->KimmySpeaksToJimmyA

=KimmySpeaksToJimmyA
Jimmy: What! Oh! Yes… yes please…
+[Next]
-> CheckBag

=CheckBag
{ bag:
- 0: 	->EmptyBag 
- 1: 	->DiceGame
- 2: 	->RopeGame 
- 3:    ->ChalkGame
- 4:    ->PaperGame
}

= EmptyBag
Dana: Oh no! I’m sorry… 
+[Next] -> EmptyBag1

=EmptyBag1
Dana: I thought I had some stuff to play games with in my bag…
+[Next]
->EmptyBag2

=EmptyBag2
Dana: but it looks like I ran out.
+[Next]
->EmptyBagA

=EmptyBagA
Kimmy: Oh no...
+[Next]
-> ItsOk

=ItsOk
Dana: It’s ok! Kimmy, let’s run to the store and buy some game pieces! 
+[Next]
-> ItsOk2

=ItsOk2
We’ll be right back!
-> VisitFriends

=DiceGame
Dana: Okay, let's play Yahtzee then...
-> Yahtzee

=Yahtzee
Okay, I'll teach you how to play Yahtzee.
+[You need a twenty-sided die] You need a twenty-sided die
->Yahtzee2
+[You need 100 dice] You need 100 dice
->Yahtzee2
+[You need five dice] You need five dice
~gamecount += 1
->Yahtzee2

=Yahtzee2
Then, you have 
+[lots of ways to roll dice, but only some are quiet.] lots of ways to roll dice, but only some are quiet.
->Yahtzee3
+[five ways to toss the dice at your friend.] five ways to toss the dice at your friend.
->Yahtzee3
+[13 combinations of dice that you want to roll.] 13 combinations of dice that you want to roll.
~gamecount += 1
->Yahtzee3

=Yahtzee3
Now, you
+[take turns rolling the dice. Add them up to get points from certain combinations.]
take turns rolling the dice. Add them up to get points from certain combinations.
~gamecount += 1
->Yahtzee4
+[get points if you roll the dice and they don't make a sound.]get points if you roll the dice and they don't make a sound.
->Yahtzee4
+[get points if you catch the dice when your friend tries to roll them.]get points if you catch the dice when your friend tries to roll them.
->Yahtzee4

=Yahtzee4
You win if
+[you caught the most dice!]you caught the most dice!
->Evaluate
+[you rolled the quietest dice!]you rolled the quietest dice!
->Evaluate
+[you scored the most points!]you scored the most points!
~gamecount += 1
->Evaluate

=RopeGame
Okay, let's try tug-of-war then... 
-> Rope1

=Rope1
Okay, I'll teach you how to play tug-of-war.
+[You need a rope and a ribbon.]You need a rope and a ribbon.
~gamecount += 1
->Rope2
+[You need a rope and puddles.] You need a rope and puddles.
->Rope2
+[You need a rope and a staircase.] You need a rope and a staircase.
->Rope2

=Rope2
Then,
+[you each hold one end of the rope on a different side of the puddle.] you each hold one end of the rope on a different side of the puddle.
->Rope3
+[tie a ribbon around the middle of the rope, and mark the ground with two parallel goal lines.] tie a ribbon around the middle of the rope, and mark the ground with two parallel goal lines.
~gamecount +=1
->Rope3
+[you each hold one end of the rope, one at the top of the stairs and one at the bottom.] you each hold one end of the rope, one at the top of the stairs and one at the bottom.
->Rope3

=Rope3
Now,
+[the friend at the bottom of the stairs ties the rope around their waist.] 
->Rope4
+[you try to pull each other into the puddle using the rope.]
->Rope4
+[you can each hold one end of the rope, and tug as hard as you can.]
~gamecount += 1
->Rope4

=Rope4
You win if you
+[can pull the other friend to the top of the stairs using the rope] can pull the other friend to the top of the stairs using the rope
->Evaluate
+[can pull your friend into the puddle] can pull your friend into the puddle
->Evaluate
+[can pull the rope's ribbon across your side, where the marking's closest to you]can pull the rope's ribbon across your side, where the marking's closest to you 
~gamecount += 1
->Evaluate

=ChalkGame
Dana: Okay, let's play hopscotch then... 
-> HopScotch

=HopScotch
Dana: Okay, I'll teach you how to play hopscotch.
+[You need chalk and a rock.] You need chalk and a rock.
~gamecount += 1
-> HopScotch2
+[You need chalk and snacks.] You need chalk and snacks.
-> HopScotch2
+[You need chalk and eggs.] You need chalk and eggs.
-> HopScotch2

= HopScotch2
Dana: Then, 
+[count how many snacks you have and draw that many squares in a column using your chalk.] count how many snacks you have and draw that many squares in a column using your chalk.
-> HopScotch3
+[use your chalk to draw ten squares all in a column, with some rows containing two squares.] use your chalk to draw ten squares all in a column, with some rows containing two squares.
~gamecount += 1
-> HopScotch3
+[put the eggs on the ground and draw small squares around them] put the eggs on the ground and draw small squares around them 
-> HopScotch3

= HopScotch3
Dana: Now
+[each player takes turns hopping through the egg squares, trying not to squash them.] each player takes turns hopping through the egg squares, trying not to squash them.
-> HopScotch4
+[everyone hops through the squares all at once, trying to pick up snacks] everyone hops through the squares all at once, trying to pick up snacks
-> HopScotch4
+[toss the rock into a square and hop to the other end of the column, picking it up on your way back.]toss the rock into a square and hop to the other end of the column, picking it up on your way back.
~gamecount += 1
-> HopScotch4

= HopScotch4
Dana: You win if you
+[finish ten turns without breaking more than one egg.] finish ten turns without breaking more than one egg.
-> Evaluate
+[pick up the most snacks.] pick up the most snacks.
-> Evaluate
+[pick up the rock without falling or tossing it outside of the column ten times.]pick up the rock without falling or tossing it outside of the column ten times.
~gamecount += 1
->Evaluate

=Evaluate
{gamecount:
-4: 
~gamecount = 0
->EndGame
-3:~gamecount = 0
->Wrong
-2: ~gamecount = 0
->Wrong
-1: ~gamecount = 0
->Wrong
-0: ~gamecount = 0
->Wrong
}

= Wrong
Really? Are you sure you know how to play?
+[Try Again] -> CheckBag

=EndGame
Okay, that makes sense! 
+[One hour later]-> Play

= Play
{person:
-0: ->ThankJimmy
-1: ->ThankDonna
}

=PaperGame
Okay, let's try tic-tac-toe then... ->Paper1

=Paper1
Okay, I'll teach you how to play tic-tac-toe
+[You need to draw a dog] You need to draw a dog
->Paper2
+[You need to draw a grid]You need to draw a grid
~gamecount += 1
->Paper2
+[You need to draw a heart] You need to draw a heart
->Paper2

=Paper2
Then, you
+[draw cookies and the other draws cakes] draw cookies and the other draws cakes
->Paper3
+[draw X's, and the other draws O's] draw X's, and the other draws O's
~gamecount += 1
->Paper3
+[each draw your crush] each draw your crush 
->Paper3

=Paper3
Now,
+[take turns drawing your X's and O's]take turns drawing your X's and O's
~gamecount += 1
->Paper4
+[draw all your cookies and cakes as fast as you can for ten seconds] draw all your cookies and cakes as fast as you can for ten seconds
->Paper4
+[your friend guesses who your crush is]your friend guesses who your crush is 
->Paper4

=Paper4
You win if you
+[get three of your symbols in a row]get three of your symbols in a row
~gamecount += 1
->Evaluate
+[guess your friends crush]guess your friends crush
->Evaluate
+[drew more cookies or cakes within ten seconds] drew more cookies or cakes within ten seconds
->Evaluate

= ThankDonna
Donna: Kimmy loved that.
+[Next]
->ThankDonnaA

=ThankDonnaA
Donna: I’m surprised, normally you’re so quiet Kimmy.
+[Next]
->ThankDonnaB

=ThankDonnaB
Kimmy: Mom said it’s ok to be quiet.
+[Next]
->ItsOk20

=ItsOk20
Dana: That’s right! 
+[Next]
->ItsOk21

=ItsOk21
Dana: Games are a nice way to talk and play with your friends though, don’t you think?
+[Next]
->ItsOk22

=ItsOk22
Dana: Even quiet kids like games, I think, usually.
+[Next]
->ItsOk2A

=ItsOk2A
Kimmy: … Are we friends? I thought you were my babysitter.
+[Next]
-> OfCourse

=OfCourse
Dana: Yes! Of course we’re friends! 
+[Next]
->OfCourse1

=OfCourse1
Dana: I know we just met yesterday, but… that’s normal!
+[Next]
->OfCourseA

=OfCourseA
Kimmy: I always thought babysitters were more like parents.
+[Next]
-> ExplainKimmy

=ExplainKimmy
Dana: I can be your friend AND your babysitter.
+[Next]
->ExplainKimmy1

=ExplainKimmy1
Dana: We’re having fun playing games together, right?
+[Next]
->ExplainKimmy2

=ExplainKimmy2
Dana: That’s what friends do a lot of the time.
+[Next]
->ExplainKimmyA

=ExplainKimmyA
Dana: Anthony and I became friends by playing games together. 
+[Next]
->ExplainKimmyA2

=ExplainKimmyA2
Dana: We met playing kickball.
+[Next]
->WhatUWantDonna

=WhatUWantDonna
Donna: Anthony and his little sister Amber are…
+[Next]
->WhatUWantDonna1

=WhatUWantDonna1
Donna: annoying.
+[Next]
->WhatUWantDonna2

=WhatUWantDonna2
Donna: Don’t tell them I said that though…
+[Next]
->WhatUWantDonnaA

=WhatUWantDonnaA
Dana: Really? 
+[Next]
->WhatUWantDonnaB

=WhatUWantDonnaB
Dana: Anthony and I go to the same school and do sports together sometimes.
+[Next]
->WhatUWantDonnaC

=WhatUWantDonnaC
Dana: He’s way nicer than the other boys at my school.
+[Next]
->WhatUWantDonnaD

=WhatUWantDonnaD
Dana: I like him and Amber.
+[Next]
->DonnaSass

=DonnaSass
Donna: There’s no rule that says you have to like your classmates.
+[Next]
->DonnaSassA

=DonnaSassA
Dana: Yeah, I know… but Anthony is nice to me, so I like him.
+[Next]
->DonnaSass2

=DonnaSass2
Donna: Oooh, you like... Like him?
+[Next]
->DonnaSass2A

=DonnaSass2A
Dana: …I’m not going to answer that, Donna. 
+[Next]
->DonnaSass2A1

=DonnaSass2A1
Dana: Who I like is none of your business.
+[Next]
->VisitFriends

=ThankJimmy
Kimmy: You’re not bad at games Jimmy...
+[Next]
->ThankJimmy1

=ThankJimmy1
Kimmy: I think you were good.
+[Next]
->ThankJimmyA

=ThankJimmyA
Jimmy: Oh! Thank you…
+[Next]
->YesJimmy

=YesJimmy
Jimmy: Did you get those toys at the corner store, Dana?
+[Next]
-> YesJimmyA

=YesJimmyA
Dana: Yup! I had a little money saved up.
+[Next]
->YayJimmy

=YayJimmy
Jimmy: I save up my money for comics, but I’ve been saving up money for a Yo-yo lately.
+[Next]
->YayJimmyA

=YayJimmyA
Kimmy: I don’t have any money but my mom said that’s ok. 
+[Next]
->YayJimmyA1

=YayJimmyA1
Kimmy: I do sometimes wish I could buy more toys though...
+[Next]
->SurprisedJimmy

=SurprisedJimmy
Jimmy: You don’t get an allowance?
+[Next]
->SurprisedJimmyA

=SurprisedJimmyA
Kimmy: What’s an allowance?
+[Next]
-> Allowance

=Allowance
Dana: A little money that your parents give you every week, usually.
+[Next]
->AllowanceA

=AllowanceA
Kimmy: Oh…
+[Next]
->EncourageK2

=EncourageK2
Dana: Don’t worry, not everyone gets allowance, Kimmy. 
+[Next]
->EncourageK2A

=EncourageK2A
Dana: Friends are better than money anyways...
+[Next]
->EncourageK2B

=EncourageK2B
Dana: and we’re going to make lots of friends for you!
+[Next]
->EncourageKimmy2A

=EncourageKimmy2A
Kimmy: Ok…
+[Next]
->VisitFriends

= VisitStore
Dean: Hey, Kid.
+[Next]
->VisitStoreA

=VisitStoreA
Dana: Hi, Dean. This is Kimmy. I’m babysitting her now.
+[Next]
->DeanSpeaks

=DeanSpeaks
Dean: Well lookit that, aren’t you all grown up. 
+[Next]
->DeanSpeaks1

=DeanSpeaks1
Dean: You gettin’ paid?
+[Next]
->DeanSpeaksA

=DeanSpeaksA
Kimmy: My mom pays Dana a quarter a day.
+[Next]
->TellDean

=TellDean
Dana: That’s right! I’m here to buy some things…
+[Next]
->TellDean1

=TellDean1
Dana: I mean, I haven’t gotten paid yet. This is my first day.
+[Next]
->TellDean2

=TellDean2
Dana: But I have some money saved up!
+[Next]
->TellDeanA

=TellDeanA
Dean: Hah, I wish I had that kinda discipline.
+[Next]
->TellDeanB

=TellDeanB
Dean: I blew my budget on fabric last week.
+[Next]
->DanaPlan

=DanaPlan
Dana: I need to save up money. For college, you know!
+[Next]
->DanaPlan2

=DanaPlan2
Dana: My mom would get so mad if I didn’t plan ahead.
+[Next]
->DanaPlanA

=DanaPlanA
Dean: Hah! Your mom’s got the right idea.
+[Next]
-> DeanPlanB

=DeanPlanB
Dean: I wish I’d saved up for college.
+[Next]
-> ProdDean

= ProdDean
Dana: So what did you spend all your money on? Your sewing classes?
+[Next]
->ProdDeanA

=ProdDeanA
Dean: Nah, that’s over.
+[Next]
->ProdDeanB

=ProdDeanB
Dean: I’m workin’ on some Halloween costumes for my cousins…
+[Next]
->ProdDeanC

=ProdDeanC
Dean: and some new pants for myself.
->ProdDeanD

=ProdDeanD
Dean: You know, gotta apply those skills somehow.
+[Next]
->KimmyClothes

=KimmyClothes
Kimmy: I didn’t know people made clothes!
+[Next]
->KimmyClothesA

=KimmyClothesA
Dean: They do, Kimmy, they do.
+[Next]
->KimmyClothesB

=KimmyClothesB
Dean: I make sweaters, dresses, hats--you name it.
+[Next]
->SuggestDean

=SuggestDean
Dana: You should sell your clothes at Jordan Marsh! 
+[Next]
->SuggestDean1

=SuggestDean1
Dana:That’s where I always find the nicest clothes.
+[Next]
->SuggestDeanA

=SuggestDeanA
Dean: Hah! That’s a long ways off for me.
+[Next]
->SuggestDean2

=SuggestDean2
Dean: But maybe someday… anyways, what can I get for ya?
+ [Next] -> GameMenu

= GameMenu
What would you like to get?
+[Dice] You picked dice! -> dice
+[Jump Rope]  You picked jump rope! -> rope
+[Chalk]  You picked chalk! -> chalk
+[Pen and Paper] You picked pen and paper! -> paper

=dice
~bag = 1
+[Thank Dean and leave the store]
->ThankDean

=rope
~bag = 2
+[Thank Dean and leave the store]
->ThankDean

=chalk
~bag = 3
+[Thank Dean and leave the store]
->ThankDean

=paper
~bag = 4
+[Thank Dean and leave the store]
->ThankDean

=ThankDean
Dana: Thanks, Dean!
+[Next]
->ThankDeanA

=ThankDeanA
Kimmy: Thank you Mr. Dean!
+[Next]
->ThankDeanB

=ThankDeanB
Dean: Bye bye girls. Have fun.

+[Next]
->VisitFriends

->Done

=== Done
+[Play Again] -> Momababy
+[End here] -> DONE


-> END