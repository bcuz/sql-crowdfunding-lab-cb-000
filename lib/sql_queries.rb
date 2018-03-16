# Write your sql queries in this file in the appropriate method like the example below:
#
# def select_category_from_projects
# "SELECT category FROM projects;"
# end

# Make sure each ruby method returns a string containing a valid SQL statement.

def selects_the_titles_of_all_projects_and_their_pledge_amounts_alphabetized_by_name
# "Write your SQL query Here"
# difficult
# Let's SELECT from our join table all of the owners who are associated to cat number 3.
# mayb first try grouping all the info in the pledge table
# "select projects.title from projects inner join "
"select projects.title, sum(amount) from projects inner join pledges on projects.id = pledges.project_id group by pledges.project_id order by projects.title"
end

def selects_the_user_name_age_and_pledge_amount_for_all_pledges_alphabetized_by_name
# "Write your SQL query Here"
#  summing each user's pledges
"select users.name, users.age, sum(amount) from users inner join pledges on users.id = pledges.user_id group by pledges.user_id order by users.name"

end

def selects_the_titles_and_amount_over_goal_of_all_projects_that_have_met_their_funding_goal
# "Write your SQL query Here"
# started
"select projects.title, sum(amount) - projects.funding_goal from projects inner join pledges on projects.id = pledges.project_id group by pledges.project_id having sum(amount) >= projects.funding_goal"
end

def selects_user_names_and_amounts_of_all_pledges_grouped_by_name_then_orders_them_by_the_amount_and_users_name
# "Write your SQL query Here"
# "select users.name, sum(amount) from projects inner join users on projects.id = pledges.user_id group by users.name order by projects.title"
# not having fun. its about fun and money... no fun AND no money. sql queries i'll never look at again unless to review to help others.
# not sure i'd run through it again myself - dont know about access.

# that seems right.
# "select users.name, cast(sum(amount) as int) from pledges inner join users on users.id = pledges.user_id group by users.name order by sum(amount), users.name"
# wants an int but then doesnt? lel
"select users.name, sum(amount) from pledges inner join users on users.id = pledges.user_id group by users.name order by sum(amount), users.name"
end

def selects_the_category_names_and_pledge_amounts_of_all_pledges_in_the_music_category
# "Write your SQL query Here"

# "select users.name, sum(amount) from pledges inner join users on users.id = pledges.user_id group by users.name order by sum(amount), users.name"
# all pledges, not the sum of all pledges (which didnt seem to work anyway)
"select projects.category, amount from projects inner join pledges on projects.id = pledges.project_id where projects.category = 'music'"
end

def selects_the_category_name_and_the_sum_total_of_the_all_its_pledges_for_the_books_category
# "Write your SQL query Here"
# not sure how i came up with this. mostly just solved stuff in this lab, code just came out. prolly worth redoing
"select projects.category, sum(amount) from projects inner join pledges on projects.id = pledges.project_id group by projects.category having projects.category = 'books';"
end
