

/*

Literatur
https://de.wikipedia.org/wiki/I_Ging
https://en.wikipedia.org/wiki/I_Ching
https://en.wikipedia.org/wiki/List_of_hexagrams_of_the_I_Ching

两仪：U+268A ~ U+268B (⚊ ⚋)
四象：U+268C ~ U+268F (⚌ ⚍ ⚎ ⚏)
八卦：U+2630 ~ U+2637 (☰ ☱ ☲ ☳ ☴ ☵ ☶ ☷)
"☷", "☶", "☵", "☴",  "☳", "☲", "☱", "☰",
"坤", "艮", "坎", "巽", "震", "离", "兑", "乾",


Weiterführende Literatur
Foreword by Carl Gustav Jung https://www.iging.com/intro/foreword.htm

*/


( ///hexagram///
var bi = ["⚊", "⚋"];
6.do{
	bi.choose.postln;
}
)


///更简单的写法
{["⚊", "⚋"].choose.postln}.dup(6)；


( /// 128
var bi = ["⚊", "⚋"];
6.do {
 2.do{
  bi.choose.post;
 };
 "".postln; //执行一个空的命令，换行
}
)



(/////128，复杂的，效果一样
var bi = ["⚊", "⚋"];
var itemsGen = {2.collect({bi.choose})};
6.do {
 itemsGen.value().do(_.post);
 "".postln;
}
)
