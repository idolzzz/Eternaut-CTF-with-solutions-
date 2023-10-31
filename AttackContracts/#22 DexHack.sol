// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;


//English version:
//To pass this level, it is enough to know that Solidity does not have floating point numbers, and when you get one it is rounded downwards
//At the same time, the price of tokens is calculated using the following formula : ((amount * IERC20(to).balanceOf(address(this)))/IERC20(from).balanceOf(address(this))))
//Let's say we need to exchange Token1 for Token2, the formula will return the following: (20 * 110)/90 = 24.44. This value will be rounded up to 24, leaving the exchange with 86 Token1.
//Totally, this means that after the exchange we have more tokens on hand than we should have


//Русская версия перевода :
//Для прохождения этого уровня, достаточно знать, что в Solidity нет чисел с плавающей точкой, а при получении такого оно округляется в меньшую сторону
//В то же время цена токенов вычисляется по следующей формуле : ((amount * IERC20(to).balanceOf(address(this)))/IERC20(from).balanceOf(address(this)))
//Представим , что нам необходимо обменять Токен1 на Токен2, согласно формуле вернётся следующее : (20 * 110)/90 = 24.44. Это значание округлитс до 24, оставив биржу с 86 Токен1
//Итогом, это означает, что полсе обмена на руках у нас остаётся больше токенов, нежели чем должно быть


//Українська версія перекладу :
//Для проходження цього рівня, достатньо знати, що в Solidity немає чисел з плаваючою крапкою, а при отриманні такого воно округляється в менший бік
//В той же час ціна токенів обчислюється за такою формулою : ((amount * IERC20(to).balanceOf(address(this)))/IERC20(from).balanceOf(address(this))))
//Уявімо, що нам необхідно обміняти Токен1 на Токен2, згідно з формулою повернеться наступне: (20 * 110)/90 = 24.44. Це значення округлиться до 24, залишивши біржу з 86 Токен1
// Підсумком, це означає, що після обміну на руках у нас залишається більше токенів, ніж повинно бути