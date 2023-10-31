// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

//English version:
//The vulnerability is in the base function for any contract "Fallback" which, when trying to call a non-existent function, redirects the transaction to another contract, where the change of ownership function "pwn" >>> is located.
//For the hack we need to pass the selector of the "pwn" function to the Fallback which logic will already be implemented in Delegation >>>>
//All described looks like this: a Delegation contract receives an instruction "Change owner to me" => Delegation functionality cannot do it, so the instruction goes to Fallback => Fallback redirects the instruction to another Delegate contract, where it finds its other half in the form of the "pwn" function => However, instead of implementing "pwn" in Delegate, it is implemented in Delegation => End

//Русская версия перевода :
//Уязвимость находится в базовой функции для любого контракта "Fallback" , что при попытке вызвать несуществующую функцию перенаправляет транзакцию в другой контракт, где по условию находится функция смены владльца "pwn" >>>
//Для хака нам необходимо передать в Fallback селектор функции "pwn" , логика которого уже будет реализована в контракте Delegation >>>
//Всё описанное выглядит приблизительным образом : контракт Delegation получает инструкцию "Смени владельца на меня" => функционал Delegation не может этого сделать, поэтому инструкция попадает в Fallback => Fallback перенаправляет инструкцию в другой контракт Delegate, где та находит свою вторую половинку в виде функции "pwn"  => Однако заместо реализации "pwn" в Delegate , та реализуется в Delegation => Конец

//Українська версія перекладу :
//Вразливість знаходиться в базовій функції для будь-якого контракту "Fallback" ,що при спробі викликати неіснуючу функцію перенаправляє транзакцію в інший контракт, де за умовою знаходиться функція зміни власника "pwn" >>>>
//Для хака нам необхідно передати в Fallback селектор функції "pwn" , логіка якого вже буде реалізована в контракті Delegation >>>
//Все описане виглядає приблизно так: контракт Delegation отримує інструкцію "Зміни власника на мене" => функціонал Delegation не може цього зробити, тож інструкція потрапляє до Fallback => Fallback перенаправляє інструкцію до іншого контракту Delegate, де та знаходить свою другу половинку у вигляді функції "pwn" => Проте замість реалізації "pwn" у Delegate, та реалізується у Delegation => Кінець