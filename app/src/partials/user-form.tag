<user-form>
  <div class="section-container">
    <form method="post" action="">
      <input type="text" value="{ user.id }" hidden>

      <label>
        <span>Username</span>
        <input type="text" name="username" value={ user.username } required>
      </label>

      <label>
        <span>Status</span>
        <select name="status" required>
          <option value="" disabled selected={ user.status == '' }>-- status --</option>
          <option value="admin" selected={ user.status == 'admin' }>admin</option>
          <option value="limited" selected={ user.status == 'limited' }>limited</option>
          <option value="disabled" selected={ user.status == 'disabled' }>disabled</option>
        </select>
      </label>

      <input type="submit" value="Update">
    </form>
  </div>

  <script>
    var self = this;

    self.on('before-mount', function(){
      self.id = this.opts.id;
      self.user = {};
    });

    self.on('mount', function(){
      aja()
  		  .method('get')
  		  .url(api + '/users/' + self.id)
  		  .on('200', function(response) {
  				self.update({ user: response.record });
  		  })
  		  .go();
    });
  </script>
</user-form>
