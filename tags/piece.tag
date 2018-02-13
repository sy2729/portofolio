
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
    margin-top: 10%;
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
  }

  .info-pic img{
    width: 99%;
    height: auto;
  }

  </style>
</piece>
