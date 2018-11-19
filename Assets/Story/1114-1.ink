Kimmy
+ [Start Game] -> Start





=== Start ===
Late 1960s, Massachusetts.

Your mom is standing on the porch.

You found a little girl standing outside on the streets.

+ [Talk to Mom]
-> Mom1

=== Mom1
Mom! Look! God sent me a baby!
...Excuse me?
Her name is Kimmy!
-> Kimmy1

= Kimmy1
+ [It seems that Kimmy has something to say.]
...
(Kimmy remains silent.)
-> Nope


= Nope
* {X} [...] -> Y
* {not X} [...] -> X

= X
That… No, Dana. God did not send you a baby.

What do you mean…? You said God sends people babie sometimes! You told me that.

Well… nevermind what I said. It doesn’t apply to you. God isn’t about to send you a baby anytime soon, trust me.

What! Why? I wished for a baby, and he granted my wish. Isn’t it obvious?

Where did you find this little girl? Honey, where’s your house?
-> Kimmy1

= Y
Kimmy, can you tell me where your parents are?

I can go home later if I want…

Well maybe God didn’t send her, but she came out of nowhere! Kimmy, you just… appeared, right? Where did you come from?

Ferry Street... I untied myself from the porch so I could go for a walk…

+[How strange] -> Odd

= Odd
It’s ok dear, let’s go to your house Kimmy… you said it’s on Ferry Street? Your parents are probably worried.

+[Head to Kimmy's house] 

-> KimmysHouse


== KimmysHouse ===
Dana:			I’m sorry… I thought God sent me a baby and I got so excited…
KimmyMom:			Oh, don’t worry. Thank you for finding Kimmy and walking her home. What's your name, dear?
+ [My name is Dana] ->A_1
= A_1
Dana:			I’m Dana…
KimmyMom:			I don’t know many kids as responsible as you, walking Kimmy all the way home. I hope you two can be friends. I know Kimmy could learn a lot from you.
Kimmy:			My… friend?
+ [A friend!] ->A_2
= A_2
Dana:			Yes! I’d love to be friends, Kimmy. Can I come by and play with you tomorrow?
KimmyMom:			I’ve been looking for a babysitter, actually. Her grandma was helping with that before, but she… well, she can’t anymore.
KimmyMom:			Kimmy’s normally alright in her harness on the porch, but she’s getting a little old for that…
KimmyMom:			If you’d like to play with Kimmy tomorrow, I’d be happy to pay you a quarter to keep an eye on her.
+ [A career!] ->A_3
= A_3
Dana:			Wow! Yes, please! I’d love to!
KimmyMom:			My work schedule is a little… hectic. It’d be great to have you by in the morning.
Dana:			I’ll be here first thing! Wow, I didn’t expect to land a job today. Thanks so much!
Mom:			Well, that all sounds good to me. A summer job will be a nice way to keep busy. Now then, let’s leave this nice family to their dinner.
Dana:			Ok. Bye bye Kimmy, and Mrs...?
KimmyMom:			Mrs. Munro. Again, thank you for giving Kimmy a hand. It was nice meeting you, Mrs. Navarro.
Mom:			Likewise.
Kimmy:			Bye bye.


+ [I'll Come back tomorrow! ] 
-> B_1


=== B_1
Dana:           Mornin’ Kimmy! I’m here to babysit, like I promised! Is your mom around?
Kimmy:          My mommy’s not inside. She left already.
Dana:           Oh, ok… Um, well… Is there anything you’d like to do today, Kimmy?
Kimmy:          No… I don’t know.
- (B_List)
* [Visit some friends?]
Dana:           That’s ok, do you have a friend you’d like to visit?
Kimmy:          No...
-> B_List
* [Let's watch TV!]
Dana:           Should we watch TV or something in your house?
Kimmy:          We don’t have a TV. My dad is in there too, so we should go play somewhere else. He’s busy.
->B_List
* [We can go outside!] 
-Dana:          Ok then! Want to walk around and play some games with the other kids?
Kimmy:          Other kids…?
Dana:           You know, the neighborhood kids. Like Donna. Isn’t she your age? You’re both going to be in Kindergarten, right?
Kimmy:          Oh, yeah… I don’t think Donna is my friend though, so she probably wouldn’t want to play...
Dana:           Well, let’s go become her friend! There's lots of other kids around, too. Like Anthony. I know him from school.
Kimmy:          ...
* [Lets Go]
Dana:           Come on, let’s go!
Kimmy:          ...!
-> map



=== map ===
Where to next?
+ [Downtown] 
-> downtown

+ [Kimmy's Street] 
-> ferry_street

 + [The Playground]
 -> Playground
        
 + [Home]
 -> Home




=== downtown ===

    + [Talk to the boy reading comics] -> Comic_Boy
    + [Talk to the Excited-looking Girl] -> Excited_Girl
    + [Talk to the Man wearing a scarf] -> Scarf_Man
    + [Go back to Map] -> map
    = Comic_Boy
        This person doesn't want to talk to you right now. Maybe you should go to another part of town.
        -> downtown

    = Excited_Girl
        This person doesn't want to talk to you right now. Maybe you should go to another part of town.
        -> downtown
        

    = Scarf_Man
        This person doesn't want to talk to you right now. Maybe you should go to another part of town.
        -> downtown






=== ferry_street ===
+ [Talk to Dean]
-> Dean

+ [Talk to Kimmy's mom (End the day)]
->EndTheDay

+ [Map]
-> map

= Dean
            Dean: Hey, Kid.
            Dana: Hi, Dean. This is Kimmy. I’m babysitting her now.
            Dean: Well lookit that, aren’t you all grown up. You gettin’ paid?
            + [Yes I am] -> Answer
        = Answer
            Kimmy: My mom pays Dana a quarter a day.
            Dana: That’s right! I’m here to buy some things… I mean, I haven’t gotten paid yet. This is my first day. But I have some money saved up!
            Dean: Hah, I wish I had that kinda discipline. I blew my budget on fabric last week.
            + [Save that college fund] -> PlanShare
        = PlanShare
            Dana: I need to save up money. For college, you know! My mom would get so mad if I didn’t plan ahead.
            Dean: Hah! Your mom’s got the right idea. I wish I’d saved up for college.
            + [What did you do with your money?] -> Inquire
        = Inquire
            Dana: So what did you spend all your money on? Your sewing classes?
            Dean: Nah, that’s over. I’m workin’ on some Halloween costumes for my cousins… and some new pants for myself. You know, gotta apply those skills somehow.
            Kimmy: I didn’t know people made clothes!
            + [wha] -> KimmySurprise
        = KimmySurprise 
            Dean: They do, Kimmy, they do. I make sweaters, dresses, hats--you name it.
            Dana: You should sell your clothes at Jordan Marsh! That’s where I always find the nicest clothes.
            Dean: Hah! That’s a long ways off for me. But maybe someday… anyways, what can I get for ya?
            
            + [ Check the Store ] -> Store
            + [ Return to ferry street ] -> ferry_street
            
            = Store
                
                + { not BuyGame} [ Buy Game ] 
                      -> BuyGame
                      
                + { BuyGame } [ Buy Game ] 
                        -> AlreadyBought
                        
                + [ Leave ] -> Leave
                
                    = Leave
                        Dana: Cya Later!
                        + [ Return to ferry street ] -> ferry_street
                    
                    = BuyGame
                        Alright, I'll take this game!
                        -> Store
                    = AlreadyBought
                        I already bought a game!
                        -> Store





=== Playground ===

   + {not BlytheGame} [Talk to Blythe] -> Blythe
    + {BlytheGame} [Talk to Blythe again] -> BlytheFriend
    
    + {not LindaGame}[Talk to Linda] -> Linda
    + {LindaGame}[Talk to Linda again] -> LindaFriend
    
   + [Go back to Map] -> map

= Blythe
                    Kimmy looks really frightened of Blythe.
                    
                    Kimmy: P-please go away...
                    + [ you better back up ] -> SupportKimmy
                = SupportKimmy
                    Dana: Blythe, knock it off! I’m a babysitter so you can’t bug me anymore, got it?
                    Blythe: Poor Dana. Poor Kimmy. You can’t get away from me! I’m the bicycle lord.
                    Blythe: I’ll only stop following you if you play a game with me.
                    + [I'm not playing] -> RefuseGame
                = RefuseGame
                    Dana: No.
                    Blythe: Yes.
                    Dana: Fine.
                    Blythe: That’s right.
                    + [Play Game] -> BlytheGame
            
        = BlytheFriend
                    Kimmy: I didn’t know bullies liked games.
                    Blythe: Shut up, Kimmy.
                    Blythe: I’m not thaaaat evil. I found a newt this morning and slipped it into Janey’s purse, but I could have dropped it down her dress… but I’m nice, I wouldn’t do that.
                    + [Thats both wack] -> ConfrontBlythe
                = ConfrontBlythe
                    Dana: That’s… neither of those options are nice, Blythe.
                    Blythe: I just like to mess with girls. But I take games seriously. So you better play with me some more, you little brat.
                    + [DONT TALK TO HER LIKE THAT] -> ProtectKimmy
                = ProtectKimmy
                    Dana: Don’t talk that way to Kimmy!
                    Dana: You’re mean to girls. I’ve seen you chasing girls around the neighborhood. It’s bad and you’re going to get in trouble with the adults.
                    Blythe: Quiet Kimmy alone and tied up on the porch.. How much did you pay Dana to be your friend anyways?
                    Kimmy: I don’t have any friends.
                    + [ Friendship then ] -> DeclareFriendship
                = DeclareFriendship
                    Dana: I’m her friend and babysitter, but it’s none of your business anyways.
                    Kimmy: ...
                    + [ stop being mean!! ] -> FaceBlythe
                = FaceBlythe
                    Dana: Don’t be mean to Kimmy, or I’ll really get mad. I’ll… tell your mom that you were being rude!
                    Blythe: Haha, yeah right. I’ll be nice but only if you and Kimmy play more games with me.
                    + [ hells nah ] -> Reject
                = Reject
                    Dana: Uh, no. We might play games with you, but not just so you’ll be nice. Maybe we can teach you some manners.
                    Blythe: I’m gonna win, win, win!
                    + [ Return to Playground ] -> Playground
            
        = BlytheGame
                    Some time passes...
                    
                    Blythe: I love that game. Haha, what a rush.
                    + [you can be happy??] -> ExpressSurprise
                = ExpressSurprise
                    Dana: Well… that was nice. I’m surprised you hadn’t played before though, Blythe. You always brag about how good you are at games, and how you know so many.
                    Kimmy: I wanna know more games than Blythe!
                    + [ That's the spirit,Kimmy! ] -> SupportKimmy1
                = SupportKimmy1
                    Dana: Haha, that’s the spirit!
                    Blythe: Pfft. Good luck. I’m gonna go catch bugs later. That’s better than games.
                    + [ Return to Playground ] -> Playground
                    
                    

          
= Linda 
 Kimmy: Hi Linda... I haven’t seen you in a while.
                Linda: I went to visit my auntie right when school ended.
                + [Let's talk!] -> talktolinda
            = talktolinda
                Dana: Hi, Linda. Do you know Kimmy?
                Linda: We’re neighbors.
                Kimmy: Did you go far away?
                Linda: Auntie’s in Boston.
                Kimmy: That sounds far...
                + [It's not that far, Kimmy] -> ReassureKimmy
            = ReassureKimmy
                Dana: It’s not so far. You can even ride your bike there. Sometimes my sisters and I go. We like to go explore all the clothes shops. Like Filene's.
                Linda: I don’t really go shopping, unless it’s for stuffed animals.
                Kimmy: Dana is babysitting me, so she can go shopping with the quarters my mom gives her!
                + [Kimmy is proud of having me!] -> Proud
            = Proud
                Linda: Oh, having a job is good. When I’m a little older I want to get one at an animal shelter or something. I like playing with dogs.
                Kimmy: I love dogs.
                Dana: We’re looking for people to play games with. Want to play a game with us, Linda?
                Linda: I guess so. I was playing with Donna earlier, but I could play some more.
                + [ Play Game with Linda ] -> LindaGame
                + [ Leave to playground ] -> Playground
        
        = LindaGame
            Dana: We did it!
            Linda: I usually only play games with my dad or brothers, but that was fun.
            + [ Kimmy feels thankful] -> Kimmythanks
            = Kimmythanks
                Kimmy: Th--thanks for playing with us, Linda.
                Linda: I’m going to visit my auntie again in a few weeks, so I’ll see if maybe she’ll want to learn {3}... thanks for teaching it to me.
                + [Thanks Linda] -> ThankLinda
            = ThankLinda
                Dana: Oh, thank you Linda. You’re a good student!
                Linda: I like to learn stuff. I’m glad it’s summer break though… we never get assigned anything fun in school. But my auntie gave me some biology books to read and it’s really fun.
                + [hmmm?] -> Confused
            = Confused
                Kimmy: What’s… biology?
                Linda: It’s about studying living stuff like plants and animals, and people sometimes too.
                Dana: I hope I get to take biology soon. I like math and science classes a lot.
                Kimmy: If I could study dogs, I think I’d be happy...
                -> Playground
            
        = LindaFriend
            Dana: Where does your auntie do her biology stuff?
            Linda: She works with animals at Stoneham Zoo.
            + [ Whoa ] -> ExpressEnthusiasm
            = ExpressEnthusiasm
                Dana: Whoa! That place is amazing!
                Kimmy: What’s a zoo?
                Linda: You’ve really never been to a zoo, Kimmy?
                Kimmy: No…
                + [It’s ok, Kimmy.] -> AnswerKimmy
            =AnswerKimmy
                Dana: It’s ok, Kimmy. A zoo is a place where you can see wild animals. Like elephants and stuff.
                Kimmy: I thought that’s what a circus was?
                Linda: Animals in a circus are more like performers. They do tricks and stuff.
                Linda: Animals in a zoo are studied by scientists, like my aunt.
                + [I think I’d get a little nervous..] -> ExpressConcern
            = ExpressConcern
                Dana: I think I’d get a little nervous around the bigger animals. I’d want to work with the small ones--like penguins.
                Linda: She loves it. But she’s stressed a lot too. She’s working on her degree in Biology right now at college and she’s really busy.
                + [Kimmy is very excited] -> KimmyResponse
            = KimmyResponse
                Kimmy: Your auntie sounds amazing… I don’t even know what I want to do when I grow up.
                Linda: My auntie told me not to pick my career until I’m older, because I might find something else I like to do in high school. But I think I’ll still want to work with animals like she does.
                + [My dad is an engineer...] -> mahdad
            = mahdad
                Dana: My dad is an engineer, so sometimes I think that would be an interesting job, but I like a lot of other things too. I love fashion.
                Kimmy: I like… candy. I wonder if I can make candy when I grow up…
                Linda: Auntie says I can do anything, so I bet you can make candy. That’s someone’s job somewhere.
                + [Share Dream] -> ShareDream
            = ShareDream
                Dana: Actually, I think I want to be a mom.
                Kimmy: I love moms.
                Linda: I want to be a dog mom.
                Dana: I’m afraid of dogs…
                Linda: Dogs are just as afraid of you. If you’re nice to them, you have nothing to worry about.
                Dana: What if one is chasing me?
                Linda: If a dog chases me, I stop and pet it.
                + [Kimmy has something to say] -> KimmyOpinion
            = KimmyOpinion
                Kimmy: There’s no mean dogs...
                Dana: I got chased once and had to climb a tree to escape… I guess I’ll try petting next time.
                -> Playground







=== Home ===

    + [Talk to Mom] -> Mom
    + [Talk to Harvey] -> Harvey
    + [Go back to Map] -> map
    = Mom
          This person doesn't want to talk to you right now. Maybe you should go to another part of town.
        -> Home
    
    = Harvey
        This person doesn't want to talk to you right now. Maybe you should go to another part of town.
        -> Home





=== EndTheDay ===

* [Kimmy's Mom.]
-> Munro1

= Munro1
Dana:			Mrs. Munro? I'm here to drop Kimmy off.
Kimmy's mom:			Welcome back, girls.
Dana:			We had a good time today!
Kimmy's mom:			There you are Kimmy. Wonderful Dana, thank you so much… you’re such a great help. I really…
Kimmy's mom:			Oh, where is it? Work was so busy but I swear I didn't forget...
Kimmy's mom:			Here we go. Your quarter, Dana.

* Thank you so much!
-> Munro2

=Munro2
Dana:			May I come again tomorrow?
Kimmy:			Yes!
Kimmy's mom:			It would be a great help, if you could.

* [Goodbyeee!]
-> Munro3

=Munro3
Dana:			Ok, see you tomorrow!
Mom:			There you are.
Dana:			Mom!
Mom:			I was just stopping by the corner store to grab some milk. Are you done babysitting Kimmy?

* [Yes I am!]
-> Munro4

=Munro4
Dana:			Yes!
Kimmymom:			Hello, Mrs. Navarro. I’ll be going inside now. Let's go, Kimmy. You need to have some dinner.
Mom:			Have a nice evening.

* [I’ll walk home with you]
-> Munro5

=Munro5
Dana:			I’ll walk home with you, mom.
Dana:			...Mom, when I picked Kimmy up this morning, she had a rope tied around her. Is that… normal?
Mom:			Oh, was she tied to the doorknob?

* [She was tied to the porch.]
-> Munro6

=Munro6
Dana:			She was tied to the porch.
Mom:			My mom used to tie me to the doorknob so she could focus on making dinner.
Mom:			It’s a little old-fashioned.

* [What about me..?]
-> Munro7

=Munro7
Dana:			You never tied me up, though?
Mom:			...well, I suppose I never worried about you running off.
Mom:			My mom used to worry I’d get into trouble, so when I was Kimmy’s age she’d keep me hooked to the doorknob if there was no one to keep an eye on me.

* [That's weird....]
->Munro8

=Munro8
Dana:			That's kinda weird.
Mom:			A harness is a cheap babysitter.

* [I'm so much better]
->Munro9

=Munro9
Dana:			Well, I'm definitely a better babysitter than a harness.
Mom:			Come on, let’s head home. I’m glad you have a job now. Keeping busy is good for a girl your age.

* [I hope I can be a good Babysitter.]
->Munro10

=Munro10
Dana:			I hope I can be a good babysitter. Kimmy is kind of quiet, so it’s hard to tell if she’s having fun.
Mom:			You’ll do fine.
->DONE

-> DONE

-> END

