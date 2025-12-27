% Symptoms
symptom(fever).
symptom(cough).
symptom(headache).
symptom(sneeze).
symptom(body_pain).
symptom(vomiting).

% Disease rules
disease(flu) :-
    symptom(fever),
    symptom(cough),
    symptom(body_pain).

disease(cold) :-
    symptom(sneeze),
    symptom(cough).

disease(migraine) :-
    symptom(headache).

disease(food_poisoning) :-
    symptom(vomiting),
    symptom(fever).
