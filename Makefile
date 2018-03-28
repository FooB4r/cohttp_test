all: main.native coclient coserver

main.native: *.ml*
	ocamlbuild -pkg cohttp.lwt $@

coclient: cohttp_client.ml
	ocamlbuild -pkg cohttp.lwt cohttp_client.native

coserver: cohttp_server.ml
	ocamlbuild -pkg cohttp.lwt cohttp_server.native

clean:
	ocamlbuild -clean
