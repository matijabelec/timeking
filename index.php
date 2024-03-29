<?php
	// header('Access-Control-Allow-Origin: *app1.dev');
	// header('Access-Control-Allow-Origin: http://app1.dev http://api.app1.dev');
?><!doctype html>
<html>
	<head>
		<meta charset="utf-8">
		<title>Matek's webapp</title>

		<meta name="viewport" content="width=device-width, initial-scale=1">
		<meta http-equiv="X-UA-Compatible" content="IE=edge">
		<!--[if IE]>
		<script src="https://cdnjs.cloudflare.com/ajax/libs/html5-history-api/4.2.4/history.min.js"></script>
		<![endif]-->

		<link rel="stylesheet" href="//fonts.googleapis.com/css?family=Roboto:regular,bold,italic,thin,light,bolditalic,black,medium&amp;lang=en">
		<link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons">
		<link rel="stylesheet" href="/app/style/normalize.css">
		<link rel="stylesheet" href="/app/style/core.css">
		<style type="riot"></style>
	</head>
	<body>
		<webapp class="app-page"></webapp>

		<script type="riot/tag" src="/app/src/partials/settings-form.tag"></script>

		<script type="riot/tag" src="/app/src/partials/users.tag"></script>
		<script type="riot/tag" src="/app/src/partials/user-create.tag"></script>
		<script type="riot/tag" src="/app/src/partials/user-form.tag"></script>

		<script type="riot/tag" src="/app/src/partials/schedules.tag"></script>
		<script type="riot/tag" src="/app/src/partials/schedule-create.tag"></script>
		<script type="riot/tag" src="/app/src/partials/schedule-form.tag"></script>

		<script type="riot/tag" src="/app/src/core/profile/profile.tag"></script>
		<script type="riot/tag" src="/app/src/timer/timer.tag"></script>
		<script type="riot/tag" src="/app/src/sample/sample.tag"></script>
		<script type="riot/tag" src="/app/src/users/users-list.tag"></script>
		<script type="riot/tag" src="/app/src/security/login-form.tag"></script>
		<script type="riot/tag" src="/app/src/webapp/webapp.tag"></script>

		<script type="riot/tag" src="/app/src/pages/login-page.tag"></script>

		<script src="/app/library/polyfills/polyfill.min.js"></script><!-- <script src="https://cdn.polyfill.io/v1/polyfill.min.js"></script> -->
		<script src="/app/library/aja/aja.min.js"></script><!-- <script src="https://cdnjs.cloudflare.com/ajax/libs/aja/0.4.1/aja.min.js"></script> -->
		<script src="/app/library/riot/riot+compiler.min.js"></script><!-- <script src="https://cdn.jsdelivr.net/riot/3.0/riot+compiler.min.js"></script> -->
		<script src="/app/library/riot/route.min.js"></script>
		<script>
			var api = '/api';
			riot.compile(function(){
				riot.mount('webapp');
				route.base('#!');
				route.start(true);
			});
		</script>
	</body>
</html>
