// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.0;

//English version:
/*Now we're on Ethernaut's 24th task, "Puzzle Wallet".  To pass this task, we need to know how to handle Delegate Call, as well as a little trickery
The proposeNewAdmin function catches our eye, so let's use it to pass the next step. 
The call to addToWhiteList opens up the possibility of interacting with other functions that have the onlyWhiteListed modifier.
At this point, I'll remind you that the goal of this challenge is to drain all means from the contract is Execute, because it is the only function that calls Call and can change the Owner data from the null slot
Another problem is that its call requires manipulation of another function Deposit. To be specific, it is necessary to send the ether once, but to increase the matching of our balances in two times. 
Already here we turn to the multicall function, it does what its name says - it calls the function several times saving some gas. We use it to call Deposit, followed by Execute to drain the contact, and then setMaxBalance to set the MaxBalance value on slot 1, i.e. to take over the owner of the contract */

//Русская версия перевода :
/*Итак, мы на 24 задаче Ethernaut "Puzzle Wallet".  Для её прохождения, нам необходимо умение обращаться с Delegate Call, а так же немного хитрости
В глаза сходу бросается функция proposeNewAdmin , обратимся к ней для прохождения проверки на следующем этапе. 
Вызов addToWhiteList открывает нам возможность взаимодействия с другими функциями, что имеет модификатор onlyWhiteListed
На этом моменте, я напомню , что цель этого челленджа слить все средства с контракта это Execute, ведь только она обращается по вызову Call и может менять данные Owner из нулевого слота
Другая загвоздка, что для её вызова необходима манипуляция уже с другой функцией Deposit . Если быть конкретным, то необходимо отправить эфир один раз , но увеличить сопоставление наших балансов в два . 
Уже здесь мы обращаемся к функции multicall, она делает то, о чём её название - вызывает функцию несколько раз экономя немного газа . С помощью неё мы вызываем Deposit , за ней Execute для слива контакта , а после setMaxBalance для установления значения MaxBalance на слоте 1, тоесть забирая себе владельца контракта */

//Українська версія перекладу :
/* Отже, ми на 24 завданні Ethernaut "Puzzle Wallet".  Для його проходження, нам необхідне вміння поводитися з Delegate Call, а також трохи хитрощів
В очі відразу впадає функція proposeNewAdmin , звернемося до неї для проходження перевірки на наступному етапі. 
Виклик addToWhiteList відкриває нам можливість взаємодії з іншими функціями, що має модифікатор onlyWhiteListed
На цьому моменті, я нагадаю, що мета цього челенджу злити всі кошти з контракту - це Execute, адже тільки вона звертається за викликом Call і може змінювати дані Owner з нульового слота
Інша заковика, що для її виклику необхідна маніпуляція вже з іншою функцією Deposit . Якщо бути конкретним, то необхідно відправити ефір один раз, але збільшити зіставлення наших балансів у два. 
Уже тут ми звертаємося до функції multicall, вона робить те, про що її назва - викликає функцію кілька разів, заощаджуючи трохи газу. За допомогою неї ми викликаємо Deposit , за нею Execute для зливу контакту , а після setMaxBalance для встановлення значення MaxBalance на слоті 1, тобто забираючи собі власника контракту */