<user-create>
  <div class="section-container">
    <form method="post" action="">
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

      <input type="submit" value="Create">
    </form>
  </div>
</user-create>
