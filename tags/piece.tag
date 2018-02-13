
<piece>
  <div class="container">
    <div class="container-inner">
      <div class="info">
        <div class="info-text">
          <h1>{name}</h1>
          <p>{description}</p>
          <button type="button" name="button">Description</button>
        </div>
        <div class="info-pic">
          <img src={image} alt={name}>
          <button type="button" name="button">View</button>
          <div class="info-shade"></div>
        </div>
      </div>
    </div>
  </div>
  <script>

  </script>

  <style>
  .container {
    width: 100%;
    height: 100%;
    background-image: url(./img/1.jpg);
    background-position: center;
    background-repeat: no-repeat;
    -webkit-background-size: cover;
    -moz-background-size: cover;
    -o-background-size: cover;
    background-size: cover;
    animation: fadein 3s ease-in-out;
  }

  @keyframes fadein {
    from {
      filter: blur(1px);
      filter: grayscale(1);
      filter: opacity(0);
    }
    to {
      filter: blur(0px);
      filter: grayscale(0);
      filter: opacity(1);
    }
  }

  .container-inner {
    background: rgba(0, 0, 0, 0.4);
    height: 100%;
  }

  .container-inner h1, p{
    color: #fff;
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
    margin-bottom: 30%;
  }

  .info-text button {
    background: transparent;
    transition: all .3s;
    padding: 15px 50px;
    border: 1px solid #fff;
    color: #fff;
  }

  .info-text button:hover {
    cursor: pointer;
    background: rgba(190, 190, 190, 0.3);
    color: #fff;
  }


  .info-pic {
    flex-basis: 1;
    width: 40%;
    min-width: 300px;
    position: relative;
  }

  .info-pic img{
    width: 99%;
    height: auto;
    transition: all 0.3s;
    transform: translate3d(0, 0, 0);
    position: relative;
  }

  .info-shade {
    position: absolute;
    top: 0;
    width: 99%;
    height: 99%;
    background: rgba(225, 225, 225, 0.3);
    display: none;
    opacity: 0;
    transition: all .3s;
  }

  .info-pic img:hover {
    transform: scale(1.01);
    cursor: pointer;
  }

  .info-pic button {
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
    transition: all .3s
  }

  .info-pic button:hover {
    opacity: 1;
    background: rgba(190, 190, 190, 0.3);
    cursor: pointer;
  }


  .info-pic img:hover + button {
    opacity: 1;
    -webkit-backdrop-filter: blur(2px);
  }

  .info-pic button:hover + .info-shade {
    display: block;
    opacity: 1;
  }

  </style>
</piece>
