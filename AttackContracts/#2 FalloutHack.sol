// SPDX-License-Identifier: MIT
pragma solidity ^0.8.21;

//This task has already lost its relevance since version "0.4.22." Here's the point: >>>
//Before Solidity 0.4.22. the only way to define a Constructor was to create a function with the same name as the contract itself >>>
//If you look closely, there is a misprint and a vulnerability on line 14. We will take advantage of it by calling this function, thus becoming the owner of the contract, according to the logic embedded in the function itself.

//Русская версия перевода :
//Данная задача уже успела потерять свою актуальность , начиная с версии "0.4.22." , дело вот в чем : >>>
//До Solidity 0.4.22. единственным способом определения Constructor , была необходимость создания функции с тем же именем, что и сам контракт >>>
//Если присмотреться , на 14 строке находится опечатка и вместе с ней уязвимость.Этим мы и воспользуемся, вызвав функцию, тем самым став владельцем контракта, согласно заложенной логике в саму функцию

//Українська версія перекладу :
//Дане завдання вже встигло втратити свою актуальність, починаючи з версії "0.4.22." , справа ось у чому : >>>
//До Solidity 0.4.22. єдиним способом визначення Constructor , була необхідність створення функції з тим же ім'ям, що і сам контракт >>>
//Якщо придивитися, на 14 рядку знаходиться помилка і разом з нею вразливість. Цим ми і скористаємося, викликавши функцію, тим самим ставши власником контракту, згідно із закладеною логікою в саму функцію