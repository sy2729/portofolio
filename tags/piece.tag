
<piece>
  <div class="container">
    <div class="container-inner">
      <div class="info">
        <div class="info-text">
          <h1>{name}</h1>
          <p>{description}</p>
          <button type="button" name="button" onclick={openDescrip}>Description</button>
          <h3>My Role:</h3>
          <span each = {i in role}>{i} &nbsp;</span>
          <h3>Technology Used:</h3>
          <span each= {i in technology}>{i} &nbsp;</span>
        </div>
        <div class="info-pic" onmousemove={mouseover}>
          <img src={i} alt={name} each = {i in image} class="animate-slide">
          <a type="button" name="button" href={link}>View</a>
          <div class="info-shade"></div>
        </div>
      </div>
    </div>
  </div>
  <script>

    var that = this;

    this.openDescrip = function(event) {
      this.parent.infoPassedToDescrip = event.item.descriptionPassed;
      this.parent.descripShow = true;
      this.parent.update();
      this.parent.tags.portofoliodescription.update();
      document.querySelector('body').classList.add('prevent-scroll')
    }

    console.log(this)


    // try to createt the causole but failed

    // this.index = 0;
    //
    // this.sliderAnimate = function() {
    //   var imageGroup = document.querySelectorAll("img");
    //   for(let i = 0; i < imageGroup.length; i++) {
    //     imageGroup[i].style.display = "none";
    //   };
    //   that.index++;
    //   if(that.index > imageGroup.length) { that.index = 0;};
    //   imageGroup[that.index-1].style.display = "block";
    //   setTimeout(that.sliderAnimate, 2000)
    // }



    // var changeImage = function() {
    //   setInterval(function() {
    //     // console.log(this)
    //   }, 1000)
    // };

    this.on("mount", function() {
      // changeImage();
      // that.sliderAnimate();
    })

  </script>

  <style>
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
    background: #fff;
    /*background-image: url(../img/1.jpg);*/
    /*style="background-image: {background}"*/
  }

  .container-inner {
    height: 100%;
    background: #fff;
    /*background-image: -ms-linear-gradient(top, #4D5C74 0%, #36445A 100%);
    background-image: -moz-linear-gradient(top, #4D5C74 0%, #36445A 100%);
    background-image: -o-linear-gradient(top, #4D5C74 0%, #36445A 100%);
    background-image: -webkit-gradient(linear, left top, left bottom, color-stop(0, #4D5C74), color-stop(100, #36445A));
    background-image: -webkit-linear-gradient(top, #4D5C74 0%, #36445A 100%);
    background-image: linear-gradient(to bottom, #4D5C74 0%, #36445A 100%);*/
  }

  .container-inner h1, p{
    color: #222;
  }

  .container-inner p {
    padding: 20px 0;
  }

  .info {
      height: 100%;
      display: flex;
      justify-content: space-around;
      align-items: center;
      flex-wrap: wrap;
      overflow: hidden;
    }

  .info-text {
    /*height: 100%;*/
    flex-basis: 2;
    min-width: 400px;
    margin-bottom: 20%;
  }

  .info-text h1 {
    text-transform: uppercase;
  }

  .info-text button {
    background: transparent;
    transition: all .3s;
    padding: 15px 50px;
    border: 1px solid #222;
    color: #222;
  }

  .info-text button:hover {
    cursor: pointer;
    background: rgba(190, 190, 190, 0.3);
    color: inherit;
  }


  .info-pic {
    flex-basis: 1;
    width: 40%;
    min-width: 300px;
    position: relative;
    overflow: hidden;
    position: relative;
    /*box-shadow: 5px 5px 25px 5px rgba(255, 255, 255, 0.5);*/
    display: flex;
  }

  .info-pic img{
    width: 99.999%;
    height: auto;
    transition: all 0.3s;
    transform: translate3d(0, 0, 0);
    position: relative;
    filter: brightness(0.9);
    align-self: center;
    /*padding-right: 0 10px;*/
  }

  .info-shade {
    position: absolute;
    top: 0;
    width: 100%;
    height: 100%;
    background: rgba(0, 0, 0, 0.5);
    display: block;
    opacity: 0;
    transition: all .3s;
  }

  .info-pic img:hover {
    /*transform: scale(1.01);*/
    cursor: pointer;
  }

  .info-pic a {
    position: absolute;
    margin-top: -22.5px;
    top: 50%;
    left: 50%;
    margin-left: -63px;
    padding: 15px 50px;
    border: 1px solid #fff;
    background: transparent;
    z-index: 1000;
    color: #fff;
    opacity: 0;
    transition: all .3s;
    text-decoration: none;
  }

  .info-pic a:hover {
    opacity: 1;
    background: rgba(240, 240, 240, 0.5);
    cursor: pointer;
  }


  .info-pic:hover a {
    opacity: 1;
    -webkit-backdrop-filter: blur(2px);
  }

  .info-pic:hover .info-shade {
    display: block;
    opacity: 1;
  }

  .animate-slide {
    -webkit-animation: slide 30s ease-in-out infinite;
    animation: slide 30s ease-in-out infinite;
  }

  @keyframes slide {
    0%{
      transform: translateX(0%);
    }
    12.5%{
      transform: translateX(-100%);
    }
    25%{
      transform: translateX(-100%);
    }
    37.5%{
      transform: translateX(-200%);
    }
    50%{
      transform: translateX(-200%);
    }
    62.5%{
      transform: translateX(-100%);
    }
    75%{
      transform: translateX(-100%);
    }
    87.5%{
      transform: translateX(0%);
    }
    100%{
      transform: translateX(0%);
    }
  }

  @-webkit-keyframes slide {
    0%{
      -webkit-transform: translateX(0%);
    }
    12.5%{
      -webkit-transform: translateX(-100%);
    }
    25%{
      -webkit-transform: translateX(-100%);
    }
    37.5%{
      -webkit-transform: translateX(-200%);
    }
    50%{
      -webkit-transform: translateX(-200%);
    }
    62.5%{
      -webkit-transform: translateX(-100%);
    }
    75%{
      -webkit-transform: translateX(-100%);
    }
    87.5%{
      -webkit-transform: translateX(0%);
    }
    100%{
      -webkit-transform: translateX(0%);
    }
  }

  </style>
</piece>
