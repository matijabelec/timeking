<schedules>
  <div class="section-container">
    <h2>Schedules</h2>

    <div class="table-container">
      <table>
        <thead>
          <tr>
            <th>#</th>
            <th>Name</th>
            <th class="text-right">Actions</th>
          </tr>
        </thead>
        <tbody>
          <tr each={ schedules }>
            <td>{ this.id }</td>
            <td>{ this.name }</td>
            <td class="text-right">
              <a class="action-icon" href="#!/schedules/{ this.id }">
                <i class="material-icons">edit</i>
              </a>
              <a class="action-icon" href="#!/schedules/{ this.id }/delete">
                <i class="material-icons">delete</i>
              </a>
            </td>
          </tr>
        </tbody>
      </table>
    </div>
  </div>

  <div class="section-container">
    <a class="action" href="/#!/schedules/create">Create schedule</a>
  </div>

  <script>
    var self = this;

    self.on('mount', function(){
      aja()
  		  .method('get')
  		  .url(api + '/schedules')
  		  /*.data({limit: 10})*/
  		  .on('200', function(response) {
  				console.log(response);
  				self.update({ schedules: response.records });
  		  })
  		  .go();
    });
  </script>
</schedules>
