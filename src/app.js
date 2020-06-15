function generateDartCode(){
  let className = document.getElementById('dartClassName').value;
  if(className == null || className === ''){
    className = 'Welcome';
  }
  const jsonData = document.getElementById('jsonInput').value;
  const useThis = document.getElementById('useThisCheckbox').checked;
  const useNew = document.getElementById('useNewCheckbox').checked;
  const useCollectionLiterals = document.getElementById('useCLCheckbox').checked;

  console.log(`generate dart code called with classname: ${className} and json data: ${jsonData}`);
  console.log(`this: ${useThis} useNew: ${useNew} useCL: ${useCollectionLiterals}`);


  // call function to generate dart code with parameters.
  
}


document.getElementById('generateButton').onclick = generateDartCode;