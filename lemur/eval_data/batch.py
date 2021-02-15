from os import system

def procedure():
    system("../app/obj/BuildIndex build_stemmed_nostopw_param database.sgml") 
    system("../app/obj/RetrievalEval eval_stemmed_nostopw_param query_stemmed_nostopw")
    system("../trec_eval qrel result_rawtf_stemmed_nostopw")

procedure()