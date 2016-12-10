<login-form class="login-container">

  <section class="dlg-login">
    <header>
      <h2>Login</h2>
    </header>

    <form action="" method="post">

      <fieldset>
        <label>
          Username
          <input name="username" type="text" autocomplete="username" pattern=".\{6,18\}" title="Username must be between 6 and 18 characters long." autofocus required>
          <span></span>
        </label>

        <label>
          Password
          <input name="password" type="password" autocomplete="off" pattern=".\{6,\}" title="Password must be at least 6 characters long." required>
          <span></span>
        </label>
      </fieldset>

      <input type="submit" value="Log in">
    </form>
  </section>

</login-form>
