<webapp class="app-content">
	<header class="app-topbar fixed">
		<button class="menu-button" onclick="{ toggle_sidebar }">
			<i class="material-icons">menu</i>
		</button>
		<ul>
			<li>
				<a href="">News</a>
			</li>
			<li>
				<a href="">Account</a>
			</li>
		</ul>
	</header>

	<main class="app-main-content">

		<div class="app-main-preview"></div>

		<div class="section-container">
			<footer>
				<p>Developed by <a href="">Matija Belec</a>.</p>
			</footer>
		</div>
	</main>

	<div class="app-sidebar { preview: sidebar }">
		<div class="app-sidebar-topbar">
			<button class="menu-button close" onclick="{ hide_sidebar }">
				<i class="material-icons">close</i>
			</button>
		</div>
		<div class="app-sidebar-account">
			<img class="account-avatar" src="" alt="">
			<p class="account-username">Matija</p>
		</div>
		<hr>
		<nav class="app-sidebar-nav">
			<ul>
				<li>
					<i class="material-icons">people</i>
					<a href="#!/users">Users</a>
				</li>
				<li>
					<i class="material-icons">schedule</i>
					<a href="#!/schedules">Schedules</a>
				</li>
				<li>
					<i class="material-icons">event</i>
					<a href="#!/events">Events</a>
				</li>
				<li class="separator"></li>
				<li>
					<i class="material-icons">settings</i>
					<a href="#!/settings">Settings</a>
				</li>
			</ul>
		</nav>
	</div>

	<script>
		var self = this;
		self.sidebar = false;

		toggle_sidebar(e){
			self.sidebar = !self.sidebar;
		}

		hide_sidebar(e){
			self.sidebar = false;
		}

		route('/users/create', function(){
			riot.mount('.app-main-preview', 'user-create');
		});
		route('/users/*', function(id){
			riot.mount('.app-main-preview', 'user-form', {'id': id});
		});
		route('/users', function(){
			riot.mount('.app-main-preview', 'users');
		});

		route('/schedules/create', function(){
			riot.mount('.app-main-preview', 'schedule-create');
		});
		route('/schedules', function(){
			riot.mount('.app-main-preview', 'schedules');
		});

		route('/events', function(){
			/*riot.mount('.app-main-content', 'events');*/
		});

		route('/settings', function(){
			riot.mount('.app-main-content', 'settings-form');
		});

		route(function(){

		});
	</script>

</webapp>
