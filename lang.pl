main :-
  intro,
  reset_answers,
  find_language(Language),
  describe(Language), nl.


intro :-
  write('İlk olarak hangi programlama dilini öğrenmeliyim'), nl,
  write('Cevap vermek için cevabın yanındaki numarayı girip ardından (.) girin'), nl, nl.


find_language(Language) :-
  language(Language), !.


% İlerlemeyi takip edebilmek için kullanıcı cevapları saklanır
:- dynamic(progress/2).


% saklanan kullanıcı ilerlemesini temizler
% reset_answers True dönmeli. Cevapları temizleyebilmesi için
reset_answers :-
  retract(progress(_, _)),
  fail.
reset_answers.


% Bilgi tabanı kuralları
language(python) :-
  nicin(cocuklarim_icin).

language(python) :-
  nicin(bilmiyorum).

language(java) :-
  nicin(para_kazanmak),
  hangi_platform(farketmez).

language(cpp) :-
  nicin(para_kazanmak),
  hangi_platform(oyun).

language(objectivec) :-
  nicin(para_kazanmak),
  hangi_platform(mobil),
  hangi_mobil_os(ios).

language(java) :-
  nicin(para_kazanmak),
  hangi_platform(mobil),
  hangi_mobil_os(android).

language(python) :-
  nicin(para_kazanmak),
  hangi_platform(facebook).

language(python) :-
  nicin(para_kazanmak),
  hangi_platform(google).

language(csharp) :-
  nicin(para_kazanmak),
  hangi_platform(microsoft).

language(objectivec) :-
  nicin(para_kazanmak),
  hangi_platform(apple).

language(javascript) :-
  nicin(para_kazanmak),
  hangi_platform(web),
  web(front_end).

language(csharp) :-
  nicin(para_kazanmak),
  hangi_platform(web),
  web(back_end),
  sunun_icin_calismak(sirket),
  microsoft_hakkında(hayran).

language(java) :-
  nicin(para_kazanmak),
  hangi_platform(web),
  web(back_end),
  sunun_icin_calismak(sirket),
  microsoft_hakkında(kotu_degil).

language(java) :-
  nicin(para_kazanmak),
  hangi_platform(web),
  web(back_end),
  sunun_icin_calismak(sirket),
  microsoft_hakkında(berbat).

language(javascript) :-
  nicin(para_kazanmak),
  hangi_platform(web),
  web(back_end),
  sunun_icin_calismak(startup),
  yeni_seyler_denemek(evet).

language(python) :-
  nicin(para_kazanmak),
  hangi_platform(web),
  web(back_end),
  sunun_icin_calismak(startup),
  yeni_seyler_denemek(hayir),
  sevilen_oyuncak(lego).

language(ruby) :-
  nicin(para_kazanmak),
  hangi_platform(web),
  web(back_end),
  sunun_icin_calismak(startup),
  yeni_seyler_denemek(hayir),
  sevilen_oyuncak(play_doh).

language(php) :-
  nicin(para_kazanmak),
  hangi_platform(web),
  web(back_end),
  sunun_icin_calismak(startup),
  yeni_seyler_denemek(hayir),
  sevilen_oyuncak(old_ugly).

language(csharp) :-
  nicin(para_kazanmak),
  hangi_platform(enterprise),
  microsoft_hakkında(hayran).

language(java) :-
  nicin(para_kazanmak),
  sunun_icin_calismak(enterprise),
  microsoft_hakkında(kotu_degil).

language(java) :-
  nicin(para_kazanmak),
  sunun_icin_calismak(enterprise),
  microsoft_hakkında(berbat).

language(python) :-
  nicin(eglence_icin),
  ogrenme_yontemi(kolay_yoldan).

language(python) :-
  nicin(eglence_icin),
  ogrenme_yontemi(en_iyi_yoldan).

language(java) :-
  nicin(eglence_icin),
  ogrenme_yontemi(zor_yoldan),
  car(auto).

language(c) :-
  nicin(eglence_icin),
  ogrenme_yontemi(zor_yoldan),
  car(manual).

language(cpp) :-
  nicin(eglence_icin),
  ogrenme_yontemi(en_zor_yoldan).

language(python) :-
  nicin(ilgiliyim),
  ogrenme_yontemi(kolay_yoldan).

language(python) :-
  nicin(ilgiliyim),
  ogrenme_yontemi(en_iyi_yoldan).

language(java) :-
  nicin(ilgiliyim),
  ogrenme_yontemi(zor_yoldan),
  car(auto).

language(c) :-
  nicin(ilgiliyim),
  ogrenme_yontemi(zor_yoldan),
  car(manual).

language(cpp) :-
  nicin(ilgiliyim),
  ogrenme_yontemi(en_zor_yoldan).

language(python) :-
  nicin(kendimi_gelistirmek),
  ogrenme_yontemi(kolay_yoldan).

language(python) :-
  nicin(kendimi_gelistirmek),
  ogrenme_yontemi(en_iyi_yoldan).

language(java) :-
  nicin(kendimi_gelistirmek),
  ogrenme_yontemi(zor_yoldan),
  car(auto).

language(c) :-
  nicin(kendimi_gelistirmek),
  ogrenme_yontemi(zor_yoldan),
  car(manual).

language(cpp) :-
  nicin(kendimi_gelistirmek),
  ogrenme_yontemi(en_zor_yoldan).


% Bilgi tabanı için sorular
question(nicin) :-
  write('Neden programlama öğrenmek istiyorsunuz?'), nl.

question(hangi_platform) :-
  write('Hangi platform?'), nl.

question(hangi_mobil_os) :-
  write('Hangi işletim sistemi??'), nl.

question(web) :-
  write('Front-end/Back-end?'), nl.

question(sunun_icin_calismak) :-
  write('Şunun için çalışmak isityorum ...'), nl.

question(microsoft_hakkında) :-
  write('Microsoft hakkında ne düşünüyorsunuz?'), nl.

question(yeni_seyler_denemek) :-
  write('Büyük bir potansiyele sahip yeni bir şey denemek ister misiniz?'), nl.

question(sevilen_oyuncak) :-
  write('En sevdiğin oyuncak hangisi'), nl.

question(ogrenme_yontemi) :-
  write('Nasıl öğrenmeyi tercih edersiniz?'), nl.


question(car) :-
  write('Otomatik-manuel araba?'), nl.


% Bilg tabanı cevapları
answer(cocuklarim_icin) :-
  write('Çocuklarım İçin').

answer(bilmiyorum) :-
  write('Bilmiyorum').

answer(para_kazanmak) :-
  write('Para Kazanmak İçin').

answer(eglence_icin) :-
  write('Eğlence İçin').

answer(ilgiliyim) :-
  write('İlgim var').

answer(kendimi_gelistirmek) :-
  write('Kendimi geliştirmek için').

answer(farketmez) :-
  write('Farketmez. Sadece para kazanmak istiyorum').

answer(oyun) :-
  write('3D/Oyun').

answer(mobil) :-
  write('Mobil').

answer(facebook) :-
  write('Facebook').

answer(google) :-
  write('Google').

answer(microsoft) :-
  write('Microsoft').

answer(apple) :-
  write('Apple').

answer(web) :-
  write('Web').

answer(enterprise) :-
  write('İş').

answer(ios) :-
  write('iOS').

answer(android) :-
  write('Android').

answer(front_end) :-
  write('Front-end (web Arayüzü)').

answer(back_end) :-
  write('Back-end').

answer(startup) :-
  write('Startup').

answer(sirket) :-
  write('Sirket').

answer(hayran) :-
  write('Hayranım!').

answer(kotu_degil) :-
  write('Kötü değil').

answer(berbat) :-
  write('Berbat').

answer(evet) :-
  write('Evet').

answer(hayir) :-
  write('Hayır').

answer(lego) :-
  write('Lego').

answer(play_doh) :-
  write('Play-Doh').

answer(old_ugly) :-
  write('Eski bir oyuncağım var,ama onu çok seviyorum').

answer(kolay_yoldan) :-
  write('Kolay yoldan').

answer(en_iyi_yoldan) :-
  write('Zor yoldan').

answer(zor_yoldan) :-
  write('Biraz zor yoldan').

answer(en_zor_yoldan) :-
  write('Çok zor yoldan').

answer(auto) :-
  write('auto').

answer(manual) :-
  write('manual').



% Bilgi tabanı için dil tanımlamaları
describe(python) :-
  write('Python'), nl,
  write('Yeni başlayanlar için en uygun ve kolay dil olarak kabul edilir.'), nl,
  write('Öğrenmesi kolaydır').

describe(java) :-
  write('Java'), nl,
  write('Günümüzde en çok kullanılan en popüler programlama dillerinden biri'), nl,
  write('Sloganı : Bir defa yaz, her yerde çalıştır').

describe(c) :-
  write('C'), nl,
  write('Programlama dillerinin ortak dili'), nl,
  write('Dünyadaki en eski ve en çok kullanılan dillerden biri').

describe(cpp) :-
  write('C++'), nl,
  write('C dilinin fazla özellik içeren karmaşık versiyonu').
  

describe(javascript) :-
  write('JavaScript'), nl,
  write('En popüler kullanıcı tarafı web programlama dili'), nl,
  write('Front-end geliştiricinin öğrenmesi gerekir(HTML ve CSS)').

describe(csharp) :-
  write('C#'), nl,
  write('.NET kullanarak web siteleri ve windows uygulamaları oluşturmak için popülerdir'), nl,
  write('Bazı özellikler ve syntax bakımından Java ile benzerdir').

describe(ruby) :-
  write('Ruby'), nl,
  write('Popüler web framework\'ü Ruby on Rails ile bilinir.').

describe(php) :-
  write('PHP'), nl,
  write('Kısa sürede küçük ve basit siteler oluşturmak için uygundur'), nl,
  write('Neredeyse tüm web platformları tarafından desteklenir').

describe(objectivec) :-
  write('Objective-C'), nl,
  write('MacOSX ve iOS için Apple tarafından kullanılan dil.'), nl,
  write('Yalnızca Apple için uygulama geliştirmek için').


% Bilgi tabanında gelen sorulara cevap atar
nicin(Answer) :-
  progress(nicin, Answer).
nicin(Answer) :-
  \+ progress(nicin, _),
  ask(nicin, Answer, [cocuklarim_icin, bilmiyorum, para_kazanmak, eglence_icin, ilgiliyim, kendimi_gelistirmek]).

hangi_platform(Answer) :-
  progress(hangi_platform, Answer).
hangi_platform(Answer) :-
  \+ progress(hangi_platform, _),
  ask(hangi_platform, Answer, [farketmez, oyun, mobil, facebook, google, microsoft, apple, web, enterprise]).

hangi_mobil_os(Answer) :-
  progress(hangi_mobil_os, Answer).
hangi_mobil_os(Answer) :-
  \+ progress(hangi_mobil_os, _),
  ask(hangi_mobil_os, Answer, [ios, android]).

web(Answer) :-
  progress(web, Answer).
web(Answer) :-
  \+ progress(web, _),
  ask(web, Answer, [front_end, back_end]).

sunun_icin_calismak(Answer) :-
  progress(sunun_icin_calismak, Answer).
sunun_icin_calismak(Answer) :-
  \+ progress(sunun_icin_calismak, _),
  ask(sunun_icin_calismak, Answer, [startup, sirket]).

microsoft_hakkında(Answer) :-
  progress(microsoft_hakkında, Answer).
microsoft_hakkında(Answer) :-
  \+ progress(microsoft_hakkında, _),
  ask(microsoft_hakkında, Answer, [hayran, kotu_degil, berbat]).

yeni_seyler_denemek(Answer) :-
  progress(yeni_seyler_denemek, Answer).
yeni_seyler_denemek(Answer) :-
  \+ progress(yeni_seyler_denemek, _),
  ask(yeni_seyler_denemek, Answer, [evet, hayir]).

sevilen_oyuncak(Answer) :-
  progress(sevilen_oyuncak, Answer).
sevilen_oyuncak(Answer) :-
  \+ progress(sevilen_oyuncak, _),
  ask(sevilen_oyuncak, Answer, [lego, play_doh, old_ugly]).

ogrenme_yontemi(Answer) :-
  progress(ogrenme_yontemi, Answer).
ogrenme_yontemi(Answer) :-
  \+ progress(ogrenme_yontemi, _),
  ask(ogrenme_yontemi, Answer, [kolay_yoldan, en_iyi_yoldan, zor_yoldan, en_zor_yoldan]).


car(Answer) :-
  progress(car, Answer).
car(Answer) :-
  \+ progress(car, _),
  ask(car, Answer, [auto, manual]).


% Cevap listesini çıkarır
% [First|Rest] is the Choices list, Index is the index of First in Choices
 answers([], _).
 answers([First|Rest], Index) :-
 write(Index), write(' '), answer(First), nl,
 NextIndex is Index + 1,
 answers(Rest, NextIndex).



% Parses an Index and returns a Response representing the "Indexth" element in
% Choices (the [First|Rest] list)
 parse(0, [First|_], First).
 parse(Index, [First|Rest], Response) :-
 Index > 0,
 NextIndex is Index - 1,
 parse(NextIndex, Rest, Response).


% Kullanıcıya soru sorulur ve cevap kaydedilir
ask(Question, Answer, Choices) :-
  question(Question),
  answers(Choices, 0),
  read(Index),
  parse(Index, Choices, Response),
  asserta(progress(Question, Response)),
Response = Answer.
