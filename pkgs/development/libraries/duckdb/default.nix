{ lib, stdenv
, fetchFromGitHub
, cmake
}:

stdenv.mkDerivation rec {
  pname = "duckdb";
  version = "0.3.2";

  src = fetchFromGitHub {
    owner = pname;
    repo = pname;
    rev = "v${version}";
    sha256 = "sha256-F5YOqDeY3rgcnuu5SNqOfUxhsaXgqvdJZTnD1unI0tc=";
  };

  nativeBuildInputs = [ cmake ];

  meta = with lib; {
    homepage = "https://github.com/duckdb/duckdb";
    description = "Embeddable SQL OLAP Database Management System";
    license = licenses.mit;
    platforms = platforms.all;
    maintainers = with maintainers; [ costrouc ];
  };
}
