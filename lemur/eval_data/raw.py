from os import system

def procedure():
    system("../app/obj/BuildIndex build_param database.sgml")
    system("../app/obj/RetrievalEval eval_param query")
    system("../trec_eval qrel result_rawtf")

procedure()