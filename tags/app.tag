
<app>

  <nav></nav>
  <home if={page === "home"}></home>
  <info if={page==="info" }></info>
  <portofolio if={page === "portofolio"}></portofolio>
  <media if={page==="mediaProduction" }></media>
  <more if={page==="more" }></more>
  <script>
    var that = this;
    this.page = "home";

    var Router = route.create();
    Router('*', function(page) {
        that.page = page;
        that.update();
    })

    this.on("update", function() {
      if(this.page === "mediaProduction") {
        this.tags.nav.videoPage = "mediaProduction";
      }else {
        this.tags.nav.videoPage = "";
      }
    })

    route.start(true)
  </script>



  <style></style>
</app>
