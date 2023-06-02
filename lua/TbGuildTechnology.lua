local TbGuildTechnology = {
	{ id=1, tree=1, position=1, technologyName="technologyName1", technologyTips="technologyTips1", condition={}, picture="9", type=9, value=1, cost=150 },
	{ id=2, tree=1, position=2, technologyName="technologyName2", technologyTips="technologyTips2", condition={1}, picture="2", type=8, value=15, cost=300 },
	{ id=3, tree=1, position=3, technologyName="technologyName3", technologyTips="technologyTips3", condition={1}, picture="9", type=9, value=2, cost=250 },
	{ id=4, tree=1, position=4, technologyName="technologyName4", technologyTips="technologyTips4", condition={1}, picture="0", type=10, value=5, cost=250 },
	{ id=5, tree=1, position=5, technologyName="technologyName5", technologyTips="technologyTips5", condition={2,3}, picture="2", type=8, value=25, cost=350 },
	{ id=6, tree=1, position=6, technologyName="technologyName6", technologyTips="technologyTips6", condition={3,4}, picture="0", type=10, value=10, cost=400 },
	{ id=101, tree=2, position=1, technologyName="technologyName101", technologyTips="technologyTips101", condition={}, picture="34", type=3, value=1, cost=200 },
	{ id=102, tree=2, position=2, technologyName="technologyName101", technologyTips="technologyTips102", condition={101}, picture="33", type=1, value=1, cost=350 },
	{ id=103, tree=2, position=3, technologyName="technologyName101", technologyTips="technologyTips103", condition={101}, picture="34", type=3, value=1, cost=300 },
	{ id=104, tree=2, position=4, technologyName="technologyName101", technologyTips="technologyTips104", condition={101}, picture="53", type=4, value=1, cost=350 },
	{ id=105, tree=2, position=5, technologyName="technologyName101", technologyTips="technologyTips105", condition={102,103}, picture="35", type=2, value=1, cost=400 },
	{ id=106, tree=2, position=6, technologyName="technologyName101", technologyTips="technologyTips106", condition={103,104}, picture="53", type=4, value=1, cost=500 },
	{ id=201, tree=3, position=1, technologyName="technologyName101", technologyTips="technologyTips201", condition={}, picture="6", type=5, value=1, cost=250 },
	{ id=202, tree=3, position=2, technologyName="technologyName101", technologyTips="technologyTips202", condition={201}, picture="3", type=6, value=1, cost=350 },
	{ id=203, tree=3, position=3, technologyName="technologyName101", technologyTips="technologyTips203", condition={201}, picture="6", type=5, value=1, cost=300 },
	{ id=204, tree=3, position=4, technologyName="technologyName101", technologyTips="technologyTips204", condition={201}, picture="8", type=7, value=1, cost=450 },
	{ id=205, tree=3, position=5, technologyName="technologyName101", technologyTips="technologyTips205", condition={202,203}, picture="3", type=6, value=1, cost=600 },
	{ id=206, tree=3, position=6, technologyName="technologyName101", technologyTips="technologyTips206", condition={203,204}, picture="6", type=5, value=1, cost=550 }
}
return TbGuildTechnology