


* *Was für eine klangliche komposition kann ich machen, wenn ich so ein gedächtnisloser Mensch bin?* <br>
   *（Kontingenz und Tacet sind sehr wichtig, müssen berücksichtigt werden.）* <br>
<br>

erstellt am 14. 12. 2020

```supercollider

//‘... feldman becomes speacialist in as, in music , that is as slow as possible… and 

// as soft as possible.' - Karlheinz Stockhausen, English Lectures (1972)

(
a = {
    var freq, env, osc;
	~size = [1, 2, 3, 5, 8].choose; // band width of group
	freq = Array.exprand(~size, 550.0, 5500.0); // band width of pitch
	env = Env.sine(dur: freq/110, level: 110/freq); // band width of duration
	//env = Env.sine(dur: freq/1110, level: 110/freq);
	osc = {SinOsc.ar(freq)};
	Splay.ar(osc * EnvGen.kr(env, doneAction: Done.freeSelf), spread: 1, level: 0.2, center: 0); // doneAction: 2
}
)


(//////////a band of interval
fork{
inf.do {a.play;
		{[ ".",  "~"].choose.post}.dup(~size); //引用~size 必须是全局的或者三个字母的
		"".postln;
		exprand(0.1, 50.0).wait; // band width of interval, limit of time


}
}
)


// 进一步-> stockhausen studie i
// freq, env, point, group
```

<br>

## Referenz

<i>[Lecture 1 [PARTE 1/4] Stockhausen Karlheinz - English Lectures (1972)](https://www.youtube.com/watch?v=lYmMXB0e17E)<i> <br>
