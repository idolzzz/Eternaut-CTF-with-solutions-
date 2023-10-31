// SPDX-License-Identifier: MIT
pragma solidity ^0.6.0;

//English version:
//The problem, as well as its solution, has no connection with today. Before the Solidity 0.8.0 update, we had to implement the SafeMath library into the contract, which insured the contract against an overflow vulnerability
//The vulnerability is to enter a maximum invalid number within uint256 that exceeds your current number of tokens on any balance


//Русская версия перевода :
//Задача, как и её решение совсем не имеет связи с сегодняшним днём. До обновления Solidity 0.8.0, приходилось внедрять в контракт библотеку SafeMath,что страховала контракт от уязвимости переполнения
//Уязвимость состоит в том, что бы ввести максимально недопустимое число в рамках uint256 превышающее ваше текущее количевство токенов на любой баланс


//Українська версія перекладу :
//Задача, як і її розв'язання, зовсім не має зв'язку із сьогоднішнім днем. До оновлення Solidity 0.8.0, доводилося впроваджувати в контракт біблотеку SafeMath, що страхувала контракт від уразливості переповнення
//Вразливість полягає в тому, щоб ввести максимально неприпустиме число в рамках uint256, яке перевищує вашу поточну кількість токенів на будь-який баланс