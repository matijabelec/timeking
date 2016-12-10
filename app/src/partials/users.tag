<users>
  <div class="section-container">
    <h2>Users</h2>

    <div class="table-container">
      <table>
        <thead>
          <tr>
            <th>#</th>
            <th>Username</th>
            <th>Status</th>
            <th class="text-right">Actions</th>
          </tr>
        </thead>
        <tbody>
          <tr each={ users }>
            <td>{ this.id }</td>
            <td>{ this.username }</td>
            <td>{ this.status }</td>
            <td class="text-right">
              <a class="action-icon" href="#!/users/{ this.id }">
                <i class="material-icons">edit</i>
              </a>
              <a class="action-icon" href="#!/users/{ this.id }/delete">
                <i class="material-icons">delete</i>
              </a>
            </td>
          </tr>
        </tbody>
      </table>
    </div>
  </div>

  <div class="section-container">
    <a class="action" href="/#!/users/create">Create user</a>
  </div>

  <script>
    var self = this;

    self.on('mount', function(){
      aja()
  		  .method('get')
  		  .url('/api/users/')
  		  .data({limit: 10})
  		  .on('200', function(response) {
  				console.log(response);
  				self.update({ users: response.records });
  		  })
  		  .go();
    });
  </script>
</users>
