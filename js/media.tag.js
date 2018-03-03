
<media.tag>
riot.tag2('p', 'Hi {message()}', '', '', function(opts) {
});
riot.tag2('script', '', '', '', function(opts) {
  this.message = function() {
    return 'there'
  }.bind(this)
});

riot.tag2('style', '', '', '', function(opts) {
  :scope p {
    color: #000;
  }
});
</media.tag>
