{meta_html csstheme 'main'}
{meta_html csstheme 'text'}
{meta_html csstheme 'nav'}
{meta_html csstheme 'side'}
{meta_html js $j_jelixwww.'jquery/jquery2.js'}
{meta_html js $j_basepath.'navigator.js'}

<div id="all">
	<div id="head">
	</div>
	
	<div id="nav">
		{$NAVIBAR}
	</div>
	
	<div id="sidebar">
		{$SIDEBAR}
	</div>
	
	<div id="main">
		{$MAIN}
	</div>
	
	<div id="foot">
	FFDVH &copy; 2010 créé par Thomas Lenoël<br />
	{image $j_jelixwww.'design/images/jelix_powered.png'}
	</div>
	
</div>
