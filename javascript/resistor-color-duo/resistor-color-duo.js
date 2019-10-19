import { colorCode } from '../resistor-color/resistor-color';

export const value = ([first, second]) =>  parseInt(colorCode(first).toString() + colorCode(second).toString()) 
