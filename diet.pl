% Food and their diet type
food(rice, carbohydrate).
food(bread, carbohydrate).
food(potato, carbohydrate).

food(milk, protein).
food(egg, protein).
food(chicken, protein).
food(fish, protein).

food(apple, vitamin).
food(orange, vitamin).
food(carrot, vitamin).

food(oil, fat).
food(butter, fat).

% Rules
diet(Food, Type) :-
    food(Food, Type).

healthy_food(Food) :-
    food(Food, vitamin).

body_building_food(Food) :-
    food(Food, protein).
