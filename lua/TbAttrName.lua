local TbAttrName = {
	{ id=1, attrName="attrName1", needLvlRate=0, numType=1, fightCoefficient=4.89, clientConfusion=0.0 },
	{ id=2, attrName="attrName2", needLvlRate=1, numType=1, fightCoefficient=6.26, clientConfusion=1.0 },
	{ id=3, attrName="attrName3", needLvlRate=0, numType=1, fightCoefficient=5.14, clientConfusion=3.0 },
	{ id=4, attrName="attrName4", needLvlRate=0, numType=0, fightCoefficient=289.0, clientConfusion=0.009 },
	{ id=5, attrName="attrName5", needLvlRate=1, numType=1, fightCoefficient=5.67, clientConfusion=4.0 },
	{ id=6, attrName="attrName6", needLvlRate=0, numType=0, fightCoefficient=1492.0, clientConfusion=0.003 },
	{ id=7, attrName="attrName7", needLvlRate=0, numType=0, fightCoefficient=234.0, clientConfusion=0.002 },
	{ id=8, attrName="attrName8", needLvlRate=0, numType=0, fightCoefficient=263.0, clientConfusion=0.004 },
	{ id=9, attrName="attrName9", needLvlRate=0, numType=1, fightCoefficient=19.41, clientConfusion=0.0 },
	{ id=10, attrName="attrName10", needLvlRate=0, numType=0, fightCoefficient=364.0, clientConfusion=0.003 },
	{ id=11, attrName="attrName11", needLvlRate=0, numType=0, fightCoefficient=553.0, clientConfusion=0.002 },
	{ id=12, attrName="attrName12", needLvlRate=1, numType=1, fightCoefficient=2.5, clientConfusion=3.0 },
	{ id=13, attrName="attrName13", needLvlRate=0, numType=0, fightCoefficient=193.0, clientConfusion=0.005 },
	{ id=14, attrName="attrName14", needLvlRate=0, numType=0, fightCoefficient=579.0, clientConfusion=0.002 },
	{ id=15, attrName="attrName15", needLvlRate=0, numType=0, fightCoefficient=1439.0, clientConfusion=0.007 },
	{ id=16, attrName="attrName16", needLvlRate=0, numType=0, fightCoefficient=1531.0, clientConfusion=0.001 },
	{ id=17, attrName="attrName17", needLvlRate=0, numType=1, fightCoefficient=0.0, clientConfusion=0.0 },
	{ id=18, attrName="attrName18", needLvlRate=0, numType=0, fightCoefficient=230.0, clientConfusion=0.006 },
	{ id=19, attrName="attrName19", needLvlRate=1, numType=1, fightCoefficient=1.0, clientConfusion=0.0 },
	{ id=20, attrName="attrName20", needLvlRate=0, numType=1, fightCoefficient=3.3, clientConfusion=5.0 },
	{ id=21, attrName="attrName21", needLvlRate=0, numType=0, fightCoefficient=257.0, clientConfusion=0.004 },
	{ id=22, attrName="attrName22", needLvlRate=0, numType=1, fightCoefficient=5.91, clientConfusion=0.0 },
	{ id=23, attrName="attrName23", needLvlRate=0, numType=1, fightCoefficient=5.91, clientConfusion=0.0 },
	{ id=24, attrName="attrName24", needLvlRate=0, numType=0, fightCoefficient=326.0, clientConfusion=0.005 },
	{ id=25, attrName="attrName25", needLvlRate=0, numType=0, fightCoefficient=300.0, clientConfusion=0.003 },
	{ id=26, attrName="attrName26", needLvlRate=0, numType=0, fightCoefficient=347.0, clientConfusion=0.002 },
	{ id=27, attrName="attrName27", needLvlRate=0, numType=0, fightCoefficient=131.0, clientConfusion=0.007 },
	{ id=28, attrName="attrName28", needLvlRate=0, numType=0, fightCoefficient=84.0, clientConfusion=26.0 },
	{ id=29, attrName="attrName29", needLvlRate=0, numType=1, fightCoefficient=0.0, clientConfusion=0.0 },
	{ id=30, attrName="attrName30", needLvlRate=0, numType=1, fightCoefficient=19.41, clientConfusion=0.0 },
	{ id=31, attrName="attrName31", needLvlRate=1, numType=1, fightCoefficient=5.24, clientConfusion=7.0 },
	{ id=32, attrName="attrName32", needLvlRate=1, numType=1, fightCoefficient=0.95, clientConfusion=1.0 },
	{ id=33, attrName="attrName33", needLvlRate=1, numType=1, fightCoefficient=6.37, clientConfusion=3.0 },
	{ id=34, attrName="attrName34", needLvlRate=1, numType=1, fightCoefficient=1.71, clientConfusion=2.0 },
	{ id=35, attrName="attrName35", needLvlRate=1, numType=1, fightCoefficient=5.35, clientConfusion=4.0 },
	{ id=36, attrName="attrName36", needLvlRate=1, numType=1, fightCoefficient=1.03, clientConfusion=5.0 },
	{ id=37, attrName="attrName37", needLvlRate=0, numType=0, fightCoefficient=53.0, clientConfusion=0.001 },
	{ id=41, attrName="attrName41", needLvlRate=0, numType=0, fightCoefficient=520.0, clientConfusion=0.004 },
	{ id=42, attrName="attrName42", needLvlRate=0, numType=0, fightCoefficient=168.0, clientConfusion=0.003 },
	{ id=43, attrName="attrName43", needLvlRate=0, numType=0, fightCoefficient=592.0, clientConfusion=0.007 },
	{ id=44, attrName="attrName44", needLvlRate=0, numType=1, fightCoefficient=1.66, clientConfusion=1.0 },
	{ id=45, attrName="attrName45", needLvlRate=0, numType=0, fightCoefficient=675.0, clientConfusion=0.002 },
	{ id=46, attrName="attrName46", needLvlRate=0, numType=1, fightCoefficient=14.18, clientConfusion=4.0 },
	{ id=47, attrName="attrName47", needLvlRate=0, numType=0, fightCoefficient=0.0, clientConfusion=0.003 },
	{ id=48, attrName="attrName48", needLvlRate=0, numType=0, fightCoefficient=0.0, clientConfusion=0.005 }
}
return TbAttrName