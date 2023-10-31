// SPDX-License-Identifier: MIT

pragma solidity <0.7.0;
//English version:
/*One of the most important tasks of the level is not to be frightened by the large amount of code in it. The absence of Selfdestruct function in both contracts makes us think that this time we will work with Delgatecall, but this is only partially true
It is conceived here that the update of the contaract by the Initilize function will be performed in the context of the Proxy-Contract and not its implementation (it can be seen in the "Motorbike" constructor), this is not what we need.
It is correct to think that to call it in the context of the implementation contract we will need to calculate the address of the implementation contract in advance and call Initilize manually.
Taking the upgrader role for ourselves, we call upgradeToAndCall from the address of our malicious contract with the Selfdestruct function prepared in advance.
*/


//Русская версия перевода :
/*Одна из важнейших задач уровня не испугаться объёмное количество кода в нём. Отсутствие функции Selfdestruct в обоих контрактах наводит нас на мысль ,что в этот раз мы будем работать с Delgatecall ,но это правда лишь от части
Здесь задумано, что обновление контаракта путём функции Initilize будет выполнен в контексте Прокси-Контракта, а не его реализации (это видно в конструкторе "Motorbike") , это не то , что нам нужно
Правильно , будет думать , что для вызова в контексте контракта реализации нам необходимо будет заранее вычислить адресс контракта реализации и вызвать Initilize вручную
Забрав роль upgrader себе, мы вызываем upgradeToAndCall с адреса нашего вредоносного контракта с заранее подготовленной функцией Selfdestruct
*/


//Українська версія перекладу :
/*Одна з найважливіших задач рівня не злякатися об'ємної кількості коду в ньому. Відсутність функції Selfdestruct в обох контрактах наводить нас на думку ,що цього разу ми будемо працювати з Delgatecall ,але це правда лише частково
Тут задумано, що оновлення контаракту шляхом функції Initilize буде виконано в контексті Проксі-Контракту, а не його реалізації (це видно в конструкторі "Motorbike"), це не те, що нам потрібно
Правильно, буде думати, що для виклику в контексті контракту реалізації нам необхідно буде заздалегідь обчислити адресу контракту реалізації і викликати Initilize вручну
Забравши роль upgrader собі, ми викликаємо upgradeToAndCall з адреси нашого шкідливого контракту із заздалегідь підготовленою функцією Selfdestruct
*/