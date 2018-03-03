
<app>

  <nav></nav>
  <home if={page === "home"}></home>
  <portofolio if={page === "portofolio"}></portofolio>
  <media if={page==="mediaProduction" }></media>

  <script>
    var that = this;
    this.page = "home";
    // console.log(this)

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
