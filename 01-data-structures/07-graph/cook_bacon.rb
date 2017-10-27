require_relative 'node'
require_relative 'graph_bacon'

sizzle = Bacon.new

kevin_bacon = Node.new('kevin_bacon')
dan_akroyd = Node.new('dan_akroyd')
jack_albertson = Node.new('jack_albertson')
karen_allen = Node.new('karen_allen')
louie_anderson = Node.new('louie_anderson')
anne_archer = Node.new('anne_archer')
alec_baldwin = Node.new('alec_baldwin')
william_baldwin = Node.new('william_baldwin')
laurence_belcher = Node.new('laurence_belcher')
john_belushi = Node.new('john_belushi')
tom_berenger = Node.new('tom_berenger')
daniela_bianchi = Node.new('daniela_bianchi')
ernest_borgnine = Node.new('ernest_borgnine')
red_buttons = Node.new('red_buttons')
rose_byrne = Node.new('rose_byrne')
ray_charles = Node.new('ray_charles')
glenn_close = Node.new('glenn_close')
jacque_lynn_colton = Node.new('jacque_lynn_colton')
sean_connery = Node.new('sean_connery')
morris_day = Node.new('morris_day')
geena_davis = Node.new('geena_davis')
bruce_dern = Node.new('bruce_dern')
michael_douglass = Node.new('michael_douglass')
fran_drescher = Node.new('fran_drescher')
clint_eastwood = Node.new('clint_eastwood')
michael_fassbender = Node.new('michael_fassbender')
corey_feldman = Node.new('corey_feldman')
laurence_fishburne = Node.new('laurence_fishburne')
carrie_fisher = Node.new('carrie_fisher')
harrison_ford = Node.new('harrison_ford')
morgan_freeman = Node.new('morgan_freeman')
jami_gertz = Node.new('jami_gertz')
henry_gibson = Node.new('henry_gibson')
scott_glenn = Node.new('scott_glenn')
jeff_goldblum = Node.new('jeff_goldblum')
micheal_gross = Node.new('micheal_gross')
alec_guiness = Node.new('alec_guiness')
gene_hackman = Node.new('gene_hackman')
mark_hamill = Node.new('mark_hamill')
ed_harris = Node.new('ed_harris')
tom_hanks = Node.new('tom_hanks')
teri_hatcher = Node.new('teri_hatcher')
barbara_hershey = Node.new('barbara_hershey')
tom_hulce = Node.new('tom_hulce')
nicholas_hoult = Node.new('nicholas_hoult')
william_hurt = Node.new('william_hurt')
james_earl_jones = Node.new('james_earl_jones')
michael_keaton = Node.new('michael_keaton')
kevin_kline = Node.new('kevin_kline')
appollonia_kotero = Node.new('appollonia_kotero')
jennifer_lawrence = Node.new('jennifer_lawrence')
jennifer_jason_leigh = Node.new('jennifer_jason_leigh')
john_lithgow = Node.new('john_lithgow')
tim_matheson = Node.new('tim_matheson')
james_mcavoy = Node.new('james_mcavoy')
mark_metcalf = Node.new('mark_metcalf')
roddy_mcdowall = Node.new('roddy_mcdowall')
reba_mcentire = Node.new('reba_mcentire')
michael_mckean = Node.new('michael_mckean')
sam_neill = Node.new('sam_neill')
peter_ostrum = Node.new('peter_ostrum')
sarah_jessica_parker = Node.new('sarah_jessica_parker')
bill_paxton = Node.new('bill_paxton')
chris_penn = Node.new('chris_penn')
sean_penn = Node.new('sean_penn')
river_phoenix = Node.new('river_phoenix')
oliver_platt = Node.new('oliver_platt')
prince = Node.new('prince')
richard_pryor = Node.new('richard_pryor')
dennis_quaid = Node.new('dennis_quaid')
randy_quaid = Node.new('randy_quaid')
john_rhys_davies = Node.new('john_rhys_davies')
ariana_richards = Node.new('ariana_richards')
tim_robbins = Node.new('tim_robbins')
julia_roberts = Node.new('julia_roberts')
paul_rodriguez = Node.new('paul_rodriguez')
robert_shaw = Node.new('robert_shaw')
sam_shepard = Node.new('sam_shepard')
lori_singer = Node.new('lori_singer')
gary_sinise = Node.new('gary_sinise')
kiefer_sutherland = Node.new('kiefer_sutherland')
meg_tilly = Node.new('meg_tilly')
courtney_b_vance = Node.new('courtney_b_vance')
fred_ward = Node.new('fred_ward')
mary_louise_weller = Node.new('mary_louise_weller')
dianne_wiest = Node.new('dianne_wiest')
gene_wilder = Node.new('gene_wilder')
jobeth_williams = Node.new('jobeth_williams')
shelley_winters = Node.new('shelley_winters')

dan_akroyd.film_actor_hash["Blues Brothers"] = [john_belushi, carrie_fisher, ray_charles]
jack_albertson.film_actor_hash["Poseidon Adventure"] = [roddy_mcdowall, gene_hackman, ernest_borgnine, red_buttons, shelley_winters]
jack_albertson.film_actor_hash["Willy Wonka and the Chocolate Factory"] = [gene_wilder, peter_ostrum]
karen_allen.film_actor_hash["Animal House"] = [tom_hulce, mark_metcalf, mary_louise_weller, kevin_bacon, john_belushi, tim_matheson]
louie_anderson.film_actor_hash["Quicksilver"] = [kevin_bacon, paul_rodriguez, laurence_fishburne, jacque_lynn_colton, jami_gertz]
anne_archer.film_actor_hash["Fatal Instinct"] = [michael_douglass, glenn_close]
alec_baldwin.film_actor_hash["The Hunt for Red October"] = [sean_connery, scott_glenn, sam_neill, james_earl_jones, courtney_b_vance]
alec_baldwin.film_actor_hash["Beetljuice"] = [geena_davis, michael_keaton]
william_baldwin.film_actor_hash["Flatliners"] = [kiefer_sutherland, julia_roberts, kevin_bacon, oliver_platt]
laurence_belcher.film_actor_hash["X-Men: First Class"] = [james_mcavoy, michael_fassbender, kevin_bacon, rose_byrne, jennifer_lawrence, oliver_platt, nicholas_hoult]
john_belushi.film_actor_hash["Animal House"] = [tom_hulce, mark_metcalf, mary_louise_weller, kevin_bacon, karen_allen, tim_matheson]
john_belushi.film_actor_hash["Blues Brothers"] = [dan_akroyd, carrie_fisher, ray_charles]
tom_berenger.film_actor_hash["The Big Chill"] = [glenn_close, jeff_goldblum, william_hurt, kevin_kline, meg_tilly, jobeth_williams]
daniela_bianchi.film_actor_hash["From Russia with Love"] = [robert_shaw, sean_connery]
ernest_borgnine.film_actor_hash["Poseidon Adventure"] = [roddy_mcdowall, gene_hackman, red_buttons, shelley_winters, jack_albertson]
red_buttons.film_actor_hash["Poseidon Adventure"] = [roddy_mcdowall, gene_hackman, ernest_borgnine, shelley_winters, jack_albertson]
rose_byrne.film_actor_hash["X-Men: First Class"] = [james_mcavoy, laurence_belcher, michael_fassbender, kevin_bacon, jennifer_lawrence, oliver_platt, nicholas_hoult]
ray_charles.film_actor_hash["Blues Brothers"] = [dan_akroyd, carrie_fisher, john_belushi]
glenn_close.film_actor_hash["The Big Chill"] = [tom_berenger, jeff_goldblum, william_hurt, kevin_kline, meg_tilly, jobeth_williams]
glenn_close.film_actor_hash["Fatal Instinct"] = [michael_douglass, anne_archer]
jacque_lynn_colton.film_actor_hash["Quicksilver"] = [kevin_bacon, paul_rodriguez, laurence_fishburne, louie_anderson, jami_gertz]
jacque_lynn_colton.film_actor_hash["Moving"] = [morris_day, richard_pryor, randy_quaid]
sean_connery.film_actor_hash["The Hunt for Red October"] = [alec_baldwin, scott_glenn, sam_neill, james_earl_jones, courtney_b_vance]
sean_connery.film_actor_hash["From Russia with Love"] = [robert_shaw, daniela_bianchi]
sean_connery.film_actor_hash["Indiana Jones and the Last Crusade"] = [harrison_ford, john_rhys_davies, river_phoenix]
morris_day.film_actor_hash["Moving"] = [jacque_lynn_colton, richard_pryor, randy_quaid]
morris_day.film_actor_hash["Purple Rain"] = [prince, appollonia_kotero]
geena_davis.film_actor_hash["Beetljuice"] = [alec_baldwin, michael_keaton]
bruce_dern.film_actor_hash["The Burbs"] = [tom_hanks, carrie_fisher, corey_feldman, henry_gibson]
michael_douglass.film_actor_hash["Fatal Instinct"] = [glenn_close, anne_archer]
fran_drescher.film_actor_hash["The Big Picture"] = [kevin_bacon, jennifer_jason_leigh, michael_mckean, teri_hatcher, roddy_mcdowall]
clint_eastwood.film_actor_hash["Unforgiven"] = [gene_hackman, morgan_freeman]
michael_fassbender.film_actor_hash["X-Men: First Class"] = [james_mcavoy, laurence_belcher, kevin_bacon, rose_byrne, jennifer_lawrence, oliver_platt, nicholas_hoult]
corey_feldman.film_actor_hash["The Burbs"] = [tom_hanks, bruce_dern, carrie_fisher, henry_gibson]
laurence_fishburne.film_actor_hash["Quicksilver"] = [kevin_bacon, paul_rodriguez, jacque_lynn_colton, louie_anderson, jami_gertz]
laurence_fishburne.film_actor_hash["Mystic River"] = [sean_penn, tim_robbins, kevin_bacon]
carrie_fisher.film_actor_hash["The Burbs"] = [tom_hanks, bruce_dern, corey_feldman, henry_gibson]
carrie_fisher.film_actor_hash["Blues Brothers"] = [dan_akroyd, carrie_fisher, ray_charles]
carrie_fisher.film_actor_hash["Star Wars: Episode IV - A New Hope"] = [mark_hamill, harrison_ford, alec_guiness, james_earl_jones]
harrison_ford.film_actor_hash["Star Wars: Episode IV - A New Hope"] = [mark_hamill, carrie_fisher, alec_guiness, james_earl_jones]
harrison_ford.film_actor_hash["Indiana Jones and the Last Crusade"] = [sean_connery, john_rhys_davies, river_phoenix]
morgan_freeman.film_actor_hash["Unforgiven"] = [clint_eastwood, gene_hackman]
jami_gertz.film_actor_hash["Quicksilver"] = [kevin_bacon, paul_rodriguez, laurence_fishburne, louie_anderson, jacque_lynn_colton]
henry_gibson.film_actor_hash["The Burbs"] = [tom_hanks, bruce_dern, carrie_fisher, corey_feldman]
scott_glenn.film_actor_hash["The Right Stuff"] = [sam_shepard, ed_harris, dennis_quaid, fred_ward, barbara_hershey, jeff_goldblum]
scott_glenn.film_actor_hash["The Hunt for Red October"] = [sean_connery, alec_baldwin, sam_neill, james_earl_jones, courtney_b_vance]
jeff_goldblum.film_actor_hash["The Right Stuff"] = [sam_shepard, scott_glenn, ed_harris, dennis_quaid, fred_ward, barbara_hershey]
jeff_goldblum.film_actor_hash["The Big Chill"] = [tom_berenger, glenn_close, william_hurt, kevin_kline, meg_tilly, jobeth_williams]
micheal_gross.film_actor_hash["Tremors"] =[fred_ward, kevin_bacon, reba_mcentire, ariana_richards]
alec_guiness.film_actor_hash["Star Wars: Episode IV - A New Hope"] = [mark_hamill, harrison_ford, carrie_fisher, james_earl_jones]
gene_hackman.film_actor_hash["Poseidon Adventure"] = [roddy_mcdowall, ernest_borgnine, red_buttons, shelley_winters, jack_albertson]
gene_hackman.film_actor_hash["Unforgiven"] = [clint_eastwood, morgan_freeman]
mark_hamill.film_actor_hash["Star Wars: Episode IV - A New Hope"] = [harrison_ford, carrie_fisher, alec_guiness, james_earl_jones]
ed_harris.film_actor_hash["Apollo 13"] = [kevin_bacon, bill_paxton, tom_hanks, gary_sinise]
ed_harris.film_actor_hash["The Right Stuff"] = [sam_shepard, scott_glenn, dennis_quaid, fred_ward, barbara_hershey, jeff_goldblum]
tom_hanks.film_actor_hash["Apollo 13"] = [kevin_bacon, bill_paxton, tom_hanks, gary_sinise, ed_harris]
tom_hanks.film_actor_hash["The Burbs"] = [tom_hanks, bruce_dern, carrie_fisher, corey_feldman, henry_gibson]
teri_hatcher.film_actor_hash["The Big Picture"] = [kevin_bacon, jennifer_jason_leigh, michael_mckean, fran_drescher, roddy_mcdowall]
barbara_hershey.film_actor_hash["The Right Stuff"] = [sam_shepard, scott_glenn, ed_harris, dennis_quaid, fred_ward, jeff_goldblum]
tom_hulce.film_actor_hash["Animal House"] = [mark_metcalf, mary_louise_weller, kevin_bacon, john_belushi, karen_allen, tim_matheson]
nicholas_hoult.film_actor_hash["X-Men: First Class"] = [james_mcavoy, laurence_belcher, michael_fassbender, kevin_bacon, rose_byrne, jennifer_lawrence, oliver_platt]
william_hurt.film_actor_hash["The Big Chill"] = [tom_berenger, glenn_close, jeff_goldblum, kevin_kline, meg_tilly, jobeth_williams]
james_earl_jones.film_actor_hash["Star Wars: Episode IV - A New Hope"] = [mark_hamill, harrison_ford, carrie_fisher, alec_guiness]
james_earl_jones.film_actor_hash["The Hunt for Red October"] = [sean_connery, alec_baldwin, scott_glenn, sam_neill, courtney_b_vance]
michael_keaton.film_actor_hash["Beetljuice"] = [geena_davis, alec_baldwin]
kevin_kline.film_actor_hash["The Big Chill"] = [tom_berenger, glenn_close, jeff_goldblum, william_hurt, meg_tilly, jobeth_williams]
appollonia_kotero.film_actor_hash["Purple Rain"] = [morris_day, prince]
jennifer_lawrence.film_actor_hash["X-Men: First Class"] = [james_mcavoy, laurence_belcher, michael_fassbender, kevin_bacon, rose_byrne, oliver_platt, nicholas_hoult]
jennifer_jason_leigh.film_actor_hash["The Big Picture"] = [kevin_bacon, michael_mckean, teri_hatcher, fran_drescher, roddy_mcdowall]
john_lithgow.film_actor_hash["Footloose"] = [kevin_bacon, lori_singer, dianne_wiest, chris_penn, sarah_jessica_parker]
tim_matheson.film_actor_hash["Animal House"] = [tom_hulce, mark_metcalf, mary_louise_weller, kevin_bacon, john_belushi, karen_allen]
james_mcavoy.film_actor_hash["X-Men: First Class"] = [laurence_belcher, michael_fassbender, kevin_bacon, rose_byrne, jennifer_lawrence, oliver_platt, nicholas_hoult]
mark_metcalf.film_actor_hash["Animal House"] = [tom_hulce, mary_louise_weller, kevin_bacon, john_belushi, karen_allen, tim_matheson]
roddy_mcdowall.film_actor_hash["Poseidon Adventure"] = [gene_hackman, ernest_borgnine, red_buttons, shelley_winters, jack_albertson]
roddy_mcdowall.film_actor_hash["The Big Picture"] = [kevin_bacon, jennifer_jason_leigh, michael_mckean, teri_hatcher, fran_drescher]
reba_mcentire.film_actor_hash["Tremors"] =[fred_ward, micheal_gross, kevin_bacon, ariana_richards]
michael_mckean.film_actor_hash["The Big Picture"] = [kevin_bacon, jennifer_jason_leigh, teri_hatcher, fran_drescher, roddy_mcdowall]
sam_neill.film_actor_hash["The Hunt for Red October"] = [sean_connery, alec_baldwin, scott_glenn, james_earl_jones, courtney_b_vance]
peter_ostrum.film_actor_hash["Willy Wonka and the Chocolate Factory"] = [gene_wilder, jack_albertson]
sarah_jessica_parker.film_actor_hash["Footloose"] = [kevin_bacon, lori_singer, john_lithgow, dianne_wiest, chris_penn]
bill_paxton.film_actor_hash["Apollo 13"] = [kevin_bacon, tom_hanks, gary_sinise, ed_harris]
chris_penn.film_actor_hash["Footloose"] = [kevin_bacon, lori_singer, john_lithgow, dianne_wiest, sarah_jessica_parker]
sean_penn.film_actor_hash["Mystic River"] = [tim_robbins, kevin_bacon, laurence_fishburne]
river_phoenix.film_actor_hash["Indiana Jones and the Last Crusade"] = [harrison_ford, john_rhys_davies, sean_connery]
oliver_platt.film_actor_hash["X-Men: First Class"] = [james_mcavoy, laurence_belcher, michael_fassbender, kevin_bacon, rose_byrne, jennifer_lawrence, nicholas_hoult]
oliver_platt.film_actor_hash["Flatliners"] = [kiefer_sutherland, julia_roberts, kevin_bacon, william_baldwin]
prince.film_actor_hash["Purple Rain"] = [morris_day, prince, appollonia_kotero]
richard_pryor.film_actor_hash["Moving"] = [jacque_lynn_colton, morris_day, randy_quaid]
richard_pryor.film_actor_hash["Silver Streak"] = [gene_wilder]
dennis_quaid.film_actor_hash["The Right Stuff"] = [sam_shepard, scott_glenn, ed_harris, fred_ward, barbara_hershey, jeff_goldblum]
randy_quaid.film_actor_hash["Moving"] = [jacque_lynn_colton, richard_pryor, morris_day]
john_rhys_davies.film_actor_hash["Indiana Jones and the Last Crusade"] = [harrison_ford, sean_connery, river_phoenix]
ariana_richards.film_actor_hash["Tremors"] =[fred_ward, micheal_gross, reba_mcentire, kevin_bacon]
tim_robbins.film_actor_hash["Mystic River"] = [sean_penn, kevin_bacon, laurence_fishburne]
julia_roberts.film_actor_hash["Flatliners"] = [kiefer_sutherland, kevin_bacon, william_baldwin, oliver_platt]
paul_rodriguez.film_actor_hash["Quicksilver"] = [kevin_bacon, jacque_lynn_colton, laurence_fishburne, louie_anderson, jami_gertz]
robert_shaw.film_actor_hash["From Russia with Love"] = [sean_connery, daniela_bianchi]
sam_shepard.film_actor_hash["The Right Stuff"] = [scott_glenn, ed_harris, dennis_quaid, fred_ward, barbara_hershey, jeff_goldblum]
lori_singer.film_actor_hash["Footloose"] = [kevin_bacon, john_lithgow, dianne_wiest, chris_penn, sarah_jessica_parker]
gary_sinise.film_actor_hash["Apollo 13"] = [kevin_bacon, bill_paxton, tom_hanks, ed_harris]
kiefer_sutherland.film_actor_hash["Flatliners"] = [julia_roberts, kevin_bacon, william_baldwin, oliver_platt]
meg_tilly.film_actor_hash["The Big Chill"] = [tom_berenger, glenn_close, jeff_goldblum, william_hurt, kevin_kline, jobeth_williams]
courtney_b_vance.film_actor_hash["The Hunt for Red October"] = [sean_connery, alec_baldwin, scott_glenn, sam_neill, james_earl_jones]
fred_ward.film_actor_hash["The Right Stuff"] = [sam_shepard, scott_glenn, ed_harris, dennis_quaid, barbara_hershey, jeff_goldblum]
fred_ward.film_actor_hash["Tremors"] =[kevin_bacon, micheal_gross, reba_mcentire, ariana_richards]
mary_louise_weller.film_actor_hash["Animal House"] = [tom_hulce, mark_metcalf, kevin_bacon, john_belushi, karen_allen, tim_matheson]
dianne_wiest.film_actor_hash["Footloose"] = [kevin_bacon, lori_singer, john_lithgow, chris_penn, sarah_jessica_parker]
gene_wilder.film_actor_hash["Willy Wonka and the Chocolate Factory"] = [jack_albertson, peter_ostrum]
gene_wilder.film_actor_hash["Silver Streak"] = [richard_pryor]
jobeth_williams.film_actor_hash["The Big Chill"] = [tom_berenger, glenn_close, jeff_goldblum, william_hurt, kevin_kline, meg_tilly]
shelley_winters.film_actor_hash["Poseidon Adventure"] = [roddy_mcdowall, gene_hackman, ernest_borgnine, red_buttons, jack_albertson]

kevin_bacon.film_actor_hash["Quicksilver"] = [paul_rodriguez, laurence_fishburne, louie_anderson, jami_gertz, jacque_lynn_colton]
kevin_bacon.film_actor_hash["Apollo 13"] = [bill_paxton, tom_hanks, gary_sinise, ed_harris]
kevin_bacon.film_actor_hash["The Big Picture"] = [jennifer_jason_leigh, michael_mckean, teri_hatcher, fran_drescher, roddy_mcdowall]
kevin_bacon.film_actor_hash["X-Men: First Class"] = [james_mcavoy, laurence_belcher, michael_fassbender, rose_byrne, jennifer_lawrence, oliver_platt, nicholas_hoult]
kevin_bacon.film_actor_hash["Mystic River"] = [sean_penn, tim_robbins, laurence_fishburne]
kevin_bacon.film_actor_hash["Flatliners"] = [kiefer_sutherland, julia_roberts, william_baldwin, oliver_platt]
kevin_bacon.film_actor_hash["Tremors"] =[fred_ward, micheal_gross, reba_mcentire, ariana_richards]
kevin_bacon.film_actor_hash["Footloose"] = [lori_singer, john_lithgow, dianne_wiest, chris_penn, sarah_jessica_parker]
kevin_bacon.film_actor_hash["Animal House"] = [tom_hulce, mark_metcalf, mary_louise_weller, john_belushi, karen_allen, tim_matheson]

puts ""
puts "Start: Sean Connery"
puts sizzle.find_bacon(sean_connery)
puts ""

puts "Start: Fred Ward"
puts sizzle.find_bacon(fred_ward)
puts ""

puts "Start: Gene Wilder"
puts sizzle.find_bacon(gene_wilder)
puts ""

puts "Start: Prince"
puts sizzle.find_bacon(prince)
puts ""
