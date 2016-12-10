<schedule-form>
  <div class="section-container">
    <form>
      <input type="text" value={ schedule.id }>

      <label>
        <span>Name</span>
        <input type="text" name="username" value={ schedule.name } onkeyup={ updateName } required>
      </label>

      <input type="submit" value="Update">
    </form>
  </div>

  <script>
    var self = this;

    updateName(e){
      self.schedule.name = e.target.value;
    }

    self.on('before-mount', function(){
      self.id = this.opts.id;
    });

    self.on('mount', function(){
      aja()
  		  .method('get')
  		  .url(api + '/schedules/' + self.id)
  		  /*.data({limit: 10})*/
  		  .on('200', function(response) {
  				console.log(response);
  				self.update({ schedule: response.record });
  		  })
  		  .go();
    });
  </script>
</schedule-form>
