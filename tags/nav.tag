
<nav>
    <div class="nav-bar">
      <a href="#home">Home</a>
      <a href="#info">Info</a>
      <a href="#portofolio">Portofolio</a>
      <a href="#mediaProduction">Media Production</a>
      <a href="#more">More</a>
    </div>
  <script>

  </script>

  <style>
    :scope p {
      color: #000;
    }

    .nav-bar {
      position: fixed;
      top: 10px;
      right: 0;
      z-index: 10000;
      right: 5%;
      text-align: center;
    }

    .nav-bar a{
      color: #fff;
      display: inline-block;
      padding: 0px 20px;
      text-decoration: none;
      font-size: 1.2em;
      font-weight: 500;
      position: relative;
    }

    .nav-bar a:not(a:nth-child(0)) {
      border-right: 1px solid #fff;  /*This doesn't work in Chrome*/
    }

    .nav-bar a:after {
      content: "";
      position: absolute;
      height: 1px;
      background: #fff;
      left: 0;
      bottom: -1px;
      transition: all .3s;
      -webkit-transform: scaleX(0);
      transform: scaleX(0);
      -webkit-transition: all 0.3s ease-in-out 0s;
    }

    .nav-bar a:hover::after {
      width: 100%;
      -webkit-transform: scaleX(0.6);
      transform: scaleX(0.6);
    }

    /*.fadeIn {
      animation: fadeIn 4s ease-in-out;
    }

    @@keyframes fadeIn {
      from {
        opacity: 0;
      }
      to {
        opacity: 1;
      }
    }*/

  </style>
</nav>
