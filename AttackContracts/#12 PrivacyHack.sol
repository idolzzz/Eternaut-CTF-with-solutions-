// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

//English version:
//In front of us is a contract, the condition for passing which is the opening of the "lock" the key of which is difficult to find at first glance. To pass the level you need to understand how Storage works in Solidity, but without going into details it becomes clear that the solution lies in the fifth slot.
//The received string of 32Bytes can be converted to 16Bytes, which is the answer to the problem.


//Русская версия перевода :
//Перед нами контракт, условием прохождения которого есть открытие "замка" ключ которого с первого взгляда трудно отыскать. Для прохождения уровня необходимо понимание работы Storage в Solidity, но не входя в подробности становится понятно, что разгадке лежит в пятом слоте
//Полученную строку из 32Байтам, нам ничего не мешает привести к 16Байтам , что и есть ответом к задаче


//Українська версія перекладу :
//Перед нами контракт, умовою проходження якого є відкриття "замка", ключ від якого важко знайти , але це на перший погляд. Для проходження рівня потрібно розуміти, як працює Сховище в Solidity, але і без заглиблення в деталі стає зрозуміло, що розгадка лежить у п'ятому слоті.
//Отриманий рядок розміром 32 байти можна перетворити у 16 байт, що і є відповіддю до задачі.