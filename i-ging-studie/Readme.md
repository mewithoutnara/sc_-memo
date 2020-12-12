# I Ging Studie

<br>

两仪：U+268A ~ U+268B (⚊ ⚋) <br>
四象：U+268C ~ U+268F (⚌ ⚍ ⚎ ⚏) <br>
八卦：U+2630 ~ U+2637 (☰ ☱ ☲ ☳ ☴ ☵ ☶ ☷) <br>
"☷", "☶", "☵", "☴",  "☳", "☲", "☱", "☰", <br>
"坤", "艮", "坎", "巽", "震", "离", "兑", "乾", <br>

<br>

## I Ging die Hexagramme / 周易后天六十四卦 <br>

↓→  ☰ &nbsp; ☱ &nbsp; ☲ &nbsp; ☳ &nbsp; ☴ &nbsp; ☵ &nbsp; ☶ &nbsp; ☷ <br>
☰                             <br>
☱                             <br>
☲                             <br>
☳                             <br>
☴                             <br>
☵                             <br>
☶                             <br>
☷                             <br>

<br>

上经三十卦 <br>

<br>

01. 乾　 ䷀	02. 坤　 ䷁	03. 屯　 ䷂	04. 蒙　 ䷃	05. 需　 ䷄	06. 讼　 ䷅ <br>
07. 师　 ䷆	08. 比　 ䷇	09. 小畜 ䷈	10. 履　 ䷉	11. 泰　 ䷊	12. 否　 ䷋ <br>
13. 同人 ䷌	14. 大有 ䷍	15. 谦　 ䷎	16. 豫　 ䷏	17. 随　 ䷐	18. 蛊　 ䷑ <br>
19. 临　 ䷒	20. 观　 ䷓	21. 噬嗑 ䷔	22. 贲　 ䷕	23. 剥　 ䷖	24. 复　 ䷗ <br>
25. 无妄 ䷘	26. 大畜 ䷙	27. 颐　 ䷚	28. 大过 ䷛	29. 坎　 ䷜	30. 离　 ䷝ <br>

<br>

下经三十四卦 <br>

<br>

31. 咸　 ䷞	32. 恒　 ䷟	33. 遁　 ䷠	34. 大壮 ䷡	35. 晋　 ䷢	36. 明夷 ䷣ <br>
37. 家人 ䷤	38. 睽　 ䷥	39. 蹇　 ䷦	40. 解　 ䷧	41. 损　 ䷨	42. 益　 ䷩ <br>
43. 夬　 ䷪	44. 姤　 ䷫	45. 萃　 ䷬	46. 升　 ䷭	47. 困　 ䷮	48. 井　 ䷯ <br>
49. 革　 ䷰	50. 鼎　 ䷱	51. 震　 ䷲	52. 艮　 ䷳	53. 渐　 ䷴	54. 归妹 ䷵ <br>
55. 丰　 ䷶	56. 旅　 ䷷	57. 巽　 ䷸	58. 兑　 ䷹	59. 涣　 ䷺	60. 节　 ䷻ <br>
61. 中孚 ䷼	62. 小过 ䷽	63. 既济 ䷾	64. 未济 ䷿                         <br>

<br>

## Realisation in SuperCollider

erstellt @ 2020.12.10

```supercollider
( /// I Ging Die Hexagramme _ Schicksalvorhersage ///
var bi = ["⚊", "⚋"];
6.do{
	bi.choose.postln;
}
)




( /// von Patrick Bogeat “oder gleich automatisch jeden Morgen :)” ///
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
```
<br>

Weiterentwicklung mit Hexagramme? <br>

<br>


* ## Literatur <br>
<https://de.wikipedia.org/wiki/I_Ging> <br>
<https://en.wikipedia.org/wiki/I_Ching> <br>
<https://en.wikipedia.org/wiki/List_of_hexagrams_of_the_I_Ching> <br>
[周易六十四卦列表](https://zh.wikipedia.org/wiki/%E5%91%A8%E6%98%93%E5%85%AD%E5%8D%81%E5%9B%9B%E5%8D%A6%E5%88%97%E8%A1%A8) <br>
[易经六十四卦解读](https://baike.baidu.com/item/%E6%98%93%E7%BB%8F%E5%85%AD%E5%8D%81%E5%9B%9B%E5%8D%A6) <br>
[Yijing Hexagram Symbols](http://www.unicode.org/charts/PDF/U4DC0.pdf) <br>

<br>

* ## Weiterführende Literatur <br>
*Foreword to the I Ching von Carl Gustav Jung* &nbsp; <https://www.iging.com/intro/foreword.htm> <br>
*Synchronizität* &nbsp; <https://de.wikipedia.org/wiki/Synchronizit%C3%A4t> <br>
*Monadologie von Gottfried Wilhelm Leibniz* &nbsp; <https://de.wikipedia.org/wiki/Monadologie>
