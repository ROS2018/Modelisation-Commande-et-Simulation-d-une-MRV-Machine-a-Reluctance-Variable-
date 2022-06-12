# Modelisation-Commande-et-Simulation-d-une-MRV-Machine-a-Reluctance-Variable-

De nos jours, la demande en rendement et compacité des actionneurs électriques est de plus en plus importante, et parmi les actionneurs électriques qui connaissent
un regain d’intérêt on trouve les Machines à Réluctance Variable (MRV).

C’est le motif pour que cette recherche bibliographique se focalise sur l’étude des telles machines, en commencent d’essayer de comprendre le principe de fonctionnement de cette machine qu’il s’agit de deux principes essentiels : l’existence
d’un champs magnétique glissant induit par le stator, et le rapport de saillance du rotor qui joue un rôle important dans le rendement de la machine, cette importance nous a poussé à découvrir les différents rotors construits afin d’augmenter
ce rapport de saillance, En suite, le deuxième chapitre cite brièvement les points essentiels de la modélisation générale des moteurs synchrones (le modèle unifié).
En outre, la recherche durant ce chapitre nous a montré que ce modèle est contrait par beaucoup des hypothèses et ne décrit pas le fonctionnement réel de la machine, en faite, le fonctionnement de la machine se change largement en présence
de la saturation magnétique de la machine, c’est un point qui a encouragé notre curiosité pour étudier la modélisation de la machine en prenant en compte la saturation magnétique(le chapitre 3), toute en se basant sur la thèse de L.Thierry
qui a développé un modèle saturé pour une MRV.

En fin, ce travail a été fini par un chapitre consacré à la commande vectorielle en couple d’une MRV saturée, on a appliqué deux stratégies de commandes,
la première stratégie est celle qui est appliquée par L.Thierry dans sa thèse, il a négligé les signaux du couplage et la saturation du système et les a considéré
comme des perturbations afin d’avoir un modèle simple à commander, On a appliqué cette stratégie et on a remarqué les inconvénients de cette méthode à cause de
l’effet du couplage et de saturation, puis on a appliqué la deuxième méthode pour remédier à ce problem, qui se base à introduire un retour d’état découplant linéarisant. La difficulté pour réaliser un tel retour d’état s’agit d’exigence des signales et
des paramètres non mesurés internes d’un système assez non-linéaire (les courants rotorique magnétisants et les coefficients de saturation), pour cela, ce chapitre a
proposé une solution pour ce problem afin pouvoir observer les variables internes
