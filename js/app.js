
riot.tag2('app', '<nav></nav> <home if="{page === ⁗home⁗}"></home> <portofolio if="{page === ⁗portofolio⁗}"></portofolio>', '', '', function(opts) {
    var that = this;
    this.page = "home";
    console.log(this)

    var Router = route.create();
    Router('*', function(page) {
        that.page = page;
        that.update();
    })

    this.on("update", function() {
      console.log(this.page)
    })

    route.start(true)
});
