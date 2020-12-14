



/////////////////////////////////////////short
(
a = {
    var freq, env, osc;
	~size = [1, 2, 3, 5, 8, 13].choose; //把local变成grobal
	freq = Array.exprand(~size, 377, 3777.77);
	env = Env.perc.kr((freq/1000), (freq/100), 0.1, -4);
	osc = {SinOsc.ar(freq, mul: (100/freq.reverse))};
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


