<users-list>

	<h2>{ title }</h2>

	<div class="list-items-container">
		<div class="list-items">
			<div class="list-item" each={ records }>
				<h3>{ username }</h3>
				<p>{ name }</p>
				<div class="actions">
					<button class="act-edit"><i class="material-icons">edit</i></button>
					<button class="act-remove"><i class="material-icons">delete</i></button>
				</div>
			</div>
		</div>
	</div>

	<script>
		var self = this;
		self.title = 'Users';

		aja()
		  .method('get')
		  .url('/api/users/')
		  .data({limit: 10})
		  .on('200', function(response) {
				console.log(response);
				self.update({ records: response.records });
		  })
		  .go();
	</script>

	<style>
		:scope{
			display: block;
			position: relative;
			margin: -64px auto 24px;
			max-width: 960px;
			width: 100%;
			color: #444;
			/*background: #fff none repeat scroll 0 0;*/
			/*box-shadow: 0 2px 4px 0 rgba(0, 0, 0, 0.2),
									0 25px 50px 0 rgba(0, 0, 0, 0.1);*/
		}
		:scope h2{
			margin: 0;
			padding: 18px 16px;
			background: #fff none repeat scroll 0 0;
			color: #444;
			box-shadow: 0px 0px 10px -5px #222;
		}
		:scope .list-items-container{
			margin: 16px 18px;
			/*box-shadow: 0 1px 1px rgba(0, 0, 0, 0.2), 0 8px 0 -3px #f6f6f6,
									0 9px 1px -3px rgba(0, 0, 0, 0.2), 0 16px 0 -6px #f6f6f6,
									0 17px 2px -6px rgba(0, 0, 0, 0.2);*/
		}
		:scope .list-item{
			display: block;
			box-sizing: border-box;
			position: relative;
			margin: 0;
			padding: 8px;
			/*background: #fff none repeat scroll 0 0;*/
			background: #fff none repeat scroll 0 0;
			color: #444;
			border-top: 1px solid #eee;
			box-shadow: 0 2px 4px 0 rgba(0, 0, 0, 0.2),
									0 25px 50px 0 rgba(0, 0, 0, 0.1);
			transition: margin 100ms, padding 100ms;
		}
		:scope .list-item .actions{
			display: block;
			position: absolute;
			padding: 0;
			margin: 0;
			top: 16px;
			right: 16px;
			opacity: 0;
   		transition: opacity 400ms ease-in-out;
		}
		:scope .list-item .actions button{
			padding: 4px;
			margin: 4px 0px 4px 4px;
			background: none repeat scroll 0 0;
			color: #444;
			cursor: pointer;
			border: none;
			border-radius: 50%;
			transition: box-shadow 400ms;
		}
		:scope .list-item:hover{
			margin: 18px -18px;
			padding: 24px 16px;
			background: #fff none repeat scroll 0 0;
			box-shadow: 0 2px 4px 0 rgba(0, 0, 0, 0.2),
									0 25px 50px 0 rgba(0, 0, 0, 0.1);
			transition: margin 400ms, padding 200ms;
		}
		:scope .list-item:hover .actions{
			opacity: 1;
		}
		:scope .list-item .actions button:hover{
			box-shadow: 0 2px 4px 0 rgba(0, 0, 0, 0.2),
									0 25px 50px 0 rgba(0, 0, 0, 0.1);
		}
	</style>

</users-list>
