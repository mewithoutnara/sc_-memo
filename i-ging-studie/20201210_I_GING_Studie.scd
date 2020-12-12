

/*

Literatur
https://de.wikipedia.org/wiki/I_Ging
https://en.wikipedia.org/wiki/I_Ching
https://en.wikipedia.org/wiki/List_of_hexagrams_of_the_I_Ching
https://baike.baidu.com/item/%E6%98%93%E7%BB%8F%E5%85%AD%E5%8D%81%E5%9B%9B%E5%8D%A6

两仪：U+268A ~ U+268B (⚊ ⚋)
四象：U+268C ~ U+268F (⚌ ⚍ ⚎ ⚏)
八卦：U+2630 ~ U+2637 (☰ ☱ ☲ ☳ ☴ ☵ ☶ ☷)
"☷", "☶", "☵", "☴",  "☳", "☲", "☱", "☰",
"坤", "艮", "坎", "巽", "震", "离", "兑", "乾",


I Ching hexagrams / 周易后天六十四卦

 ↓→ ☰ ☱ ☲ ☳ ☴ ☵ ☶ ☷
 ☰
 ☱
 ☲
 ☳
 ☴
 ☵
 ☶
 ☷






上经三十卦
01. 乾　 ䷀	02. 坤　 ䷁	03. 屯　 ䷂	04. 蒙　 ䷃	05. 需　 ䷄	06. 讼　 ䷅
07. 师　 ䷆	08. 比　 ䷇	09. 小畜 ䷈	10. 履　 ䷉	11. 泰　 ䷊	12. 否　 ䷋
13. 同人 ䷌	14. 大有 ䷍	15. 谦　 ䷎	16. 豫　 ䷏	17. 随　 ䷐	18. 蛊　 ䷑
19. 临　 ䷒	20. 观　 ䷓	21. 噬嗑 ䷔	22. 贲　 ䷕	23. 剥　 ䷖	24. 复　 ䷗
25. 无妄 ䷘	26. 大畜 ䷙	27. 颐　 ䷚	28. 大过 ䷛	29. 坎　 ䷜	30. 离　 ䷝

下经三十四卦
31. 咸　 ䷞	32. 恒　 ䷟	33. 遁　 ䷠	34. 大壮 ䷡	35. 晋　 ䷢	36. 明夷 ䷣
37. 家人 ䷤	38. 睽　 ䷥	39. 蹇　 ䷦	40. 解　 ䷧	41. 损　 ䷨	42. 益　 ䷩
43. 夬　 ䷪	44. 姤　 ䷫	45. 萃　 ䷬	46. 升　 ䷭	47. 困　 ䷮	48. 井　 ䷯
49. 革　 ䷰	50. 鼎　 ䷱	51. 震　 ䷲	52. 艮　 ䷳	53. 渐　 ䷴	54. 归妹 ䷵
55. 丰　 ䷶	56. 旅　 ䷷	57. 巽　 ䷸	58. 兑　 ䷹	59. 涣　 ䷺	60. 节　 ䷻
61. 中孚 ䷼	62. 小过 ䷽	63. 既济 ䷾	64. 未济 ䷿




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


//////////////////////// von Patrick Bogeat “oder gleich automatisch jeden Morgen :)”

(
Task({
  var bi = ["⚊", "⚋"];
  inf.do {
    6.do {
      bi.choose.postln;
    };
    (60*60*24).wait;
    "".postln;
  };
}).play
)


///////////////////////// Task 用于不太频繁更改的routine，可以start,pause, resume, reset, stop
(
t = Task({
    50.do({ arg i;
        i.squared.postln;
        0.5.wait;
    });
});
)

t.start;
t.pause;
t.resume;
t.reset;
t.stop;


( var bi = ["⚊", "⚋"];
~ht = Task({
    inf.do {
		"🐔".postln;
    6.do {
      bi.choose.postln;
    };
    (60*60*24).wait;
    "".postln;
  };
})
)

~ht.start;
~ht.pause;
~ht.resume;
~ht.reset;
~ht.stop;


(
g = Task({
	inf.do{
		("Ihr Schicksal heute lautet:").postln;
	5.rand.wait;
	6.do{0.5.coin.if({"⚊"}, {"⚋"}).postln};
	"".postln;
	rrand(0.1, 1).wait;
	("Viel Erfolg! 🍀").postln;
		(60*60*24).wait;

}})
)

g.start;
g.pause;
g.resume;
g.reset;
g.stop;



/////////////////////////////// fork 管理事件流，不能pause,不能stop

( ///hexagram///
var bi = ["⚊", "⚋"];
fork{
	hf = inf.do{ arg i;
		("schicksal" ++" " ++ i).postln;
		6.do{
	bi.choose.postln;
};
	5.wait;
	"".postln;
};
})