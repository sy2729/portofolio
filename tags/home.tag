
<home>
  <div class="container">
    <div class="homePic">
      <div class="blurBack"></div>
      <button class="introBtn">More</button>
    </div>
    <div class="homeText">
      <h1>I can learn <span id="spin"></span></h1>
    </div>

  </div>

  <script>

  </script>

  <style>
    :scope p {
      color: #000;
    }
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
      /* justify-content: center; */
      /* align-items: center; */
      flex-grow: 1;
      flex-basis: 300px;
      flex: 1 1 300px;
    }

    .homePic:hover {
      cursor: pointer;
    }

    .homePic:hover>.introBtn {
      opacity: 1;
    }

    .homeText {
      -webkit-flex-grow: 1;
      -webkit-flex-grow: 300px;
      flex-basis: 300px;
      flex: 1 1 300px;
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
      transform: translate3d(-1px, -1px, 0);
      border:solid 1px transparent;
      border-width:1px 0 0 1px;
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

  </style>
</home>
