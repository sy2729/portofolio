
<home>
  <div class="container">
    <h1>Hi there from the home.tag</h1>
    <h1>I can learn <span id="spin"></span> </h1>
  </div>

  <script>

  </script>

  <style>
    :scope p {
      color: #000;
    }
    h1 {
      color: #fff;

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
      background-position: center;
      background-repeat: no-repeat;
      -webkit-background-size: cover;
      -moz-background-size: cover;
      -o-background-size: cover;
      background-size: cover;
      animation: fadein 3s ease-in-out;
      border: 1px solid #222;
      background-image: url(https://github.com/sy2729/portofolio/blob/master/img/1.jpg?raw=true);
    }

  </style>
</home>
