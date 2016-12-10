<settings-form>
  <div class="section-container">
    <div class="table-container">
      <table>
        <thead>
          <tr>
            <th>#</th>
            <th>Username</th>
            <th>Status</th>
          </tr>
        </thead>
        <tbody>
          <tr>
            <td>1</td>
            <td>admin</td>
            <td>admin</td>
          </tr>
          <tr>
            <td>2</td>
            <td>user1</td>
            <td>limited</td>
          </tr>
          <tr>
            <td>3</td>
            <td>user2</td>
            <td>disabled</td>
          </tr>
        </tbody>
      </table>
    </div>
  </div>

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

      <input type="submit" value="Update">
    </form>
  </div>
</settings-form>
