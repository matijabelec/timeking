<schedule-create>
  <div class="section-container">
    <form onsubmit={ create }>
      <label>
        <span>Schedule name</span>
        <input type="text" name="name" value={ schedule.name } onkeyup={ updateName } required>
      </label>

      <input type="submit" value="Create">
    </form>
  </div>

  <script>
    var self = this;
    self.schedule = {
      name: ''
    };

    updateName(e){
      self.schedule.name = e.target.value;
    }

    create(e){
      e.preventDefault();
      aja()
  		  .method('post')
  		  .url(api + '/schedules')
        .data({ name: self.schedule.name })
  		  .on('200', function(response){
          route('schedules');
  		  })
  		  .go();
    }
  </script>
</schedule-create>
