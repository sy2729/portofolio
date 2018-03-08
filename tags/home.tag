
<home>
  <div class="container">
    <div class="homePic" ref = "homePic">
      <div class="blurBack"></div>
      <h1 class="picText">I can learn <span id="spin"></span></h1>
      <button class="introBtn">More</button>
    </div>
    <div class="homeText">
      <h1>Welcome</h1>
      <h2 class="title2">To Shuai Yuan's Home</h2>
      <ul class="intro-li">
        <li>I do some Web Dev</li>
        <li>and Web Design</li>
        <li>Plus Media Production</li>
      </ul>
      <div class="shape" ref="shape">
        <div class="eyes lefteye"></div>
        <div class="eyes righteye"></div>
      </div>
    </div>

  </div>

  <script>
    var that = this;
    
    this.on('mount', function() {
      this.refs.homePic.addEventListener("mouseover", function() {
        console.log(that.refs.shape)
        that.refs.shape.classList.add('shapeAnimate');
      })

      this.refs.homePic.addEventListener("mouseout", function () {
        console.log(that.refs.shape)
        that.refs.shape.classList.remove('shapeAnimate');
      })
    })

  </script>

  <style>
    h1 {
      color: #222;

      padding: 10% 10%;
    }

    #spin {
      position: relative;
    }

    #spin:after {
      content: "and play";
      animation: change 10s ease-in-out infinite;
      -webkit-animation: change 10s ease-in-out infinite;
    }

    @keyframes change {
      0% {
        content: "HTML";
      }

      20% {
        content: "CSS";
      }

      40% {
        content: "ES6";
      }

      60% {
        content: "RIOT";
      }

      80% {
        content: "VUE";
      }

      100% {
        content: "Firebase";
      }
    }

    @-webkit-keyframes change {
      0% {
        content: "HTML";
      }

      20% {
        content: "CSS";
      }

      40% {
        content: "ES6";
      }

      60% {
        content: "RIOT";
      }

      80% {
        content: "VUE";
      }

      100% {
        content: "Firebase";
      }
    }

    .container {
      width: 100%;
      height: 100%;
      animation: fadein 3s ease-in-out;
      background: #fff;
      /* 
      can't use grid for safari support

      display: grid;
      grid-template-columns: repeat(auto-fit, minmax(300px, 1fr));
      grid-auto-rows: minmax(300px, auto) */
      display: flex;
      flex-wrap: wrap;

    }

    .homePic {
      width: 100%;
      display: flex;
      flex-grow: 1;
      flex-basis: 300px;
      flex: 1 1 300px;
    }

    .homePic:hover {
      /* cursor: pointer; */
    }

    .homePic:hover>.introBtn {
      opacity: 1;
    }

    .homePic:hover>.picText {
      opacity: 1;
    }

    .homeText {
      -webkit-flex-grow: 1;
      -webkit-flex-grow: 300px;
      flex-basis: 300px;
      flex: 1 1 300px;
      position: relative;
      overflow: hidden;
    }

    .homePic:hover>.blurBack {
      /* background: rgba(20, 20, 20, 0.4); */
      filter: blur(2px);
    }

    .blurBack {
      position: absolute;
      /* background: transparent; */
      width: 50%;
      height: 100%;
      transition: all .8s;
      -webkit-transition: all .8s;
      background-position: 30%;
      background-repeat: no-repeat;
      -webkit-background-size: cover;
      -moz-background-size: cover;
      -o-background-size: cover;
      background-size: cover;
      background-image: url(./img/1.jpg);
      transition:filter .5s;
      transform: translate3d(-1px, -1px, 0);   /* this is to solve the chrome blur picture move 1px issue*/
      border:solid 1px transparent;           /* this is to solve the chrome blur picture move 1px issue*/
      border-width:1px 0 0 1px;             /* this is to solve the chrome blur picture move 1px issue*/
    }

    .introBtn {
      box-sizing: border-box;
      position: absolute;
      background: transparent;
      transition: all .3s;
      -webkit-transition: all .3s;
      width: 130px;
      height: 45px;
      padding: 15px 50px;
      border: 1px solid #fff;
      color: #fff;
      opacity: 0;
      cursor: inherit;
      left: 25%;
      margin-left: -65px;
      top: 50%;             /* hack the verticacl position*/
      margin-top: -22.5px;  /* hack the verticacl position*/
    }

    .introBtn:hover {
      cursor: pointer;
      background: #fff;
      color: #222;
      box-shadow: 2px 2px 12px 5px rgba(255, 255, 255, 0.3);
    }

    .picText {
      color: #fff;
      position: relative;
      text-align: center;
      opacity: 0;
      transition: opacity .3s;
      margin-left: 20%;
    }

    .shape {
      height: 100px;
      width: 100px;
      background: #222;
      border-radius: 45%;
      position: absolute;
      bottom: 0;
      margin-bottom: -50px;
      left: 50%;
      margin-left: -50px;
      transition: all 1s cubic-bezier(0.04, 0.49, 0.4, 1.04);
      display: flex;
      justify-content: center;
    }

    .eyes {
      margin-top: 10px;
      height: 20px;
      width: 20px;
      border-radius: 60%;
      background: #eee;
      position: relative;
      overflow: hidden;
    }

    .eyes:after {
      content: "";
      position: absolute;
      height: 5px;
      width: 5px;
      border-radius: 50%;
      top: 5px;
      background: #222;
      /* animation: blink 6s ease-in-out inherit;
      transform-origin: center;
      -moz-transform-origin: center; */
    }

    @keyframes blink {
      0% {
        transform: translateY(0);
      }
      20% {
        transform: translateY(30px);
      }
      40% {
        transform: translateY(0px);
      }
      100% {
        transform: translateY(0px);
      }
    }

    .lefteye {
      margin-right: 5px;

    }

    .righteye {
      margin-left: 5px;
      
    }

    .shapeAnimate {
      transform: translateY(50px);
    }

    .title2, .intro-li {
      padding: 0 50px;
    }

    .intro-li li {
      list-style: none;
      font-size: 1.2rem;
      line-height: 1.8rem;
    }

  </style>
</home>
