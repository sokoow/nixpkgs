{ lib, fetchPypi, buildPythonPackage }:

buildPythonPackage rec {
  pname = "simpleeval";
  version = "0.9.10";
  src = fetchPypi {
    inherit pname version;
    sha256 = "692055488c2864637f6c2edb5fa48175978a2a07318009e7cf03c9790ca17bea";
  };
  meta = {
    homepage = https://github.com/danthedeckie/simpleeval;
    description = "A simple, safe single expression evaluator library";
    maintainers = with lib.maintainers; [ johbo ];
    license = lib.licenses.mit;
  };
}
