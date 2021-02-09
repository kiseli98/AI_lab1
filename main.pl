main :-
  intro,
  reset_answers,
  find_planet(Planet).

intro :-
  write('System helps to determine the home planet of a citizen.'), nl,
  write('Please provide information based on several criteria.'), nl,
  write('Enter the number shown next to each answer, followed by a dot (.)'), nl, nl.

find_planet(Planet) :-
  planet(Planet), !.

% Store user answers to be able to track his progress
:- dynamic(progress/2).

% Clear stored user progress
% reset_answers must always return true; because retract can return either true
% or false, we fail the first and succeed with the second.
reset_answers :-
  retract(progress(_, _)),
  fail.
reset_answers.



% =====
% Galaxies
% =====
galaxy(milky_way) :- 
  gait(confident), 
  can_fly(yes).
galaxy(andromeda) :- 
  gait(waddle),
  can_fly(no).
galaxy(antennae) :-
 has_moustache(yes), 
 has_nose(yes), 
 has_tail(yes).



% =======
% Constellation
% =======
constellation(gemini) :-
  galaxy(milky_way),
  clothes(dark),
  height(tall),
  has_moustache(yes),
  has_nose(yes).

constellation(gemini) :-
  galaxy(andromeda),
  clothes(dark),
  height(tall),
  has_moustache(no),
  has_nose(yes).

constellation(gemini) :-
  height(tall),
  face_shape(oval).

constellation(taurus) :-
  galaxy(milky_way),
  can_read(yes),
  view_on_politics(republican),
  clothes(dark),
  has_hair(yes),
  has_moustache(yes).

constellation(taurus) :-
  can_read(yes),
  face_shape(round),
  view_on_politics(republican),
  clothes(dark),
  has_hair(yes).

constellation(capricorn) :-
  galaxy(milky_way),
  can_read(yes),
  clothes(dark),
  view_on_politics(democrat),
  has_moustache(yes),
  face_shape(round).

constellation(capricorn) :-
  can_read(yes),
  view_on_politics(democrat).

constellation(cancer) :-
  is_breathing(yes),
  clothes(light),
  speaks_loud(yes),
  is_smoking(yes).

constellation(cancer) :-
  is_breathing(yes),
  clothes(light),
  face_shape(square),
  speaks_loud(yes).

constellation(leo) :-
  galaxy(andromeda),
  can_read(no),
  loves_music(yes),
  has_moustache(no),
  colorblind(yes).

constellation(leo) :-
  can_read(no),
  loves_music(yes),
  has_moustache(no).

constellation(scorpio) :-
  height(small),
  is_breathing(yes),
  speaks_loud(yes),
  drinks_water(yes),
  photophobic(yes).

constellation(scorpio) :-
  height(small),
  drinks_water(yes),
  photophobic(yes).

constellation(scorpio) :-
  height(small),
  photophobic(yes).


% ============
% Planets
% =============

% gemini =====

planet(uranus) :-
  constellation(gemini),
  has_gadgets(yes),
  car(flying),
  write('Citizen is from Uranus'),nl.

planet(uranus) :-
  constellation(gemini),
  has_gadgets(yes),
  write('Citizen is from Uranus'),nl.

planet(uranus) :-
  constellation(gemini),
  car(flying),
  write('Citizen is from Uranus'),nl.


planet(luna) :-
  constellation(gemini),
  car(ground),
  is_breathing(yes),
  speaks_loud(yes),
  write('Citizen is from Luna'),nl.

planet(luna) :-
  constellation(gemini),
  write('Citizen is from Luna'),nl.



% taurus ======

planet(nibiru) :-
  constellation(taurus),
  has_tail(yes),
  has_pet(yes),
  write('Citizen is from Nibiru'),nl.


planet(mars) :-
  constellation(taurus),
  has_tail(yes),
  write('Citizen is from Mars'),nl.


planet(pluto) :-
  constellation(taurus),
  has_tail(no),
  deaf(yes),
  write('Citizen is from Pluto'),nl.


% capricorn ======

planet(jupiter) :-
  constellation(capricorn),
  likes_hot_weather(yes),
  has_augmentation(yes),
  write('Citizen is from Jupiter'),nl.

planet(mercury) :-
  constellation(capricorn),
  write('Citizen is from Mercury'),nl.


% cancer  =======

planet(venus) :-
  constellation(cancer),
  can_teleport(yes),
  write('Citizen is from Venus'),nl.

planet(saturn):-
  constellation(cancer),
  has_moustache(yes),
  is_super_strong(yes),
  write('Citizen is from Saturn'),nl.

planet(phobos) :-
  constellation(cancer),
  write('Citizen is from Phobos'),nl.


% leo ========

planet(europa) :-
  constellation(leo),
  social_phobia(yes),
  arms_or_tentacles(arms),
  is_agressive(yes),
  write('Citizen is from Europa'),nl.


planet(titan) :-
  constellation(leo),
  arms_or_tentacles(tentacles),
  has_eyes(yes),
  write('Citizen is from Titan'),nl.


% scorpio =======

planet(charon) :-
  constellation(scorpio),
  telepath(yes),
  write('Citizen is from Charon'),nl.

planet(triton) :-
  constellation(scorpio),
  write('Citizen is from Triton'),nl.


% No match =======

planet(no_match):-
  write('No data match. Citizen is from unknown planet.'),nl.



% =========
% Questions
% =========
question(gait) :-
  write('How is the person moving? (gait)'), nl.

question(can_fly) :-
  write('Can the citizen fly'), nl.

question(has_tail) :-
  write('Does he/she/it have tail?'), nl.

question(has_nose) :-
  write('Nose present?'), nl.

question(can_read) :-
  write('Can the person read?'), nl.

question(view_on_politics) :-
  write('Would you describe the citizen as republican or democrat?'), nl.

question(clothes) :-
  write('Colors of the clothes?'), nl.

question(has_hair) :-
  write('Hairline present?'), nl.

question(height) :-
  write('Is the person tall or small?'), nl.

question(is_breathing) :-
  write('Does he/she/it need oxygen?'), nl.

question(photophobic) :-
  write('Is the citized afraid of light?'), nl.

question(is_smoking) :-
  write('Does the person smoke?'), nl.

question(has_moustache) :-
  write('Does the citizen have moustache?'), nl.

question(loves_music) :-
  write('Does the person like music?'), nl.

question(colorblind) :-
  write('Can she/he/it distinguish between colors?'), nl.

question(drinks_water) :-
  write('Does the citizen need water to exist?'), nl.

question(speaks_loud) :-
  write('Is the person speaking too loud?'), nl.

question(face_shape) :-
  write('Please describe the face shape.'), nl.

% Question for gemini
question(has_gadgets) :-
  write('Does the person have modern gadgets?'), nl.

question(car) :-
  write('Which car does the citizen possess?'), nl.

% Question for taurus
question(has_pet) :-
  write('Does he/she/it have a pet/pets?'), nl.

question(deaf) :-
  write('The person can not hear you?'), nl.

% Question for capricorn
question(likes_hot_weather) :-
  write('The citizen is not sweating on the sun?'), nl.

question(has_augmentation) :-
  write('Does the person have some cyberpunk augemntations?'), nl.

% Question for Saturn
question(is_super_strong) :-
  write('Do you think he/she/it is extremely stong?'), nl.

question(can_teleport) :-
  write('The citizen has ability to teleport?'), nl.

% Question for leo
question(social_phobia) :-
  write('The person is trying to escape crowded places'), nl.

question(arms_or_tentacles) :-
  write('Does he/she/it have arms or tentacles?'), nl.

question(has_eyes) :-
  write('Does the person have eyes?'), nl.

question(is_agressive) :-
  write('Is the citizen showing aggresive behavior?'), nl.

% Question for scorpio
question(telepath) :-
  write('Can he/she/it read thoughts?'), nl.

% ========
% Answers
% ========

% General
answer(democrat) :-
  write('Supports Biden').
answer(republican) :-
  write('Supports Trump').

answer(dark) :-
  write('Dark colors').

answer(light) :-
  write('Light colors').

answer(confident) :-
  write('Walks quite confident').

answer(waddle) :-
  write('Waddle').

answer(tall) :-
  write('Taller than average').

answer(small) :-
  write('Small').

answer(yes) :-
  write('Yes.').

answer(no) :-
  write('No.').

answer(oval) :-
  write('Oval Face').

answer(round) :-
  write('Round Face').

answer(square) :-
  write('Square Face').

answer(ground) :-
  write('Car is using terrestrial roads').

answer(flying) :-
  write('Flies').

answer(tentacles) :-
  write('Octopus-like').

answer(arms) :-
  write('Human-like').

answer(dont_know) :-
  write('Do not know').

answer(not_sure) :-
  write('Not sure').



% ==========================
% mapping Answers to questions
% ==========================

can_read(Answer) :-
  progress(can_read, Answer).
can_read(Answer) :-
  \+ progress(can_read, _),
  ask(can_read, Answer, [yes, no]).

has_tail(Answer) :-
  progress(has_tail, Answer).
has_tail(Answer) :-
  \+ progress(has_tail, _),
  ask(has_tail, Answer, [yes, no]).

has_nose(Answer) :-
  progress(has_nose, Answer).
has_nose(Answer) :-
  \+ progress(has_nose, _),
  ask(has_nose, Answer, [yes, no]).

has_eyes(Answer) :-
  progress(has_eyes, Answer).
has_eyes(Answer) :-
  \+ progress(has_eyes, _),
  ask(has_nose, Answer, [yes, no]).

deaf(Answer) :-
  progress(deaf, Answer).
deaf(Answer) :-
  \+ progress(deaf, _),
  ask(deaf, Answer, [yes, no]).

likes_hot_weather(Answer) :-
  progress(likes_hot_weather, Answer).
likes_hot_weather(Answer) :-
  \+ progress(likes_hot_weather, _),
  ask(likes_hot_weather, Answer, [yes, no]).

view_on_politics(Answer) :-
  progress(view_on_politics, Answer).
view_on_politics(Answer) :-
  \+ progress(view_on_politics, _),
  ask(view_on_politics, Answer, [democrat, republican]).

clothes(Answer) :-
  progress(clothes, Answer).
clothes(Answer) :-
  \+ progress(clothes, _),
  ask(clothes, Answer, [dark, light]).

gait(Answer) :-
  progress(gait, Answer).
gait(Answer) :-
  \+ progress(gait, _),
  ask(gait, Answer, [confident, waddle]).

can_fly(Answer) :-
  progress(can_fly, Answer).
can_fly(Answer) :-
  \+ progress(can_fly, _),
  ask(can_fly, Answer, [yes, no]).


is_smoking(Answer) :-
  progress(is_smoking, Answer).
is_smoking(Answer) :-
  \+ progress(is_smoking, _),
  ask(is_smoking, Answer, [yes, no]).

has_hair(Answer) :-
  progress(has_hair, Answer).
has_hair(Answer) :-
  \+ progress(has_hair, _),
  ask(has_hair, Answer, [yes, no]).

is_breathing(Answer) :-
  progress(is_breathing, Answer).
is_breathing(Answer) :-
  \+ progress(is_breathing, _),
  ask(is_breathing, Answer, [yes, no]).

photophobic(Answer) :-
  progress(photophobic, Answer).
photophobic(Answer) :-
  \+ progress(photophobic, _),
  ask(photophobic, Answer, [yes, no]).

drinks_water(Answer) :-
  progress(drinks_water, Answer).
drinks_water(Answer) :-
  \+ progress(drinks_water, _),
  ask(drinks_water, Answer, [yes, no]).

speaks_loud(Answer) :-
  progress(speaks_loud, Answer).
speaks_loud(Answer) :-
  \+ progress(speaks_loud, _),
  ask(speaks_loud, Answer, [yes, no]).

has_moustache(Answer) :-
  progress(has_moustache, Answer).
has_moustache(Answer) :-
  \+ progress(has_moustache, _),
  ask(has_moustache, Answer, [yes, no]).

height(Answer) :-
  progress(height, Answer).
height(Answer) :-
  \+ progress(height, _),
  ask(height, Answer, [tall, small]).

loves_music(Answer) :-
  progress(loves_music, Answer).
loves_music(Answer) :-
  \+ progress(loves_music, _),
  ask(loves_music, Answer, [yes, no]).

colorblind(Answer) :-
  progress(colorblind, Answer).
colorblind(Answer) :-
  \+ progress(colorblind, _),
  ask(colorblind, Answer, [yes, no]).

face_shape(Answer) :-
  progress(face_shape, Answer).
face_shape(Answer) :-
  \+ progress(face_shape, _),
  ask(face_shape, Answer, [oval, round, square]).

% gemini
has_gadgets(Answer) :-
  progress(has_gadgets, Answer).
has_gadgets(Answer) :-
  \+ progress(has_gadgets, _),
  ask(has_gadgets, Answer, [yes, no]).

car(Answer) :-
  progress(car, Answer).
car(Answer) :-
  \+ progress(car, _),
  ask(car, Answer, [ground, flying]).

% taurus
has_pet(Answer) :-
  progress(has_pet, Answer).
has_pet(Answer) :-
  \+ progress(has_pet, _),
  ask(has_pet, Answer, [yes, no]).

% capricorn
has_augmentation(Answer) :-
  progress(has_augmentation, Answer).
has_augmentation(Answer) :-
  \+ progress(has_augmentation, _),
  ask(has_augmentation, Answer, [yes, no]).

% Saturn
can_teleport(Answer) :-
  progress(can_teleport, Answer).
can_teleport(Answer) :-
  \+ progress(can_teleport, _),
  ask(can_teleport, Answer, [yes, no]).

is_super_strong(Answer) :-
  progress(is_super_strong, Answer).
is_super_strong(Answer) :-
  \+ progress(is_super_strong, _),
  ask(is_super_strong, Answer, [yes, no]).

% leo
social_phobia(Answer) :-
  progress(social_phobia, Answer).
social_phobia(Answer) :-
  \+ progress(social_phobia, _),
  ask(social_phobia, Answer, [yes, no]).

arms_or_tentacles(Answer) :-
  progress(arms_or_tentacles, Answer).
arms_or_tentacles(Answer) :-
  \+ progress(arms_or_tentacles, _),
  ask(arms_or_tentacles, Answer, [tentacles, arms]).

tentacles(Answer) :-
  progress(tentacles, Answer).
tentacles(Answer) :-
  \+ progress(tentacles, _),
  ask(tentacles, Answer, [yes, no]).

is_agressive(Answer) :-
  progress(is_agressive, Answer).
is_agressive(Answer) :-
  \+ progress(is_agressive, _),
  ask(is_agressive, Answer, [yes, no]).

% scorpio
telepath(Answer) :-
  progress(telepath, Answer).
telepath(Answer) :-
  \+ progress(telepath, _),
  ask(telepath, Answer, [yes, no]).



% Outputs formatted list of answers
% [First|Rest] is the Choices list, Index is the index of First in Choices
answers([], _).
answers([First|Rest], Index) :-
  write(Index), write(' '), answer(First), nl,
  NextIndex is Index + 1,
  answers(Rest, NextIndex).


% parses Index and returns Response representing the indexth element in
% choices (the [First|Rest] list)
parse(0, [First|_], First).
parse(Index, [First|Rest], Response) :-
  Index > 0,
  NextIndex is Index - 1,
  parse(NextIndex, Rest, Response).


% asks the question and saves the answer
ask(Question, Answer, Choices) :-
  question(Question),
  answers(Choices, 0),
  read(Index),
  parse(Index, Choices, Response),
  asserta(progress(Question, Response)),
  Response = Answer.
