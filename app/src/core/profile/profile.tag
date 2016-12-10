<profile>

	<h2>Profile</h2>

	<p>Username: { username }</p>
	<p>Name: { name }</p>

	<button onclick="{ reload }">Reload</button>

	<script>
		this.username = 'mbelec';
		this.name = 'Matija';

		reload(e) {
			var users = [
				{ username: 'matijab0', name: 'Matek0' },
				{ username: 'matijab1', name: 'Matek1' },
				{ username: 'matijab2', name: 'Matek2' },
				{ username: 'matijab3', name: 'Matek3' },
				{ username: 'matijab4', name: 'Matek4' },
				{ username: 'matijab5', name: 'Matek5' },
				{ username: 'matijab6', name: 'Matek6' },
				{ username: 'matijab7', name: 'Matek7' },
				{ username: 'matijab8', name: 'Matek8' },
				{ username: 'matijab9', name: 'Matek9' }
			];

			var id = Math.round(Math.random() * 10) % users.length;
			this.username = users[id].username;
			this.name = users[id].name;
		}
	</script>

</profile>
