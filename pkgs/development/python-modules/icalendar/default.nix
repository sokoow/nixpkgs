{ stdenv
, buildPythonPackage
, fetchPypi
, setuptools
, dateutil
, pytz
}:

buildPythonPackage rec {
  version = "4.0.4";
  pname = "icalendar";

  src = fetchPypi {
    inherit pname version;
    sha256 = "347151cb935f5f2f83d58f6dd8aef8558df69f6c1709f1d2cab2000b36def299";
  };

  buildInputs = [ setuptools ];
  propagatedBuildInputs = [ dateutil pytz ];

  meta = with stdenv.lib; {
    description = "A parser/generator of iCalendar files";
    homepage = "https://icalendar.readthedocs.org/";
    license = licenses.bsd2;
    maintainers = with maintainers; [ olcai ];
  };

}
