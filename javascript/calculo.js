
  function calcular() {

    
    var metros = Number(input_metros.value);
    var hectares = metros / 10000;
    div_calculo.innerHTML = ``;

    console.log(metros);

    div_calculo.innerHTML = `<br> Você possui ${hectares} em hectares de terra`;

    if (isNaN(metros) || input_metros.value == "" || input_metros.value == 0) {
      alert("Por favor, insira um valor válido para metros.");
      div_calculo.innerHTML = ``;
  }
  }

  