<user-form>
  <div class="section-container">
    <form method="post" action="">
      <input type="text" value="{ id }" hidden>

      <label>
        <span>Username</span>
        <input type="text" name="username" required>
      </label>

      <label>
        <span>Status</span>
        <select name="status" required>
          <option disabled selected>-- status --</option>
          <option>admin</option>
          <option>limited</option>
          <option>disabled</option>
        </select>
      </label>

      <input type="submit" value="Update">
    </form>
  </div>

  <script>
    var self = this;

    self.on('before-mount', function(){
      self.id = this.opts.id;
    });
  </script>
</user-form>
