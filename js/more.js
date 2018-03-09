
riot.tag2('more', '<div class="container"> <div class="fill"> <h2>Contact Me</h2> <form action="https://formspree.io/yazeishuai@gmail.com" method="POST"> <input name="email" placeholder="Your Email" ref="form" type="email"> <textarea name="message" id="" cols="30" rows="10" placeholder="Please Leave Your Message" ref="form"></textarea> <input type="submit" value="Send"> </form> </div> <div class="shape2" ref="shape2"> <div class="eyes lefteye" ref="eye"></div> <div class="eyes righteye" ref="eye"></div> </div> </div>', 'more .container,[data-is="more"] .container{ width: 100%; height: 100%; animation: fadein 3s ease-in-out; background: #fff; display: flex; justify-content: center; align-items: center; position: relative; overflow: hidden; } more h2,[data-is="more"] h2{ text-align: center; } more form,[data-is="more"] form{ display: flex; flex-direction: column; } more textarea,[data-is="more"] textarea,more input[type="email"],[data-is="more"] input[type="email"],more input[type="submit"],[data-is="more"] input[type="submit"]{ margin-bottom: 10px; } more textarea,[data-is="more"] textarea{ min-width: 320px; height: 120px; border: 1px solid #222; padding: 5px; } more input[type="email"],[data-is="more"] input[type="email"]{ border: 1px solid #222; padding: 5px; } more input[type="submit"],[data-is="more"] input[type="submit"]{ border: 1px solid #222; height: 30px; width: 100px; background: transparent; margin: 0 auto; transition: all .3s; } more input[type="submit"]:hover,[data-is="more"] input[type="submit"]:hover{ cursor: pointer; background: #222; color: #fff; } more .shape2,[data-is="more"] .shape2{ height: 100px; width: 100px; background: #222; border-radius: 45%; position: absolute; bottom: 0; margin-bottom: -50px; left: 50%; margin-left: -50px; display: flex; justify-content: center; } more .eyes,[data-is="more"] .eyes{ margin-top: 10px; height: 20px; width: 20px; border-radius: 60%; background: #eee; position: relative; overflow: hidden; transition: all .4s cubic-bezier(0.04, 0.49, 0.4, 1.04); } more .eyes:after,[data-is="more"] .eyes:after{ content: ""; position: absolute; height: 5px; width: 5px; border-radius: 50%; top: 0px; left: 7px; background: rgb(70, 70, 70); } more .lefteye,[data-is="more"] .lefteye{ margin-right: 5px; } more .righteye,[data-is="more"] .righteye{ margin-left: 5px; } more .eyemove,[data-is="more"] .eyemove{ background: rgb(70, 70, 70); }', '', function(opts) {
    var that = this;
    this.on('mount', function() {
      var forms = this.refs.form;
      for (let i = 0; i < forms.length; i++) {

        forms[i].addEventListener('focus', function() {
          var eyes = that.refs.eye;
          for (let i = 0; i < eyes.length; i++) {
            eyes[i].classList.add('eyemove')
          }
        })

        forms[i].addEventListener('blur', function () {
          var eyes = that.refs.eye;
          for (let i = 0; i < eyes.length; i++) {
            eyes[i].classList.remove('eyemove')
          }
        })
      }

      this.refs.shape2.addEventListener("focus", function() {

      })
    })
});
