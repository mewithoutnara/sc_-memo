



/////////////////////////////////////////short
(
a = {
    var freq, env, osc;
	~size = [1, 2, 3, 5, 8, 13].choose; //把local变成grobal
	freq = Array.exprand(~size, 377, 3777.77);
	env = Env.perc.kr((freq/100), (freq/1000), 0.1, -4);
	osc = {SinOsc.ar(freq, mul: (100/freq).reverse)};
	Splay.ar(osc * env, spread: 1, level: 0.3, center: 0);
}
)

(//////////choose+dup
fork{
inf.do {a.play;
		{[ ".",  "~"].choose.post}.dup(~size); //引用~size 必须是全局的或者三个字母的
		"".postln;
		exprand(0.1, 5.0).wait;

}
}
)


// 改Envelope
// Env.sine(dur: (freq/100), level: (100/freq.reverse))


(
a = {
    var freq, env, osc;
	~size = [1, 2, 3, 5, 8].choose; //把local变成grobal
	freq = Array.exprand(~size, 550.0, 5500.0); //880, 8880
	env = Env.sine(dur: freq/110, level: 110/freq);
	//env = Env.sine(dur: freq/1110, level: 110/freq);
	osc = {SinOsc.ar(freq)};
	Splay.ar(osc * EnvGen.kr(env, doneAction: Done.freeSelf), spread: 1, level: 0.2, center: 0); // doneAction: Done.freeSelf
}
)

(//////////choose+dup -> trigger
fork{
inf.do {a.play;
		{[ ".",  "~"].choose.post}.dup(~size); //引用~size 必须是全局的或者三个字母的
		"".postln;
		exprand(0.1, 50.0).wait;

}
}
)

// 进一步-> stockhausen studie i
// freq, env
