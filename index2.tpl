<html>
<head>
	<meta charset="utf-8">
	<title>Json</title>
	<link rel="stylesheet" type="text/css" href="static/style.css">
</head>
<body>
	%include("header.tpl")

	<div class="row">

		<section>
			<h2>Gengi gjaldmiðla frá apis</h2>
			<ul>
				%for i in data['results']:
					<li>
						{{i['shortName']}}  {{i['longName']}} - ISKR: ['value']}}
					</li>
				%end
			</ul>
		</section>
	</div>
</body>
</html>