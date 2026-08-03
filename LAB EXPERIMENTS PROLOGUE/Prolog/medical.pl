disease(flu, fever, cough).
disease(malaria, fever, chills).
disease(cold, cough, sneezing).
disease(covid, fever, cough).

diagnosis(Symptom1, Symptom2, Disease) :-
    disease(Disease, Symptom1, Symptom2).