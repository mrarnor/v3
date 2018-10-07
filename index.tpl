<!DOCTYPE html>
<html>
<head>
	<title>verkefni 3 - B</title>
	<link rel="stylesheet" type="text/css" href="static/stylesheet.css">
</head>
<body>

	<header></header>
	%include ('header.tpl')

	<div class="row">
		<section>
		<h3>{{frettur{0}{0}}}</h3>
		</section>
		<section><h2>nyheter</h2></section>
		<section>mynd</section>
		<section>
		<ul>
		%cnt = 0;
		% for i in frettir:
	    	<li>
		        <a href="/frettir/{{cnt}}"> {{i{0}}}</a>
		    </li>
    		%cnt +=1
		%end
		</ul>
		</section>
	</div>
</body>
</html>
