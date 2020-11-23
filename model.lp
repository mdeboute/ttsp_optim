\ LP format - for model browsing. Use MPS format to capture full model detail.
Minimize
  28 f(0) + 14 f(1) + 4 f(2) + f(3)
Subject To
 Finish_time_f1_>=_d(0)_+_p(0): - d(0) + f(0) >= 60
 Finish_time_f3_>=_d(1)_+_p(1): - d(1) + f(2) >= 60
 Finish_time_f1_>=_d(2)_+_p(2): - d(2) + f(0) >= 15
 Finish_time_f2_>=_d(3)_+_p(3): - d(3) + f(1) >= 15
 Finish_time_f1_>=_d(4)_+_p(4): - d(4) + f(0) >= 60
 Finish_time_f4_>=_d(0)_+_p(0): - d(0) + f(3) >= 60
 Finish_time_f4_>=_d(1)_+_p(1): - d(1) + f(3) >= 60
 Finish_time_f4_>=_d(2)_+_p(2): - d(2) + f(3) >= 15
 Finish_time_f4_>=_d(3)_+_p(3): - d(3) + f(3) >= 15
 Finish_time_f4_>=_d(4)_+_p(4): - d(4) + f(3) >= 60
 Subcontracting_budget_(0): 400 z(0) <= 0
 Subcontracting_budget_(1): 400 z(1) <= 0
 Subcontracting_budget_(2): 100 z(2) <= 0
 Subcontracting_budget_(3): 300 z(3) <= 0
 Subcontracting_budget_(4): 150 z(4) <= 0
 One_tech_is_used_at_most_in_one_team_per_day_(0): x(0,_0,_0) + x(0,_0,_1)
   + x(0,_0,_2) + x(0,_0,_3) + x(0,_0,_4) <= 1
 One_tech_is_used_at_most_in_one_team_per_day_(0): x(0,_2,_0) + x(0,_2,_1)
   + x(0,_2,_2) + x(0,_2,_3) + x(0,_2,_4) <= 1
 One_tech_is_used_at_most_in_one_team_per_day_(0): x(0,_3,_0) + x(0,_3,_1)
   + x(0,_3,_2) + x(0,_3,_3) + x(0,_3,_4) <= 1
 One_tech_is_used_at_most_in_one_team_per_day_(0): x(0,_4,_0) + x(0,_4,_1)
   + x(0,_4,_2) + x(0,_4,_3) + x(0,_4,_4) <= 1
 One_tech_is_used_at_most_in_one_team_per_day_(1): x(1,_1,_0) + x(1,_1,_1)
   + x(1,_1,_2) + x(1,_1,_3) + x(1,_1,_4) <= 1
 One_tech_is_used_at_most_in_one_team_per_day_(1): x(1,_3,_0) + x(1,_3,_1)
   + x(1,_3,_2) + x(1,_3,_3) + x(1,_3,_4) <= 1
 One_tech_is_used_at_most_in_one_team_per_day_(1): x(1,_4,_0) + x(1,_4,_1)
   + x(1,_4,_2) + x(1,_4,_3) + x(1,_4,_4) <= 1
 One_tech_is_used_at_most_in_one_team_per_day_(2): x(2,_0,_0) + x(2,_0,_1)
   + x(2,_0,_2) + x(2,_0,_3) + x(2,_0,_4) <= 1
 One_tech_is_used_at_most_in_one_team_per_day_(2): x(2,_1,_0) + x(2,_1,_1)
   + x(2,_1,_2) + x(2,_1,_3) + x(2,_1,_4) <= 1
 One_tech_is_used_at_most_in_one_team_per_day_(2): x(2,_2,_0) + x(2,_2,_1)
   + x(2,_2,_2) + x(2,_2,_3) + x(2,_2,_4) <= 1
 One_tech_is_used_at_most_in_one_team_per_day_(2): x(2,_4,_0) + x(2,_4,_1)
   + x(2,_4,_2) + x(2,_4,_3) + x(2,_4,_4) <= 1
 One_tech_is_used_at_most_in_one_team_per_day_(3): x(3,_0,_0) + x(3,_0,_1)
   + x(3,_0,_2) + x(3,_0,_3) + x(3,_0,_4) <= 1
 One_tech_is_used_at_most_in_one_team_per_day_(3): x(3,_1,_0) + x(3,_1,_1)
   + x(3,_1,_2) + x(3,_1,_3) + x(3,_1,_4) <= 1
 One_tech_is_used_at_most_in_one_team_per_day_(3): x(3,_2,_0) + x(3,_2,_1)
   + x(3,_2,_2) + x(3,_2,_3) + x(3,_2,_4) <= 1
 One_tech_is_used_at_most_in_one_team_per_day_(3): x(3,_3,_0) + x(3,_3,_1)
   + x(3,_3,_2) + x(3,_3,_3) + x(3,_3,_4) <= 1
 One_tech_is_used_at_most_in_one_team_per_day_(4): x(4,_0,_0) + x(4,_0,_1)
   + x(4,_0,_2) + x(4,_0,_3) + x(4,_0,_4) <= 1
 One_tech_is_used_at_most_in_one_team_per_day_(4): x(4,_1,_0) + x(4,_1,_1)
   + x(4,_1,_2) + x(4,_1,_3) + x(4,_1,_4) <= 1
 One_tech_is_used_at_most_in_one_team_per_day_(4): x(4,_2,_0) + x(4,_2,_1)
   + x(4,_2,_2) + x(4,_2,_3) + x(4,_2,_4) <= 1
 One_tech_is_used_at_most_in_one_team_per_day_(4): x(4,_3,_0) + x(4,_3,_1)
   + x(4,_3,_2) + x(4,_3,_3) + x(4,_3,_4) <= 1
 One_tech_is_used_at_most_in_one_team_per_day_(4): x(4,_4,_0) + x(4,_4,_1)
   + x(4,_4,_2) + x(4,_4,_3) + x(4,_4,_4) <= 1
 Unavailable_technicians_are_not_used_(0): x(0,_1,_0) + x(0,_1,_1)
   + x(0,_1,_2) + x(0,_1,_3) + x(0,_1,_4) = 0
 Unavailable_technicians_are_not_used_(1): x(1,_0,_0) + x(1,_0,_1)
   + x(1,_0,_2) + x(1,_0,_3) + x(1,_0,_4) = 0
 Unavailable_technicians_are_not_used_(1): x(1,_2,_0) + x(1,_2,_1)
   + x(1,_2,_2) + x(1,_2,_3) + x(1,_2,_4) = 0
 Unavailable_technicians_are_not_used_(2): x(2,_3,_0) + x(2,_3,_1)
   + x(2,_3,_2) + x(2,_3,_3) + x(2,_3,_4) = 0
 Unavailable_technicians_are_not_used_(3): x(3,_4,_0) + x(3,_4,_1)
   + x(3,_4,_2) + x(3,_4,_3) + x(3,_4,_4) = 0
 Each_task_is_executed_or_subcontracted_(0): y(0,_0,_0) + y(0,_0,_1)
   + y(0,_0,_2) + y(0,_0,_3) + y(0,_0,_4) + y(0,_1,_0) + y(0,_1,_1)
   + y(0,_1,_2) + y(0,_1,_3) + y(0,_1,_4) + y(0,_2,_0) + y(0,_2,_1)
   + y(0,_2,_2) + y(0,_2,_3) + y(0,_2,_4) + y(0,_3,_0) + y(0,_3,_1)
   + y(0,_3,_2) + y(0,_3,_3) + y(0,_3,_4) + y(0,_4,_0) + y(0,_4,_1)
   + y(0,_4,_2) + y(0,_4,_3) + y(0,_4,_4) + z(0) = 1
 Each_task_is_executed_or_subcontracted_(1): y(1,_0,_0) + y(1,_0,_1)
   + y(1,_0,_2) + y(1,_0,_3) + y(1,_0,_4) + y(1,_1,_0) + y(1,_1,_1)
   + y(1,_1,_2) + y(1,_1,_3) + y(1,_1,_4) + y(1,_2,_0) + y(1,_2,_1)
   + y(1,_2,_2) + y(1,_2,_3) + y(1,_2,_4) + y(1,_3,_0) + y(1,_3,_1)
   + y(1,_3,_2) + y(1,_3,_3) + y(1,_3,_4) + y(1,_4,_0) + y(1,_4,_1)
   + y(1,_4,_2) + y(1,_4,_3) + y(1,_4,_4) + z(1) = 1
 Each_task_is_executed_or_subcontracted_(2): y(2,_0,_0) + y(2,_0,_1)
   + y(2,_0,_2) + y(2,_0,_3) + y(2,_0,_4) + y(2,_1,_0) + y(2,_1,_1)
   + y(2,_1,_2) + y(2,_1,_3) + y(2,_1,_4) + y(2,_2,_0) + y(2,_2,_1)
   + y(2,_2,_2) + y(2,_2,_3) + y(2,_2,_4) + y(2,_3,_0) + y(2,_3,_1)
   + y(2,_3,_2) + y(2,_3,_3) + y(2,_3,_4) + y(2,_4,_0) + y(2,_4,_1)
   + y(2,_4,_2) + y(2,_4,_3) + y(2,_4,_4) + z(2) = 1
 Each_task_is_executed_or_subcontracted_(3): y(3,_0,_0) + y(3,_0,_1)
   + y(3,_0,_2) + y(3,_0,_3) + y(3,_0,_4) + y(3,_1,_0) + y(3,_1,_1)
   + y(3,_1,_2) + y(3,_1,_3) + y(3,_1,_4) + y(3,_2,_0) + y(3,_2,_1)
   + y(3,_2,_2) + y(3,_2,_3) + y(3,_2,_4) + y(3,_3,_0) + y(3,_3,_1)
   + y(3,_3,_2) + y(3,_3,_3) + y(3,_3,_4) + y(3,_4,_0) + y(3,_4,_1)
   + y(3,_4,_2) + y(3,_4,_3) + y(3,_4,_4) + z(3) = 1
 Each_task_is_executed_or_subcontracted_(4): y(4,_0,_0) + y(4,_0,_1)
   + y(4,_0,_2) + y(4,_0,_3) + y(4,_0,_4) + y(4,_1,_0) + y(4,_1,_1)
   + y(4,_1,_2) + y(4,_1,_3) + y(4,_1,_4) + y(4,_2,_0) + y(4,_2,_1)
   + y(4,_2,_2) + y(4,_2,_3) + y(4,_2,_4) + y(4,_3,_0) + y(4,_3,_1)
   + y(4,_3,_2) + y(4,_3,_3) + y(4,_3,_4) + y(4,_4,_0) + y(4,_4,_1)
   + y(4,_4,_2) + y(4,_4,_3) + y(4,_4,_4) + z(4) = 1
 Each_task_is_performed_by_a_team_with_the_appropriate_skills_(0):
   x(0,_0,_0) + x(2,_0,_0) + x(3,_0,_0) + x(4,_0,_0) >= 0
 Each_task_is_performed_by_a_team_with_the_appropriate_skills_(0):
   x(2,_0,_0) >= 0
 Each_task_is_performed_by_a_team_with_the_appropriate_skills_(0):
   x(0,_0,_0) + x(2,_0,_0) + x(3,_0,_0) + x(4,_0,_0) >= 0
 Each_task_is_performed_by_a_team_with_the_appropriate_skills_(0):
   x(0,_0,_0) + x(2,_0,_0) + x(3,_0,_0) >= 0
 Each_task_is_performed_by_a_team_with_the_appropriate_skills_(0):
   x(0,_0,_0) + x(2,_0,_0) + x(3,_0,_0) + x(4,_0,_0) - y(0,_0,_0) >= 0
 Each_task_is_performed_by_a_team_with_the_appropriate_skills_(0):
   x(0,_0,_0) + x(4,_0,_0) >= 0
 Each_task_is_performed_by_a_team_with_the_appropriate_skills_(0):
   x(0,_0,_1) + x(2,_0,_1) + x(3,_0,_1) + x(4,_0,_1) >= 0
 Each_task_is_performed_by_a_team_with_the_appropriate_skills_(0):
   x(2,_0,_1) >= 0
 Each_task_is_performed_by_a_team_with_the_appropriate_skills_(0):
   x(0,_0,_1) + x(2,_0,_1) + x(3,_0,_1) + x(4,_0,_1) >= 0
 Each_task_is_performed_by_a_team_with_the_appropriate_skills_(0):
   x(0,_0,_1) + x(2,_0,_1) + x(3,_0,_1) >= 0
 Each_task_is_performed_by_a_team_with_the_appropriate_skills_(0):
   x(0,_0,_1) + x(2,_0,_1) + x(3,_0,_1) + x(4,_0,_1) - y(0,_0,_1) >= 0
 Each_task_is_performed_by_a_team_with_the_appropriate_skills_(0):
   x(0,_0,_1) + x(4,_0,_1) >= 0
 Each_task_is_performed_by_a_team_with_the_appropriate_skills_(0):
   x(0,_0,_2) + x(2,_0,_2) + x(3,_0,_2) + x(4,_0,_2) >= 0
 Each_task_is_performed_by_a_team_with_the_appropriate_skills_(0):
   x(2,_0,_2) >= 0
 Each_task_is_performed_by_a_team_with_the_appropriate_skills_(0):
   x(0,_0,_2) + x(2,_0,_2) + x(3,_0,_2) + x(4,_0,_2) >= 0
 Each_task_is_performed_by_a_team_with_the_appropriate_skills_(0):
   x(0,_0,_2) + x(2,_0,_2) + x(3,_0,_2) >= 0
 Each_task_is_performed_by_a_team_with_the_appropriate_skills_(0):
   x(0,_0,_2) + x(2,_0,_2) + x(3,_0,_2) + x(4,_0,_2) - y(0,_0,_2) >= 0
 Each_task_is_performed_by_a_team_with_the_appropriate_skills_(0):
   x(0,_0,_2) + x(4,_0,_2) >= 0
 Each_task_is_performed_by_a_team_with_the_appropriate_skills_(0):
   x(0,_0,_3) + x(2,_0,_3) + x(3,_0,_3) + x(4,_0,_3) >= 0
 Each_task_is_performed_by_a_team_with_the_appropriate_skills_(0):
   x(2,_0,_3) >= 0
 Each_task_is_performed_by_a_team_with_the_appropriate_skills_(0):
   x(0,_0,_3) + x(2,_0,_3) + x(3,_0,_3) + x(4,_0,_3) >= 0
 Each_task_is_performed_by_a_team_with_the_appropriate_skills_(0):
   x(0,_0,_3) + x(2,_0,_3) + x(3,_0,_3) >= 0
 Each_task_is_performed_by_a_team_with_the_appropriate_skills_(0):
   x(0,_0,_3) + x(2,_0,_3) + x(3,_0,_3) + x(4,_0,_3) - y(0,_0,_3) >= 0
 Each_task_is_performed_by_a_team_with_the_appropriate_skills_(0):
   x(0,_0,_3) + x(4,_0,_3) >= 0
 Each_task_is_performed_by_a_team_with_the_appropriate_skills_(0):
   x(0,_0,_4) + x(2,_0,_4) + x(3,_0,_4) + x(4,_0,_4) >= 0
 Each_task_is_performed_by_a_team_with_the_appropriate_skills_(0):
   x(2,_0,_4) >= 0
 Each_task_is_performed_by_a_team_with_the_appropriate_skills_(0):
   x(0,_0,_4) + x(2,_0,_4) + x(3,_0,_4) + x(4,_0,_4) >= 0
 Each_task_is_performed_by_a_team_with_the_appropriate_skills_(0):
   x(0,_0,_4) + x(2,_0,_4) + x(3,_0,_4) >= 0
 Each_task_is_performed_by_a_team_with_the_appropriate_skills_(0):
   x(0,_0,_4) + x(2,_0,_4) + x(3,_0,_4) + x(4,_0,_4) - y(0,_0,_4) >= 0
 Each_task_is_performed_by_a_team_with_the_appropriate_skills_(0):
   x(0,_0,_4) + x(4,_0,_4) >= 0
 Each_task_is_performed_by_a_team_with_the_appropriate_skills_(0):
   x(1,_1,_0) + x(2,_1,_0) + x(3,_1,_0) + x(4,_1,_0) >= 0
 Each_task_is_performed_by_a_team_with_the_appropriate_skills_(0):
   x(2,_1,_0) >= 0
 Each_task_is_performed_by_a_team_with_the_appropriate_skills_(0):
   x(1,_1,_0) + x(2,_1,_0) + x(3,_1,_0) + x(4,_1,_0) >= 0
 Each_task_is_performed_by_a_team_with_the_appropriate_skills_(0):
   x(1,_1,_0) + x(2,_1,_0) + x(3,_1,_0) >= 0
 Each_task_is_performed_by_a_team_with_the_appropriate_skills_(0):
   x(1,_1,_0) + x(2,_1,_0) + x(3,_1,_0) + x(4,_1,_0) - y(0,_1,_0) >= 0
 Each_task_is_performed_by_a_team_with_the_appropriate_skills_(0):
   x(1,_1,_0) + x(4,_1,_0) >= 0
 Each_task_is_performed_by_a_team_with_the_appropriate_skills_(0):
   x(1,_1,_1) + x(2,_1,_1) + x(3,_1,_1) + x(4,_1,_1) >= 0
 Each_task_is_performed_by_a_team_with_the_appropriate_skills_(0):
   x(2,_1,_1) >= 0
 Each_task_is_performed_by_a_team_with_the_appropriate_skills_(0):
   x(1,_1,_1) + x(2,_1,_1) + x(3,_1,_1) + x(4,_1,_1) >= 0
 Each_task_is_performed_by_a_team_with_the_appropriate_skills_(0):
   x(1,_1,_1) + x(2,_1,_1) + x(3,_1,_1) >= 0
 Each_task_is_performed_by_a_team_with_the_appropriate_skills_(0):
   x(1,_1,_1) + x(2,_1,_1) + x(3,_1,_1) + x(4,_1,_1) - y(0,_1,_1) >= 0
 Each_task_is_performed_by_a_team_with_the_appropriate_skills_(0):
   x(1,_1,_1) + x(4,_1,_1) >= 0
 Each_task_is_performed_by_a_team_with_the_appropriate_skills_(0):
   x(1,_1,_2) + x(2,_1,_2) + x(3,_1,_2) + x(4,_1,_2) >= 0
 Each_task_is_performed_by_a_team_with_the_appropriate_skills_(0):
   x(2,_1,_2) >= 0
 Each_task_is_performed_by_a_team_with_the_appropriate_skills_(0):
   x(1,_1,_2) + x(2,_1,_2) + x(3,_1,_2) + x(4,_1,_2) >= 0
 Each_task_is_performed_by_a_team_with_the_appropriate_skills_(0):
   x(1,_1,_2) + x(2,_1,_2) + x(3,_1,_2) >= 0
 Each_task_is_performed_by_a_team_with_the_appropriate_skills_(0):
   x(1,_1,_2) + x(2,_1,_2) + x(3,_1,_2) + x(4,_1,_2) - y(0,_1,_2) >= 0
 Each_task_is_performed_by_a_team_with_the_appropriate_skills_(0):
   x(1,_1,_2) + x(4,_1,_2) >= 0
 Each_task_is_performed_by_a_team_with_the_appropriate_skills_(0):
   x(1,_1,_3) + x(2,_1,_3) + x(3,_1,_3) + x(4,_1,_3) >= 0
 Each_task_is_performed_by_a_team_with_the_appropriate_skills_(0):
   x(2,_1,_3) >= 0
 Each_task_is_performed_by_a_team_with_the_appropriate_skills_(0):
   x(1,_1,_3) + x(2,_1,_3) + x(3,_1,_3) + x(4,_1,_3) >= 0
 Each_task_is_performed_by_a_team_with_the_appropriate_skills_(0):
   x(1,_1,_3) + x(2,_1,_3) + x(3,_1,_3) >= 0
 Each_task_is_performed_by_a_team_with_the_appropriate_skills_(0):
   x(1,_1,_3) + x(2,_1,_3) + x(3,_1,_3) + x(4,_1,_3) - y(0,_1,_3) >= 0
 Each_task_is_performed_by_a_team_with_the_appropriate_skills_(0):
   x(1,_1,_3) + x(4,_1,_3) >= 0
 Each_task_is_performed_by_a_team_with_the_appropriate_skills_(0):
   x(1,_1,_4) + x(2,_1,_4) + x(3,_1,_4) + x(4,_1,_4) >= 0
 Each_task_is_performed_by_a_team_with_the_appropriate_skills_(0):
   x(2,_1,_4) >= 0
 Each_task_is_performed_by_a_team_with_the_appropriate_skills_(0):
   x(1,_1,_4) + x(2,_1,_4) + x(3,_1,_4) + x(4,_1,_4) >= 0
 Each_task_is_performed_by_a_team_with_the_appropriate_skills_(0):
   x(1,_1,_4) + x(2,_1,_4) + x(3,_1,_4) >= 0
 Each_task_is_performed_by_a_team_with_the_appropriate_skills_(0):
   x(1,_1,_4) + x(2,_1,_4) + x(3,_1,_4) + x(4,_1,_4) - y(0,_1,_4) >= 0
 Each_task_is_performed_by_a_team_with_the_appropriate_skills_(0):
   x(1,_1,_4) + x(4,_1,_4) >= 0
 Each_task_is_performed_by_a_team_with_the_appropriate_skills_(0):
   x(0,_2,_0) + x(2,_2,_0) + x(3,_2,_0) + x(4,_2,_0) >= 0
 Each_task_is_performed_by_a_team_with_the_appropriate_skills_(0):
   x(2,_2,_0) >= 0
 Each_task_is_performed_by_a_team_with_the_appropriate_skills_(0):
   x(0,_2,_0) + x(2,_2,_0) + x(3,_2,_0) + x(4,_2,_0) >= 0
 Each_task_is_performed_by_a_team_with_the_appropriate_skills_(0):
   x(0,_2,_0) + x(2,_2,_0) + x(3,_2,_0) >= 0
 Each_task_is_performed_by_a_team_with_the_appropriate_skills_(0):
   x(0,_2,_0) + x(2,_2,_0) + x(3,_2,_0) + x(4,_2,_0) - y(0,_2,_0) >= 0
 Each_task_is_performed_by_a_team_with_the_appropriate_skills_(0):
   x(0,_2,_0) + x(4,_2,_0) >= 0
 Each_task_is_performed_by_a_team_with_the_appropriate_skills_(0):
   x(0,_2,_1) + x(2,_2,_1) + x(3,_2,_1) + x(4,_2,_1) >= 0
 Each_task_is_performed_by_a_team_with_the_appropriate_skills_(0):
   x(2,_2,_1) >= 0
 Each_task_is_performed_by_a_team_with_the_appropriate_skills_(0):
   x(0,_2,_1) + x(2,_2,_1) + x(3,_2,_1) + x(4,_2,_1) >= 0
 Each_task_is_performed_by_a_team_with_the_appropriate_skills_(0):
   x(0,_2,_1) + x(2,_2,_1) + x(3,_2,_1) >= 0
 Each_task_is_performed_by_a_team_with_the_appropriate_skills_(0):
   x(0,_2,_1) + x(2,_2,_1) + x(3,_2,_1) + x(4,_2,_1) - y(0,_2,_1) >= 0
 Each_task_is_performed_by_a_team_with_the_appropriate_skills_(0):
   x(0,_2,_1) + x(4,_2,_1) >= 0
 Each_task_is_performed_by_a_team_with_the_appropriate_skills_(0):
   x(0,_2,_2) + x(2,_2,_2) + x(3,_2,_2) + x(4,_2,_2) >= 0
 Each_task_is_performed_by_a_team_with_the_appropriate_skills_(0):
   x(2,_2,_2) >= 0
 Each_task_is_performed_by_a_team_with_the_appropriate_skills_(0):
   x(0,_2,_2) + x(2,_2,_2) + x(3,_2,_2) + x(4,_2,_2) >= 0
 Each_task_is_performed_by_a_team_with_the_appropriate_skills_(0):
   x(0,_2,_2) + x(2,_2,_2) + x(3,_2,_2) >= 0
 Each_task_is_performed_by_a_team_with_the_appropriate_skills_(0):
   x(0,_2,_2) + x(2,_2,_2) + x(3,_2,_2) + x(4,_2,_2) - y(0,_2,_2) >= 0
 Each_task_is_performed_by_a_team_with_the_appropriate_skills_(0):
   x(0,_2,_2) + x(4,_2,_2) >= 0
 Each_task_is_performed_by_a_team_with_the_appropriate_skills_(0):
   x(0,_2,_3) + x(2,_2,_3) + x(3,_2,_3) + x(4,_2,_3) >= 0
 Each_task_is_performed_by_a_team_with_the_appropriate_skills_(0):
   x(2,_2,_3) >= 0
 Each_task_is_performed_by_a_team_with_the_appropriate_skills_(0):
   x(0,_2,_3) + x(2,_2,_3) + x(3,_2,_3) + x(4,_2,_3) >= 0
 Each_task_is_performed_by_a_team_with_the_appropriate_skills_(0):
   x(0,_2,_3) + x(2,_2,_3) + x(3,_2,_3) >= 0
 Each_task_is_performed_by_a_team_with_the_appropriate_skills_(0):
   x(0,_2,_3) + x(2,_2,_3) + x(3,_2,_3) + x(4,_2,_3) - y(0,_2,_3) >= 0
 Each_task_is_performed_by_a_team_with_the_appropriate_skills_(0):
   x(0,_2,_3) + x(4,_2,_3) >= 0
 Each_task_is_performed_by_a_team_with_the_appropriate_skills_(0):
   x(0,_2,_4) + x(2,_2,_4) + x(3,_2,_4) + x(4,_2,_4) >= 0
 Each_task_is_performed_by_a_team_with_the_appropriate_skills_(0):
   x(2,_2,_4) >= 0
 Each_task_is_performed_by_a_team_with_the_appropriate_skills_(0):
   x(0,_2,_4) + x(2,_2,_4) + x(3,_2,_4) + x(4,_2,_4) >= 0
 Each_task_is_performed_by_a_team_with_the_appropriate_skills_(0):
   x(0,_2,_4) + x(2,_2,_4) + x(3,_2,_4) >= 0
 Each_task_is_performed_by_a_team_with_the_appropriate_skills_(0):
   x(0,_2,_4) + x(2,_2,_4) + x(3,_2,_4) + x(4,_2,_4) - y(0,_2,_4) >= 0
 Each_task_is_performed_by_a_team_with_the_appropriate_skills_(0):
   x(0,_2,_4) + x(4,_2,_4) >= 0
 Each_task_is_performed_by_a_team_with_the_appropriate_skills_(0):
   x(0,_3,_0) + x(1,_3,_0) + x(3,_3,_0) + x(4,_3,_0) >= 0
 Each_task_is_performed_by_a_team_with_the_appropriate_skills_(0): >= 0
 Each_task_is_performed_by_a_team_with_the_appropriate_skills_(0):
   x(0,_3,_0) + x(1,_3,_0) + x(3,_3,_0) + x(4,_3,_0) >= 0
 Each_task_is_performed_by_a_team_with_the_appropriate_skills_(0):
   x(0,_3,_0) + x(1,_3,_0) + x(3,_3,_0) >= 0
 Each_task_is_performed_by_a_team_with_the_appropriate_skills_(0):
   x(0,_3,_0) + x(1,_3,_0) + x(3,_3,_0) + x(4,_3,_0) - y(0,_3,_0) >= 0
 Each_task_is_performed_by_a_team_with_the_appropriate_skills_(0):
   x(0,_3,_0) + x(1,_3,_0) + x(4,_3,_0) >= 0
 Each_task_is_performed_by_a_team_with_the_appropriate_skills_(0):
   x(0,_3,_1) + x(1,_3,_1) + x(3,_3,_1) + x(4,_3,_1) >= 0
 Each_task_is_performed_by_a_team_with_the_appropriate_skills_(0): >= 0
 Each_task_is_performed_by_a_team_with_the_appropriate_skills_(0):
   x(0,_3,_1) + x(1,_3,_1) + x(3,_3,_1) + x(4,_3,_1) >= 0
 Each_task_is_performed_by_a_team_with_the_appropriate_skills_(0):
   x(0,_3,_1) + x(1,_3,_1) + x(3,_3,_1) >= 0
 Each_task_is_performed_by_a_team_with_the_appropriate_skills_(0):
   x(0,_3,_1) + x(1,_3,_1) + x(3,_3,_1) + x(4,_3,_1) - y(0,_3,_1) >= 0
 Each_task_is_performed_by_a_team_with_the_appropriate_skills_(0):
   x(0,_3,_1) + x(1,_3,_1) + x(4,_3,_1) >= 0
 Each_task_is_performed_by_a_team_with_the_appropriate_skills_(0):
   x(0,_3,_2) + x(1,_3,_2) + x(3,_3,_2) + x(4,_3,_2) >= 0
 Each_task_is_performed_by_a_team_with_the_appropriate_skills_(0): >= 0
 Each_task_is_performed_by_a_team_with_the_appropriate_skills_(0):
   x(0,_3,_2) + x(1,_3,_2) + x(3,_3,_2) + x(4,_3,_2) >= 0
 Each_task_is_performed_by_a_team_with_the_appropriate_skills_(0):
   x(0,_3,_2) + x(1,_3,_2) + x(3,_3,_2) >= 0
 Each_task_is_performed_by_a_team_with_the_appropriate_skills_(0):
   x(0,_3,_2) + x(1,_3,_2) + x(3,_3,_2) + x(4,_3,_2) - y(0,_3,_2) >= 0
 Each_task_is_performed_by_a_team_with_the_appropriate_skills_(0):
   x(0,_3,_2) + x(1,_3,_2) + x(4,_3,_2) >= 0
 Each_task_is_performed_by_a_team_with_the_appropriate_skills_(0):
   x(0,_3,_3) + x(1,_3,_3) + x(3,_3,_3) + x(4,_3,_3) >= 0
 Each_task_is_performed_by_a_team_with_the_appropriate_skills_(0): >= 0
 Each_task_is_performed_by_a_team_with_the_appropriate_skills_(0):
   x(0,_3,_3) + x(1,_3,_3) + x(3,_3,_3) + x(4,_3,_3) >= 0
 Each_task_is_performed_by_a_team_with_the_appropriate_skills_(0):
   x(0,_3,_3) + x(1,_3,_3) + x(3,_3,_3) >= 0
 Each_task_is_performed_by_a_team_with_the_appropriate_skills_(0):
   x(0,_3,_3) + x(1,_3,_3) + x(3,_3,_3) + x(4,_3,_3) - y(0,_3,_3) >= 0
 Each_task_is_performed_by_a_team_with_the_appropriate_skills_(0):
   x(0,_3,_3) + x(1,_3,_3) + x(4,_3,_3) >= 0
 Each_task_is_performed_by_a_team_with_the_appropriate_skills_(0):
   x(0,_3,_4) + x(1,_3,_4) + x(3,_3,_4) + x(4,_3,_4) >= 0
 Each_task_is_performed_by_a_team_with_the_appropriate_skills_(0): >= 0
 Each_task_is_performed_by_a_team_with_the_appropriate_skills_(0):
   x(0,_3,_4) + x(1,_3,_4) + x(3,_3,_4) + x(4,_3,_4) >= 0
 Each_task_is_performed_by_a_team_with_the_appropriate_skills_(0):
   x(0,_3,_4) + x(1,_3,_4) + x(3,_3,_4) >= 0
 Each_task_is_performed_by_a_team_with_the_appropriate_skills_(0):
   x(0,_3,_4) + x(1,_3,_4) + x(3,_3,_4) + x(4,_3,_4) - y(0,_3,_4) >= 0
 Each_task_is_performed_by_a_team_with_the_appropriate_skills_(0):
   x(0,_3,_4) + x(1,_3,_4) + x(4,_3,_4) >= 0
 Each_task_is_performed_by_a_team_with_the_appropriate_skills_(0):
   x(0,_4,_0) + x(1,_4,_0) + x(2,_4,_0) + x(4,_4,_0) >= 0
 Each_task_is_performed_by_a_team_with_the_appropriate_skills_(0):
   x(2,_4,_0) >= 0
 Each_task_is_performed_by_a_team_with_the_appropriate_skills_(0):
   x(0,_4,_0) + x(1,_4,_0) + x(2,_4,_0) + x(4,_4,_0) >= 0
 Each_task_is_performed_by_a_team_with_the_appropriate_skills_(0):
   x(0,_4,_0) + x(1,_4,_0) + x(2,_4,_0) >= 0
 Each_task_is_performed_by_a_team_with_the_appropriate_skills_(0):
   x(0,_4,_0) + x(1,_4,_0) + x(2,_4,_0) + x(4,_4,_0) - y(0,_4,_0) >= 0
 Each_task_is_performed_by_a_team_with_the_appropriate_skills_(0):
   x(0,_4,_0) + x(1,_4,_0) + x(4,_4,_0) >= 0
 Each_task_is_performed_by_a_team_with_the_appropriate_skills_(0):
   x(0,_4,_1) + x(1,_4,_1) + x(2,_4,_1) + x(4,_4,_1) >= 0
 Each_task_is_performed_by_a_team_with_the_appropriate_skills_(0):
   x(2,_4,_1) >= 0
 Each_task_is_performed_by_a_team_with_the_appropriate_skills_(0):
   x(0,_4,_1) + x(1,_4,_1) + x(2,_4,_1) + x(4,_4,_1) >= 0
 Each_task_is_performed_by_a_team_with_the_appropriate_skills_(0):
   x(0,_4,_1) + x(1,_4,_1) + x(2,_4,_1) >= 0
 Each_task_is_performed_by_a_team_with_the_appropriate_skills_(0):
   x(0,_4,_1) + x(1,_4,_1) + x(2,_4,_1) + x(4,_4,_1) - y(0,_4,_1) >= 0
 Each_task_is_performed_by_a_team_with_the_appropriate_skills_(0):
   x(0,_4,_1) + x(1,_4,_1) + x(4,_4,_1) >= 0
 Each_task_is_performed_by_a_team_with_the_appropriate_skills_(0):
   x(0,_4,_2) + x(1,_4,_2) + x(2,_4,_2) + x(4,_4,_2) >= 0
 Each_task_is_performed_by_a_team_with_the_appropriate_skills_(0):
   x(2,_4,_2) >= 0
 Each_task_is_performed_by_a_team_with_the_appropriate_skills_(0):
   x(0,_4,_2) + x(1,_4,_2) + x(2,_4,_2) + x(4,_4,_2) >= 0
 Each_task_is_performed_by_a_team_with_the_appropriate_skills_(0):
   x(0,_4,_2) + x(1,_4,_2) + x(2,_4,_2) >= 0
 Each_task_is_performed_by_a_team_with_the_appropriate_skills_(0):
   x(0,_4,_2) + x(1,_4,_2) + x(2,_4,_2) + x(4,_4,_2) - y(0,_4,_2) >= 0
 Each_task_is_performed_by_a_team_with_the_appropriate_skills_(0):
   x(0,_4,_2) + x(1,_4,_2) + x(4,_4,_2) >= 0
 Each_task_is_performed_by_a_team_with_the_appropriate_skills_(0):
   x(0,_4,_3) + x(1,_4,_3) + x(2,_4,_3) + x(4,_4,_3) >= 0
 Each_task_is_performed_by_a_team_with_the_appropriate_skills_(0):
   x(2,_4,_3) >= 0
 Each_task_is_performed_by_a_team_with_the_appropriate_skills_(0):
   x(0,_4,_3) + x(1,_4,_3) + x(2,_4,_3) + x(4,_4,_3) >= 0
 Each_task_is_performed_by_a_team_with_the_appropriate_skills_(0):
   x(0,_4,_3) + x(1,_4,_3) + x(2,_4,_3) >= 0
 Each_task_is_performed_by_a_team_with_the_appropriate_skills_(0):
   x(0,_4,_3) + x(1,_4,_3) + x(2,_4,_3) + x(4,_4,_3) - y(0,_4,_3) >= 0
 Each_task_is_performed_by_a_team_with_the_appropriate_skills_(0):
   x(0,_4,_3) + x(1,_4,_3) + x(4,_4,_3) >= 0
 Each_task_is_performed_by_a_team_with_the_appropriate_skills_(0):
   x(0,_4,_4) + x(1,_4,_4) + x(2,_4,_4) + x(4,_4,_4) >= 0
 Each_task_is_performed_by_a_team_with_the_appropriate_skills_(0):
   x(2,_4,_4) >= 0
 Each_task_is_performed_by_a_team_with_the_appropriate_skills_(0):
   x(0,_4,_4) + x(1,_4,_4) + x(2,_4,_4) + x(4,_4,_4) >= 0
 Each_task_is_performed_by_a_team_with_the_appropriate_skills_(0):
   x(0,_4,_4) + x(1,_4,_4) + x(2,_4,_4) >= 0
 Each_task_is_performed_by_a_team_with_the_appropriate_skills_(0):
   x(0,_4,_4) + x(1,_4,_4) + x(2,_4,_4) + x(4,_4,_4) - y(0,_4,_4) >= 0
 Each_task_is_performed_by_a_team_with_the_appropriate_skills_(0):
   x(0,_4,_4) + x(1,_4,_4) + x(4,_4,_4) >= 0
 Each_task_is_performed_by_a_team_with_the_appropriate_skills_(1):
   x(0,_0,_0) + x(2,_0,_0) + x(3,_0,_0) + x(4,_0,_0) >= 0
 Each_task_is_performed_by_a_team_with_the_appropriate_skills_(1):
   x(2,_0,_0) >= 0
 Each_task_is_performed_by_a_team_with_the_appropriate_skills_(1):
   x(0,_0,_0) + x(2,_0,_0) + x(3,_0,_0) + x(4,_0,_0) >= 0
 Each_task_is_performed_by_a_team_with_the_appropriate_skills_(1):
   x(0,_0,_0) + x(2,_0,_0) + x(3,_0,_0) >= 0
 Each_task_is_performed_by_a_team_with_the_appropriate_skills_(1):
   x(0,_0,_0) + x(2,_0,_0) + x(3,_0,_0) + x(4,_0,_0) - y(1,_0,_0) >= 0
 Each_task_is_performed_by_a_team_with_the_appropriate_skills_(1):
   x(0,_0,_0) + x(4,_0,_0) >= 0
 Each_task_is_performed_by_a_team_with_the_appropriate_skills_(1):
   x(0,_0,_1) + x(2,_0,_1) + x(3,_0,_1) + x(4,_0,_1) >= 0
 Each_task_is_performed_by_a_team_with_the_appropriate_skills_(1):
   x(2,_0,_1) >= 0
 Each_task_is_performed_by_a_team_with_the_appropriate_skills_(1):
   x(0,_0,_1) + x(2,_0,_1) + x(3,_0,_1) + x(4,_0,_1) >= 0
 Each_task_is_performed_by_a_team_with_the_appropriate_skills_(1):
   x(0,_0,_1) + x(2,_0,_1) + x(3,_0,_1) >= 0
 Each_task_is_performed_by_a_team_with_the_appropriate_skills_(1):
   x(0,_0,_1) + x(2,_0,_1) + x(3,_0,_1) + x(4,_0,_1) - y(1,_0,_1) >= 0
 Each_task_is_performed_by_a_team_with_the_appropriate_skills_(1):
   x(0,_0,_1) + x(4,_0,_1) >= 0
 Each_task_is_performed_by_a_team_with_the_appropriate_skills_(1):
   x(0,_0,_2) + x(2,_0,_2) + x(3,_0,_2) + x(4,_0,_2) >= 0
 Each_task_is_performed_by_a_team_with_the_appropriate_skills_(1):
   x(2,_0,_2) >= 0
 Each_task_is_performed_by_a_team_with_the_appropriate_skills_(1):
   x(0,_0,_2) + x(2,_0,_2) + x(3,_0,_2) + x(4,_0,_2) >= 0
 Each_task_is_performed_by_a_team_with_the_appropriate_skills_(1):
   x(0,_0,_2) + x(2,_0,_2) + x(3,_0,_2) >= 0
 Each_task_is_performed_by_a_team_with_the_appropriate_skills_(1):
   x(0,_0,_2) + x(2,_0,_2) + x(3,_0,_2) + x(4,_0,_2) - y(1,_0,_2) >= 0
 Each_task_is_performed_by_a_team_with_the_appropriate_skills_(1):
   x(0,_0,_2) + x(4,_0,_2) >= 0
 Each_task_is_performed_by_a_team_with_the_appropriate_skills_(1):
   x(0,_0,_3) + x(2,_0,_3) + x(3,_0,_3) + x(4,_0,_3) >= 0
 Each_task_is_performed_by_a_team_with_the_appropriate_skills_(1):
   x(2,_0,_3) >= 0
 Each_task_is_performed_by_a_team_with_the_appropriate_skills_(1):
   x(0,_0,_3) + x(2,_0,_3) + x(3,_0,_3) + x(4,_0,_3) >= 0
 Each_task_is_performed_by_a_team_with_the_appropriate_skills_(1):
   x(0,_0,_3) + x(2,_0,_3) + x(3,_0,_3) >= 0
 Each_task_is_performed_by_a_team_with_the_appropriate_skills_(1):
   x(0,_0,_3) + x(2,_0,_3) + x(3,_0,_3) + x(4,_0,_3) - y(1,_0,_3) >= 0
 Each_task_is_performed_by_a_team_with_the_appropriate_skills_(1):
   x(0,_0,_3) + x(4,_0,_3) >= 0
 Each_task_is_performed_by_a_team_with_the_appropriate_skills_(1):
   x(0,_0,_4) + x(2,_0,_4) + x(3,_0,_4) + x(4,_0,_4) >= 0
 Each_task_is_performed_by_a_team_with_the_appropriate_skills_(1):
   x(2,_0,_4) >= 0
 Each_task_is_performed_by_a_team_with_the_appropriate_skills_(1):
   x(0,_0,_4) + x(2,_0,_4) + x(3,_0,_4) + x(4,_0,_4) >= 0
 Each_task_is_performed_by_a_team_with_the_appropriate_skills_(1):
   x(0,_0,_4) + x(2,_0,_4) + x(3,_0,_4) >= 0
 Each_task_is_performed_by_a_team_with_the_appropriate_skills_(1):
   x(0,_0,_4) + x(2,_0,_4) + x(3,_0,_4) + x(4,_0,_4) - y(1,_0,_4) >= 0
 Each_task_is_performed_by_a_team_with_the_appropriate_skills_(1):
   x(0,_0,_4) + x(4,_0,_4) >= 0
 Each_task_is_performed_by_a_team_with_the_appropriate_skills_(1):
   x(1,_1,_0) + x(2,_1,_0) + x(3,_1,_0) + x(4,_1,_0) >= 0
 Each_task_is_performed_by_a_team_with_the_appropriate_skills_(1):
   x(2,_1,_0) >= 0
 Each_task_is_performed_by_a_team_with_the_appropriate_skills_(1):
   x(1,_1,_0) + x(2,_1,_0) + x(3,_1,_0) + x(4,_1,_0) >= 0
 Each_task_is_performed_by_a_team_with_the_appropriate_skills_(1):
   x(1,_1,_0) + x(2,_1,_0) + x(3,_1,_0) >= 0
 Each_task_is_performed_by_a_team_with_the_appropriate_skills_(1):
   x(1,_1,_0) + x(2,_1,_0) + x(3,_1,_0) + x(4,_1,_0) - y(1,_1,_0) >= 0
 Each_task_is_performed_by_a_team_with_the_appropriate_skills_(1):
   x(1,_1,_0) + x(4,_1,_0) >= 0
 Each_task_is_performed_by_a_team_with_the_appropriate_skills_(1):
   x(1,_1,_1) + x(2,_1,_1) + x(3,_1,_1) + x(4,_1,_1) >= 0
 Each_task_is_performed_by_a_team_with_the_appropriate_skills_(1):
   x(2,_1,_1) >= 0
 Each_task_is_performed_by_a_team_with_the_appropriate_skills_(1):
   x(1,_1,_1) + x(2,_1,_1) + x(3,_1,_1) + x(4,_1,_1) >= 0
 Each_task_is_performed_by_a_team_with_the_appropriate_skills_(1):
   x(1,_1,_1) + x(2,_1,_1) + x(3,_1,_1) >= 0
 Each_task_is_performed_by_a_team_with_the_appropriate_skills_(1):
   x(1,_1,_1) + x(2,_1,_1) + x(3,_1,_1) + x(4,_1,_1) - y(1,_1,_1) >= 0
 Each_task_is_performed_by_a_team_with_the_appropriate_skills_(1):
   x(1,_1,_1) + x(4,_1,_1) >= 0
 Each_task_is_performed_by_a_team_with_the_appropriate_skills_(1):
   x(1,_1,_2) + x(2,_1,_2) + x(3,_1,_2) + x(4,_1,_2) >= 0
 Each_task_is_performed_by_a_team_with_the_appropriate_skills_(1):
   x(2,_1,_2) >= 0
 Each_task_is_performed_by_a_team_with_the_appropriate_skills_(1):
   x(1,_1,_2) + x(2,_1,_2) + x(3,_1,_2) + x(4,_1,_2) >= 0
 Each_task_is_performed_by_a_team_with_the_appropriate_skills_(1):
   x(1,_1,_2) + x(2,_1,_2) + x(3,_1,_2) >= 0
 Each_task_is_performed_by_a_team_with_the_appropriate_skills_(1):
   x(1,_1,_2) + x(2,_1,_2) + x(3,_1,_2) + x(4,_1,_2) - y(1,_1,_2) >= 0
 Each_task_is_performed_by_a_team_with_the_appropriate_skills_(1):
   x(1,_1,_2) + x(4,_1,_2) >= 0
 Each_task_is_performed_by_a_team_with_the_appropriate_skills_(1):
   x(1,_1,_3) + x(2,_1,_3) + x(3,_1,_3) + x(4,_1,_3) >= 0
 Each_task_is_performed_by_a_team_with_the_appropriate_skills_(1):
   x(2,_1,_3) >= 0
 Each_task_is_performed_by_a_team_with_the_appropriate_skills_(1):
   x(1,_1,_3) + x(2,_1,_3) + x(3,_1,_3) + x(4,_1,_3) >= 0
 Each_task_is_performed_by_a_team_with_the_appropriate_skills_(1):
   x(1,_1,_3) + x(2,_1,_3) + x(3,_1,_3) >= 0
 Each_task_is_performed_by_a_team_with_the_appropriate_skills_(1):
   x(1,_1,_3) + x(2,_1,_3) + x(3,_1,_3) + x(4,_1,_3) - y(1,_1,_3) >= 0
 Each_task_is_performed_by_a_team_with_the_appropriate_skills_(1):
   x(1,_1,_3) + x(4,_1,_3) >= 0
 Each_task_is_performed_by_a_team_with_the_appropriate_skills_(1):
   x(1,_1,_4) + x(2,_1,_4) + x(3,_1,_4) + x(4,_1,_4) >= 0
 Each_task_is_performed_by_a_team_with_the_appropriate_skills_(1):
   x(2,_1,_4) >= 0
 Each_task_is_performed_by_a_team_with_the_appropriate_skills_(1):
   x(1,_1,_4) + x(2,_1,_4) + x(3,_1,_4) + x(4,_1,_4) >= 0
 Each_task_is_performed_by_a_team_with_the_appropriate_skills_(1):
   x(1,_1,_4) + x(2,_1,_4) + x(3,_1,_4) >= 0
 Each_task_is_performed_by_a_team_with_the_appropriate_skills_(1):
   x(1,_1,_4) + x(2,_1,_4) + x(3,_1,_4) + x(4,_1,_4) - y(1,_1,_4) >= 0
 Each_task_is_performed_by_a_team_with_the_appropriate_skills_(1):
   x(1,_1,_4) + x(4,_1,_4) >= 0
 Each_task_is_performed_by_a_team_with_the_appropriate_skills_(1):
   x(0,_2,_0) + x(2,_2,_0) + x(3,_2,_0) + x(4,_2,_0) >= 0
 Each_task_is_performed_by_a_team_with_the_appropriate_skills_(1):
   x(2,_2,_0) >= 0
 Each_task_is_performed_by_a_team_with_the_appropriate_skills_(1):
   x(0,_2,_0) + x(2,_2,_0) + x(3,_2,_0) + x(4,_2,_0) >= 0
 Each_task_is_performed_by_a_team_with_the_appropriate_skills_(1):
   x(0,_2,_0) + x(2,_2,_0) + x(3,_2,_0) >= 0
 Each_task_is_performed_by_a_team_with_the_appropriate_skills_(1):
   x(0,_2,_0) + x(2,_2,_0) + x(3,_2,_0) + x(4,_2,_0) - y(1,_2,_0) >= 0
 Each_task_is_performed_by_a_team_with_the_appropriate_skills_(1):
   x(0,_2,_0) + x(4,_2,_0) >= 0
 Each_task_is_performed_by_a_team_with_the_appropriate_skills_(1):
   x(0,_2,_1) + x(2,_2,_1) + x(3,_2,_1) + x(4,_2,_1) >= 0
 Each_task_is_performed_by_a_team_with_the_appropriate_skills_(1):
   x(2,_2,_1) >= 0
 Each_task_is_performed_by_a_team_with_the_appropriate_skills_(1):
   x(0,_2,_1) + x(2,_2,_1) + x(3,_2,_1) + x(4,_2,_1) >= 0
 Each_task_is_performed_by_a_team_with_the_appropriate_skills_(1):
   x(0,_2,_1) + x(2,_2,_1) + x(3,_2,_1) >= 0
 Each_task_is_performed_by_a_team_with_the_appropriate_skills_(1):
   x(0,_2,_1) + x(2,_2,_1) + x(3,_2,_1) + x(4,_2,_1) - y(1,_2,_1) >= 0
 Each_task_is_performed_by_a_team_with_the_appropriate_skills_(1):
   x(0,_2,_1) + x(4,_2,_1) >= 0
 Each_task_is_performed_by_a_team_with_the_appropriate_skills_(1):
   x(0,_2,_2) + x(2,_2,_2) + x(3,_2,_2) + x(4,_2,_2) >= 0
 Each_task_is_performed_by_a_team_with_the_appropriate_skills_(1):
   x(2,_2,_2) >= 0
 Each_task_is_performed_by_a_team_with_the_appropriate_skills_(1):
   x(0,_2,_2) + x(2,_2,_2) + x(3,_2,_2) + x(4,_2,_2) >= 0
 Each_task_is_performed_by_a_team_with_the_appropriate_skills_(1):
   x(0,_2,_2) + x(2,_2,_2) + x(3,_2,_2) >= 0
 Each_task_is_performed_by_a_team_with_the_appropriate_skills_(1):
   x(0,_2,_2) + x(2,_2,_2) + x(3,_2,_2) + x(4,_2,_2) - y(1,_2,_2) >= 0
 Each_task_is_performed_by_a_team_with_the_appropriate_skills_(1):
   x(0,_2,_2) + x(4,_2,_2) >= 0
 Each_task_is_performed_by_a_team_with_the_appropriate_skills_(1):
   x(0,_2,_3) + x(2,_2,_3) + x(3,_2,_3) + x(4,_2,_3) >= 0
 Each_task_is_performed_by_a_team_with_the_appropriate_skills_(1):
   x(2,_2,_3) >= 0
 Each_task_is_performed_by_a_team_with_the_appropriate_skills_(1):
   x(0,_2,_3) + x(2,_2,_3) + x(3,_2,_3) + x(4,_2,_3) >= 0
 Each_task_is_performed_by_a_team_with_the_appropriate_skills_(1):
   x(0,_2,_3) + x(2,_2,_3) + x(3,_2,_3) >= 0
 Each_task_is_performed_by_a_team_with_the_appropriate_skills_(1):
   x(0,_2,_3) + x(2,_2,_3) + x(3,_2,_3) + x(4,_2,_3) - y(1,_2,_3) >= 0
 Each_task_is_performed_by_a_team_with_the_appropriate_skills_(1):
   x(0,_2,_3) + x(4,_2,_3) >= 0
 Each_task_is_performed_by_a_team_with_the_appropriate_skills_(1):
   x(0,_2,_4) + x(2,_2,_4) + x(3,_2,_4) + x(4,_2,_4) >= 0
 Each_task_is_performed_by_a_team_with_the_appropriate_skills_(1):
   x(2,_2,_4) >= 0
 Each_task_is_performed_by_a_team_with_the_appropriate_skills_(1):
   x(0,_2,_4) + x(2,_2,_4) + x(3,_2,_4) + x(4,_2,_4) >= 0
 Each_task_is_performed_by_a_team_with_the_appropriate_skills_(1):
   x(0,_2,_4) + x(2,_2,_4) + x(3,_2,_4) >= 0
 Each_task_is_performed_by_a_team_with_the_appropriate_skills_(1):
   x(0,_2,_4) + x(2,_2,_4) + x(3,_2,_4) + x(4,_2,_4) - y(1,_2,_4) >= 0
 Each_task_is_performed_by_a_team_with_the_appropriate_skills_(1):
   x(0,_2,_4) + x(4,_2,_4) >= 0
 Each_task_is_performed_by_a_team_with_the_appropriate_skills_(1):
   x(0,_3,_0) + x(1,_3,_0) + x(3,_3,_0) + x(4,_3,_0) >= 0
 Each_task_is_performed_by_a_team_with_the_appropriate_skills_(1): >= 0
 Each_task_is_performed_by_a_team_with_the_appropriate_skills_(1):
   x(0,_3,_0) + x(1,_3,_0) + x(3,_3,_0) + x(4,_3,_0) >= 0
 Each_task_is_performed_by_a_team_with_the_appropriate_skills_(1):
   x(0,_3,_0) + x(1,_3,_0) + x(3,_3,_0) >= 0
 Each_task_is_performed_by_a_team_with_the_appropriate_skills_(1):
   x(0,_3,_0) + x(1,_3,_0) + x(3,_3,_0) + x(4,_3,_0) - y(1,_3,_0) >= 0
 Each_task_is_performed_by_a_team_with_the_appropriate_skills_(1):
   x(0,_3,_0) + x(1,_3,_0) + x(4,_3,_0) >= 0
 Each_task_is_performed_by_a_team_with_the_appropriate_skills_(1):
   x(0,_3,_1) + x(1,_3,_1) + x(3,_3,_1) + x(4,_3,_1) >= 0
 Each_task_is_performed_by_a_team_with_the_appropriate_skills_(1): >= 0
 Each_task_is_performed_by_a_team_with_the_appropriate_skills_(1):
   x(0,_3,_1) + x(1,_3,_1) + x(3,_3,_1) + x(4,_3,_1) >= 0
 Each_task_is_performed_by_a_team_with_the_appropriate_skills_(1):
   x(0,_3,_1) + x(1,_3,_1) + x(3,_3,_1) >= 0
 Each_task_is_performed_by_a_team_with_the_appropriate_skills_(1):
   x(0,_3,_1) + x(1,_3,_1) + x(3,_3,_1) + x(4,_3,_1) - y(1,_3,_1) >= 0
 Each_task_is_performed_by_a_team_with_the_appropriate_skills_(1):
   x(0,_3,_1) + x(1,_3,_1) + x(4,_3,_1) >= 0
 Each_task_is_performed_by_a_team_with_the_appropriate_skills_(1):
   x(0,_3,_2) + x(1,_3,_2) + x(3,_3,_2) + x(4,_3,_2) >= 0
 Each_task_is_performed_by_a_team_with_the_appropriate_skills_(1): >= 0
 Each_task_is_performed_by_a_team_with_the_appropriate_skills_(1):
   x(0,_3,_2) + x(1,_3,_2) + x(3,_3,_2) + x(4,_3,_2) >= 0
 Each_task_is_performed_by_a_team_with_the_appropriate_skills_(1):
   x(0,_3,_2) + x(1,_3,_2) + x(3,_3,_2) >= 0
 Each_task_is_performed_by_a_team_with_the_appropriate_skills_(1):
   x(0,_3,_2) + x(1,_3,_2) + x(3,_3,_2) + x(4,_3,_2) - y(1,_3,_2) >= 0
 Each_task_is_performed_by_a_team_with_the_appropriate_skills_(1):
   x(0,_3,_2) + x(1,_3,_2) + x(4,_3,_2) >= 0
 Each_task_is_performed_by_a_team_with_the_appropriate_skills_(1):
   x(0,_3,_3) + x(1,_3,_3) + x(3,_3,_3) + x(4,_3,_3) >= 0
 Each_task_is_performed_by_a_team_with_the_appropriate_skills_(1): >= 0
 Each_task_is_performed_by_a_team_with_the_appropriate_skills_(1):
   x(0,_3,_3) + x(1,_3,_3) + x(3,_3,_3) + x(4,_3,_3) >= 0
 Each_task_is_performed_by_a_team_with_the_appropriate_skills_(1):
   x(0,_3,_3) + x(1,_3,_3) + x(3,_3,_3) >= 0
 Each_task_is_performed_by_a_team_with_the_appropriate_skills_(1):
   x(0,_3,_3) + x(1,_3,_3) + x(3,_3,_3) + x(4,_3,_3) - y(1,_3,_3) >= 0
 Each_task_is_performed_by_a_team_with_the_appropriate_skills_(1):
   x(0,_3,_3) + x(1,_3,_3) + x(4,_3,_3) >= 0
 Each_task_is_performed_by_a_team_with_the_appropriate_skills_(1):
   x(0,_3,_4) + x(1,_3,_4) + x(3,_3,_4) + x(4,_3,_4) >= 0
 Each_task_is_performed_by_a_team_with_the_appropriate_skills_(1): >= 0
 Each_task_is_performed_by_a_team_with_the_appropriate_skills_(1):
   x(0,_3,_4) + x(1,_3,_4) + x(3,_3,_4) + x(4,_3,_4) >= 0
 Each_task_is_performed_by_a_team_with_the_appropriate_skills_(1):
   x(0,_3,_4) + x(1,_3,_4) + x(3,_3,_4) >= 0
 Each_task_is_performed_by_a_team_with_the_appropriate_skills_(1):
   x(0,_3,_4) + x(1,_3,_4) + x(3,_3,_4) + x(4,_3,_4) - y(1,_3,_4) >= 0
 Each_task_is_performed_by_a_team_with_the_appropriate_skills_(1):
   x(0,_3,_4) + x(1,_3,_4) + x(4,_3,_4) >= 0
 Each_task_is_performed_by_a_team_with_the_appropriate_skills_(1):
   x(0,_4,_0) + x(1,_4,_0) + x(2,_4,_0) + x(4,_4,_0) >= 0
 Each_task_is_performed_by_a_team_with_the_appropriate_skills_(1):
   x(2,_4,_0) >= 0
 Each_task_is_performed_by_a_team_with_the_appropriate_skills_(1):
   x(0,_4,_0) + x(1,_4,_0) + x(2,_4,_0) + x(4,_4,_0) >= 0
 Each_task_is_performed_by_a_team_with_the_appropriate_skills_(1):
   x(0,_4,_0) + x(1,_4,_0) + x(2,_4,_0) >= 0
 Each_task_is_performed_by_a_team_with_the_appropriate_skills_(1):
   x(0,_4,_0) + x(1,_4,_0) + x(2,_4,_0) + x(4,_4,_0) - y(1,_4,_0) >= 0
 Each_task_is_performed_by_a_team_with_the_appropriate_skills_(1):
   x(0,_4,_0) + x(1,_4,_0) + x(4,_4,_0) >= 0
 Each_task_is_performed_by_a_team_with_the_appropriate_skills_(1):
   x(0,_4,_1) + x(1,_4,_1) + x(2,_4,_1) + x(4,_4,_1) >= 0
 Each_task_is_performed_by_a_team_with_the_appropriate_skills_(1):
   x(2,_4,_1) >= 0
 Each_task_is_performed_by_a_team_with_the_appropriate_skills_(1):
   x(0,_4,_1) + x(1,_4,_1) + x(2,_4,_1) + x(4,_4,_1) >= 0
 Each_task_is_performed_by_a_team_with_the_appropriate_skills_(1):
   x(0,_4,_1) + x(1,_4,_1) + x(2,_4,_1) >= 0
 Each_task_is_performed_by_a_team_with_the_appropriate_skills_(1):
   x(0,_4,_1) + x(1,_4,_1) + x(2,_4,_1) + x(4,_4,_1) - y(1,_4,_1) >= 0
 Each_task_is_performed_by_a_team_with_the_appropriate_skills_(1):
   x(0,_4,_1) + x(1,_4,_1) + x(4,_4,_1) >= 0
 Each_task_is_performed_by_a_team_with_the_appropriate_skills_(1):
   x(0,_4,_2) + x(1,_4,_2) + x(2,_4,_2) + x(4,_4,_2) >= 0
 Each_task_is_performed_by_a_team_with_the_appropriate_skills_(1):
   x(2,_4,_2) >= 0
 Each_task_is_performed_by_a_team_with_the_appropriate_skills_(1):
   x(0,_4,_2) + x(1,_4,_2) + x(2,_4,_2) + x(4,_4,_2) >= 0
 Each_task_is_performed_by_a_team_with_the_appropriate_skills_(1):
   x(0,_4,_2) + x(1,_4,_2) + x(2,_4,_2) >= 0
 Each_task_is_performed_by_a_team_with_the_appropriate_skills_(1):
   x(0,_4,_2) + x(1,_4,_2) + x(2,_4,_2) + x(4,_4,_2) - y(1,_4,_2) >= 0
 Each_task_is_performed_by_a_team_with_the_appropriate_skills_(1):
   x(0,_4,_2) + x(1,_4,_2) + x(4,_4,_2) >= 0
 Each_task_is_performed_by_a_team_with_the_appropriate_skills_(1):
   x(0,_4,_3) + x(1,_4,_3) + x(2,_4,_3) + x(4,_4,_3) >= 0
 Each_task_is_performed_by_a_team_with_the_appropriate_skills_(1):
   x(2,_4,_3) >= 0
 Each_task_is_performed_by_a_team_with_the_appropriate_skills_(1):
   x(0,_4,_3) + x(1,_4,_3) + x(2,_4,_3) + x(4,_4,_3) >= 0
 Each_task_is_performed_by_a_team_with_the_appropriate_skills_(1):
   x(0,_4,_3) + x(1,_4,_3) + x(2,_4,_3) >= 0
 Each_task_is_performed_by_a_team_with_the_appropriate_skills_(1):
   x(0,_4,_3) + x(1,_4,_3) + x(2,_4,_3) + x(4,_4,_3) - y(1,_4,_3) >= 0
 Each_task_is_performed_by_a_team_with_the_appropriate_skills_(1):
   x(0,_4,_3) + x(1,_4,_3) + x(4,_4,_3) >= 0
 Each_task_is_performed_by_a_team_with_the_appropriate_skills_(1):
   x(0,_4,_4) + x(1,_4,_4) + x(2,_4,_4) + x(4,_4,_4) >= 0
 Each_task_is_performed_by_a_team_with_the_appropriate_skills_(1):
   x(2,_4,_4) >= 0
 Each_task_is_performed_by_a_team_with_the_appropriate_skills_(1):
   x(0,_4,_4) + x(1,_4,_4) + x(2,_4,_4) + x(4,_4,_4) >= 0
 Each_task_is_performed_by_a_team_with_the_appropriate_skills_(1):
   x(0,_4,_4) + x(1,_4,_4) + x(2,_4,_4) >= 0
 Each_task_is_performed_by_a_team_with_the_appropriate_skills_(1):
   x(0,_4,_4) + x(1,_4,_4) + x(2,_4,_4) + x(4,_4,_4) - y(1,_4,_4) >= 0
 Each_task_is_performed_by_a_team_with_the_appropriate_skills_(1):
   x(0,_4,_4) + x(1,_4,_4) + x(4,_4,_4) >= 0
 Each_task_is_performed_by_a_team_with_the_appropriate_skills_(2):
   x(0,_0,_0) + x(2,_0,_0) + x(3,_0,_0) + x(4,_0,_0) - y(2,_0,_0) >= 0
 Each_task_is_performed_by_a_team_with_the_appropriate_skills_(2):
   x(2,_0,_0) >= 0
 Each_task_is_performed_by_a_team_with_the_appropriate_skills_(2):
   x(0,_0,_0) + x(2,_0,_0) + x(3,_0,_0) + x(4,_0,_0) - y(2,_0,_0) >= 0
 Each_task_is_performed_by_a_team_with_the_appropriate_skills_(2):
   x(0,_0,_0) + x(2,_0,_0) + x(3,_0,_0) >= 0
 Each_task_is_performed_by_a_team_with_the_appropriate_skills_(2):
   x(0,_0,_0) + x(2,_0,_0) + x(3,_0,_0) + x(4,_0,_0) - y(2,_0,_0) >= 0
 Each_task_is_performed_by_a_team_with_the_appropriate_skills_(2):
   x(0,_0,_0) + x(4,_0,_0) - y(2,_0,_0) >= 0
 Each_task_is_performed_by_a_team_with_the_appropriate_skills_(2):
   x(0,_0,_1) + x(2,_0,_1) + x(3,_0,_1) + x(4,_0,_1) - y(2,_0,_1) >= 0
 Each_task_is_performed_by_a_team_with_the_appropriate_skills_(2):
   x(2,_0,_1) >= 0
 Each_task_is_performed_by_a_team_with_the_appropriate_skills_(2):
   x(0,_0,_1) + x(2,_0,_1) + x(3,_0,_1) + x(4,_0,_1) - y(2,_0,_1) >= 0
 Each_task_is_performed_by_a_team_with_the_appropriate_skills_(2):
   x(0,_0,_1) + x(2,_0,_1) + x(3,_0,_1) >= 0
 Each_task_is_performed_by_a_team_with_the_appropriate_skills_(2):
   x(0,_0,_1) + x(2,_0,_1) + x(3,_0,_1) + x(4,_0,_1) - y(2,_0,_1) >= 0
 Each_task_is_performed_by_a_team_with_the_appropriate_skills_(2):
   x(0,_0,_1) + x(4,_0,_1) - y(2,_0,_1) >= 0
 Each_task_is_performed_by_a_team_with_the_appropriate_skills_(2):
   x(0,_0,_2) + x(2,_0,_2) + x(3,_0,_2) + x(4,_0,_2) - y(2,_0,_2) >= 0
 Each_task_is_performed_by_a_team_with_the_appropriate_skills_(2):
   x(2,_0,_2) >= 0
 Each_task_is_performed_by_a_team_with_the_appropriate_skills_(2):
   x(0,_0,_2) + x(2,_0,_2) + x(3,_0,_2) + x(4,_0,_2) - y(2,_0,_2) >= 0
 Each_task_is_performed_by_a_team_with_the_appropriate_skills_(2):
   x(0,_0,_2) + x(2,_0,_2) + x(3,_0,_2) >= 0
 Each_task_is_performed_by_a_team_with_the_appropriate_skills_(2):
   x(0,_0,_2) + x(2,_0,_2) + x(3,_0,_2) + x(4,_0,_2) - y(2,_0,_2) >= 0
 Each_task_is_performed_by_a_team_with_the_appropriate_skills_(2):
   x(0,_0,_2) + x(4,_0,_2) - y(2,_0,_2) >= 0
 Each_task_is_performed_by_a_team_with_the_appropriate_skills_(2):
   x(0,_0,_3) + x(2,_0,_3) + x(3,_0,_3) + x(4,_0,_3) - y(2,_0,_3) >= 0
 Each_task_is_performed_by_a_team_with_the_appropriate_skills_(2):
   x(2,_0,_3) >= 0
 Each_task_is_performed_by_a_team_with_the_appropriate_skills_(2):
   x(0,_0,_3) + x(2,_0,_3) + x(3,_0,_3) + x(4,_0,_3) - y(2,_0,_3) >= 0
 Each_task_is_performed_by_a_team_with_the_appropriate_skills_(2):
   x(0,_0,_3) + x(2,_0,_3) + x(3,_0,_3) >= 0
 Each_task_is_performed_by_a_team_with_the_appropriate_skills_(2):
   x(0,_0,_3) + x(2,_0,_3) + x(3,_0,_3) + x(4,_0,_3) - y(2,_0,_3) >= 0
 Each_task_is_performed_by_a_team_with_the_appropriate_skills_(2):
   x(0,_0,_3) + x(4,_0,_3) - y(2,_0,_3) >= 0
 Each_task_is_performed_by_a_team_with_the_appropriate_skills_(2):
   x(0,_0,_4) + x(2,_0,_4) + x(3,_0,_4) + x(4,_0,_4) - y(2,_0,_4) >= 0
 Each_task_is_performed_by_a_team_with_the_appropriate_skills_(2):
   x(2,_0,_4) >= 0
 Each_task_is_performed_by_a_team_with_the_appropriate_skills_(2):
   x(0,_0,_4) + x(2,_0,_4) + x(3,_0,_4) + x(4,_0,_4) - y(2,_0,_4) >= 0
 Each_task_is_performed_by_a_team_with_the_appropriate_skills_(2):
   x(0,_0,_4) + x(2,_0,_4) + x(3,_0,_4) >= 0
 Each_task_is_performed_by_a_team_with_the_appropriate_skills_(2):
   x(0,_0,_4) + x(2,_0,_4) + x(3,_0,_4) + x(4,_0,_4) - y(2,_0,_4) >= 0
 Each_task_is_performed_by_a_team_with_the_appropriate_skills_(2):
   x(0,_0,_4) + x(4,_0,_4) - y(2,_0,_4) >= 0
 Each_task_is_performed_by_a_team_with_the_appropriate_skills_(2):
   x(1,_1,_0) + x(2,_1,_0) + x(3,_1,_0) + x(4,_1,_0) - y(2,_1,_0) >= 0
 Each_task_is_performed_by_a_team_with_the_appropriate_skills_(2):
   x(2,_1,_0) >= 0
 Each_task_is_performed_by_a_team_with_the_appropriate_skills_(2):
   x(1,_1,_0) + x(2,_1,_0) + x(3,_1,_0) + x(4,_1,_0) - y(2,_1,_0) >= 0
 Each_task_is_performed_by_a_team_with_the_appropriate_skills_(2):
   x(1,_1,_0) + x(2,_1,_0) + x(3,_1,_0) >= 0
 Each_task_is_performed_by_a_team_with_the_appropriate_skills_(2):
   x(1,_1,_0) + x(2,_1,_0) + x(3,_1,_0) + x(4,_1,_0) - y(2,_1,_0) >= 0
 Each_task_is_performed_by_a_team_with_the_appropriate_skills_(2):
   x(1,_1,_0) + x(4,_1,_0) - y(2,_1,_0) >= 0
 Each_task_is_performed_by_a_team_with_the_appropriate_skills_(2):
   x(1,_1,_1) + x(2,_1,_1) + x(3,_1,_1) + x(4,_1,_1) - y(2,_1,_1) >= 0
 Each_task_is_performed_by_a_team_with_the_appropriate_skills_(2):
   x(2,_1,_1) >= 0
 Each_task_is_performed_by_a_team_with_the_appropriate_skills_(2):
   x(1,_1,_1) + x(2,_1,_1) + x(3,_1,_1) + x(4,_1,_1) - y(2,_1,_1) >= 0
 Each_task_is_performed_by_a_team_with_the_appropriate_skills_(2):
   x(1,_1,_1) + x(2,_1,_1) + x(3,_1,_1) >= 0
 Each_task_is_performed_by_a_team_with_the_appropriate_skills_(2):
   x(1,_1,_1) + x(2,_1,_1) + x(3,_1,_1) + x(4,_1,_1) - y(2,_1,_1) >= 0
 Each_task_is_performed_by_a_team_with_the_appropriate_skills_(2):
   x(1,_1,_1) + x(4,_1,_1) - y(2,_1,_1) >= 0
 Each_task_is_performed_by_a_team_with_the_appropriate_skills_(2):
   x(1,_1,_2) + x(2,_1,_2) + x(3,_1,_2) + x(4,_1,_2) - y(2,_1,_2) >= 0
 Each_task_is_performed_by_a_team_with_the_appropriate_skills_(2):
   x(2,_1,_2) >= 0
 Each_task_is_performed_by_a_team_with_the_appropriate_skills_(2):
   x(1,_1,_2) + x(2,_1,_2) + x(3,_1,_2) + x(4,_1,_2) - y(2,_1,_2) >= 0
 Each_task_is_performed_by_a_team_with_the_appropriate_skills_(2):
   x(1,_1,_2) + x(2,_1,_2) + x(3,_1,_2) >= 0
 Each_task_is_performed_by_a_team_with_the_appropriate_skills_(2):
   x(1,_1,_2) + x(2,_1,_2) + x(3,_1,_2) + x(4,_1,_2) - y(2,_1,_2) >= 0
 Each_task_is_performed_by_a_team_with_the_appropriate_skills_(2):
   x(1,_1,_2) + x(4,_1,_2) - y(2,_1,_2) >= 0
 Each_task_is_performed_by_a_team_with_the_appropriate_skills_(2):
   x(1,_1,_3) + x(2,_1,_3) + x(3,_1,_3) + x(4,_1,_3) - y(2,_1,_3) >= 0
 Each_task_is_performed_by_a_team_with_the_appropriate_skills_(2):
   x(2,_1,_3) >= 0
 Each_task_is_performed_by_a_team_with_the_appropriate_skills_(2):
   x(1,_1,_3) + x(2,_1,_3) + x(3,_1,_3) + x(4,_1,_3) - y(2,_1,_3) >= 0
 Each_task_is_performed_by_a_team_with_the_appropriate_skills_(2):
   x(1,_1,_3) + x(2,_1,_3) + x(3,_1,_3) >= 0
 Each_task_is_performed_by_a_team_with_the_appropriate_skills_(2):
   x(1,_1,_3) + x(2,_1,_3) + x(3,_1,_3) + x(4,_1,_3) - y(2,_1,_3) >= 0
 Each_task_is_performed_by_a_team_with_the_appropriate_skills_(2):
   x(1,_1,_3) + x(4,_1,_3) - y(2,_1,_3) >= 0
 Each_task_is_performed_by_a_team_with_the_appropriate_skills_(2):
   x(1,_1,_4) + x(2,_1,_4) + x(3,_1,_4) + x(4,_1,_4) - y(2,_1,_4) >= 0
 Each_task_is_performed_by_a_team_with_the_appropriate_skills_(2):
   x(2,_1,_4) >= 0
 Each_task_is_performed_by_a_team_with_the_appropriate_skills_(2):
   x(1,_1,_4) + x(2,_1,_4) + x(3,_1,_4) + x(4,_1,_4) - y(2,_1,_4) >= 0
 Each_task_is_performed_by_a_team_with_the_appropriate_skills_(2):
   x(1,_1,_4) + x(2,_1,_4) + x(3,_1,_4) >= 0
 Each_task_is_performed_by_a_team_with_the_appropriate_skills_(2):
   x(1,_1,_4) + x(2,_1,_4) + x(3,_1,_4) + x(4,_1,_4) - y(2,_1,_4) >= 0
 Each_task_is_performed_by_a_team_with_the_appropriate_skills_(2):
   x(1,_1,_4) + x(4,_1,_4) - y(2,_1,_4) >= 0
 Each_task_is_performed_by_a_team_with_the_appropriate_skills_(2):
   x(0,_2,_0) + x(2,_2,_0) + x(3,_2,_0) + x(4,_2,_0) - y(2,_2,_0) >= 0
 Each_task_is_performed_by_a_team_with_the_appropriate_skills_(2):
   x(2,_2,_0) >= 0
 Each_task_is_performed_by_a_team_with_the_appropriate_skills_(2):
   x(0,_2,_0) + x(2,_2,_0) + x(3,_2,_0) + x(4,_2,_0) - y(2,_2,_0) >= 0
 Each_task_is_performed_by_a_team_with_the_appropriate_skills_(2):
   x(0,_2,_0) + x(2,_2,_0) + x(3,_2,_0) >= 0
 Each_task_is_performed_by_a_team_with_the_appropriate_skills_(2):
   x(0,_2,_0) + x(2,_2,_0) + x(3,_2,_0) + x(4,_2,_0) - y(2,_2,_0) >= 0
 Each_task_is_performed_by_a_team_with_the_appropriate_skills_(2):
   x(0,_2,_0) + x(4,_2,_0) - y(2,_2,_0) >= 0
 Each_task_is_performed_by_a_team_with_the_appropriate_skills_(2):
   x(0,_2,_1) + x(2,_2,_1) + x(3,_2,_1) + x(4,_2,_1) - y(2,_2,_1) >= 0
 Each_task_is_performed_by_a_team_with_the_appropriate_skills_(2):
   x(2,_2,_1) >= 0
 Each_task_is_performed_by_a_team_with_the_appropriate_skills_(2):
   x(0,_2,_1) + x(2,_2,_1) + x(3,_2,_1) + x(4,_2,_1) - y(2,_2,_1) >= 0
 Each_task_is_performed_by_a_team_with_the_appropriate_skills_(2):
   x(0,_2,_1) + x(2,_2,_1) + x(3,_2,_1) >= 0
 Each_task_is_performed_by_a_team_with_the_appropriate_skills_(2):
   x(0,_2,_1) + x(2,_2,_1) + x(3,_2,_1) + x(4,_2,_1) - y(2,_2,_1) >= 0
 Each_task_is_performed_by_a_team_with_the_appropriate_skills_(2):
   x(0,_2,_1) + x(4,_2,_1) - y(2,_2,_1) >= 0
 Each_task_is_performed_by_a_team_with_the_appropriate_skills_(2):
   x(0,_2,_2) + x(2,_2,_2) + x(3,_2,_2) + x(4,_2,_2) - y(2,_2,_2) >= 0
 Each_task_is_performed_by_a_team_with_the_appropriate_skills_(2):
   x(2,_2,_2) >= 0
 Each_task_is_performed_by_a_team_with_the_appropriate_skills_(2):
   x(0,_2,_2) + x(2,_2,_2) + x(3,_2,_2) + x(4,_2,_2) - y(2,_2,_2) >= 0
 Each_task_is_performed_by_a_team_with_the_appropriate_skills_(2):
   x(0,_2,_2) + x(2,_2,_2) + x(3,_2,_2) >= 0
 Each_task_is_performed_by_a_team_with_the_appropriate_skills_(2):
   x(0,_2,_2) + x(2,_2,_2) + x(3,_2,_2) + x(4,_2,_2) - y(2,_2,_2) >= 0
 Each_task_is_performed_by_a_team_with_the_appropriate_skills_(2):
   x(0,_2,_2) + x(4,_2,_2) - y(2,_2,_2) >= 0
 Each_task_is_performed_by_a_team_with_the_appropriate_skills_(2):
   x(0,_2,_3) + x(2,_2,_3) + x(3,_2,_3) + x(4,_2,_3) - y(2,_2,_3) >= 0
 Each_task_is_performed_by_a_team_with_the_appropriate_skills_(2):
   x(2,_2,_3) >= 0
 Each_task_is_performed_by_a_team_with_the_appropriate_skills_(2):
   x(0,_2,_3) + x(2,_2,_3) + x(3,_2,_3) + x(4,_2,_3) - y(2,_2,_3) >= 0
 Each_task_is_performed_by_a_team_with_the_appropriate_skills_(2):
   x(0,_2,_3) + x(2,_2,_3) + x(3,_2,_3) >= 0
 Each_task_is_performed_by_a_team_with_the_appropriate_skills_(2):
   x(0,_2,_3) + x(2,_2,_3) + x(3,_2,_3) + x(4,_2,_3) - y(2,_2,_3) >= 0
 Each_task_is_performed_by_a_team_with_the_appropriate_skills_(2):
   x(0,_2,_3) + x(4,_2,_3) - y(2,_2,_3) >= 0
 Each_task_is_performed_by_a_team_with_the_appropriate_skills_(2):
   x(0,_2,_4) + x(2,_2,_4) + x(3,_2,_4) + x(4,_2,_4) - y(2,_2,_4) >= 0
 Each_task_is_performed_by_a_team_with_the_appropriate_skills_(2):
   x(2,_2,_4) >= 0
 Each_task_is_performed_by_a_team_with_the_appropriate_skills_(2):
   x(0,_2,_4) + x(2,_2,_4) + x(3,_2,_4) + x(4,_2,_4) - y(2,_2,_4) >= 0
 Each_task_is_performed_by_a_team_with_the_appropriate_skills_(2):
   x(0,_2,_4) + x(2,_2,_4) + x(3,_2,_4) >= 0
 Each_task_is_performed_by_a_team_with_the_appropriate_skills_(2):
   x(0,_2,_4) + x(2,_2,_4) + x(3,_2,_4) + x(4,_2,_4) - y(2,_2,_4) >= 0
 Each_task_is_performed_by_a_team_with_the_appropriate_skills_(2):
   x(0,_2,_4) + x(4,_2,_4) - y(2,_2,_4) >= 0
 Each_task_is_performed_by_a_team_with_the_appropriate_skills_(2):
   x(0,_3,_0) + x(1,_3,_0) + x(3,_3,_0) + x(4,_3,_0) - y(2,_3,_0) >= 0
 Each_task_is_performed_by_a_team_with_the_appropriate_skills_(2): >= 0
 Each_task_is_performed_by_a_team_with_the_appropriate_skills_(2):
   x(0,_3,_0) + x(1,_3,_0) + x(3,_3,_0) + x(4,_3,_0) - y(2,_3,_0) >= 0
 Each_task_is_performed_by_a_team_with_the_appropriate_skills_(2):
   x(0,_3,_0) + x(1,_3,_0) + x(3,_3,_0) >= 0
 Each_task_is_performed_by_a_team_with_the_appropriate_skills_(2):
   x(0,_3,_0) + x(1,_3,_0) + x(3,_3,_0) + x(4,_3,_0) - y(2,_3,_0) >= 0
 Each_task_is_performed_by_a_team_with_the_appropriate_skills_(2):
   x(0,_3,_0) + x(1,_3,_0) + x(4,_3,_0) - y(2,_3,_0) >= 0
 Each_task_is_performed_by_a_team_with_the_appropriate_skills_(2):
   x(0,_3,_1) + x(1,_3,_1) + x(3,_3,_1) + x(4,_3,_1) - y(2,_3,_1) >= 0
 Each_task_is_performed_by_a_team_with_the_appropriate_skills_(2): >= 0
 Each_task_is_performed_by_a_team_with_the_appropriate_skills_(2):
   x(0,_3,_1) + x(1,_3,_1) + x(3,_3,_1) + x(4,_3,_1) - y(2,_3,_1) >= 0
 Each_task_is_performed_by_a_team_with_the_appropriate_skills_(2):
   x(0,_3,_1) + x(1,_3,_1) + x(3,_3,_1) >= 0
 Each_task_is_performed_by_a_team_with_the_appropriate_skills_(2):
   x(0,_3,_1) + x(1,_3,_1) + x(3,_3,_1) + x(4,_3,_1) - y(2,_3,_1) >= 0
 Each_task_is_performed_by_a_team_with_the_appropriate_skills_(2):
   x(0,_3,_1) + x(1,_3,_1) + x(4,_3,_1) - y(2,_3,_1) >= 0
 Each_task_is_performed_by_a_team_with_the_appropriate_skills_(2):
   x(0,_3,_2) + x(1,_3,_2) + x(3,_3,_2) + x(4,_3,_2) - y(2,_3,_2) >= 0
 Each_task_is_performed_by_a_team_with_the_appropriate_skills_(2): >= 0
 Each_task_is_performed_by_a_team_with_the_appropriate_skills_(2):
   x(0,_3,_2) + x(1,_3,_2) + x(3,_3,_2) + x(4,_3,_2) - y(2,_3,_2) >= 0
 Each_task_is_performed_by_a_team_with_the_appropriate_skills_(2):
   x(0,_3,_2) + x(1,_3,_2) + x(3,_3,_2) >= 0
 Each_task_is_performed_by_a_team_with_the_appropriate_skills_(2):
   x(0,_3,_2) + x(1,_3,_2) + x(3,_3,_2) + x(4,_3,_2) - y(2,_3,_2) >= 0
 Each_task_is_performed_by_a_team_with_the_appropriate_skills_(2):
   x(0,_3,_2) + x(1,_3,_2) + x(4,_3,_2) - y(2,_3,_2) >= 0
 Each_task_is_performed_by_a_team_with_the_appropriate_skills_(2):
   x(0,_3,_3) + x(1,_3,_3) + x(3,_3,_3) + x(4,_3,_3) - y(2,_3,_3) >= 0
 Each_task_is_performed_by_a_team_with_the_appropriate_skills_(2): >= 0
 Each_task_is_performed_by_a_team_with_the_appropriate_skills_(2):
   x(0,_3,_3) + x(1,_3,_3) + x(3,_3,_3) + x(4,_3,_3) - y(2,_3,_3) >= 0
 Each_task_is_performed_by_a_team_with_the_appropriate_skills_(2):
   x(0,_3,_3) + x(1,_3,_3) + x(3,_3,_3) >= 0
 Each_task_is_performed_by_a_team_with_the_appropriate_skills_(2):
   x(0,_3,_3) + x(1,_3,_3) + x(3,_3,_3) + x(4,_3,_3) - y(2,_3,_3) >= 0
 Each_task_is_performed_by_a_team_with_the_appropriate_skills_(2):
   x(0,_3,_3) + x(1,_3,_3) + x(4,_3,_3) - y(2,_3,_3) >= 0
 Each_task_is_performed_by_a_team_with_the_appropriate_skills_(2):
   x(0,_3,_4) + x(1,_3,_4) + x(3,_3,_4) + x(4,_3,_4) - y(2,_3,_4) >= 0
 Each_task_is_performed_by_a_team_with_the_appropriate_skills_(2): >= 0
 Each_task_is_performed_by_a_team_with_the_appropriate_skills_(2):
   x(0,_3,_4) + x(1,_3,_4) + x(3,_3,_4) + x(4,_3,_4) - y(2,_3,_4) >= 0
 Each_task_is_performed_by_a_team_with_the_appropriate_skills_(2):
   x(0,_3,_4) + x(1,_3,_4) + x(3,_3,_4) >= 0
 Each_task_is_performed_by_a_team_with_the_appropriate_skills_(2):
   x(0,_3,_4) + x(1,_3,_4) + x(3,_3,_4) + x(4,_3,_4) - y(2,_3,_4) >= 0
 Each_task_is_performed_by_a_team_with_the_appropriate_skills_(2):
   x(0,_3,_4) + x(1,_3,_4) + x(4,_3,_4) - y(2,_3,_4) >= 0
 Each_task_is_performed_by_a_team_with_the_appropriate_skills_(2):
   x(0,_4,_0) + x(1,_4,_0) + x(2,_4,_0) + x(4,_4,_0) - y(2,_4,_0) >= 0
 Each_task_is_performed_by_a_team_with_the_appropriate_skills_(2):
   x(2,_4,_0) >= 0
 Each_task_is_performed_by_a_team_with_the_appropriate_skills_(2):
   x(0,_4,_0) + x(1,_4,_0) + x(2,_4,_0) + x(4,_4,_0) - y(2,_4,_0) >= 0
 Each_task_is_performed_by_a_team_with_the_appropriate_skills_(2):
   x(0,_4,_0) + x(1,_4,_0) + x(2,_4,_0) >= 0
 Each_task_is_performed_by_a_team_with_the_appropriate_skills_(2):
   x(0,_4,_0) + x(1,_4,_0) + x(2,_4,_0) + x(4,_4,_0) - y(2,_4,_0) >= 0
 Each_task_is_performed_by_a_team_with_the_appropriate_skills_(2):
   x(0,_4,_0) + x(1,_4,_0) + x(4,_4,_0) - y(2,_4,_0) >= 0
 Each_task_is_performed_by_a_team_with_the_appropriate_skills_(2):
   x(0,_4,_1) + x(1,_4,_1) + x(2,_4,_1) + x(4,_4,_1) - y(2,_4,_1) >= 0
 Each_task_is_performed_by_a_team_with_the_appropriate_skills_(2):
   x(2,_4,_1) >= 0
 Each_task_is_performed_by_a_team_with_the_appropriate_skills_(2):
   x(0,_4,_1) + x(1,_4,_1) + x(2,_4,_1) + x(4,_4,_1) - y(2,_4,_1) >= 0
 Each_task_is_performed_by_a_team_with_the_appropriate_skills_(2):
   x(0,_4,_1) + x(1,_4,_1) + x(2,_4,_1) >= 0
 Each_task_is_performed_by_a_team_with_the_appropriate_skills_(2):
   x(0,_4,_1) + x(1,_4,_1) + x(2,_4,_1) + x(4,_4,_1) - y(2,_4,_1) >= 0
 Each_task_is_performed_by_a_team_with_the_appropriate_skills_(2):
   x(0,_4,_1) + x(1,_4,_1) + x(4,_4,_1) - y(2,_4,_1) >= 0
 Each_task_is_performed_by_a_team_with_the_appropriate_skills_(2):
   x(0,_4,_2) + x(1,_4,_2) + x(2,_4,_2) + x(4,_4,_2) - y(2,_4,_2) >= 0
 Each_task_is_performed_by_a_team_with_the_appropriate_skills_(2):
   x(2,_4,_2) >= 0
 Each_task_is_performed_by_a_team_with_the_appropriate_skills_(2):
   x(0,_4,_2) + x(1,_4,_2) + x(2,_4,_2) + x(4,_4,_2) - y(2,_4,_2) >= 0
 Each_task_is_performed_by_a_team_with_the_appropriate_skills_(2):
   x(0,_4,_2) + x(1,_4,_2) + x(2,_4,_2) >= 0
 Each_task_is_performed_by_a_team_with_the_appropriate_skills_(2):
   x(0,_4,_2) + x(1,_4,_2) + x(2,_4,_2) + x(4,_4,_2) - y(2,_4,_2) >= 0
 Each_task_is_performed_by_a_team_with_the_appropriate_skills_(2):
   x(0,_4,_2) + x(1,_4,_2) + x(4,_4,_2) - y(2,_4,_2) >= 0
 Each_task_is_performed_by_a_team_with_the_appropriate_skills_(2):
   x(0,_4,_3) + x(1,_4,_3) + x(2,_4,_3) + x(4,_4,_3) - y(2,_4,_3) >= 0
 Each_task_is_performed_by_a_team_with_the_appropriate_skills_(2):
   x(2,_4,_3) >= 0
 Each_task_is_performed_by_a_team_with_the_appropriate_skills_(2):
   x(0,_4,_3) + x(1,_4,_3) + x(2,_4,_3) + x(4,_4,_3) - y(2,_4,_3) >= 0
 Each_task_is_performed_by_a_team_with_the_appropriate_skills_(2):
   x(0,_4,_3) + x(1,_4,_3) + x(2,_4,_3) >= 0
 Each_task_is_performed_by_a_team_with_the_appropriate_skills_(2):
   x(0,_4,_3) + x(1,_4,_3) + x(2,_4,_3) + x(4,_4,_3) - y(2,_4,_3) >= 0
 Each_task_is_performed_by_a_team_with_the_appropriate_skills_(2):
   x(0,_4,_3) + x(1,_4,_3) + x(4,_4,_3) - y(2,_4,_3) >= 0
 Each_task_is_performed_by_a_team_with_the_appropriate_skills_(2):
   x(0,_4,_4) + x(1,_4,_4) + x(2,_4,_4) + x(4,_4,_4) - y(2,_4,_4) >= 0
 Each_task_is_performed_by_a_team_with_the_appropriate_skills_(2):
   x(2,_4,_4) >= 0
 Each_task_is_performed_by_a_team_with_the_appropriate_skills_(2):
   x(0,_4,_4) + x(1,_4,_4) + x(2,_4,_4) + x(4,_4,_4) - y(2,_4,_4) >= 0
 Each_task_is_performed_by_a_team_with_the_appropriate_skills_(2):
   x(0,_4,_4) + x(1,_4,_4) + x(2,_4,_4) >= 0
 Each_task_is_performed_by_a_team_with_the_appropriate_skills_(2):
   x(0,_4,_4) + x(1,_4,_4) + x(2,_4,_4) + x(4,_4,_4) - y(2,_4,_4) >= 0
 Each_task_is_performed_by_a_team_with_the_appropriate_skills_(2):
   x(0,_4,_4) + x(1,_4,_4) + x(4,_4,_4) - y(2,_4,_4) >= 0
 Each_task_is_performed_by_a_team_with_the_appropriate_skills_(3):
   x(0,_0,_0) + x(2,_0,_0) + x(3,_0,_0) + x(4,_0,_0) >= 0
 Each_task_is_performed_by_a_team_with_the_appropriate_skills_(3):
   x(2,_0,_0) >= 0
 Each_task_is_performed_by_a_team_with_the_appropriate_skills_(3):
   x(0,_0,_0) + x(2,_0,_0) + x(3,_0,_0) + x(4,_0,_0) >= 0
 Each_task_is_performed_by_a_team_with_the_appropriate_skills_(3):
   x(0,_0,_0) + x(2,_0,_0) + x(3,_0,_0) >= 0
 Each_task_is_performed_by_a_team_with_the_appropriate_skills_(3):
   x(0,_0,_0) + x(2,_0,_0) + x(3,_0,_0) + x(4,_0,_0) - y(3,_0,_0) >= 0
 Each_task_is_performed_by_a_team_with_the_appropriate_skills_(3):
   x(0,_0,_0) + x(4,_0,_0) - y(3,_0,_0) >= 0
 Each_task_is_performed_by_a_team_with_the_appropriate_skills_(3):
   x(0,_0,_1) + x(2,_0,_1) + x(3,_0,_1) + x(4,_0,_1) >= 0
 Each_task_is_performed_by_a_team_with_the_appropriate_skills_(3):
   x(2,_0,_1) >= 0
 Each_task_is_performed_by_a_team_with_the_appropriate_skills_(3):
   x(0,_0,_1) + x(2,_0,_1) + x(3,_0,_1) + x(4,_0,_1) >= 0
 Each_task_is_performed_by_a_team_with_the_appropriate_skills_(3):
   x(0,_0,_1) + x(2,_0,_1) + x(3,_0,_1) >= 0
 Each_task_is_performed_by_a_team_with_the_appropriate_skills_(3):
   x(0,_0,_1) + x(2,_0,_1) + x(3,_0,_1) + x(4,_0,_1) - y(3,_0,_1) >= 0
 Each_task_is_performed_by_a_team_with_the_appropriate_skills_(3):
   x(0,_0,_1) + x(4,_0,_1) - y(3,_0,_1) >= 0
 Each_task_is_performed_by_a_team_with_the_appropriate_skills_(3):
   x(0,_0,_2) + x(2,_0,_2) + x(3,_0,_2) + x(4,_0,_2) >= 0
 Each_task_is_performed_by_a_team_with_the_appropriate_skills_(3):
   x(2,_0,_2) >= 0
 Each_task_is_performed_by_a_team_with_the_appropriate_skills_(3):
   x(0,_0,_2) + x(2,_0,_2) + x(3,_0,_2) + x(4,_0,_2) >= 0
 Each_task_is_performed_by_a_team_with_the_appropriate_skills_(3):
   x(0,_0,_2) + x(2,_0,_2) + x(3,_0,_2) >= 0
 Each_task_is_performed_by_a_team_with_the_appropriate_skills_(3):
   x(0,_0,_2) + x(2,_0,_2) + x(3,_0,_2) + x(4,_0,_2) - y(3,_0,_2) >= 0
 Each_task_is_performed_by_a_team_with_the_appropriate_skills_(3):
   x(0,_0,_2) + x(4,_0,_2) - y(3,_0,_2) >= 0
 Each_task_is_performed_by_a_team_with_the_appropriate_skills_(3):
   x(0,_0,_3) + x(2,_0,_3) + x(3,_0,_3) + x(4,_0,_3) >= 0
 Each_task_is_performed_by_a_team_with_the_appropriate_skills_(3):
   x(2,_0,_3) >= 0
 Each_task_is_performed_by_a_team_with_the_appropriate_skills_(3):
   x(0,_0,_3) + x(2,_0,_3) + x(3,_0,_3) + x(4,_0,_3) >= 0
 Each_task_is_performed_by_a_team_with_the_appropriate_skills_(3):
   x(0,_0,_3) + x(2,_0,_3) + x(3,_0,_3) >= 0
 Each_task_is_performed_by_a_team_with_the_appropriate_skills_(3):
   x(0,_0,_3) + x(2,_0,_3) + x(3,_0,_3) + x(4,_0,_3) - y(3,_0,_3) >= 0
 Each_task_is_performed_by_a_team_with_the_appropriate_skills_(3):
   x(0,_0,_3) + x(4,_0,_3) - y(3,_0,_3) >= 0
 Each_task_is_performed_by_a_team_with_the_appropriate_skills_(3):
   x(0,_0,_4) + x(2,_0,_4) + x(3,_0,_4) + x(4,_0,_4) >= 0
 Each_task_is_performed_by_a_team_with_the_appropriate_skills_(3):
   x(2,_0,_4) >= 0
 Each_task_is_performed_by_a_team_with_the_appropriate_skills_(3):
   x(0,_0,_4) + x(2,_0,_4) + x(3,_0,_4) + x(4,_0,_4) >= 0
 Each_task_is_performed_by_a_team_with_the_appropriate_skills_(3):
   x(0,_0,_4) + x(2,_0,_4) + x(3,_0,_4) >= 0
 Each_task_is_performed_by_a_team_with_the_appropriate_skills_(3):
   x(0,_0,_4) + x(2,_0,_4) + x(3,_0,_4) + x(4,_0,_4) - y(3,_0,_4) >= 0
 Each_task_is_performed_by_a_team_with_the_appropriate_skills_(3):
   x(0,_0,_4) + x(4,_0,_4) - y(3,_0,_4) >= 0
 Each_task_is_performed_by_a_team_with_the_appropriate_skills_(3):
   x(1,_1,_0) + x(2,_1,_0) + x(3,_1,_0) + x(4,_1,_0) >= 0
 Each_task_is_performed_by_a_team_with_the_appropriate_skills_(3):
   x(2,_1,_0) >= 0
 Each_task_is_performed_by_a_team_with_the_appropriate_skills_(3):
   x(1,_1,_0) + x(2,_1,_0) + x(3,_1,_0) + x(4,_1,_0) >= 0
 Each_task_is_performed_by_a_team_with_the_appropriate_skills_(3):
   x(1,_1,_0) + x(2,_1,_0) + x(3,_1,_0) >= 0
 Each_task_is_performed_by_a_team_with_the_appropriate_skills_(3):
   x(1,_1,_0) + x(2,_1,_0) + x(3,_1,_0) + x(4,_1,_0) - y(3,_1,_0) >= 0
 Each_task_is_performed_by_a_team_with_the_appropriate_skills_(3):
   x(1,_1,_0) + x(4,_1,_0) - y(3,_1,_0) >= 0
 Each_task_is_performed_by_a_team_with_the_appropriate_skills_(3):
   x(1,_1,_1) + x(2,_1,_1) + x(3,_1,_1) + x(4,_1,_1) >= 0
 Each_task_is_performed_by_a_team_with_the_appropriate_skills_(3):
   x(2,_1,_1) >= 0
 Each_task_is_performed_by_a_team_with_the_appropriate_skills_(3):
   x(1,_1,_1) + x(2,_1,_1) + x(3,_1,_1) + x(4,_1,_1) >= 0
 Each_task_is_performed_by_a_team_with_the_appropriate_skills_(3):
   x(1,_1,_1) + x(2,_1,_1) + x(3,_1,_1) >= 0
 Each_task_is_performed_by_a_team_with_the_appropriate_skills_(3):
   x(1,_1,_1) + x(2,_1,_1) + x(3,_1,_1) + x(4,_1,_1) - y(3,_1,_1) >= 0
 Each_task_is_performed_by_a_team_with_the_appropriate_skills_(3):
   x(1,_1,_1) + x(4,_1,_1) - y(3,_1,_1) >= 0
 Each_task_is_performed_by_a_team_with_the_appropriate_skills_(3):
   x(1,_1,_2) + x(2,_1,_2) + x(3,_1,_2) + x(4,_1,_2) >= 0
 Each_task_is_performed_by_a_team_with_the_appropriate_skills_(3):
   x(2,_1,_2) >= 0
 Each_task_is_performed_by_a_team_with_the_appropriate_skills_(3):
   x(1,_1,_2) + x(2,_1,_2) + x(3,_1,_2) + x(4,_1,_2) >= 0
 Each_task_is_performed_by_a_team_with_the_appropriate_skills_(3):
   x(1,_1,_2) + x(2,_1,_2) + x(3,_1,_2) >= 0
 Each_task_is_performed_by_a_team_with_the_appropriate_skills_(3):
   x(1,_1,_2) + x(2,_1,_2) + x(3,_1,_2) + x(4,_1,_2) - y(3,_1,_2) >= 0
 Each_task_is_performed_by_a_team_with_the_appropriate_skills_(3):
   x(1,_1,_2) + x(4,_1,_2) - y(3,_1,_2) >= 0
 Each_task_is_performed_by_a_team_with_the_appropriate_skills_(3):
   x(1,_1,_3) + x(2,_1,_3) + x(3,_1,_3) + x(4,_1,_3) >= 0
 Each_task_is_performed_by_a_team_with_the_appropriate_skills_(3):
   x(2,_1,_3) >= 0
 Each_task_is_performed_by_a_team_with_the_appropriate_skills_(3):
   x(1,_1,_3) + x(2,_1,_3) + x(3,_1,_3) + x(4,_1,_3) >= 0
 Each_task_is_performed_by_a_team_with_the_appropriate_skills_(3):
   x(1,_1,_3) + x(2,_1,_3) + x(3,_1,_3) >= 0
 Each_task_is_performed_by_a_team_with_the_appropriate_skills_(3):
   x(1,_1,_3) + x(2,_1,_3) + x(3,_1,_3) + x(4,_1,_3) - y(3,_1,_3) >= 0
 Each_task_is_performed_by_a_team_with_the_appropriate_skills_(3):
   x(1,_1,_3) + x(4,_1,_3) - y(3,_1,_3) >= 0
 Each_task_is_performed_by_a_team_with_the_appropriate_skills_(3):
   x(1,_1,_4) + x(2,_1,_4) + x(3,_1,_4) + x(4,_1,_4) >= 0
 Each_task_is_performed_by_a_team_with_the_appropriate_skills_(3):
   x(2,_1,_4) >= 0
 Each_task_is_performed_by_a_team_with_the_appropriate_skills_(3):
   x(1,_1,_4) + x(2,_1,_4) + x(3,_1,_4) + x(4,_1,_4) >= 0
 Each_task_is_performed_by_a_team_with_the_appropriate_skills_(3):
   x(1,_1,_4) + x(2,_1,_4) + x(3,_1,_4) >= 0
 Each_task_is_performed_by_a_team_with_the_appropriate_skills_(3):
   x(1,_1,_4) + x(2,_1,_4) + x(3,_1,_4) + x(4,_1,_4) - y(3,_1,_4) >= 0
 Each_task_is_performed_by_a_team_with_the_appropriate_skills_(3):
   x(1,_1,_4) + x(4,_1,_4) - y(3,_1,_4) >= 0
 Each_task_is_performed_by_a_team_with_the_appropriate_skills_(3):
   x(0,_2,_0) + x(2,_2,_0) + x(3,_2,_0) + x(4,_2,_0) >= 0
 Each_task_is_performed_by_a_team_with_the_appropriate_skills_(3):
   x(2,_2,_0) >= 0
 Each_task_is_performed_by_a_team_with_the_appropriate_skills_(3):
   x(0,_2,_0) + x(2,_2,_0) + x(3,_2,_0) + x(4,_2,_0) >= 0
 Each_task_is_performed_by_a_team_with_the_appropriate_skills_(3):
   x(0,_2,_0) + x(2,_2,_0) + x(3,_2,_0) >= 0
 Each_task_is_performed_by_a_team_with_the_appropriate_skills_(3):
   x(0,_2,_0) + x(2,_2,_0) + x(3,_2,_0) + x(4,_2,_0) - y(3,_2,_0) >= 0
 Each_task_is_performed_by_a_team_with_the_appropriate_skills_(3):
   x(0,_2,_0) + x(4,_2,_0) - y(3,_2,_0) >= 0
 Each_task_is_performed_by_a_team_with_the_appropriate_skills_(3):
   x(0,_2,_1) + x(2,_2,_1) + x(3,_2,_1) + x(4,_2,_1) >= 0
 Each_task_is_performed_by_a_team_with_the_appropriate_skills_(3):
   x(2,_2,_1) >= 0
 Each_task_is_performed_by_a_team_with_the_appropriate_skills_(3):
   x(0,_2,_1) + x(2,_2,_1) + x(3,_2,_1) + x(4,_2,_1) >= 0
 Each_task_is_performed_by_a_team_with_the_appropriate_skills_(3):
   x(0,_2,_1) + x(2,_2,_1) + x(3,_2,_1) >= 0
 Each_task_is_performed_by_a_team_with_the_appropriate_skills_(3):
   x(0,_2,_1) + x(2,_2,_1) + x(3,_2,_1) + x(4,_2,_1) - y(3,_2,_1) >= 0
 Each_task_is_performed_by_a_team_with_the_appropriate_skills_(3):
   x(0,_2,_1) + x(4,_2,_1) - y(3,_2,_1) >= 0
 Each_task_is_performed_by_a_team_with_the_appropriate_skills_(3):
   x(0,_2,_2) + x(2,_2,_2) + x(3,_2,_2) + x(4,_2,_2) >= 0
 Each_task_is_performed_by_a_team_with_the_appropriate_skills_(3):
   x(2,_2,_2) >= 0
 Each_task_is_performed_by_a_team_with_the_appropriate_skills_(3):
   x(0,_2,_2) + x(2,_2,_2) + x(3,_2,_2) + x(4,_2,_2) >= 0
 Each_task_is_performed_by_a_team_with_the_appropriate_skills_(3):
   x(0,_2,_2) + x(2,_2,_2) + x(3,_2,_2) >= 0
 Each_task_is_performed_by_a_team_with_the_appropriate_skills_(3):
   x(0,_2,_2) + x(2,_2,_2) + x(3,_2,_2) + x(4,_2,_2) - y(3,_2,_2) >= 0
 Each_task_is_performed_by_a_team_with_the_appropriate_skills_(3):
   x(0,_2,_2) + x(4,_2,_2) - y(3,_2,_2) >= 0
 Each_task_is_performed_by_a_team_with_the_appropriate_skills_(3):
   x(0,_2,_3) + x(2,_2,_3) + x(3,_2,_3) + x(4,_2,_3) >= 0
 Each_task_is_performed_by_a_team_with_the_appropriate_skills_(3):
   x(2,_2,_3) >= 0
 Each_task_is_performed_by_a_team_with_the_appropriate_skills_(3):
   x(0,_2,_3) + x(2,_2,_3) + x(3,_2,_3) + x(4,_2,_3) >= 0
 Each_task_is_performed_by_a_team_with_the_appropriate_skills_(3):
   x(0,_2,_3) + x(2,_2,_3) + x(3,_2,_3) >= 0
 Each_task_is_performed_by_a_team_with_the_appropriate_skills_(3):
   x(0,_2,_3) + x(2,_2,_3) + x(3,_2,_3) + x(4,_2,_3) - y(3,_2,_3) >= 0
 Each_task_is_performed_by_a_team_with_the_appropriate_skills_(3):
   x(0,_2,_3) + x(4,_2,_3) - y(3,_2,_3) >= 0
 Each_task_is_performed_by_a_team_with_the_appropriate_skills_(3):
   x(0,_2,_4) + x(2,_2,_4) + x(3,_2,_4) + x(4,_2,_4) >= 0
 Each_task_is_performed_by_a_team_with_the_appropriate_skills_(3):
   x(2,_2,_4) >= 0
 Each_task_is_performed_by_a_team_with_the_appropriate_skills_(3):
   x(0,_2,_4) + x(2,_2,_4) + x(3,_2,_4) + x(4,_2,_4) >= 0
 Each_task_is_performed_by_a_team_with_the_appropriate_skills_(3):
   x(0,_2,_4) + x(2,_2,_4) + x(3,_2,_4) >= 0
 Each_task_is_performed_by_a_team_with_the_appropriate_skills_(3):
   x(0,_2,_4) + x(2,_2,_4) + x(3,_2,_4) + x(4,_2,_4) - y(3,_2,_4) >= 0
 Each_task_is_performed_by_a_team_with_the_appropriate_skills_(3):
   x(0,_2,_4) + x(4,_2,_4) - y(3,_2,_4) >= 0
 Each_task_is_performed_by_a_team_with_the_appropriate_skills_(3):
   x(0,_3,_0) + x(1,_3,_0) + x(3,_3,_0) + x(4,_3,_0) >= 0
 Each_task_is_performed_by_a_team_with_the_appropriate_skills_(3): >= 0
 Each_task_is_performed_by_a_team_with_the_appropriate_skills_(3):
   x(0,_3,_0) + x(1,_3,_0) + x(3,_3,_0) + x(4,_3,_0) >= 0
 Each_task_is_performed_by_a_team_with_the_appropriate_skills_(3):
   x(0,_3,_0) + x(1,_3,_0) + x(3,_3,_0) >= 0
 Each_task_is_performed_by_a_team_with_the_appropriate_skills_(3):
   x(0,_3,_0) + x(1,_3,_0) + x(3,_3,_0) + x(4,_3,_0) - y(3,_3,_0) >= 0
 Each_task_is_performed_by_a_team_with_the_appropriate_skills_(3):
   x(0,_3,_0) + x(1,_3,_0) + x(4,_3,_0) - y(3,_3,_0) >= 0
 Each_task_is_performed_by_a_team_with_the_appropriate_skills_(3):
   x(0,_3,_1) + x(1,_3,_1) + x(3,_3,_1) + x(4,_3,_1) >= 0
 Each_task_is_performed_by_a_team_with_the_appropriate_skills_(3): >= 0
 Each_task_is_performed_by_a_team_with_the_appropriate_skills_(3):
   x(0,_3,_1) + x(1,_3,_1) + x(3,_3,_1) + x(4,_3,_1) >= 0
 Each_task_is_performed_by_a_team_with_the_appropriate_skills_(3):
   x(0,_3,_1) + x(1,_3,_1) + x(3,_3,_1) >= 0
 Each_task_is_performed_by_a_team_with_the_appropriate_skills_(3):
   x(0,_3,_1) + x(1,_3,_1) + x(3,_3,_1) + x(4,_3,_1) - y(3,_3,_1) >= 0
 Each_task_is_performed_by_a_team_with_the_appropriate_skills_(3):
   x(0,_3,_1) + x(1,_3,_1) + x(4,_3,_1) - y(3,_3,_1) >= 0
 Each_task_is_performed_by_a_team_with_the_appropriate_skills_(3):
   x(0,_3,_2) + x(1,_3,_2) + x(3,_3,_2) + x(4,_3,_2) >= 0
 Each_task_is_performed_by_a_team_with_the_appropriate_skills_(3): >= 0
 Each_task_is_performed_by_a_team_with_the_appropriate_skills_(3):
   x(0,_3,_2) + x(1,_3,_2) + x(3,_3,_2) + x(4,_3,_2) >= 0
 Each_task_is_performed_by_a_team_with_the_appropriate_skills_(3):
   x(0,_3,_2) + x(1,_3,_2) + x(3,_3,_2) >= 0
 Each_task_is_performed_by_a_team_with_the_appropriate_skills_(3):
   x(0,_3,_2) + x(1,_3,_2) + x(3,_3,_2) + x(4,_3,_2) - y(3,_3,_2) >= 0
 Each_task_is_performed_by_a_team_with_the_appropriate_skills_(3):
   x(0,_3,_2) + x(1,_3,_2) + x(4,_3,_2) - y(3,_3,_2) >= 0
 Each_task_is_performed_by_a_team_with_the_appropriate_skills_(3):
   x(0,_3,_3) + x(1,_3,_3) + x(3,_3,_3) + x(4,_3,_3) >= 0
 Each_task_is_performed_by_a_team_with_the_appropriate_skills_(3): >= 0
 Each_task_is_performed_by_a_team_with_the_appropriate_skills_(3):
   x(0,_3,_3) + x(1,_3,_3) + x(3,_3,_3) + x(4,_3,_3) >= 0
 Each_task_is_performed_by_a_team_with_the_appropriate_skills_(3):
   x(0,_3,_3) + x(1,_3,_3) + x(3,_3,_3) >= 0
 Each_task_is_performed_by_a_team_with_the_appropriate_skills_(3):
   x(0,_3,_3) + x(1,_3,_3) + x(3,_3,_3) + x(4,_3,_3) - y(3,_3,_3) >= 0
 Each_task_is_performed_by_a_team_with_the_appropriate_skills_(3):
   x(0,_3,_3) + x(1,_3,_3) + x(4,_3,_3) - y(3,_3,_3) >= 0
 Each_task_is_performed_by_a_team_with_the_appropriate_skills_(3):
   x(0,_3,_4) + x(1,_3,_4) + x(3,_3,_4) + x(4,_3,_4) >= 0
 Each_task_is_performed_by_a_team_with_the_appropriate_skills_(3): >= 0
 Each_task_is_performed_by_a_team_with_the_appropriate_skills_(3):
   x(0,_3,_4) + x(1,_3,_4) + x(3,_3,_4) + x(4,_3,_4) >= 0
 Each_task_is_performed_by_a_team_with_the_appropriate_skills_(3):
   x(0,_3,_4) + x(1,_3,_4) + x(3,_3,_4) >= 0
 Each_task_is_performed_by_a_team_with_the_appropriate_skills_(3):
   x(0,_3,_4) + x(1,_3,_4) + x(3,_3,_4) + x(4,_3,_4) - y(3,_3,_4) >= 0
 Each_task_is_performed_by_a_team_with_the_appropriate_skills_(3):
   x(0,_3,_4) + x(1,_3,_4) + x(4,_3,_4) - y(3,_3,_4) >= 0
 Each_task_is_performed_by_a_team_with_the_appropriate_skills_(3):
   x(0,_4,_0) + x(1,_4,_0) + x(2,_4,_0) + x(4,_4,_0) >= 0
 Each_task_is_performed_by_a_team_with_the_appropriate_skills_(3):
   x(2,_4,_0) >= 0
 Each_task_is_performed_by_a_team_with_the_appropriate_skills_(3):
   x(0,_4,_0) + x(1,_4,_0) + x(2,_4,_0) + x(4,_4,_0) >= 0
 Each_task_is_performed_by_a_team_with_the_appropriate_skills_(3):
   x(0,_4,_0) + x(1,_4,_0) + x(2,_4,_0) >= 0
 Each_task_is_performed_by_a_team_with_the_appropriate_skills_(3):
   x(0,_4,_0) + x(1,_4,_0) + x(2,_4,_0) + x(4,_4,_0) - y(3,_4,_0) >= 0
 Each_task_is_performed_by_a_team_with_the_appropriate_skills_(3):
   x(0,_4,_0) + x(1,_4,_0) + x(4,_4,_0) - y(3,_4,_0) >= 0
 Each_task_is_performed_by_a_team_with_the_appropriate_skills_(3):
   x(0,_4,_1) + x(1,_4,_1) + x(2,_4,_1) + x(4,_4,_1) >= 0
 Each_task_is_performed_by_a_team_with_the_appropriate_skills_(3):
   x(2,_4,_1) >= 0
 Each_task_is_performed_by_a_team_with_the_appropriate_skills_(3):
   x(0,_4,_1) + x(1,_4,_1) + x(2,_4,_1) + x(4,_4,_1) >= 0
 Each_task_is_performed_by_a_team_with_the_appropriate_skills_(3):
   x(0,_4,_1) + x(1,_4,_1) + x(2,_4,_1) >= 0
 Each_task_is_performed_by_a_team_with_the_appropriate_skills_(3):
   x(0,_4,_1) + x(1,_4,_1) + x(2,_4,_1) + x(4,_4,_1) - y(3,_4,_1) >= 0
 Each_task_is_performed_by_a_team_with_the_appropriate_skills_(3):
   x(0,_4,_1) + x(1,_4,_1) + x(4,_4,_1) - y(3,_4,_1) >= 0
 Each_task_is_performed_by_a_team_with_the_appropriate_skills_(3):
   x(0,_4,_2) + x(1,_4,_2) + x(2,_4,_2) + x(4,_4,_2) >= 0
 Each_task_is_performed_by_a_team_with_the_appropriate_skills_(3):
   x(2,_4,_2) >= 0
 Each_task_is_performed_by_a_team_with_the_appropriate_skills_(3):
   x(0,_4,_2) + x(1,_4,_2) + x(2,_4,_2) + x(4,_4,_2) >= 0
 Each_task_is_performed_by_a_team_with_the_appropriate_skills_(3):
   x(0,_4,_2) + x(1,_4,_2) + x(2,_4,_2) >= 0
 Each_task_is_performed_by_a_team_with_the_appropriate_skills_(3):
   x(0,_4,_2) + x(1,_4,_2) + x(2,_4,_2) + x(4,_4,_2) - y(3,_4,_2) >= 0
 Each_task_is_performed_by_a_team_with_the_appropriate_skills_(3):
   x(0,_4,_2) + x(1,_4,_2) + x(4,_4,_2) - y(3,_4,_2) >= 0
 Each_task_is_performed_by_a_team_with_the_appropriate_skills_(3):
   x(0,_4,_3) + x(1,_4,_3) + x(2,_4,_3) + x(4,_4,_3) >= 0
 Each_task_is_performed_by_a_team_with_the_appropriate_skills_(3):
   x(2,_4,_3) >= 0
 Each_task_is_performed_by_a_team_with_the_appropriate_skills_(3):
   x(0,_4,_3) + x(1,_4,_3) + x(2,_4,_3) + x(4,_4,_3) >= 0
 Each_task_is_performed_by_a_team_with_the_appropriate_skills_(3):
   x(0,_4,_3) + x(1,_4,_3) + x(2,_4,_3) >= 0
 Each_task_is_performed_by_a_team_with_the_appropriate_skills_(3):
   x(0,_4,_3) + x(1,_4,_3) + x(2,_4,_3) + x(4,_4,_3) - y(3,_4,_3) >= 0
 Each_task_is_performed_by_a_team_with_the_appropriate_skills_(3):
   x(0,_4,_3) + x(1,_4,_3) + x(4,_4,_3) - y(3,_4,_3) >= 0
 Each_task_is_performed_by_a_team_with_the_appropriate_skills_(3):
   x(0,_4,_4) + x(1,_4,_4) + x(2,_4,_4) + x(4,_4,_4) >= 0
 Each_task_is_performed_by_a_team_with_the_appropriate_skills_(3):
   x(2,_4,_4) >= 0
 Each_task_is_performed_by_a_team_with_the_appropriate_skills_(3):
   x(0,_4,_4) + x(1,_4,_4) + x(2,_4,_4) + x(4,_4,_4) >= 0
 Each_task_is_performed_by_a_team_with_the_appropriate_skills_(3):
   x(0,_4,_4) + x(1,_4,_4) + x(2,_4,_4) >= 0
 Each_task_is_performed_by_a_team_with_the_appropriate_skills_(3):
   x(0,_4,_4) + x(1,_4,_4) + x(2,_4,_4) + x(4,_4,_4) - y(3,_4,_4) >= 0
 Each_task_is_performed_by_a_team_with_the_appropriate_skills_(3):
   x(0,_4,_4) + x(1,_4,_4) + x(4,_4,_4) - y(3,_4,_4) >= 0
 Each_task_is_performed_by_a_team_with_the_appropriate_skills_(4):
   x(0,_0,_0) + x(2,_0,_0) + x(3,_0,_0) + x(4,_0,_0) >= 0
 Each_task_is_performed_by_a_team_with_the_appropriate_skills_(4):
   x(2,_0,_0) >= 0
 Each_task_is_performed_by_a_team_with_the_appropriate_skills_(4):
   x(0,_0,_0) + x(2,_0,_0) + x(3,_0,_0) + x(4,_0,_0) - 2 y(4,_0,_0) >= 0
 Each_task_is_performed_by_a_team_with_the_appropriate_skills_(4):
   x(0,_0,_0) + x(2,_0,_0) + x(3,_0,_0) >= 0
 Each_task_is_performed_by_a_team_with_the_appropriate_skills_(4):
   x(0,_0,_0) + x(2,_0,_0) + x(3,_0,_0) + x(4,_0,_0) >= 0
 Each_task_is_performed_by_a_team_with_the_appropriate_skills_(4):
   x(0,_0,_0) + x(4,_0,_0) >= 0
 Each_task_is_performed_by_a_team_with_the_appropriate_skills_(4):
   x(0,_0,_1) + x(2,_0,_1) + x(3,_0,_1) + x(4,_0,_1) >= 0
 Each_task_is_performed_by_a_team_with_the_appropriate_skills_(4):
   x(2,_0,_1) >= 0
 Each_task_is_performed_by_a_team_with_the_appropriate_skills_(4):
   x(0,_0,_1) + x(2,_0,_1) + x(3,_0,_1) + x(4,_0,_1) - 2 y(4,_0,_1) >= 0
 Each_task_is_performed_by_a_team_with_the_appropriate_skills_(4):
   x(0,_0,_1) + x(2,_0,_1) + x(3,_0,_1) >= 0
 Each_task_is_performed_by_a_team_with_the_appropriate_skills_(4):
   x(0,_0,_1) + x(2,_0,_1) + x(3,_0,_1) + x(4,_0,_1) >= 0
 Each_task_is_performed_by_a_team_with_the_appropriate_skills_(4):
   x(0,_0,_1) + x(4,_0,_1) >= 0
 Each_task_is_performed_by_a_team_with_the_appropriate_skills_(4):
   x(0,_0,_2) + x(2,_0,_2) + x(3,_0,_2) + x(4,_0,_2) >= 0
 Each_task_is_performed_by_a_team_with_the_appropriate_skills_(4):
   x(2,_0,_2) >= 0
 Each_task_is_performed_by_a_team_with_the_appropriate_skills_(4):
   x(0,_0,_2) + x(2,_0,_2) + x(3,_0,_2) + x(4,_0,_2) - 2 y(4,_0,_2) >= 0
 Each_task_is_performed_by_a_team_with_the_appropriate_skills_(4):
   x(0,_0,_2) + x(2,_0,_2) + x(3,_0,_2) >= 0
 Each_task_is_performed_by_a_team_with_the_appropriate_skills_(4):
   x(0,_0,_2) + x(2,_0,_2) + x(3,_0,_2) + x(4,_0,_2) >= 0
 Each_task_is_performed_by_a_team_with_the_appropriate_skills_(4):
   x(0,_0,_2) + x(4,_0,_2) >= 0
 Each_task_is_performed_by_a_team_with_the_appropriate_skills_(4):
   x(0,_0,_3) + x(2,_0,_3) + x(3,_0,_3) + x(4,_0,_3) >= 0
 Each_task_is_performed_by_a_team_with_the_appropriate_skills_(4):
   x(2,_0,_3) >= 0
 Each_task_is_performed_by_a_team_with_the_appropriate_skills_(4):
   x(0,_0,_3) + x(2,_0,_3) + x(3,_0,_3) + x(4,_0,_3) - 2 y(4,_0,_3) >= 0
 Each_task_is_performed_by_a_team_with_the_appropriate_skills_(4):
   x(0,_0,_3) + x(2,_0,_3) + x(3,_0,_3) >= 0
 Each_task_is_performed_by_a_team_with_the_appropriate_skills_(4):
   x(0,_0,_3) + x(2,_0,_3) + x(3,_0,_3) + x(4,_0,_3) >= 0
 Each_task_is_performed_by_a_team_with_the_appropriate_skills_(4):
   x(0,_0,_3) + x(4,_0,_3) >= 0
 Each_task_is_performed_by_a_team_with_the_appropriate_skills_(4):
   x(0,_0,_4) + x(2,_0,_4) + x(3,_0,_4) + x(4,_0,_4) >= 0
 Each_task_is_performed_by_a_team_with_the_appropriate_skills_(4):
   x(2,_0,_4) >= 0
 Each_task_is_performed_by_a_team_with_the_appropriate_skills_(4):
   x(0,_0,_4) + x(2,_0,_4) + x(3,_0,_4) + x(4,_0,_4) - 2 y(4,_0,_4) >= 0
 Each_task_is_performed_by_a_team_with_the_appropriate_skills_(4):
   x(0,_0,_4) + x(2,_0,_4) + x(3,_0,_4) >= 0
 Each_task_is_performed_by_a_team_with_the_appropriate_skills_(4):
   x(0,_0,_4) + x(2,_0,_4) + x(3,_0,_4) + x(4,_0,_4) >= 0
 Each_task_is_performed_by_a_team_with_the_appropriate_skills_(4):
   x(0,_0,_4) + x(4,_0,_4) >= 0
 Each_task_is_performed_by_a_team_with_the_appropriate_skills_(4):
   x(1,_1,_0) + x(2,_1,_0) + x(3,_1,_0) + x(4,_1,_0) >= 0
 Each_task_is_performed_by_a_team_with_the_appropriate_skills_(4):
   x(2,_1,_0) >= 0
 Each_task_is_performed_by_a_team_with_the_appropriate_skills_(4):
   x(1,_1,_0) + x(2,_1,_0) + x(3,_1,_0) + x(4,_1,_0) - 2 y(4,_1,_0) >= 0
 Each_task_is_performed_by_a_team_with_the_appropriate_skills_(4):
   x(1,_1,_0) + x(2,_1,_0) + x(3,_1,_0) >= 0
 Each_task_is_performed_by_a_team_with_the_appropriate_skills_(4):
   x(1,_1,_0) + x(2,_1,_0) + x(3,_1,_0) + x(4,_1,_0) >= 0
 Each_task_is_performed_by_a_team_with_the_appropriate_skills_(4):
   x(1,_1,_0) + x(4,_1,_0) >= 0
 Each_task_is_performed_by_a_team_with_the_appropriate_skills_(4):
   x(1,_1,_1) + x(2,_1,_1) + x(3,_1,_1) + x(4,_1,_1) >= 0
 Each_task_is_performed_by_a_team_with_the_appropriate_skills_(4):
   x(2,_1,_1) >= 0
 Each_task_is_performed_by_a_team_with_the_appropriate_skills_(4):
   x(1,_1,_1) + x(2,_1,_1) + x(3,_1,_1) + x(4,_1,_1) - 2 y(4,_1,_1) >= 0
 Each_task_is_performed_by_a_team_with_the_appropriate_skills_(4):
   x(1,_1,_1) + x(2,_1,_1) + x(3,_1,_1) >= 0
 Each_task_is_performed_by_a_team_with_the_appropriate_skills_(4):
   x(1,_1,_1) + x(2,_1,_1) + x(3,_1,_1) + x(4,_1,_1) >= 0
 Each_task_is_performed_by_a_team_with_the_appropriate_skills_(4):
   x(1,_1,_1) + x(4,_1,_1) >= 0
 Each_task_is_performed_by_a_team_with_the_appropriate_skills_(4):
   x(1,_1,_2) + x(2,_1,_2) + x(3,_1,_2) + x(4,_1,_2) >= 0
 Each_task_is_performed_by_a_team_with_the_appropriate_skills_(4):
   x(2,_1,_2) >= 0
 Each_task_is_performed_by_a_team_with_the_appropriate_skills_(4):
   x(1,_1,_2) + x(2,_1,_2) + x(3,_1,_2) + x(4,_1,_2) - 2 y(4,_1,_2) >= 0
 Each_task_is_performed_by_a_team_with_the_appropriate_skills_(4):
   x(1,_1,_2) + x(2,_1,_2) + x(3,_1,_2) >= 0
 Each_task_is_performed_by_a_team_with_the_appropriate_skills_(4):
   x(1,_1,_2) + x(2,_1,_2) + x(3,_1,_2) + x(4,_1,_2) >= 0
 Each_task_is_performed_by_a_team_with_the_appropriate_skills_(4):
   x(1,_1,_2) + x(4,_1,_2) >= 0
 Each_task_is_performed_by_a_team_with_the_appropriate_skills_(4):
   x(1,_1,_3) + x(2,_1,_3) + x(3,_1,_3) + x(4,_1,_3) >= 0
 Each_task_is_performed_by_a_team_with_the_appropriate_skills_(4):
   x(2,_1,_3) >= 0
 Each_task_is_performed_by_a_team_with_the_appropriate_skills_(4):
   x(1,_1,_3) + x(2,_1,_3) + x(3,_1,_3) + x(4,_1,_3) - 2 y(4,_1,_3) >= 0
 Each_task_is_performed_by_a_team_with_the_appropriate_skills_(4):
   x(1,_1,_3) + x(2,_1,_3) + x(3,_1,_3) >= 0
 Each_task_is_performed_by_a_team_with_the_appropriate_skills_(4):
   x(1,_1,_3) + x(2,_1,_3) + x(3,_1,_3) + x(4,_1,_3) >= 0
 Each_task_is_performed_by_a_team_with_the_appropriate_skills_(4):
   x(1,_1,_3) + x(4,_1,_3) >= 0
 Each_task_is_performed_by_a_team_with_the_appropriate_skills_(4):
   x(1,_1,_4) + x(2,_1,_4) + x(3,_1,_4) + x(4,_1,_4) >= 0
 Each_task_is_performed_by_a_team_with_the_appropriate_skills_(4):
   x(2,_1,_4) >= 0
 Each_task_is_performed_by_a_team_with_the_appropriate_skills_(4):
   x(1,_1,_4) + x(2,_1,_4) + x(3,_1,_4) + x(4,_1,_4) - 2 y(4,_1,_4) >= 0
 Each_task_is_performed_by_a_team_with_the_appropriate_skills_(4):
   x(1,_1,_4) + x(2,_1,_4) + x(3,_1,_4) >= 0
 Each_task_is_performed_by_a_team_with_the_appropriate_skills_(4):
   x(1,_1,_4) + x(2,_1,_4) + x(3,_1,_4) + x(4,_1,_4) >= 0
 Each_task_is_performed_by_a_team_with_the_appropriate_skills_(4):
   x(1,_1,_4) + x(4,_1,_4) >= 0
 Each_task_is_performed_by_a_team_with_the_appropriate_skills_(4):
   x(0,_2,_0) + x(2,_2,_0) + x(3,_2,_0) + x(4,_2,_0) >= 0
 Each_task_is_performed_by_a_team_with_the_appropriate_skills_(4):
   x(2,_2,_0) >= 0
 Each_task_is_performed_by_a_team_with_the_appropriate_skills_(4):
   x(0,_2,_0) + x(2,_2,_0) + x(3,_2,_0) + x(4,_2,_0) - 2 y(4,_2,_0) >= 0
 Each_task_is_performed_by_a_team_with_the_appropriate_skills_(4):
   x(0,_2,_0) + x(2,_2,_0) + x(3,_2,_0) >= 0
 Each_task_is_performed_by_a_team_with_the_appropriate_skills_(4):
   x(0,_2,_0) + x(2,_2,_0) + x(3,_2,_0) + x(4,_2,_0) >= 0
 Each_task_is_performed_by_a_team_with_the_appropriate_skills_(4):
   x(0,_2,_0) + x(4,_2,_0) >= 0
 Each_task_is_performed_by_a_team_with_the_appropriate_skills_(4):
   x(0,_2,_1) + x(2,_2,_1) + x(3,_2,_1) + x(4,_2,_1) >= 0
 Each_task_is_performed_by_a_team_with_the_appropriate_skills_(4):
   x(2,_2,_1) >= 0
 Each_task_is_performed_by_a_team_with_the_appropriate_skills_(4):
   x(0,_2,_1) + x(2,_2,_1) + x(3,_2,_1) + x(4,_2,_1) - 2 y(4,_2,_1) >= 0
 Each_task_is_performed_by_a_team_with_the_appropriate_skills_(4):
   x(0,_2,_1) + x(2,_2,_1) + x(3,_2,_1) >= 0
 Each_task_is_performed_by_a_team_with_the_appropriate_skills_(4):
   x(0,_2,_1) + x(2,_2,_1) + x(3,_2,_1) + x(4,_2,_1) >= 0
 Each_task_is_performed_by_a_team_with_the_appropriate_skills_(4):
   x(0,_2,_1) + x(4,_2,_1) >= 0
 Each_task_is_performed_by_a_team_with_the_appropriate_skills_(4):
   x(0,_2,_2) + x(2,_2,_2) + x(3,_2,_2) + x(4,_2,_2) >= 0
 Each_task_is_performed_by_a_team_with_the_appropriate_skills_(4):
   x(2,_2,_2) >= 0
 Each_task_is_performed_by_a_team_with_the_appropriate_skills_(4):
   x(0,_2,_2) + x(2,_2,_2) + x(3,_2,_2) + x(4,_2,_2) - 2 y(4,_2,_2) >= 0
 Each_task_is_performed_by_a_team_with_the_appropriate_skills_(4):
   x(0,_2,_2) + x(2,_2,_2) + x(3,_2,_2) >= 0
 Each_task_is_performed_by_a_team_with_the_appropriate_skills_(4):
   x(0,_2,_2) + x(2,_2,_2) + x(3,_2,_2) + x(4,_2,_2) >= 0
 Each_task_is_performed_by_a_team_with_the_appropriate_skills_(4):
   x(0,_2,_2) + x(4,_2,_2) >= 0
 Each_task_is_performed_by_a_team_with_the_appropriate_skills_(4):
   x(0,_2,_3) + x(2,_2,_3) + x(3,_2,_3) + x(4,_2,_3) >= 0
 Each_task_is_performed_by_a_team_with_the_appropriate_skills_(4):
   x(2,_2,_3) >= 0
 Each_task_is_performed_by_a_team_with_the_appropriate_skills_(4):
   x(0,_2,_3) + x(2,_2,_3) + x(3,_2,_3) + x(4,_2,_3) - 2 y(4,_2,_3) >= 0
 Each_task_is_performed_by_a_team_with_the_appropriate_skills_(4):
   x(0,_2,_3) + x(2,_2,_3) + x(3,_2,_3) >= 0
 Each_task_is_performed_by_a_team_with_the_appropriate_skills_(4):
   x(0,_2,_3) + x(2,_2,_3) + x(3,_2,_3) + x(4,_2,_3) >= 0
 Each_task_is_performed_by_a_team_with_the_appropriate_skills_(4):
   x(0,_2,_3) + x(4,_2,_3) >= 0
 Each_task_is_performed_by_a_team_with_the_appropriate_skills_(4):
   x(0,_2,_4) + x(2,_2,_4) + x(3,_2,_4) + x(4,_2,_4) >= 0
 Each_task_is_performed_by_a_team_with_the_appropriate_skills_(4):
   x(2,_2,_4) >= 0
 Each_task_is_performed_by_a_team_with_the_appropriate_skills_(4):
   x(0,_2,_4) + x(2,_2,_4) + x(3,_2,_4) + x(4,_2,_4) - 2 y(4,_2,_4) >= 0
 Each_task_is_performed_by_a_team_with_the_appropriate_skills_(4):
   x(0,_2,_4) + x(2,_2,_4) + x(3,_2,_4) >= 0
 Each_task_is_performed_by_a_team_with_the_appropriate_skills_(4):
   x(0,_2,_4) + x(2,_2,_4) + x(3,_2,_4) + x(4,_2,_4) >= 0
 Each_task_is_performed_by_a_team_with_the_appropriate_skills_(4):
   x(0,_2,_4) + x(4,_2,_4) >= 0
 Each_task_is_performed_by_a_team_with_the_appropriate_skills_(4):
   x(0,_3,_0) + x(1,_3,_0) + x(3,_3,_0) + x(4,_3,_0) >= 0
 Each_task_is_performed_by_a_team_with_the_appropriate_skills_(4): >= 0
 Each_task_is_performed_by_a_team_with_the_appropriate_skills_(4):
   x(0,_3,_0) + x(1,_3,_0) + x(3,_3,_0) + x(4,_3,_0) - 2 y(4,_3,_0) >= 0
 Each_task_is_performed_by_a_team_with_the_appropriate_skills_(4):
   x(0,_3,_0) + x(1,_3,_0) + x(3,_3,_0) >= 0
 Each_task_is_performed_by_a_team_with_the_appropriate_skills_(4):
   x(0,_3,_0) + x(1,_3,_0) + x(3,_3,_0) + x(4,_3,_0) >= 0
 Each_task_is_performed_by_a_team_with_the_appropriate_skills_(4):
   x(0,_3,_0) + x(1,_3,_0) + x(4,_3,_0) >= 0
 Each_task_is_performed_by_a_team_with_the_appropriate_skills_(4):
   x(0,_3,_1) + x(1,_3,_1) + x(3,_3,_1) + x(4,_3,_1) >= 0
 Each_task_is_performed_by_a_team_with_the_appropriate_skills_(4): >= 0
 Each_task_is_performed_by_a_team_with_the_appropriate_skills_(4):
   x(0,_3,_1) + x(1,_3,_1) + x(3,_3,_1) + x(4,_3,_1) - 2 y(4,_3,_1) >= 0
 Each_task_is_performed_by_a_team_with_the_appropriate_skills_(4):
   x(0,_3,_1) + x(1,_3,_1) + x(3,_3,_1) >= 0
 Each_task_is_performed_by_a_team_with_the_appropriate_skills_(4):
   x(0,_3,_1) + x(1,_3,_1) + x(3,_3,_1) + x(4,_3,_1) >= 0
 Each_task_is_performed_by_a_team_with_the_appropriate_skills_(4):
   x(0,_3,_1) + x(1,_3,_1) + x(4,_3,_1) >= 0
 Each_task_is_performed_by_a_team_with_the_appropriate_skills_(4):
   x(0,_3,_2) + x(1,_3,_2) + x(3,_3,_2) + x(4,_3,_2) >= 0
 Each_task_is_performed_by_a_team_with_the_appropriate_skills_(4): >= 0
 Each_task_is_performed_by_a_team_with_the_appropriate_skills_(4):
   x(0,_3,_2) + x(1,_3,_2) + x(3,_3,_2) + x(4,_3,_2) - 2 y(4,_3,_2) >= 0
 Each_task_is_performed_by_a_team_with_the_appropriate_skills_(4):
   x(0,_3,_2) + x(1,_3,_2) + x(3,_3,_2) >= 0
 Each_task_is_performed_by_a_team_with_the_appropriate_skills_(4):
   x(0,_3,_2) + x(1,_3,_2) + x(3,_3,_2) + x(4,_3,_2) >= 0
 Each_task_is_performed_by_a_team_with_the_appropriate_skills_(4):
   x(0,_3,_2) + x(1,_3,_2) + x(4,_3,_2) >= 0
 Each_task_is_performed_by_a_team_with_the_appropriate_skills_(4):
   x(0,_3,_3) + x(1,_3,_3) + x(3,_3,_3) + x(4,_3,_3) >= 0
 Each_task_is_performed_by_a_team_with_the_appropriate_skills_(4): >= 0
 Each_task_is_performed_by_a_team_with_the_appropriate_skills_(4):
   x(0,_3,_3) + x(1,_3,_3) + x(3,_3,_3) + x(4,_3,_3) - 2 y(4,_3,_3) >= 0
 Each_task_is_performed_by_a_team_with_the_appropriate_skills_(4):
   x(0,_3,_3) + x(1,_3,_3) + x(3,_3,_3) >= 0
 Each_task_is_performed_by_a_team_with_the_appropriate_skills_(4):
   x(0,_3,_3) + x(1,_3,_3) + x(3,_3,_3) + x(4,_3,_3) >= 0
 Each_task_is_performed_by_a_team_with_the_appropriate_skills_(4):
   x(0,_3,_3) + x(1,_3,_3) + x(4,_3,_3) >= 0
 Each_task_is_performed_by_a_team_with_the_appropriate_skills_(4):
   x(0,_3,_4) + x(1,_3,_4) + x(3,_3,_4) + x(4,_3,_4) >= 0
 Each_task_is_performed_by_a_team_with_the_appropriate_skills_(4): >= 0
 Each_task_is_performed_by_a_team_with_the_appropriate_skills_(4):
   x(0,_3,_4) + x(1,_3,_4) + x(3,_3,_4) + x(4,_3,_4) - 2 y(4,_3,_4) >= 0
 Each_task_is_performed_by_a_team_with_the_appropriate_skills_(4):
   x(0,_3,_4) + x(1,_3,_4) + x(3,_3,_4) >= 0
 Each_task_is_performed_by_a_team_with_the_appropriate_skills_(4):
   x(0,_3,_4) + x(1,_3,_4) + x(3,_3,_4) + x(4,_3,_4) >= 0
 Each_task_is_performed_by_a_team_with_the_appropriate_skills_(4):
   x(0,_3,_4) + x(1,_3,_4) + x(4,_3,_4) >= 0
 Each_task_is_performed_by_a_team_with_the_appropriate_skills_(4):
   x(0,_4,_0) + x(1,_4,_0) + x(2,_4,_0) + x(4,_4,_0) >= 0
 Each_task_is_performed_by_a_team_with_the_appropriate_skills_(4):
   x(2,_4,_0) >= 0
 Each_task_is_performed_by_a_team_with_the_appropriate_skills_(4):
   x(0,_4,_0) + x(1,_4,_0) + x(2,_4,_0) + x(4,_4,_0) - 2 y(4,_4,_0) >= 0
 Each_task_is_performed_by_a_team_with_the_appropriate_skills_(4):
   x(0,_4,_0) + x(1,_4,_0) + x(2,_4,_0) >= 0
 Each_task_is_performed_by_a_team_with_the_appropriate_skills_(4):
   x(0,_4,_0) + x(1,_4,_0) + x(2,_4,_0) + x(4,_4,_0) >= 0
 Each_task_is_performed_by_a_team_with_the_appropriate_skills_(4):
   x(0,_4,_0) + x(1,_4,_0) + x(4,_4,_0) >= 0
 Each_task_is_performed_by_a_team_with_the_appropriate_skills_(4):
   x(0,_4,_1) + x(1,_4,_1) + x(2,_4,_1) + x(4,_4,_1) >= 0
 Each_task_is_performed_by_a_team_with_the_appropriate_skills_(4):
   x(2,_4,_1) >= 0
 Each_task_is_performed_by_a_team_with_the_appropriate_skills_(4):
   x(0,_4,_1) + x(1,_4,_1) + x(2,_4,_1) + x(4,_4,_1) - 2 y(4,_4,_1) >= 0
 Each_task_is_performed_by_a_team_with_the_appropriate_skills_(4):
   x(0,_4,_1) + x(1,_4,_1) + x(2,_4,_1) >= 0
 Each_task_is_performed_by_a_team_with_the_appropriate_skills_(4):
   x(0,_4,_1) + x(1,_4,_1) + x(2,_4,_1) + x(4,_4,_1) >= 0
 Each_task_is_performed_by_a_team_with_the_appropriate_skills_(4):
   x(0,_4,_1) + x(1,_4,_1) + x(4,_4,_1) >= 0
 Each_task_is_performed_by_a_team_with_the_appropriate_skills_(4):
   x(0,_4,_2) + x(1,_4,_2) + x(2,_4,_2) + x(4,_4,_2) >= 0
 Each_task_is_performed_by_a_team_with_the_appropriate_skills_(4):
   x(2,_4,_2) >= 0
 Each_task_is_performed_by_a_team_with_the_appropriate_skills_(4):
   x(0,_4,_2) + x(1,_4,_2) + x(2,_4,_2) + x(4,_4,_2) - 2 y(4,_4,_2) >= 0
 Each_task_is_performed_by_a_team_with_the_appropriate_skills_(4):
   x(0,_4,_2) + x(1,_4,_2) + x(2,_4,_2) >= 0
 Each_task_is_performed_by_a_team_with_the_appropriate_skills_(4):
   x(0,_4,_2) + x(1,_4,_2) + x(2,_4,_2) + x(4,_4,_2) >= 0
 Each_task_is_performed_by_a_team_with_the_appropriate_skills_(4):
   x(0,_4,_2) + x(1,_4,_2) + x(4,_4,_2) >= 0
 Each_task_is_performed_by_a_team_with_the_appropriate_skills_(4):
   x(0,_4,_3) + x(1,_4,_3) + x(2,_4,_3) + x(4,_4,_3) >= 0
 Each_task_is_performed_by_a_team_with_the_appropriate_skills_(4):
   x(2,_4,_3) >= 0
 Each_task_is_performed_by_a_team_with_the_appropriate_skills_(4):
   x(0,_4,_3) + x(1,_4,_3) + x(2,_4,_3) + x(4,_4,_3) - 2 y(4,_4,_3) >= 0
 Each_task_is_performed_by_a_team_with_the_appropriate_skills_(4):
   x(0,_4,_3) + x(1,_4,_3) + x(2,_4,_3) >= 0
 Each_task_is_performed_by_a_team_with_the_appropriate_skills_(4):
   x(0,_4,_3) + x(1,_4,_3) + x(2,_4,_3) + x(4,_4,_3) >= 0
 Each_task_is_performed_by_a_team_with_the_appropriate_skills_(4):
   x(0,_4,_3) + x(1,_4,_3) + x(4,_4,_3) >= 0
 Each_task_is_performed_by_a_team_with_the_appropriate_skills_(4):
   x(0,_4,_4) + x(1,_4,_4) + x(2,_4,_4) + x(4,_4,_4) >= 0
 Each_task_is_performed_by_a_team_with_the_appropriate_skills_(4):
   x(2,_4,_4) >= 0
 Each_task_is_performed_by_a_team_with_the_appropriate_skills_(4):
   x(0,_4,_4) + x(1,_4,_4) + x(2,_4,_4) + x(4,_4,_4) - 2 y(4,_4,_4) >= 0
 Each_task_is_performed_by_a_team_with_the_appropriate_skills_(4):
   x(0,_4,_4) + x(1,_4,_4) + x(2,_4,_4) >= 0
 Each_task_is_performed_by_a_team_with_the_appropriate_skills_(4):
   x(0,_4,_4) + x(1,_4,_4) + x(2,_4,_4) + x(4,_4,_4) >= 0
 Each_task_is_performed_by_a_team_with_the_appropriate_skills_(4):
   x(0,_4,_4) + x(1,_4,_4) + x(4,_4,_4) >= 0
 Lower_and_upper_limits_on_the_start_time_of_each_task_1_(0): - d(0) <= 0
 Lower_and_upper_limits_on_the_start_time_of_each_task_1_(0):
   120 y(0,_1,_0) + 120 y(0,_1,_1) + 120 y(0,_1,_2) + 120 y(0,_1,_3)
   + 120 y(0,_1,_4) - d(0) <= 0
 Lower_and_upper_limits_on_the_start_time_of_each_task_1_(0):
   240 y(0,_2,_0) + 240 y(0,_2,_1) + 240 y(0,_2,_2) + 240 y(0,_2,_3)
   + 240 y(0,_2,_4) - d(0) <= 0
 Lower_and_upper_limits_on_the_start_time_of_each_task_1_(0):
   360 y(0,_3,_0) + 360 y(0,_3,_1) + 360 y(0,_3,_2) + 360 y(0,_3,_3)
   + 360 y(0,_3,_4) - d(0) <= 0
 Lower_and_upper_limits_on_the_start_time_of_each_task_1_(0):
   480 y(0,_4,_0) + 480 y(0,_4,_1) + 480 y(0,_4,_2) + 480 y(0,_4,_3)
   + 480 y(0,_4,_4) - d(0) <= 0
 Lower_and_upper_limits_on_the_start_time_of_each_task_1_(1): - d(1) <= 0
 Lower_and_upper_limits_on_the_start_time_of_each_task_1_(1):
   120 y(1,_1,_0) + 120 y(1,_1,_1) + 120 y(1,_1,_2) + 120 y(1,_1,_3)
   + 120 y(1,_1,_4) - d(1) <= 0
 Lower_and_upper_limits_on_the_start_time_of_each_task_1_(1):
   240 y(1,_2,_0) + 240 y(1,_2,_1) + 240 y(1,_2,_2) + 240 y(1,_2,_3)
   + 240 y(1,_2,_4) - d(1) <= 0
 Lower_and_upper_limits_on_the_start_time_of_each_task_1_(1):
   360 y(1,_3,_0) + 360 y(1,_3,_1) + 360 y(1,_3,_2) + 360 y(1,_3,_3)
   + 360 y(1,_3,_4) - d(1) <= 0
 Lower_and_upper_limits_on_the_start_time_of_each_task_1_(1):
   480 y(1,_4,_0) + 480 y(1,_4,_1) + 480 y(1,_4,_2) + 480 y(1,_4,_3)
   + 480 y(1,_4,_4) - d(1) <= 0
 Lower_and_upper_limits_on_the_start_time_of_each_task_1_(2): - d(2) <= 0
 Lower_and_upper_limits_on_the_start_time_of_each_task_1_(2):
   120 y(2,_1,_0) + 120 y(2,_1,_1) + 120 y(2,_1,_2) + 120 y(2,_1,_3)
   + 120 y(2,_1,_4) - d(2) <= 0
 Lower_and_upper_limits_on_the_start_time_of_each_task_1_(2):
   240 y(2,_2,_0) + 240 y(2,_2,_1) + 240 y(2,_2,_2) + 240 y(2,_2,_3)
   + 240 y(2,_2,_4) - d(2) <= 0
 Lower_and_upper_limits_on_the_start_time_of_each_task_1_(2):
   360 y(2,_3,_0) + 360 y(2,_3,_1) + 360 y(2,_3,_2) + 360 y(2,_3,_3)
   + 360 y(2,_3,_4) - d(2) <= 0
 Lower_and_upper_limits_on_the_start_time_of_each_task_1_(2):
   480 y(2,_4,_0) + 480 y(2,_4,_1) + 480 y(2,_4,_2) + 480 y(2,_4,_3)
   + 480 y(2,_4,_4) - d(2) <= 0
 Lower_and_upper_limits_on_the_start_time_of_each_task_1_(3): - d(3) <= 0
 Lower_and_upper_limits_on_the_start_time_of_each_task_1_(3):
   120 y(3,_1,_0) + 120 y(3,_1,_1) + 120 y(3,_1,_2) + 120 y(3,_1,_3)
   + 120 y(3,_1,_4) - d(3) <= 0
 Lower_and_upper_limits_on_the_start_time_of_each_task_1_(3):
   240 y(3,_2,_0) + 240 y(3,_2,_1) + 240 y(3,_2,_2) + 240 y(3,_2,_3)
   + 240 y(3,_2,_4) - d(3) <= 0
 Lower_and_upper_limits_on_the_start_time_of_each_task_1_(3):
   360 y(3,_3,_0) + 360 y(3,_3,_1) + 360 y(3,_3,_2) + 360 y(3,_3,_3)
   + 360 y(3,_3,_4) - d(3) <= 0
 Lower_and_upper_limits_on_the_start_time_of_each_task_1_(3):
   480 y(3,_4,_0) + 480 y(3,_4,_1) + 480 y(3,_4,_2) + 480 y(3,_4,_3)
   + 480 y(3,_4,_4) - d(3) <= 0
 Lower_and_upper_limits_on_the_start_time_of_each_task_1_(4): - d(4) <= 0
 Lower_and_upper_limits_on_the_start_time_of_each_task_1_(4):
   120 y(4,_1,_0) + 120 y(4,_1,_1) + 120 y(4,_1,_2) + 120 y(4,_1,_3)
   + 120 y(4,_1,_4) - d(4) <= 0
 Lower_and_upper_limits_on_the_start_time_of_each_task_1_(4):
   240 y(4,_2,_0) + 240 y(4,_2,_1) + 240 y(4,_2,_2) + 240 y(4,_2,_3)
   + 240 y(4,_2,_4) - d(4) <= 0
 Lower_and_upper_limits_on_the_start_time_of_each_task_1_(4):
   360 y(4,_3,_0) + 360 y(4,_3,_1) + 360 y(4,_3,_2) + 360 y(4,_3,_3)
   + 360 y(4,_3,_4) - d(4) <= 0
 Lower_and_upper_limits_on_the_start_time_of_each_task_1_(4):
   480 y(4,_4,_0) + 480 y(4,_4,_1) + 480 y(4,_4,_2) + 480 y(4,_4,_3)
   + 480 y(4,_4,_4) - d(4) <= 0
 Lower_and_upper_limits_on_the_start_time_of_each_task_2_(0):
   - 480 y(0,_0,_0) - 480 y(0,_0,_1) - 480 y(0,_0,_2) - 480 y(0,_0,_3)
   - 480 y(0,_0,_4) - d(0) >= -540
 Lower_and_upper_limits_on_the_start_time_of_each_task_2_(0):
   - 360 y(0,_1,_0) - 360 y(0,_1,_1) - 360 y(0,_1,_2) - 360 y(0,_1,_3)
   - 360 y(0,_1,_4) - d(0) >= -540
 Lower_and_upper_limits_on_the_start_time_of_each_task_2_(0):
   - 240 y(0,_2,_0) - 240 y(0,_2,_1) - 240 y(0,_2,_2) - 240 y(0,_2,_3)
   - 240 y(0,_2,_4) - d(0) >= -540
 Lower_and_upper_limits_on_the_start_time_of_each_task_2_(0):
   - 120 y(0,_3,_0) - 120 y(0,_3,_1) - 120 y(0,_3,_2) - 120 y(0,_3,_3)
   - 120 y(0,_3,_4) - d(0) >= -540
 Lower_and_upper_limits_on_the_start_time_of_each_task_2_(0): - d(0)
   >= -540
 Lower_and_upper_limits_on_the_start_time_of_each_task_2_(1):
   - 480 y(1,_0,_0) - 480 y(1,_0,_1) - 480 y(1,_0,_2) - 480 y(1,_0,_3)
   - 480 y(1,_0,_4) - d(1) >= -540
 Lower_and_upper_limits_on_the_start_time_of_each_task_2_(1):
   - 360 y(1,_1,_0) - 360 y(1,_1,_1) - 360 y(1,_1,_2) - 360 y(1,_1,_3)
   - 360 y(1,_1,_4) - d(1) >= -540
 Lower_and_upper_limits_on_the_start_time_of_each_task_2_(1):
   - 240 y(1,_2,_0) - 240 y(1,_2,_1) - 240 y(1,_2,_2) - 240 y(1,_2,_3)
   - 240 y(1,_2,_4) - d(1) >= -540
 Lower_and_upper_limits_on_the_start_time_of_each_task_2_(1):
   - 120 y(1,_3,_0) - 120 y(1,_3,_1) - 120 y(1,_3,_2) - 120 y(1,_3,_3)
   - 120 y(1,_3,_4) - d(1) >= -540
 Lower_and_upper_limits_on_the_start_time_of_each_task_2_(1): - d(1)
   >= -540
 Lower_and_upper_limits_on_the_start_time_of_each_task_2_(2):
   - 480 y(2,_0,_0) - 480 y(2,_0,_1) - 480 y(2,_0,_2) - 480 y(2,_0,_3)
   - 480 y(2,_0,_4) - d(2) >= -585
 Lower_and_upper_limits_on_the_start_time_of_each_task_2_(2):
   - 360 y(2,_1,_0) - 360 y(2,_1,_1) - 360 y(2,_1,_2) - 360 y(2,_1,_3)
   - 360 y(2,_1,_4) - d(2) >= -585
 Lower_and_upper_limits_on_the_start_time_of_each_task_2_(2):
   - 240 y(2,_2,_0) - 240 y(2,_2,_1) - 240 y(2,_2,_2) - 240 y(2,_2,_3)
   - 240 y(2,_2,_4) - d(2) >= -585
 Lower_and_upper_limits_on_the_start_time_of_each_task_2_(2):
   - 120 y(2,_3,_0) - 120 y(2,_3,_1) - 120 y(2,_3,_2) - 120 y(2,_3,_3)
   - 120 y(2,_3,_4) - d(2) >= -585
 Lower_and_upper_limits_on_the_start_time_of_each_task_2_(2): - d(2)
   >= -585
 Lower_and_upper_limits_on_the_start_time_of_each_task_2_(3):
   - 480 y(3,_0,_0) - 480 y(3,_0,_1) - 480 y(3,_0,_2) - 480 y(3,_0,_3)
   - 480 y(3,_0,_4) - d(3) >= -585
 Lower_and_upper_limits_on_the_start_time_of_each_task_2_(3):
   - 360 y(3,_1,_0) - 360 y(3,_1,_1) - 360 y(3,_1,_2) - 360 y(3,_1,_3)
   - 360 y(3,_1,_4) - d(3) >= -585
 Lower_and_upper_limits_on_the_start_time_of_each_task_2_(3):
   - 240 y(3,_2,_0) - 240 y(3,_2,_1) - 240 y(3,_2,_2) - 240 y(3,_2,_3)
   - 240 y(3,_2,_4) - d(3) >= -585
 Lower_and_upper_limits_on_the_start_time_of_each_task_2_(3):
   - 120 y(3,_3,_0) - 120 y(3,_3,_1) - 120 y(3,_3,_2) - 120 y(3,_3,_3)
   - 120 y(3,_3,_4) - d(3) >= -585
 Lower_and_upper_limits_on_the_start_time_of_each_task_2_(3): - d(3)
   >= -585
 Lower_and_upper_limits_on_the_start_time_of_each_task_2_(4):
   - 480 y(4,_0,_0) - 480 y(4,_0,_1) - 480 y(4,_0,_2) - 480 y(4,_0,_3)
   - 480 y(4,_0,_4) - d(4) >= -540
 Lower_and_upper_limits_on_the_start_time_of_each_task_2_(4):
   - 360 y(4,_1,_0) - 360 y(4,_1,_1) - 360 y(4,_1,_2) - 360 y(4,_1,_3)
   - 360 y(4,_1,_4) - d(4) >= -540
 Lower_and_upper_limits_on_the_start_time_of_each_task_2_(4):
   - 240 y(4,_2,_0) - 240 y(4,_2,_1) - 240 y(4,_2,_2) - 240 y(4,_2,_3)
   - 240 y(4,_2,_4) - d(4) >= -540
 Lower_and_upper_limits_on_the_start_time_of_each_task_2_(4):
   - 120 y(4,_3,_0) - 120 y(4,_3,_1) - 120 y(4,_3,_2) - 120 y(4,_3,_3)
   - 120 y(4,_3,_4) - d(4) >= -540
 Lower_and_upper_limits_on_the_start_time_of_each_task_2_(4): - d(4)
   >= -540
 Define_h_relative_to_the_start_times_of_interventions_(0,_1): d(0) - d(1)
   + 600 h(0,_1) <= 540
 Define_h_relative_to_the_start_times_of_interventions_(0,_2): d(0) - d(2)
   + 600 h(0,_2) <= 540
 Define_h_relative_to_the_start_times_of_interventions_(0,_3): d(0) - d(3)
   + 600 h(0,_3) <= 540
 Define_h_relative_to_the_start_times_of_interventions_(0,_4): d(0) - d(4)
   + 600 h(0,_4) <= 540
 Define_h_relative_to_the_start_times_of_interventions_(1,_0): - d(0)
   + d(1) + 600 h(1,_0) <= 540
 Define_h_relative_to_the_start_times_of_interventions_(1,_2): d(1) - d(2)
   + 600 h(1,_2) <= 540
 Define_h_relative_to_the_start_times_of_interventions_(1,_3): d(1) - d(3)
   + 600 h(1,_3) <= 540
 Define_h_relative_to_the_start_times_of_interventions_(1,_4): d(1) - d(4)
   + 600 h(1,_4) <= 540
 Define_h_relative_to_the_start_times_of_interventions_(2,_0): - d(0)
   + d(2) + 600 h(2,_0) <= 585
 Define_h_relative_to_the_start_times_of_interventions_(2,_1): - d(1)
   + d(2) + 600 h(2,_1) <= 585
 Define_h_relative_to_the_start_times_of_interventions_(2,_3): d(2) - d(3)
   + 600 h(2,_3) <= 585
 Define_h_relative_to_the_start_times_of_interventions_(2,_4): d(2) - d(4)
   + 600 h(2,_4) <= 585
 Define_h_relative_to_the_start_times_of_interventions_(3,_0): - d(0)
   + d(3) + 600 h(3,_0) <= 585
 Define_h_relative_to_the_start_times_of_interventions_(3,_1): - d(1)
   + d(3) + 600 h(3,_1) <= 585
 Define_h_relative_to_the_start_times_of_interventions_(3,_2): - d(2)
   + d(3) + 600 h(3,_2) <= 585
 Define_h_relative_to_the_start_times_of_interventions_(3,_4): d(3) - d(4)
   + 600 h(3,_4) <= 585
 Define_h_relative_to_the_start_times_of_interventions_(4,_0): - d(0)
   + d(4) + 600 h(4,_0) <= 540
 Define_h_relative_to_the_start_times_of_interventions_(4,_1): - d(1)
   + d(4) + 600 h(4,_1) <= 540
 Define_h_relative_to_the_start_times_of_interventions_(4,_2): - d(2)
   + d(4) + 600 h(4,_2) <= 540
 Define_h_relative_to_the_start_times_of_interventions_(4,_3): - d(3)
   + d(4) + 600 h(4,_3) <= 540
 Ensures_that_interventions_i_and_i'_do_not_overlap_if_performed_by_the_same_team_on_the_same_day_(0,_1):
   y(0,_0,_0) + y(1,_0,_0) - h(0,_1) - h(1,_0) <= 1
 Ensures_that_interventions_i_and_i'_do_not_overlap_if_performed_by_the_same_team_on_the_same_day_(0,_1):
   y(0,_0,_1) + y(1,_0,_1) - h(0,_1) - h(1,_0) <= 1
 Ensures_that_interventions_i_and_i'_do_not_overlap_if_performed_by_the_same_team_on_the_same_day_(0,_1):
   y(0,_0,_2) + y(1,_0,_2) - h(0,_1) - h(1,_0) <= 1
 Ensures_that_interventions_i_and_i'_do_not_overlap_if_performed_by_the_same_team_on_the_same_day_(0,_1):
   y(0,_0,_3) + y(1,_0,_3) - h(0,_1) - h(1,_0) <= 1
 Ensures_that_interventions_i_and_i'_do_not_overlap_if_performed_by_the_same_team_on_the_same_day_(0,_1):
   y(0,_0,_4) + y(1,_0,_4) - h(0,_1) - h(1,_0) <= 1
 Ensures_that_interventions_i_and_i'_do_not_overlap_if_performed_by_the_same_team_on_the_same_day_(0,_1):
   y(0,_1,_0) + y(1,_1,_0) - h(0,_1) - h(1,_0) <= 1
 Ensures_that_interventions_i_and_i'_do_not_overlap_if_performed_by_the_same_team_on_the_same_day_(0,_1):
   y(0,_1,_1) + y(1,_1,_1) - h(0,_1) - h(1,_0) <= 1
 Ensures_that_interventions_i_and_i'_do_not_overlap_if_performed_by_the_same_team_on_the_same_day_(0,_1):
   y(0,_1,_2) + y(1,_1,_2) - h(0,_1) - h(1,_0) <= 1
 Ensures_that_interventions_i_and_i'_do_not_overlap_if_performed_by_the_same_team_on_the_same_day_(0,_1):
   y(0,_1,_3) + y(1,_1,_3) - h(0,_1) - h(1,_0) <= 1
 Ensures_that_interventions_i_and_i'_do_not_overlap_if_performed_by_the_same_team_on_the_same_day_(0,_1):
   y(0,_1,_4) + y(1,_1,_4) - h(0,_1) - h(1,_0) <= 1
 Ensures_that_interventions_i_and_i'_do_not_overlap_if_performed_by_the_same_team_on_the_same_day_(0,_1):
   y(0,_2,_0) + y(1,_2,_0) - h(0,_1) - h(1,_0) <= 1
 Ensures_that_interventions_i_and_i'_do_not_overlap_if_performed_by_the_same_team_on_the_same_day_(0,_1):
   y(0,_2,_1) + y(1,_2,_1) - h(0,_1) - h(1,_0) <= 1
 Ensures_that_interventions_i_and_i'_do_not_overlap_if_performed_by_the_same_team_on_the_same_day_(0,_1):
   y(0,_2,_2) + y(1,_2,_2) - h(0,_1) - h(1,_0) <= 1
 Ensures_that_interventions_i_and_i'_do_not_overlap_if_performed_by_the_same_team_on_the_same_day_(0,_1):
   y(0,_2,_3) + y(1,_2,_3) - h(0,_1) - h(1,_0) <= 1
 Ensures_that_interventions_i_and_i'_do_not_overlap_if_performed_by_the_same_team_on_the_same_day_(0,_1):
   y(0,_2,_4) + y(1,_2,_4) - h(0,_1) - h(1,_0) <= 1
 Ensures_that_interventions_i_and_i'_do_not_overlap_if_performed_by_the_same_team_on_the_same_day_(0,_1):
   y(0,_3,_0) + y(1,_3,_0) - h(0,_1) - h(1,_0) <= 1
 Ensures_that_interventions_i_and_i'_do_not_overlap_if_performed_by_the_same_team_on_the_same_day_(0,_1):
   y(0,_3,_1) + y(1,_3,_1) - h(0,_1) - h(1,_0) <= 1
 Ensures_that_interventions_i_and_i'_do_not_overlap_if_performed_by_the_same_team_on_the_same_day_(0,_1):
   y(0,_3,_2) + y(1,_3,_2) - h(0,_1) - h(1,_0) <= 1
 Ensures_that_interventions_i_and_i'_do_not_overlap_if_performed_by_the_same_team_on_the_same_day_(0,_1):
   y(0,_3,_3) + y(1,_3,_3) - h(0,_1) - h(1,_0) <= 1
 Ensures_that_interventions_i_and_i'_do_not_overlap_if_performed_by_the_same_team_on_the_same_day_(0,_1):
   y(0,_3,_4) + y(1,_3,_4) - h(0,_1) - h(1,_0) <= 1
 Ensures_that_interventions_i_and_i'_do_not_overlap_if_performed_by_the_same_team_on_the_same_day_(0,_1):
   y(0,_4,_0) + y(1,_4,_0) - h(0,_1) - h(1,_0) <= 1
 Ensures_that_interventions_i_and_i'_do_not_overlap_if_performed_by_the_same_team_on_the_same_day_(0,_1):
   y(0,_4,_1) + y(1,_4,_1) - h(0,_1) - h(1,_0) <= 1
 Ensures_that_interventions_i_and_i'_do_not_overlap_if_performed_by_the_same_team_on_the_same_day_(0,_1):
   y(0,_4,_2) + y(1,_4,_2) - h(0,_1) - h(1,_0) <= 1
 Ensures_that_interventions_i_and_i'_do_not_overlap_if_performed_by_the_same_team_on_the_same_day_(0,_1):
   y(0,_4,_3) + y(1,_4,_3) - h(0,_1) - h(1,_0) <= 1
 Ensures_that_interventions_i_and_i'_do_not_overlap_if_performed_by_the_same_team_on_the_same_day_(0,_1):
   y(0,_4,_4) + y(1,_4,_4) - h(0,_1) - h(1,_0) <= 1
 Ensures_that_interventions_i_and_i'_do_not_overlap_if_performed_by_the_same_team_on_the_same_day_(0,_2):
   y(0,_0,_0) + y(2,_0,_0) - h(0,_2) - h(2,_0) <= 1
 Ensures_that_interventions_i_and_i'_do_not_overlap_if_performed_by_the_same_team_on_the_same_day_(0,_2):
   y(0,_0,_1) + y(2,_0,_1) - h(0,_2) - h(2,_0) <= 1
 Ensures_that_interventions_i_and_i'_do_not_overlap_if_performed_by_the_same_team_on_the_same_day_(0,_2):
   y(0,_0,_2) + y(2,_0,_2) - h(0,_2) - h(2,_0) <= 1
 Ensures_that_interventions_i_and_i'_do_not_overlap_if_performed_by_the_same_team_on_the_same_day_(0,_2):
   y(0,_0,_3) + y(2,_0,_3) - h(0,_2) - h(2,_0) <= 1
 Ensures_that_interventions_i_and_i'_do_not_overlap_if_performed_by_the_same_team_on_the_same_day_(0,_2):
   y(0,_0,_4) + y(2,_0,_4) - h(0,_2) - h(2,_0) <= 1
 Ensures_that_interventions_i_and_i'_do_not_overlap_if_performed_by_the_same_team_on_the_same_day_(0,_2):
   y(0,_1,_0) + y(2,_1,_0) - h(0,_2) - h(2,_0) <= 1
 Ensures_that_interventions_i_and_i'_do_not_overlap_if_performed_by_the_same_team_on_the_same_day_(0,_2):
   y(0,_1,_1) + y(2,_1,_1) - h(0,_2) - h(2,_0) <= 1
 Ensures_that_interventions_i_and_i'_do_not_overlap_if_performed_by_the_same_team_on_the_same_day_(0,_2):
   y(0,_1,_2) + y(2,_1,_2) - h(0,_2) - h(2,_0) <= 1
 Ensures_that_interventions_i_and_i'_do_not_overlap_if_performed_by_the_same_team_on_the_same_day_(0,_2):
   y(0,_1,_3) + y(2,_1,_3) - h(0,_2) - h(2,_0) <= 1
 Ensures_that_interventions_i_and_i'_do_not_overlap_if_performed_by_the_same_team_on_the_same_day_(0,_2):
   y(0,_1,_4) + y(2,_1,_4) - h(0,_2) - h(2,_0) <= 1
 Ensures_that_interventions_i_and_i'_do_not_overlap_if_performed_by_the_same_team_on_the_same_day_(0,_2):
   y(0,_2,_0) + y(2,_2,_0) - h(0,_2) - h(2,_0) <= 1
 Ensures_that_interventions_i_and_i'_do_not_overlap_if_performed_by_the_same_team_on_the_same_day_(0,_2):
   y(0,_2,_1) + y(2,_2,_1) - h(0,_2) - h(2,_0) <= 1
 Ensures_that_interventions_i_and_i'_do_not_overlap_if_performed_by_the_same_team_on_the_same_day_(0,_2):
   y(0,_2,_2) + y(2,_2,_2) - h(0,_2) - h(2,_0) <= 1
 Ensures_that_interventions_i_and_i'_do_not_overlap_if_performed_by_the_same_team_on_the_same_day_(0,_2):
   y(0,_2,_3) + y(2,_2,_3) - h(0,_2) - h(2,_0) <= 1
 Ensures_that_interventions_i_and_i'_do_not_overlap_if_performed_by_the_same_team_on_the_same_day_(0,_2):
   y(0,_2,_4) + y(2,_2,_4) - h(0,_2) - h(2,_0) <= 1
 Ensures_that_interventions_i_and_i'_do_not_overlap_if_performed_by_the_same_team_on_the_same_day_(0,_2):
   y(0,_3,_0) + y(2,_3,_0) - h(0,_2) - h(2,_0) <= 1
 Ensures_that_interventions_i_and_i'_do_not_overlap_if_performed_by_the_same_team_on_the_same_day_(0,_2):
   y(0,_3,_1) + y(2,_3,_1) - h(0,_2) - h(2,_0) <= 1
 Ensures_that_interventions_i_and_i'_do_not_overlap_if_performed_by_the_same_team_on_the_same_day_(0,_2):
   y(0,_3,_2) + y(2,_3,_2) - h(0,_2) - h(2,_0) <= 1
 Ensures_that_interventions_i_and_i'_do_not_overlap_if_performed_by_the_same_team_on_the_same_day_(0,_2):
   y(0,_3,_3) + y(2,_3,_3) - h(0,_2) - h(2,_0) <= 1
 Ensures_that_interventions_i_and_i'_do_not_overlap_if_performed_by_the_same_team_on_the_same_day_(0,_2):
   y(0,_3,_4) + y(2,_3,_4) - h(0,_2) - h(2,_0) <= 1
 Ensures_that_interventions_i_and_i'_do_not_overlap_if_performed_by_the_same_team_on_the_same_day_(0,_2):
   y(0,_4,_0) + y(2,_4,_0) - h(0,_2) - h(2,_0) <= 1
 Ensures_that_interventions_i_and_i'_do_not_overlap_if_performed_by_the_same_team_on_the_same_day_(0,_2):
   y(0,_4,_1) + y(2,_4,_1) - h(0,_2) - h(2,_0) <= 1
 Ensures_that_interventions_i_and_i'_do_not_overlap_if_performed_by_the_same_team_on_the_same_day_(0,_2):
   y(0,_4,_2) + y(2,_4,_2) - h(0,_2) - h(2,_0) <= 1
 Ensures_that_interventions_i_and_i'_do_not_overlap_if_performed_by_the_same_team_on_the_same_day_(0,_2):
   y(0,_4,_3) + y(2,_4,_3) - h(0,_2) - h(2,_0) <= 1
 Ensures_that_interventions_i_and_i'_do_not_overlap_if_performed_by_the_same_team_on_the_same_day_(0,_2):
   y(0,_4,_4) + y(2,_4,_4) - h(0,_2) - h(2,_0) <= 1
 Ensures_that_interventions_i_and_i'_do_not_overlap_if_performed_by_the_same_team_on_the_same_day_(0,_3):
   y(0,_0,_0) + y(3,_0,_0) - h(0,_3) - h(3,_0) <= 1
 Ensures_that_interventions_i_and_i'_do_not_overlap_if_performed_by_the_same_team_on_the_same_day_(0,_3):
   y(0,_0,_1) + y(3,_0,_1) - h(0,_3) - h(3,_0) <= 1
 Ensures_that_interventions_i_and_i'_do_not_overlap_if_performed_by_the_same_team_on_the_same_day_(0,_3):
   y(0,_0,_2) + y(3,_0,_2) - h(0,_3) - h(3,_0) <= 1
 Ensures_that_interventions_i_and_i'_do_not_overlap_if_performed_by_the_same_team_on_the_same_day_(0,_3):
   y(0,_0,_3) + y(3,_0,_3) - h(0,_3) - h(3,_0) <= 1
 Ensures_that_interventions_i_and_i'_do_not_overlap_if_performed_by_the_same_team_on_the_same_day_(0,_3):
   y(0,_0,_4) + y(3,_0,_4) - h(0,_3) - h(3,_0) <= 1
 Ensures_that_interventions_i_and_i'_do_not_overlap_if_performed_by_the_same_team_on_the_same_day_(0,_3):
   y(0,_1,_0) + y(3,_1,_0) - h(0,_3) - h(3,_0) <= 1
 Ensures_that_interventions_i_and_i'_do_not_overlap_if_performed_by_the_same_team_on_the_same_day_(0,_3):
   y(0,_1,_1) + y(3,_1,_1) - h(0,_3) - h(3,_0) <= 1
 Ensures_that_interventions_i_and_i'_do_not_overlap_if_performed_by_the_same_team_on_the_same_day_(0,_3):
   y(0,_1,_2) + y(3,_1,_2) - h(0,_3) - h(3,_0) <= 1
 Ensures_that_interventions_i_and_i'_do_not_overlap_if_performed_by_the_same_team_on_the_same_day_(0,_3):
   y(0,_1,_3) + y(3,_1,_3) - h(0,_3) - h(3,_0) <= 1
 Ensures_that_interventions_i_and_i'_do_not_overlap_if_performed_by_the_same_team_on_the_same_day_(0,_3):
   y(0,_1,_4) + y(3,_1,_4) - h(0,_3) - h(3,_0) <= 1
 Ensures_that_interventions_i_and_i'_do_not_overlap_if_performed_by_the_same_team_on_the_same_day_(0,_3):
   y(0,_2,_0) + y(3,_2,_0) - h(0,_3) - h(3,_0) <= 1
 Ensures_that_interventions_i_and_i'_do_not_overlap_if_performed_by_the_same_team_on_the_same_day_(0,_3):
   y(0,_2,_1) + y(3,_2,_1) - h(0,_3) - h(3,_0) <= 1
 Ensures_that_interventions_i_and_i'_do_not_overlap_if_performed_by_the_same_team_on_the_same_day_(0,_3):
   y(0,_2,_2) + y(3,_2,_2) - h(0,_3) - h(3,_0) <= 1
 Ensures_that_interventions_i_and_i'_do_not_overlap_if_performed_by_the_same_team_on_the_same_day_(0,_3):
   y(0,_2,_3) + y(3,_2,_3) - h(0,_3) - h(3,_0) <= 1
 Ensures_that_interventions_i_and_i'_do_not_overlap_if_performed_by_the_same_team_on_the_same_day_(0,_3):
   y(0,_2,_4) + y(3,_2,_4) - h(0,_3) - h(3,_0) <= 1
 Ensures_that_interventions_i_and_i'_do_not_overlap_if_performed_by_the_same_team_on_the_same_day_(0,_3):
   y(0,_3,_0) + y(3,_3,_0) - h(0,_3) - h(3,_0) <= 1
 Ensures_that_interventions_i_and_i'_do_not_overlap_if_performed_by_the_same_team_on_the_same_day_(0,_3):
   y(0,_3,_1) + y(3,_3,_1) - h(0,_3) - h(3,_0) <= 1
 Ensures_that_interventions_i_and_i'_do_not_overlap_if_performed_by_the_same_team_on_the_same_day_(0,_3):
   y(0,_3,_2) + y(3,_3,_2) - h(0,_3) - h(3,_0) <= 1
 Ensures_that_interventions_i_and_i'_do_not_overlap_if_performed_by_the_same_team_on_the_same_day_(0,_3):
   y(0,_3,_3) + y(3,_3,_3) - h(0,_3) - h(3,_0) <= 1
 Ensures_that_interventions_i_and_i'_do_not_overlap_if_performed_by_the_same_team_on_the_same_day_(0,_3):
   y(0,_3,_4) + y(3,_3,_4) - h(0,_3) - h(3,_0) <= 1
 Ensures_that_interventions_i_and_i'_do_not_overlap_if_performed_by_the_same_team_on_the_same_day_(0,_3):
   y(0,_4,_0) + y(3,_4,_0) - h(0,_3) - h(3,_0) <= 1
 Ensures_that_interventions_i_and_i'_do_not_overlap_if_performed_by_the_same_team_on_the_same_day_(0,_3):
   y(0,_4,_1) + y(3,_4,_1) - h(0,_3) - h(3,_0) <= 1
 Ensures_that_interventions_i_and_i'_do_not_overlap_if_performed_by_the_same_team_on_the_same_day_(0,_3):
   y(0,_4,_2) + y(3,_4,_2) - h(0,_3) - h(3,_0) <= 1
 Ensures_that_interventions_i_and_i'_do_not_overlap_if_performed_by_the_same_team_on_the_same_day_(0,_3):
   y(0,_4,_3) + y(3,_4,_3) - h(0,_3) - h(3,_0) <= 1
 Ensures_that_interventions_i_and_i'_do_not_overlap_if_performed_by_the_same_team_on_the_same_day_(0,_3):
   y(0,_4,_4) + y(3,_4,_4) - h(0,_3) - h(3,_0) <= 1
 Ensures_that_interventions_i_and_i'_do_not_overlap_if_performed_by_the_same_team_on_the_same_day_(0,_4):
   y(0,_0,_0) + y(4,_0,_0) - h(0,_4) - h(4,_0) <= 1
 Ensures_that_interventions_i_and_i'_do_not_overlap_if_performed_by_the_same_team_on_the_same_day_(0,_4):
   y(0,_0,_1) + y(4,_0,_1) - h(0,_4) - h(4,_0) <= 1
 Ensures_that_interventions_i_and_i'_do_not_overlap_if_performed_by_the_same_team_on_the_same_day_(0,_4):
   y(0,_0,_2) + y(4,_0,_2) - h(0,_4) - h(4,_0) <= 1
 Ensures_that_interventions_i_and_i'_do_not_overlap_if_performed_by_the_same_team_on_the_same_day_(0,_4):
   y(0,_0,_3) + y(4,_0,_3) - h(0,_4) - h(4,_0) <= 1
 Ensures_that_interventions_i_and_i'_do_not_overlap_if_performed_by_the_same_team_on_the_same_day_(0,_4):
   y(0,_0,_4) + y(4,_0,_4) - h(0,_4) - h(4,_0) <= 1
 Ensures_that_interventions_i_and_i'_do_not_overlap_if_performed_by_the_same_team_on_the_same_day_(0,_4):
   y(0,_1,_0) + y(4,_1,_0) - h(0,_4) - h(4,_0) <= 1
 Ensures_that_interventions_i_and_i'_do_not_overlap_if_performed_by_the_same_team_on_the_same_day_(0,_4):
   y(0,_1,_1) + y(4,_1,_1) - h(0,_4) - h(4,_0) <= 1
 Ensures_that_interventions_i_and_i'_do_not_overlap_if_performed_by_the_same_team_on_the_same_day_(0,_4):
   y(0,_1,_2) + y(4,_1,_2) - h(0,_4) - h(4,_0) <= 1
 Ensures_that_interventions_i_and_i'_do_not_overlap_if_performed_by_the_same_team_on_the_same_day_(0,_4):
   y(0,_1,_3) + y(4,_1,_3) - h(0,_4) - h(4,_0) <= 1
 Ensures_that_interventions_i_and_i'_do_not_overlap_if_performed_by_the_same_team_on_the_same_day_(0,_4):
   y(0,_1,_4) + y(4,_1,_4) - h(0,_4) - h(4,_0) <= 1
 Ensures_that_interventions_i_and_i'_do_not_overlap_if_performed_by_the_same_team_on_the_same_day_(0,_4):
   y(0,_2,_0) + y(4,_2,_0) - h(0,_4) - h(4,_0) <= 1
 Ensures_that_interventions_i_and_i'_do_not_overlap_if_performed_by_the_same_team_on_the_same_day_(0,_4):
   y(0,_2,_1) + y(4,_2,_1) - h(0,_4) - h(4,_0) <= 1
 Ensures_that_interventions_i_and_i'_do_not_overlap_if_performed_by_the_same_team_on_the_same_day_(0,_4):
   y(0,_2,_2) + y(4,_2,_2) - h(0,_4) - h(4,_0) <= 1
 Ensures_that_interventions_i_and_i'_do_not_overlap_if_performed_by_the_same_team_on_the_same_day_(0,_4):
   y(0,_2,_3) + y(4,_2,_3) - h(0,_4) - h(4,_0) <= 1
 Ensures_that_interventions_i_and_i'_do_not_overlap_if_performed_by_the_same_team_on_the_same_day_(0,_4):
   y(0,_2,_4) + y(4,_2,_4) - h(0,_4) - h(4,_0) <= 1
 Ensures_that_interventions_i_and_i'_do_not_overlap_if_performed_by_the_same_team_on_the_same_day_(0,_4):
   y(0,_3,_0) + y(4,_3,_0) - h(0,_4) - h(4,_0) <= 1
 Ensures_that_interventions_i_and_i'_do_not_overlap_if_performed_by_the_same_team_on_the_same_day_(0,_4):
   y(0,_3,_1) + y(4,_3,_1) - h(0,_4) - h(4,_0) <= 1
 Ensures_that_interventions_i_and_i'_do_not_overlap_if_performed_by_the_same_team_on_the_same_day_(0,_4):
   y(0,_3,_2) + y(4,_3,_2) - h(0,_4) - h(4,_0) <= 1
 Ensures_that_interventions_i_and_i'_do_not_overlap_if_performed_by_the_same_team_on_the_same_day_(0,_4):
   y(0,_3,_3) + y(4,_3,_3) - h(0,_4) - h(4,_0) <= 1
 Ensures_that_interventions_i_and_i'_do_not_overlap_if_performed_by_the_same_team_on_the_same_day_(0,_4):
   y(0,_3,_4) + y(4,_3,_4) - h(0,_4) - h(4,_0) <= 1
 Ensures_that_interventions_i_and_i'_do_not_overlap_if_performed_by_the_same_team_on_the_same_day_(0,_4):
   y(0,_4,_0) + y(4,_4,_0) - h(0,_4) - h(4,_0) <= 1
 Ensures_that_interventions_i_and_i'_do_not_overlap_if_performed_by_the_same_team_on_the_same_day_(0,_4):
   y(0,_4,_1) + y(4,_4,_1) - h(0,_4) - h(4,_0) <= 1
 Ensures_that_interventions_i_and_i'_do_not_overlap_if_performed_by_the_same_team_on_the_same_day_(0,_4):
   y(0,_4,_2) + y(4,_4,_2) - h(0,_4) - h(4,_0) <= 1
 Ensures_that_interventions_i_and_i'_do_not_overlap_if_performed_by_the_same_team_on_the_same_day_(0,_4):
   y(0,_4,_3) + y(4,_4,_3) - h(0,_4) - h(4,_0) <= 1
 Ensures_that_interventions_i_and_i'_do_not_overlap_if_performed_by_the_same_team_on_the_same_day_(0,_4):
   y(0,_4,_4) + y(4,_4,_4) - h(0,_4) - h(4,_0) <= 1
 Ensures_that_interventions_i_and_i'_do_not_overlap_if_performed_by_the_same_team_on_the_same_day_(1,_0):
   y(0,_0,_0) + y(1,_0,_0) - h(0,_1) - h(1,_0) <= 1
 Ensures_that_interventions_i_and_i'_do_not_overlap_if_performed_by_the_same_team_on_the_same_day_(1,_0):
   y(0,_0,_1) + y(1,_0,_1) - h(0,_1) - h(1,_0) <= 1
 Ensures_that_interventions_i_and_i'_do_not_overlap_if_performed_by_the_same_team_on_the_same_day_(1,_0):
   y(0,_0,_2) + y(1,_0,_2) - h(0,_1) - h(1,_0) <= 1
 Ensures_that_interventions_i_and_i'_do_not_overlap_if_performed_by_the_same_team_on_the_same_day_(1,_0):
   y(0,_0,_3) + y(1,_0,_3) - h(0,_1) - h(1,_0) <= 1
 Ensures_that_interventions_i_and_i'_do_not_overlap_if_performed_by_the_same_team_on_the_same_day_(1,_0):
   y(0,_0,_4) + y(1,_0,_4) - h(0,_1) - h(1,_0) <= 1
 Ensures_that_interventions_i_and_i'_do_not_overlap_if_performed_by_the_same_team_on_the_same_day_(1,_0):
   y(0,_1,_0) + y(1,_1,_0) - h(0,_1) - h(1,_0) <= 1
 Ensures_that_interventions_i_and_i'_do_not_overlap_if_performed_by_the_same_team_on_the_same_day_(1,_0):
   y(0,_1,_1) + y(1,_1,_1) - h(0,_1) - h(1,_0) <= 1
 Ensures_that_interventions_i_and_i'_do_not_overlap_if_performed_by_the_same_team_on_the_same_day_(1,_0):
   y(0,_1,_2) + y(1,_1,_2) - h(0,_1) - h(1,_0) <= 1
 Ensures_that_interventions_i_and_i'_do_not_overlap_if_performed_by_the_same_team_on_the_same_day_(1,_0):
   y(0,_1,_3) + y(1,_1,_3) - h(0,_1) - h(1,_0) <= 1
 Ensures_that_interventions_i_and_i'_do_not_overlap_if_performed_by_the_same_team_on_the_same_day_(1,_0):
   y(0,_1,_4) + y(1,_1,_4) - h(0,_1) - h(1,_0) <= 1
 Ensures_that_interventions_i_and_i'_do_not_overlap_if_performed_by_the_same_team_on_the_same_day_(1,_0):
   y(0,_2,_0) + y(1,_2,_0) - h(0,_1) - h(1,_0) <= 1
 Ensures_that_interventions_i_and_i'_do_not_overlap_if_performed_by_the_same_team_on_the_same_day_(1,_0):
   y(0,_2,_1) + y(1,_2,_1) - h(0,_1) - h(1,_0) <= 1
 Ensures_that_interventions_i_and_i'_do_not_overlap_if_performed_by_the_same_team_on_the_same_day_(1,_0):
   y(0,_2,_2) + y(1,_2,_2) - h(0,_1) - h(1,_0) <= 1
 Ensures_that_interventions_i_and_i'_do_not_overlap_if_performed_by_the_same_team_on_the_same_day_(1,_0):
   y(0,_2,_3) + y(1,_2,_3) - h(0,_1) - h(1,_0) <= 1
 Ensures_that_interventions_i_and_i'_do_not_overlap_if_performed_by_the_same_team_on_the_same_day_(1,_0):
   y(0,_2,_4) + y(1,_2,_4) - h(0,_1) - h(1,_0) <= 1
 Ensures_that_interventions_i_and_i'_do_not_overlap_if_performed_by_the_same_team_on_the_same_day_(1,_0):
   y(0,_3,_0) + y(1,_3,_0) - h(0,_1) - h(1,_0) <= 1
 Ensures_that_interventions_i_and_i'_do_not_overlap_if_performed_by_the_same_team_on_the_same_day_(1,_0):
   y(0,_3,_1) + y(1,_3,_1) - h(0,_1) - h(1,_0) <= 1
 Ensures_that_interventions_i_and_i'_do_not_overlap_if_performed_by_the_same_team_on_the_same_day_(1,_0):
   y(0,_3,_2) + y(1,_3,_2) - h(0,_1) - h(1,_0) <= 1
 Ensures_that_interventions_i_and_i'_do_not_overlap_if_performed_by_the_same_team_on_the_same_day_(1,_0):
   y(0,_3,_3) + y(1,_3,_3) - h(0,_1) - h(1,_0) <= 1
 Ensures_that_interventions_i_and_i'_do_not_overlap_if_performed_by_the_same_team_on_the_same_day_(1,_0):
   y(0,_3,_4) + y(1,_3,_4) - h(0,_1) - h(1,_0) <= 1
 Ensures_that_interventions_i_and_i'_do_not_overlap_if_performed_by_the_same_team_on_the_same_day_(1,_0):
   y(0,_4,_0) + y(1,_4,_0) - h(0,_1) - h(1,_0) <= 1
 Ensures_that_interventions_i_and_i'_do_not_overlap_if_performed_by_the_same_team_on_the_same_day_(1,_0):
   y(0,_4,_1) + y(1,_4,_1) - h(0,_1) - h(1,_0) <= 1
 Ensures_that_interventions_i_and_i'_do_not_overlap_if_performed_by_the_same_team_on_the_same_day_(1,_0):
   y(0,_4,_2) + y(1,_4,_2) - h(0,_1) - h(1,_0) <= 1
 Ensures_that_interventions_i_and_i'_do_not_overlap_if_performed_by_the_same_team_on_the_same_day_(1,_0):
   y(0,_4,_3) + y(1,_4,_3) - h(0,_1) - h(1,_0) <= 1
 Ensures_that_interventions_i_and_i'_do_not_overlap_if_performed_by_the_same_team_on_the_same_day_(1,_0):
   y(0,_4,_4) + y(1,_4,_4) - h(0,_1) - h(1,_0) <= 1
 Ensures_that_interventions_i_and_i'_do_not_overlap_if_performed_by_the_same_team_on_the_same_day_(1,_2):
   y(1,_0,_0) + y(2,_0,_0) - h(1,_2) - h(2,_1) <= 1
 Ensures_that_interventions_i_and_i'_do_not_overlap_if_performed_by_the_same_team_on_the_same_day_(1,_2):
   y(1,_0,_1) + y(2,_0,_1) - h(1,_2) - h(2,_1) <= 1
 Ensures_that_interventions_i_and_i'_do_not_overlap_if_performed_by_the_same_team_on_the_same_day_(1,_2):
   y(1,_0,_2) + y(2,_0,_2) - h(1,_2) - h(2,_1) <= 1
 Ensures_that_interventions_i_and_i'_do_not_overlap_if_performed_by_the_same_team_on_the_same_day_(1,_2):
   y(1,_0,_3) + y(2,_0,_3) - h(1,_2) - h(2,_1) <= 1
 Ensures_that_interventions_i_and_i'_do_not_overlap_if_performed_by_the_same_team_on_the_same_day_(1,_2):
   y(1,_0,_4) + y(2,_0,_4) - h(1,_2) - h(2,_1) <= 1
 Ensures_that_interventions_i_and_i'_do_not_overlap_if_performed_by_the_same_team_on_the_same_day_(1,_2):
   y(1,_1,_0) + y(2,_1,_0) - h(1,_2) - h(2,_1) <= 1
 Ensures_that_interventions_i_and_i'_do_not_overlap_if_performed_by_the_same_team_on_the_same_day_(1,_2):
   y(1,_1,_1) + y(2,_1,_1) - h(1,_2) - h(2,_1) <= 1
 Ensures_that_interventions_i_and_i'_do_not_overlap_if_performed_by_the_same_team_on_the_same_day_(1,_2):
   y(1,_1,_2) + y(2,_1,_2) - h(1,_2) - h(2,_1) <= 1
 Ensures_that_interventions_i_and_i'_do_not_overlap_if_performed_by_the_same_team_on_the_same_day_(1,_2):
   y(1,_1,_3) + y(2,_1,_3) - h(1,_2) - h(2,_1) <= 1
 Ensures_that_interventions_i_and_i'_do_not_overlap_if_performed_by_the_same_team_on_the_same_day_(1,_2):
   y(1,_1,_4) + y(2,_1,_4) - h(1,_2) - h(2,_1) <= 1
 Ensures_that_interventions_i_and_i'_do_not_overlap_if_performed_by_the_same_team_on_the_same_day_(1,_2):
   y(1,_2,_0) + y(2,_2,_0) - h(1,_2) - h(2,_1) <= 1
 Ensures_that_interventions_i_and_i'_do_not_overlap_if_performed_by_the_same_team_on_the_same_day_(1,_2):
   y(1,_2,_1) + y(2,_2,_1) - h(1,_2) - h(2,_1) <= 1
 Ensures_that_interventions_i_and_i'_do_not_overlap_if_performed_by_the_same_team_on_the_same_day_(1,_2):
   y(1,_2,_2) + y(2,_2,_2) - h(1,_2) - h(2,_1) <= 1
 Ensures_that_interventions_i_and_i'_do_not_overlap_if_performed_by_the_same_team_on_the_same_day_(1,_2):
   y(1,_2,_3) + y(2,_2,_3) - h(1,_2) - h(2,_1) <= 1
 Ensures_that_interventions_i_and_i'_do_not_overlap_if_performed_by_the_same_team_on_the_same_day_(1,_2):
   y(1,_2,_4) + y(2,_2,_4) - h(1,_2) - h(2,_1) <= 1
 Ensures_that_interventions_i_and_i'_do_not_overlap_if_performed_by_the_same_team_on_the_same_day_(1,_2):
   y(1,_3,_0) + y(2,_3,_0) - h(1,_2) - h(2,_1) <= 1
 Ensures_that_interventions_i_and_i'_do_not_overlap_if_performed_by_the_same_team_on_the_same_day_(1,_2):
   y(1,_3,_1) + y(2,_3,_1) - h(1,_2) - h(2,_1) <= 1
 Ensures_that_interventions_i_and_i'_do_not_overlap_if_performed_by_the_same_team_on_the_same_day_(1,_2):
   y(1,_3,_2) + y(2,_3,_2) - h(1,_2) - h(2,_1) <= 1
 Ensures_that_interventions_i_and_i'_do_not_overlap_if_performed_by_the_same_team_on_the_same_day_(1,_2):
   y(1,_3,_3) + y(2,_3,_3) - h(1,_2) - h(2,_1) <= 1
 Ensures_that_interventions_i_and_i'_do_not_overlap_if_performed_by_the_same_team_on_the_same_day_(1,_2):
   y(1,_3,_4) + y(2,_3,_4) - h(1,_2) - h(2,_1) <= 1
 Ensures_that_interventions_i_and_i'_do_not_overlap_if_performed_by_the_same_team_on_the_same_day_(1,_2):
   y(1,_4,_0) + y(2,_4,_0) - h(1,_2) - h(2,_1) <= 1
 Ensures_that_interventions_i_and_i'_do_not_overlap_if_performed_by_the_same_team_on_the_same_day_(1,_2):
   y(1,_4,_1) + y(2,_4,_1) - h(1,_2) - h(2,_1) <= 1
 Ensures_that_interventions_i_and_i'_do_not_overlap_if_performed_by_the_same_team_on_the_same_day_(1,_2):
   y(1,_4,_2) + y(2,_4,_2) - h(1,_2) - h(2,_1) <= 1
 Ensures_that_interventions_i_and_i'_do_not_overlap_if_performed_by_the_same_team_on_the_same_day_(1,_2):
   y(1,_4,_3) + y(2,_4,_3) - h(1,_2) - h(2,_1) <= 1
 Ensures_that_interventions_i_and_i'_do_not_overlap_if_performed_by_the_same_team_on_the_same_day_(1,_2):
   y(1,_4,_4) + y(2,_4,_4) - h(1,_2) - h(2,_1) <= 1
 Ensures_that_interventions_i_and_i'_do_not_overlap_if_performed_by_the_same_team_on_the_same_day_(1,_3):
   y(1,_0,_0) + y(3,_0,_0) - h(1,_3) - h(3,_1) <= 1
 Ensures_that_interventions_i_and_i'_do_not_overlap_if_performed_by_the_same_team_on_the_same_day_(1,_3):
   y(1,_0,_1) + y(3,_0,_1) - h(1,_3) - h(3,_1) <= 1
 Ensures_that_interventions_i_and_i'_do_not_overlap_if_performed_by_the_same_team_on_the_same_day_(1,_3):
   y(1,_0,_2) + y(3,_0,_2) - h(1,_3) - h(3,_1) <= 1
 Ensures_that_interventions_i_and_i'_do_not_overlap_if_performed_by_the_same_team_on_the_same_day_(1,_3):
   y(1,_0,_3) + y(3,_0,_3) - h(1,_3) - h(3,_1) <= 1
 Ensures_that_interventions_i_and_i'_do_not_overlap_if_performed_by_the_same_team_on_the_same_day_(1,_3):
   y(1,_0,_4) + y(3,_0,_4) - h(1,_3) - h(3,_1) <= 1
 Ensures_that_interventions_i_and_i'_do_not_overlap_if_performed_by_the_same_team_on_the_same_day_(1,_3):
   y(1,_1,_0) + y(3,_1,_0) - h(1,_3) - h(3,_1) <= 1
 Ensures_that_interventions_i_and_i'_do_not_overlap_if_performed_by_the_same_team_on_the_same_day_(1,_3):
   y(1,_1,_1) + y(3,_1,_1) - h(1,_3) - h(3,_1) <= 1
 Ensures_that_interventions_i_and_i'_do_not_overlap_if_performed_by_the_same_team_on_the_same_day_(1,_3):
   y(1,_1,_2) + y(3,_1,_2) - h(1,_3) - h(3,_1) <= 1
 Ensures_that_interventions_i_and_i'_do_not_overlap_if_performed_by_the_same_team_on_the_same_day_(1,_3):
   y(1,_1,_3) + y(3,_1,_3) - h(1,_3) - h(3,_1) <= 1
 Ensures_that_interventions_i_and_i'_do_not_overlap_if_performed_by_the_same_team_on_the_same_day_(1,_3):
   y(1,_1,_4) + y(3,_1,_4) - h(1,_3) - h(3,_1) <= 1
 Ensures_that_interventions_i_and_i'_do_not_overlap_if_performed_by_the_same_team_on_the_same_day_(1,_3):
   y(1,_2,_0) + y(3,_2,_0) - h(1,_3) - h(3,_1) <= 1
 Ensures_that_interventions_i_and_i'_do_not_overlap_if_performed_by_the_same_team_on_the_same_day_(1,_3):
   y(1,_2,_1) + y(3,_2,_1) - h(1,_3) - h(3,_1) <= 1
 Ensures_that_interventions_i_and_i'_do_not_overlap_if_performed_by_the_same_team_on_the_same_day_(1,_3):
   y(1,_2,_2) + y(3,_2,_2) - h(1,_3) - h(3,_1) <= 1
 Ensures_that_interventions_i_and_i'_do_not_overlap_if_performed_by_the_same_team_on_the_same_day_(1,_3):
   y(1,_2,_3) + y(3,_2,_3) - h(1,_3) - h(3,_1) <= 1
 Ensures_that_interventions_i_and_i'_do_not_overlap_if_performed_by_the_same_team_on_the_same_day_(1,_3):
   y(1,_2,_4) + y(3,_2,_4) - h(1,_3) - h(3,_1) <= 1
 Ensures_that_interventions_i_and_i'_do_not_overlap_if_performed_by_the_same_team_on_the_same_day_(1,_3):
   y(1,_3,_0) + y(3,_3,_0) - h(1,_3) - h(3,_1) <= 1
 Ensures_that_interventions_i_and_i'_do_not_overlap_if_performed_by_the_same_team_on_the_same_day_(1,_3):
   y(1,_3,_1) + y(3,_3,_1) - h(1,_3) - h(3,_1) <= 1
 Ensures_that_interventions_i_and_i'_do_not_overlap_if_performed_by_the_same_team_on_the_same_day_(1,_3):
   y(1,_3,_2) + y(3,_3,_2) - h(1,_3) - h(3,_1) <= 1
 Ensures_that_interventions_i_and_i'_do_not_overlap_if_performed_by_the_same_team_on_the_same_day_(1,_3):
   y(1,_3,_3) + y(3,_3,_3) - h(1,_3) - h(3,_1) <= 1
 Ensures_that_interventions_i_and_i'_do_not_overlap_if_performed_by_the_same_team_on_the_same_day_(1,_3):
   y(1,_3,_4) + y(3,_3,_4) - h(1,_3) - h(3,_1) <= 1
 Ensures_that_interventions_i_and_i'_do_not_overlap_if_performed_by_the_same_team_on_the_same_day_(1,_3):
   y(1,_4,_0) + y(3,_4,_0) - h(1,_3) - h(3,_1) <= 1
 Ensures_that_interventions_i_and_i'_do_not_overlap_if_performed_by_the_same_team_on_the_same_day_(1,_3):
   y(1,_4,_1) + y(3,_4,_1) - h(1,_3) - h(3,_1) <= 1
 Ensures_that_interventions_i_and_i'_do_not_overlap_if_performed_by_the_same_team_on_the_same_day_(1,_3):
   y(1,_4,_2) + y(3,_4,_2) - h(1,_3) - h(3,_1) <= 1
 Ensures_that_interventions_i_and_i'_do_not_overlap_if_performed_by_the_same_team_on_the_same_day_(1,_3):
   y(1,_4,_3) + y(3,_4,_3) - h(1,_3) - h(3,_1) <= 1
 Ensures_that_interventions_i_and_i'_do_not_overlap_if_performed_by_the_same_team_on_the_same_day_(1,_3):
   y(1,_4,_4) + y(3,_4,_4) - h(1,_3) - h(3,_1) <= 1
 Ensures_that_interventions_i_and_i'_do_not_overlap_if_performed_by_the_same_team_on_the_same_day_(1,_4):
   y(1,_0,_0) + y(4,_0,_0) - h(1,_4) - h(4,_1) <= 1
 Ensures_that_interventions_i_and_i'_do_not_overlap_if_performed_by_the_same_team_on_the_same_day_(1,_4):
   y(1,_0,_1) + y(4,_0,_1) - h(1,_4) - h(4,_1) <= 1
 Ensures_that_interventions_i_and_i'_do_not_overlap_if_performed_by_the_same_team_on_the_same_day_(1,_4):
   y(1,_0,_2) + y(4,_0,_2) - h(1,_4) - h(4,_1) <= 1
 Ensures_that_interventions_i_and_i'_do_not_overlap_if_performed_by_the_same_team_on_the_same_day_(1,_4):
   y(1,_0,_3) + y(4,_0,_3) - h(1,_4) - h(4,_1) <= 1
 Ensures_that_interventions_i_and_i'_do_not_overlap_if_performed_by_the_same_team_on_the_same_day_(1,_4):
   y(1,_0,_4) + y(4,_0,_4) - h(1,_4) - h(4,_1) <= 1
 Ensures_that_interventions_i_and_i'_do_not_overlap_if_performed_by_the_same_team_on_the_same_day_(1,_4):
   y(1,_1,_0) + y(4,_1,_0) - h(1,_4) - h(4,_1) <= 1
 Ensures_that_interventions_i_and_i'_do_not_overlap_if_performed_by_the_same_team_on_the_same_day_(1,_4):
   y(1,_1,_1) + y(4,_1,_1) - h(1,_4) - h(4,_1) <= 1
 Ensures_that_interventions_i_and_i'_do_not_overlap_if_performed_by_the_same_team_on_the_same_day_(1,_4):
   y(1,_1,_2) + y(4,_1,_2) - h(1,_4) - h(4,_1) <= 1
 Ensures_that_interventions_i_and_i'_do_not_overlap_if_performed_by_the_same_team_on_the_same_day_(1,_4):
   y(1,_1,_3) + y(4,_1,_3) - h(1,_4) - h(4,_1) <= 1
 Ensures_that_interventions_i_and_i'_do_not_overlap_if_performed_by_the_same_team_on_the_same_day_(1,_4):
   y(1,_1,_4) + y(4,_1,_4) - h(1,_4) - h(4,_1) <= 1
 Ensures_that_interventions_i_and_i'_do_not_overlap_if_performed_by_the_same_team_on_the_same_day_(1,_4):
   y(1,_2,_0) + y(4,_2,_0) - h(1,_4) - h(4,_1) <= 1
 Ensures_that_interventions_i_and_i'_do_not_overlap_if_performed_by_the_same_team_on_the_same_day_(1,_4):
   y(1,_2,_1) + y(4,_2,_1) - h(1,_4) - h(4,_1) <= 1
 Ensures_that_interventions_i_and_i'_do_not_overlap_if_performed_by_the_same_team_on_the_same_day_(1,_4):
   y(1,_2,_2) + y(4,_2,_2) - h(1,_4) - h(4,_1) <= 1
 Ensures_that_interventions_i_and_i'_do_not_overlap_if_performed_by_the_same_team_on_the_same_day_(1,_4):
   y(1,_2,_3) + y(4,_2,_3) - h(1,_4) - h(4,_1) <= 1
 Ensures_that_interventions_i_and_i'_do_not_overlap_if_performed_by_the_same_team_on_the_same_day_(1,_4):
   y(1,_2,_4) + y(4,_2,_4) - h(1,_4) - h(4,_1) <= 1
 Ensures_that_interventions_i_and_i'_do_not_overlap_if_performed_by_the_same_team_on_the_same_day_(1,_4):
   y(1,_3,_0) + y(4,_3,_0) - h(1,_4) - h(4,_1) <= 1
 Ensures_that_interventions_i_and_i'_do_not_overlap_if_performed_by_the_same_team_on_the_same_day_(1,_4):
   y(1,_3,_1) + y(4,_3,_1) - h(1,_4) - h(4,_1) <= 1
 Ensures_that_interventions_i_and_i'_do_not_overlap_if_performed_by_the_same_team_on_the_same_day_(1,_4):
   y(1,_3,_2) + y(4,_3,_2) - h(1,_4) - h(4,_1) <= 1
 Ensures_that_interventions_i_and_i'_do_not_overlap_if_performed_by_the_same_team_on_the_same_day_(1,_4):
   y(1,_3,_3) + y(4,_3,_3) - h(1,_4) - h(4,_1) <= 1
 Ensures_that_interventions_i_and_i'_do_not_overlap_if_performed_by_the_same_team_on_the_same_day_(1,_4):
   y(1,_3,_4) + y(4,_3,_4) - h(1,_4) - h(4,_1) <= 1
 Ensures_that_interventions_i_and_i'_do_not_overlap_if_performed_by_the_same_team_on_the_same_day_(1,_4):
   y(1,_4,_0) + y(4,_4,_0) - h(1,_4) - h(4,_1) <= 1
 Ensures_that_interventions_i_and_i'_do_not_overlap_if_performed_by_the_same_team_on_the_same_day_(1,_4):
   y(1,_4,_1) + y(4,_4,_1) - h(1,_4) - h(4,_1) <= 1
 Ensures_that_interventions_i_and_i'_do_not_overlap_if_performed_by_the_same_team_on_the_same_day_(1,_4):
   y(1,_4,_2) + y(4,_4,_2) - h(1,_4) - h(4,_1) <= 1
 Ensures_that_interventions_i_and_i'_do_not_overlap_if_performed_by_the_same_team_on_the_same_day_(1,_4):
   y(1,_4,_3) + y(4,_4,_3) - h(1,_4) - h(4,_1) <= 1
 Ensures_that_interventions_i_and_i'_do_not_overlap_if_performed_by_the_same_team_on_the_same_day_(1,_4):
   y(1,_4,_4) + y(4,_4,_4) - h(1,_4) - h(4,_1) <= 1
 Ensures_that_interventions_i_and_i'_do_not_overlap_if_performed_by_the_same_team_on_the_same_day_(2,_0):
   y(0,_0,_0) + y(2,_0,_0) - h(0,_2) - h(2,_0) <= 1
 Ensures_that_interventions_i_and_i'_do_not_overlap_if_performed_by_the_same_team_on_the_same_day_(2,_0):
   y(0,_0,_1) + y(2,_0,_1) - h(0,_2) - h(2,_0) <= 1
 Ensures_that_interventions_i_and_i'_do_not_overlap_if_performed_by_the_same_team_on_the_same_day_(2,_0):
   y(0,_0,_2) + y(2,_0,_2) - h(0,_2) - h(2,_0) <= 1
 Ensures_that_interventions_i_and_i'_do_not_overlap_if_performed_by_the_same_team_on_the_same_day_(2,_0):
   y(0,_0,_3) + y(2,_0,_3) - h(0,_2) - h(2,_0) <= 1
 Ensures_that_interventions_i_and_i'_do_not_overlap_if_performed_by_the_same_team_on_the_same_day_(2,_0):
   y(0,_0,_4) + y(2,_0,_4) - h(0,_2) - h(2,_0) <= 1
 Ensures_that_interventions_i_and_i'_do_not_overlap_if_performed_by_the_same_team_on_the_same_day_(2,_0):
   y(0,_1,_0) + y(2,_1,_0) - h(0,_2) - h(2,_0) <= 1
 Ensures_that_interventions_i_and_i'_do_not_overlap_if_performed_by_the_same_team_on_the_same_day_(2,_0):
   y(0,_1,_1) + y(2,_1,_1) - h(0,_2) - h(2,_0) <= 1
 Ensures_that_interventions_i_and_i'_do_not_overlap_if_performed_by_the_same_team_on_the_same_day_(2,_0):
   y(0,_1,_2) + y(2,_1,_2) - h(0,_2) - h(2,_0) <= 1
 Ensures_that_interventions_i_and_i'_do_not_overlap_if_performed_by_the_same_team_on_the_same_day_(2,_0):
   y(0,_1,_3) + y(2,_1,_3) - h(0,_2) - h(2,_0) <= 1
 Ensures_that_interventions_i_and_i'_do_not_overlap_if_performed_by_the_same_team_on_the_same_day_(2,_0):
   y(0,_1,_4) + y(2,_1,_4) - h(0,_2) - h(2,_0) <= 1
 Ensures_that_interventions_i_and_i'_do_not_overlap_if_performed_by_the_same_team_on_the_same_day_(2,_0):
   y(0,_2,_0) + y(2,_2,_0) - h(0,_2) - h(2,_0) <= 1
 Ensures_that_interventions_i_and_i'_do_not_overlap_if_performed_by_the_same_team_on_the_same_day_(2,_0):
   y(0,_2,_1) + y(2,_2,_1) - h(0,_2) - h(2,_0) <= 1
 Ensures_that_interventions_i_and_i'_do_not_overlap_if_performed_by_the_same_team_on_the_same_day_(2,_0):
   y(0,_2,_2) + y(2,_2,_2) - h(0,_2) - h(2,_0) <= 1
 Ensures_that_interventions_i_and_i'_do_not_overlap_if_performed_by_the_same_team_on_the_same_day_(2,_0):
   y(0,_2,_3) + y(2,_2,_3) - h(0,_2) - h(2,_0) <= 1
 Ensures_that_interventions_i_and_i'_do_not_overlap_if_performed_by_the_same_team_on_the_same_day_(2,_0):
   y(0,_2,_4) + y(2,_2,_4) - h(0,_2) - h(2,_0) <= 1
 Ensures_that_interventions_i_and_i'_do_not_overlap_if_performed_by_the_same_team_on_the_same_day_(2,_0):
   y(0,_3,_0) + y(2,_3,_0) - h(0,_2) - h(2,_0) <= 1
 Ensures_that_interventions_i_and_i'_do_not_overlap_if_performed_by_the_same_team_on_the_same_day_(2,_0):
   y(0,_3,_1) + y(2,_3,_1) - h(0,_2) - h(2,_0) <= 1
 Ensures_that_interventions_i_and_i'_do_not_overlap_if_performed_by_the_same_team_on_the_same_day_(2,_0):
   y(0,_3,_2) + y(2,_3,_2) - h(0,_2) - h(2,_0) <= 1
 Ensures_that_interventions_i_and_i'_do_not_overlap_if_performed_by_the_same_team_on_the_same_day_(2,_0):
   y(0,_3,_3) + y(2,_3,_3) - h(0,_2) - h(2,_0) <= 1
 Ensures_that_interventions_i_and_i'_do_not_overlap_if_performed_by_the_same_team_on_the_same_day_(2,_0):
   y(0,_3,_4) + y(2,_3,_4) - h(0,_2) - h(2,_0) <= 1
 Ensures_that_interventions_i_and_i'_do_not_overlap_if_performed_by_the_same_team_on_the_same_day_(2,_0):
   y(0,_4,_0) + y(2,_4,_0) - h(0,_2) - h(2,_0) <= 1
 Ensures_that_interventions_i_and_i'_do_not_overlap_if_performed_by_the_same_team_on_the_same_day_(2,_0):
   y(0,_4,_1) + y(2,_4,_1) - h(0,_2) - h(2,_0) <= 1
 Ensures_that_interventions_i_and_i'_do_not_overlap_if_performed_by_the_same_team_on_the_same_day_(2,_0):
   y(0,_4,_2) + y(2,_4,_2) - h(0,_2) - h(2,_0) <= 1
 Ensures_that_interventions_i_and_i'_do_not_overlap_if_performed_by_the_same_team_on_the_same_day_(2,_0):
   y(0,_4,_3) + y(2,_4,_3) - h(0,_2) - h(2,_0) <= 1
 Ensures_that_interventions_i_and_i'_do_not_overlap_if_performed_by_the_same_team_on_the_same_day_(2,_0):
   y(0,_4,_4) + y(2,_4,_4) - h(0,_2) - h(2,_0) <= 1
 Ensures_that_interventions_i_and_i'_do_not_overlap_if_performed_by_the_same_team_on_the_same_day_(2,_1):
   y(1,_0,_0) + y(2,_0,_0) - h(1,_2) - h(2,_1) <= 1
 Ensures_that_interventions_i_and_i'_do_not_overlap_if_performed_by_the_same_team_on_the_same_day_(2,_1):
   y(1,_0,_1) + y(2,_0,_1) - h(1,_2) - h(2,_1) <= 1
 Ensures_that_interventions_i_and_i'_do_not_overlap_if_performed_by_the_same_team_on_the_same_day_(2,_1):
   y(1,_0,_2) + y(2,_0,_2) - h(1,_2) - h(2,_1) <= 1
 Ensures_that_interventions_i_and_i'_do_not_overlap_if_performed_by_the_same_team_on_the_same_day_(2,_1):
   y(1,_0,_3) + y(2,_0,_3) - h(1,_2) - h(2,_1) <= 1
 Ensures_that_interventions_i_and_i'_do_not_overlap_if_performed_by_the_same_team_on_the_same_day_(2,_1):
   y(1,_0,_4) + y(2,_0,_4) - h(1,_2) - h(2,_1) <= 1
 Ensures_that_interventions_i_and_i'_do_not_overlap_if_performed_by_the_same_team_on_the_same_day_(2,_1):
   y(1,_1,_0) + y(2,_1,_0) - h(1,_2) - h(2,_1) <= 1
 Ensures_that_interventions_i_and_i'_do_not_overlap_if_performed_by_the_same_team_on_the_same_day_(2,_1):
   y(1,_1,_1) + y(2,_1,_1) - h(1,_2) - h(2,_1) <= 1
 Ensures_that_interventions_i_and_i'_do_not_overlap_if_performed_by_the_same_team_on_the_same_day_(2,_1):
   y(1,_1,_2) + y(2,_1,_2) - h(1,_2) - h(2,_1) <= 1
 Ensures_that_interventions_i_and_i'_do_not_overlap_if_performed_by_the_same_team_on_the_same_day_(2,_1):
   y(1,_1,_3) + y(2,_1,_3) - h(1,_2) - h(2,_1) <= 1
 Ensures_that_interventions_i_and_i'_do_not_overlap_if_performed_by_the_same_team_on_the_same_day_(2,_1):
   y(1,_1,_4) + y(2,_1,_4) - h(1,_2) - h(2,_1) <= 1
 Ensures_that_interventions_i_and_i'_do_not_overlap_if_performed_by_the_same_team_on_the_same_day_(2,_1):
   y(1,_2,_0) + y(2,_2,_0) - h(1,_2) - h(2,_1) <= 1
 Ensures_that_interventions_i_and_i'_do_not_overlap_if_performed_by_the_same_team_on_the_same_day_(2,_1):
   y(1,_2,_1) + y(2,_2,_1) - h(1,_2) - h(2,_1) <= 1
 Ensures_that_interventions_i_and_i'_do_not_overlap_if_performed_by_the_same_team_on_the_same_day_(2,_1):
   y(1,_2,_2) + y(2,_2,_2) - h(1,_2) - h(2,_1) <= 1
 Ensures_that_interventions_i_and_i'_do_not_overlap_if_performed_by_the_same_team_on_the_same_day_(2,_1):
   y(1,_2,_3) + y(2,_2,_3) - h(1,_2) - h(2,_1) <= 1
 Ensures_that_interventions_i_and_i'_do_not_overlap_if_performed_by_the_same_team_on_the_same_day_(2,_1):
   y(1,_2,_4) + y(2,_2,_4) - h(1,_2) - h(2,_1) <= 1
 Ensures_that_interventions_i_and_i'_do_not_overlap_if_performed_by_the_same_team_on_the_same_day_(2,_1):
   y(1,_3,_0) + y(2,_3,_0) - h(1,_2) - h(2,_1) <= 1
 Ensures_that_interventions_i_and_i'_do_not_overlap_if_performed_by_the_same_team_on_the_same_day_(2,_1):
   y(1,_3,_1) + y(2,_3,_1) - h(1,_2) - h(2,_1) <= 1
 Ensures_that_interventions_i_and_i'_do_not_overlap_if_performed_by_the_same_team_on_the_same_day_(2,_1):
   y(1,_3,_2) + y(2,_3,_2) - h(1,_2) - h(2,_1) <= 1
 Ensures_that_interventions_i_and_i'_do_not_overlap_if_performed_by_the_same_team_on_the_same_day_(2,_1):
   y(1,_3,_3) + y(2,_3,_3) - h(1,_2) - h(2,_1) <= 1
 Ensures_that_interventions_i_and_i'_do_not_overlap_if_performed_by_the_same_team_on_the_same_day_(2,_1):
   y(1,_3,_4) + y(2,_3,_4) - h(1,_2) - h(2,_1) <= 1
 Ensures_that_interventions_i_and_i'_do_not_overlap_if_performed_by_the_same_team_on_the_same_day_(2,_1):
   y(1,_4,_0) + y(2,_4,_0) - h(1,_2) - h(2,_1) <= 1
 Ensures_that_interventions_i_and_i'_do_not_overlap_if_performed_by_the_same_team_on_the_same_day_(2,_1):
   y(1,_4,_1) + y(2,_4,_1) - h(1,_2) - h(2,_1) <= 1
 Ensures_that_interventions_i_and_i'_do_not_overlap_if_performed_by_the_same_team_on_the_same_day_(2,_1):
   y(1,_4,_2) + y(2,_4,_2) - h(1,_2) - h(2,_1) <= 1
 Ensures_that_interventions_i_and_i'_do_not_overlap_if_performed_by_the_same_team_on_the_same_day_(2,_1):
   y(1,_4,_3) + y(2,_4,_3) - h(1,_2) - h(2,_1) <= 1
 Ensures_that_interventions_i_and_i'_do_not_overlap_if_performed_by_the_same_team_on_the_same_day_(2,_1):
   y(1,_4,_4) + y(2,_4,_4) - h(1,_2) - h(2,_1) <= 1
 Ensures_that_interventions_i_and_i'_do_not_overlap_if_performed_by_the_same_team_on_the_same_day_(2,_3):
   y(2,_0,_0) + y(3,_0,_0) - h(2,_3) - h(3,_2) <= 1
 Ensures_that_interventions_i_and_i'_do_not_overlap_if_performed_by_the_same_team_on_the_same_day_(2,_3):
   y(2,_0,_1) + y(3,_0,_1) - h(2,_3) - h(3,_2) <= 1
 Ensures_that_interventions_i_and_i'_do_not_overlap_if_performed_by_the_same_team_on_the_same_day_(2,_3):
   y(2,_0,_2) + y(3,_0,_2) - h(2,_3) - h(3,_2) <= 1
 Ensures_that_interventions_i_and_i'_do_not_overlap_if_performed_by_the_same_team_on_the_same_day_(2,_3):
   y(2,_0,_3) + y(3,_0,_3) - h(2,_3) - h(3,_2) <= 1
 Ensures_that_interventions_i_and_i'_do_not_overlap_if_performed_by_the_same_team_on_the_same_day_(2,_3):
   y(2,_0,_4) + y(3,_0,_4) - h(2,_3) - h(3,_2) <= 1
 Ensures_that_interventions_i_and_i'_do_not_overlap_if_performed_by_the_same_team_on_the_same_day_(2,_3):
   y(2,_1,_0) + y(3,_1,_0) - h(2,_3) - h(3,_2) <= 1
 Ensures_that_interventions_i_and_i'_do_not_overlap_if_performed_by_the_same_team_on_the_same_day_(2,_3):
   y(2,_1,_1) + y(3,_1,_1) - h(2,_3) - h(3,_2) <= 1
 Ensures_that_interventions_i_and_i'_do_not_overlap_if_performed_by_the_same_team_on_the_same_day_(2,_3):
   y(2,_1,_2) + y(3,_1,_2) - h(2,_3) - h(3,_2) <= 1
 Ensures_that_interventions_i_and_i'_do_not_overlap_if_performed_by_the_same_team_on_the_same_day_(2,_3):
   y(2,_1,_3) + y(3,_1,_3) - h(2,_3) - h(3,_2) <= 1
 Ensures_that_interventions_i_and_i'_do_not_overlap_if_performed_by_the_same_team_on_the_same_day_(2,_3):
   y(2,_1,_4) + y(3,_1,_4) - h(2,_3) - h(3,_2) <= 1
 Ensures_that_interventions_i_and_i'_do_not_overlap_if_performed_by_the_same_team_on_the_same_day_(2,_3):
   y(2,_2,_0) + y(3,_2,_0) - h(2,_3) - h(3,_2) <= 1
 Ensures_that_interventions_i_and_i'_do_not_overlap_if_performed_by_the_same_team_on_the_same_day_(2,_3):
   y(2,_2,_1) + y(3,_2,_1) - h(2,_3) - h(3,_2) <= 1
 Ensures_that_interventions_i_and_i'_do_not_overlap_if_performed_by_the_same_team_on_the_same_day_(2,_3):
   y(2,_2,_2) + y(3,_2,_2) - h(2,_3) - h(3,_2) <= 1
 Ensures_that_interventions_i_and_i'_do_not_overlap_if_performed_by_the_same_team_on_the_same_day_(2,_3):
   y(2,_2,_3) + y(3,_2,_3) - h(2,_3) - h(3,_2) <= 1
 Ensures_that_interventions_i_and_i'_do_not_overlap_if_performed_by_the_same_team_on_the_same_day_(2,_3):
   y(2,_2,_4) + y(3,_2,_4) - h(2,_3) - h(3,_2) <= 1
 Ensures_that_interventions_i_and_i'_do_not_overlap_if_performed_by_the_same_team_on_the_same_day_(2,_3):
   y(2,_3,_0) + y(3,_3,_0) - h(2,_3) - h(3,_2) <= 1
 Ensures_that_interventions_i_and_i'_do_not_overlap_if_performed_by_the_same_team_on_the_same_day_(2,_3):
   y(2,_3,_1) + y(3,_3,_1) - h(2,_3) - h(3,_2) <= 1
 Ensures_that_interventions_i_and_i'_do_not_overlap_if_performed_by_the_same_team_on_the_same_day_(2,_3):
   y(2,_3,_2) + y(3,_3,_2) - h(2,_3) - h(3,_2) <= 1
 Ensures_that_interventions_i_and_i'_do_not_overlap_if_performed_by_the_same_team_on_the_same_day_(2,_3):
   y(2,_3,_3) + y(3,_3,_3) - h(2,_3) - h(3,_2) <= 1
 Ensures_that_interventions_i_and_i'_do_not_overlap_if_performed_by_the_same_team_on_the_same_day_(2,_3):
   y(2,_3,_4) + y(3,_3,_4) - h(2,_3) - h(3,_2) <= 1
 Ensures_that_interventions_i_and_i'_do_not_overlap_if_performed_by_the_same_team_on_the_same_day_(2,_3):
   y(2,_4,_0) + y(3,_4,_0) - h(2,_3) - h(3,_2) <= 1
 Ensures_that_interventions_i_and_i'_do_not_overlap_if_performed_by_the_same_team_on_the_same_day_(2,_3):
   y(2,_4,_1) + y(3,_4,_1) - h(2,_3) - h(3,_2) <= 1
 Ensures_that_interventions_i_and_i'_do_not_overlap_if_performed_by_the_same_team_on_the_same_day_(2,_3):
   y(2,_4,_2) + y(3,_4,_2) - h(2,_3) - h(3,_2) <= 1
 Ensures_that_interventions_i_and_i'_do_not_overlap_if_performed_by_the_same_team_on_the_same_day_(2,_3):
   y(2,_4,_3) + y(3,_4,_3) - h(2,_3) - h(3,_2) <= 1
 Ensures_that_interventions_i_and_i'_do_not_overlap_if_performed_by_the_same_team_on_the_same_day_(2,_3):
   y(2,_4,_4) + y(3,_4,_4) - h(2,_3) - h(3,_2) <= 1
 Ensures_that_interventions_i_and_i'_do_not_overlap_if_performed_by_the_same_team_on_the_same_day_(2,_4):
   y(2,_0,_0) + y(4,_0,_0) - h(2,_4) - h(4,_2) <= 1
 Ensures_that_interventions_i_and_i'_do_not_overlap_if_performed_by_the_same_team_on_the_same_day_(2,_4):
   y(2,_0,_1) + y(4,_0,_1) - h(2,_4) - h(4,_2) <= 1
 Ensures_that_interventions_i_and_i'_do_not_overlap_if_performed_by_the_same_team_on_the_same_day_(2,_4):
   y(2,_0,_2) + y(4,_0,_2) - h(2,_4) - h(4,_2) <= 1
 Ensures_that_interventions_i_and_i'_do_not_overlap_if_performed_by_the_same_team_on_the_same_day_(2,_4):
   y(2,_0,_3) + y(4,_0,_3) - h(2,_4) - h(4,_2) <= 1
 Ensures_that_interventions_i_and_i'_do_not_overlap_if_performed_by_the_same_team_on_the_same_day_(2,_4):
   y(2,_0,_4) + y(4,_0,_4) - h(2,_4) - h(4,_2) <= 1
 Ensures_that_interventions_i_and_i'_do_not_overlap_if_performed_by_the_same_team_on_the_same_day_(2,_4):
   y(2,_1,_0) + y(4,_1,_0) - h(2,_4) - h(4,_2) <= 1
 Ensures_that_interventions_i_and_i'_do_not_overlap_if_performed_by_the_same_team_on_the_same_day_(2,_4):
   y(2,_1,_1) + y(4,_1,_1) - h(2,_4) - h(4,_2) <= 1
 Ensures_that_interventions_i_and_i'_do_not_overlap_if_performed_by_the_same_team_on_the_same_day_(2,_4):
   y(2,_1,_2) + y(4,_1,_2) - h(2,_4) - h(4,_2) <= 1
 Ensures_that_interventions_i_and_i'_do_not_overlap_if_performed_by_the_same_team_on_the_same_day_(2,_4):
   y(2,_1,_3) + y(4,_1,_3) - h(2,_4) - h(4,_2) <= 1
 Ensures_that_interventions_i_and_i'_do_not_overlap_if_performed_by_the_same_team_on_the_same_day_(2,_4):
   y(2,_1,_4) + y(4,_1,_4) - h(2,_4) - h(4,_2) <= 1
 Ensures_that_interventions_i_and_i'_do_not_overlap_if_performed_by_the_same_team_on_the_same_day_(2,_4):
   y(2,_2,_0) + y(4,_2,_0) - h(2,_4) - h(4,_2) <= 1
 Ensures_that_interventions_i_and_i'_do_not_overlap_if_performed_by_the_same_team_on_the_same_day_(2,_4):
   y(2,_2,_1) + y(4,_2,_1) - h(2,_4) - h(4,_2) <= 1
 Ensures_that_interventions_i_and_i'_do_not_overlap_if_performed_by_the_same_team_on_the_same_day_(2,_4):
   y(2,_2,_2) + y(4,_2,_2) - h(2,_4) - h(4,_2) <= 1
 Ensures_that_interventions_i_and_i'_do_not_overlap_if_performed_by_the_same_team_on_the_same_day_(2,_4):
   y(2,_2,_3) + y(4,_2,_3) - h(2,_4) - h(4,_2) <= 1
 Ensures_that_interventions_i_and_i'_do_not_overlap_if_performed_by_the_same_team_on_the_same_day_(2,_4):
   y(2,_2,_4) + y(4,_2,_4) - h(2,_4) - h(4,_2) <= 1
 Ensures_that_interventions_i_and_i'_do_not_overlap_if_performed_by_the_same_team_on_the_same_day_(2,_4):
   y(2,_3,_0) + y(4,_3,_0) - h(2,_4) - h(4,_2) <= 1
 Ensures_that_interventions_i_and_i'_do_not_overlap_if_performed_by_the_same_team_on_the_same_day_(2,_4):
   y(2,_3,_1) + y(4,_3,_1) - h(2,_4) - h(4,_2) <= 1
 Ensures_that_interventions_i_and_i'_do_not_overlap_if_performed_by_the_same_team_on_the_same_day_(2,_4):
   y(2,_3,_2) + y(4,_3,_2) - h(2,_4) - h(4,_2) <= 1
 Ensures_that_interventions_i_and_i'_do_not_overlap_if_performed_by_the_same_team_on_the_same_day_(2,_4):
   y(2,_3,_3) + y(4,_3,_3) - h(2,_4) - h(4,_2) <= 1
 Ensures_that_interventions_i_and_i'_do_not_overlap_if_performed_by_the_same_team_on_the_same_day_(2,_4):
   y(2,_3,_4) + y(4,_3,_4) - h(2,_4) - h(4,_2) <= 1
 Ensures_that_interventions_i_and_i'_do_not_overlap_if_performed_by_the_same_team_on_the_same_day_(2,_4):
   y(2,_4,_0) + y(4,_4,_0) - h(2,_4) - h(4,_2) <= 1
 Ensures_that_interventions_i_and_i'_do_not_overlap_if_performed_by_the_same_team_on_the_same_day_(2,_4):
   y(2,_4,_1) + y(4,_4,_1) - h(2,_4) - h(4,_2) <= 1
 Ensures_that_interventions_i_and_i'_do_not_overlap_if_performed_by_the_same_team_on_the_same_day_(2,_4):
   y(2,_4,_2) + y(4,_4,_2) - h(2,_4) - h(4,_2) <= 1
 Ensures_that_interventions_i_and_i'_do_not_overlap_if_performed_by_the_same_team_on_the_same_day_(2,_4):
   y(2,_4,_3) + y(4,_4,_3) - h(2,_4) - h(4,_2) <= 1
 Ensures_that_interventions_i_and_i'_do_not_overlap_if_performed_by_the_same_team_on_the_same_day_(2,_4):
   y(2,_4,_4) + y(4,_4,_4) - h(2,_4) - h(4,_2) <= 1
 Ensures_that_interventions_i_and_i'_do_not_overlap_if_performed_by_the_same_team_on_the_same_day_(3,_0):
   y(0,_0,_0) + y(3,_0,_0) - h(0,_3) - h(3,_0) <= 1
 Ensures_that_interventions_i_and_i'_do_not_overlap_if_performed_by_the_same_team_on_the_same_day_(3,_0):
   y(0,_0,_1) + y(3,_0,_1) - h(0,_3) - h(3,_0) <= 1
 Ensures_that_interventions_i_and_i'_do_not_overlap_if_performed_by_the_same_team_on_the_same_day_(3,_0):
   y(0,_0,_2) + y(3,_0,_2) - h(0,_3) - h(3,_0) <= 1
 Ensures_that_interventions_i_and_i'_do_not_overlap_if_performed_by_the_same_team_on_the_same_day_(3,_0):
   y(0,_0,_3) + y(3,_0,_3) - h(0,_3) - h(3,_0) <= 1
 Ensures_that_interventions_i_and_i'_do_not_overlap_if_performed_by_the_same_team_on_the_same_day_(3,_0):
   y(0,_0,_4) + y(3,_0,_4) - h(0,_3) - h(3,_0) <= 1
 Ensures_that_interventions_i_and_i'_do_not_overlap_if_performed_by_the_same_team_on_the_same_day_(3,_0):
   y(0,_1,_0) + y(3,_1,_0) - h(0,_3) - h(3,_0) <= 1
 Ensures_that_interventions_i_and_i'_do_not_overlap_if_performed_by_the_same_team_on_the_same_day_(3,_0):
   y(0,_1,_1) + y(3,_1,_1) - h(0,_3) - h(3,_0) <= 1
 Ensures_that_interventions_i_and_i'_do_not_overlap_if_performed_by_the_same_team_on_the_same_day_(3,_0):
   y(0,_1,_2) + y(3,_1,_2) - h(0,_3) - h(3,_0) <= 1
 Ensures_that_interventions_i_and_i'_do_not_overlap_if_performed_by_the_same_team_on_the_same_day_(3,_0):
   y(0,_1,_3) + y(3,_1,_3) - h(0,_3) - h(3,_0) <= 1
 Ensures_that_interventions_i_and_i'_do_not_overlap_if_performed_by_the_same_team_on_the_same_day_(3,_0):
   y(0,_1,_4) + y(3,_1,_4) - h(0,_3) - h(3,_0) <= 1
 Ensures_that_interventions_i_and_i'_do_not_overlap_if_performed_by_the_same_team_on_the_same_day_(3,_0):
   y(0,_2,_0) + y(3,_2,_0) - h(0,_3) - h(3,_0) <= 1
 Ensures_that_interventions_i_and_i'_do_not_overlap_if_performed_by_the_same_team_on_the_same_day_(3,_0):
   y(0,_2,_1) + y(3,_2,_1) - h(0,_3) - h(3,_0) <= 1
 Ensures_that_interventions_i_and_i'_do_not_overlap_if_performed_by_the_same_team_on_the_same_day_(3,_0):
   y(0,_2,_2) + y(3,_2,_2) - h(0,_3) - h(3,_0) <= 1
 Ensures_that_interventions_i_and_i'_do_not_overlap_if_performed_by_the_same_team_on_the_same_day_(3,_0):
   y(0,_2,_3) + y(3,_2,_3) - h(0,_3) - h(3,_0) <= 1
 Ensures_that_interventions_i_and_i'_do_not_overlap_if_performed_by_the_same_team_on_the_same_day_(3,_0):
   y(0,_2,_4) + y(3,_2,_4) - h(0,_3) - h(3,_0) <= 1
 Ensures_that_interventions_i_and_i'_do_not_overlap_if_performed_by_the_same_team_on_the_same_day_(3,_0):
   y(0,_3,_0) + y(3,_3,_0) - h(0,_3) - h(3,_0) <= 1
 Ensures_that_interventions_i_and_i'_do_not_overlap_if_performed_by_the_same_team_on_the_same_day_(3,_0):
   y(0,_3,_1) + y(3,_3,_1) - h(0,_3) - h(3,_0) <= 1
 Ensures_that_interventions_i_and_i'_do_not_overlap_if_performed_by_the_same_team_on_the_same_day_(3,_0):
   y(0,_3,_2) + y(3,_3,_2) - h(0,_3) - h(3,_0) <= 1
 Ensures_that_interventions_i_and_i'_do_not_overlap_if_performed_by_the_same_team_on_the_same_day_(3,_0):
   y(0,_3,_3) + y(3,_3,_3) - h(0,_3) - h(3,_0) <= 1
 Ensures_that_interventions_i_and_i'_do_not_overlap_if_performed_by_the_same_team_on_the_same_day_(3,_0):
   y(0,_3,_4) + y(3,_3,_4) - h(0,_3) - h(3,_0) <= 1
 Ensures_that_interventions_i_and_i'_do_not_overlap_if_performed_by_the_same_team_on_the_same_day_(3,_0):
   y(0,_4,_0) + y(3,_4,_0) - h(0,_3) - h(3,_0) <= 1
 Ensures_that_interventions_i_and_i'_do_not_overlap_if_performed_by_the_same_team_on_the_same_day_(3,_0):
   y(0,_4,_1) + y(3,_4,_1) - h(0,_3) - h(3,_0) <= 1
 Ensures_that_interventions_i_and_i'_do_not_overlap_if_performed_by_the_same_team_on_the_same_day_(3,_0):
   y(0,_4,_2) + y(3,_4,_2) - h(0,_3) - h(3,_0) <= 1
 Ensures_that_interventions_i_and_i'_do_not_overlap_if_performed_by_the_same_team_on_the_same_day_(3,_0):
   y(0,_4,_3) + y(3,_4,_3) - h(0,_3) - h(3,_0) <= 1
 Ensures_that_interventions_i_and_i'_do_not_overlap_if_performed_by_the_same_team_on_the_same_day_(3,_0):
   y(0,_4,_4) + y(3,_4,_4) - h(0,_3) - h(3,_0) <= 1
 Ensures_that_interventions_i_and_i'_do_not_overlap_if_performed_by_the_same_team_on_the_same_day_(3,_1):
   y(1,_0,_0) + y(3,_0,_0) - h(1,_3) - h(3,_1) <= 1
 Ensures_that_interventions_i_and_i'_do_not_overlap_if_performed_by_the_same_team_on_the_same_day_(3,_1):
   y(1,_0,_1) + y(3,_0,_1) - h(1,_3) - h(3,_1) <= 1
 Ensures_that_interventions_i_and_i'_do_not_overlap_if_performed_by_the_same_team_on_the_same_day_(3,_1):
   y(1,_0,_2) + y(3,_0,_2) - h(1,_3) - h(3,_1) <= 1
 Ensures_that_interventions_i_and_i'_do_not_overlap_if_performed_by_the_same_team_on_the_same_day_(3,_1):
   y(1,_0,_3) + y(3,_0,_3) - h(1,_3) - h(3,_1) <= 1
 Ensures_that_interventions_i_and_i'_do_not_overlap_if_performed_by_the_same_team_on_the_same_day_(3,_1):
   y(1,_0,_4) + y(3,_0,_4) - h(1,_3) - h(3,_1) <= 1
 Ensures_that_interventions_i_and_i'_do_not_overlap_if_performed_by_the_same_team_on_the_same_day_(3,_1):
   y(1,_1,_0) + y(3,_1,_0) - h(1,_3) - h(3,_1) <= 1
 Ensures_that_interventions_i_and_i'_do_not_overlap_if_performed_by_the_same_team_on_the_same_day_(3,_1):
   y(1,_1,_1) + y(3,_1,_1) - h(1,_3) - h(3,_1) <= 1
 Ensures_that_interventions_i_and_i'_do_not_overlap_if_performed_by_the_same_team_on_the_same_day_(3,_1):
   y(1,_1,_2) + y(3,_1,_2) - h(1,_3) - h(3,_1) <= 1
 Ensures_that_interventions_i_and_i'_do_not_overlap_if_performed_by_the_same_team_on_the_same_day_(3,_1):
   y(1,_1,_3) + y(3,_1,_3) - h(1,_3) - h(3,_1) <= 1
 Ensures_that_interventions_i_and_i'_do_not_overlap_if_performed_by_the_same_team_on_the_same_day_(3,_1):
   y(1,_1,_4) + y(3,_1,_4) - h(1,_3) - h(3,_1) <= 1
 Ensures_that_interventions_i_and_i'_do_not_overlap_if_performed_by_the_same_team_on_the_same_day_(3,_1):
   y(1,_2,_0) + y(3,_2,_0) - h(1,_3) - h(3,_1) <= 1
 Ensures_that_interventions_i_and_i'_do_not_overlap_if_performed_by_the_same_team_on_the_same_day_(3,_1):
   y(1,_2,_1) + y(3,_2,_1) - h(1,_3) - h(3,_1) <= 1
 Ensures_that_interventions_i_and_i'_do_not_overlap_if_performed_by_the_same_team_on_the_same_day_(3,_1):
   y(1,_2,_2) + y(3,_2,_2) - h(1,_3) - h(3,_1) <= 1
 Ensures_that_interventions_i_and_i'_do_not_overlap_if_performed_by_the_same_team_on_the_same_day_(3,_1):
   y(1,_2,_3) + y(3,_2,_3) - h(1,_3) - h(3,_1) <= 1
 Ensures_that_interventions_i_and_i'_do_not_overlap_if_performed_by_the_same_team_on_the_same_day_(3,_1):
   y(1,_2,_4) + y(3,_2,_4) - h(1,_3) - h(3,_1) <= 1
 Ensures_that_interventions_i_and_i'_do_not_overlap_if_performed_by_the_same_team_on_the_same_day_(3,_1):
   y(1,_3,_0) + y(3,_3,_0) - h(1,_3) - h(3,_1) <= 1
 Ensures_that_interventions_i_and_i'_do_not_overlap_if_performed_by_the_same_team_on_the_same_day_(3,_1):
   y(1,_3,_1) + y(3,_3,_1) - h(1,_3) - h(3,_1) <= 1
 Ensures_that_interventions_i_and_i'_do_not_overlap_if_performed_by_the_same_team_on_the_same_day_(3,_1):
   y(1,_3,_2) + y(3,_3,_2) - h(1,_3) - h(3,_1) <= 1
 Ensures_that_interventions_i_and_i'_do_not_overlap_if_performed_by_the_same_team_on_the_same_day_(3,_1):
   y(1,_3,_3) + y(3,_3,_3) - h(1,_3) - h(3,_1) <= 1
 Ensures_that_interventions_i_and_i'_do_not_overlap_if_performed_by_the_same_team_on_the_same_day_(3,_1):
   y(1,_3,_4) + y(3,_3,_4) - h(1,_3) - h(3,_1) <= 1
 Ensures_that_interventions_i_and_i'_do_not_overlap_if_performed_by_the_same_team_on_the_same_day_(3,_1):
   y(1,_4,_0) + y(3,_4,_0) - h(1,_3) - h(3,_1) <= 1
 Ensures_that_interventions_i_and_i'_do_not_overlap_if_performed_by_the_same_team_on_the_same_day_(3,_1):
   y(1,_4,_1) + y(3,_4,_1) - h(1,_3) - h(3,_1) <= 1
 Ensures_that_interventions_i_and_i'_do_not_overlap_if_performed_by_the_same_team_on_the_same_day_(3,_1):
   y(1,_4,_2) + y(3,_4,_2) - h(1,_3) - h(3,_1) <= 1
 Ensures_that_interventions_i_and_i'_do_not_overlap_if_performed_by_the_same_team_on_the_same_day_(3,_1):
   y(1,_4,_3) + y(3,_4,_3) - h(1,_3) - h(3,_1) <= 1
 Ensures_that_interventions_i_and_i'_do_not_overlap_if_performed_by_the_same_team_on_the_same_day_(3,_1):
   y(1,_4,_4) + y(3,_4,_4) - h(1,_3) - h(3,_1) <= 1
 Ensures_that_interventions_i_and_i'_do_not_overlap_if_performed_by_the_same_team_on_the_same_day_(3,_2):
   y(2,_0,_0) + y(3,_0,_0) - h(2,_3) - h(3,_2) <= 1
 Ensures_that_interventions_i_and_i'_do_not_overlap_if_performed_by_the_same_team_on_the_same_day_(3,_2):
   y(2,_0,_1) + y(3,_0,_1) - h(2,_3) - h(3,_2) <= 1
 Ensures_that_interventions_i_and_i'_do_not_overlap_if_performed_by_the_same_team_on_the_same_day_(3,_2):
   y(2,_0,_2) + y(3,_0,_2) - h(2,_3) - h(3,_2) <= 1
 Ensures_that_interventions_i_and_i'_do_not_overlap_if_performed_by_the_same_team_on_the_same_day_(3,_2):
   y(2,_0,_3) + y(3,_0,_3) - h(2,_3) - h(3,_2) <= 1
 Ensures_that_interventions_i_and_i'_do_not_overlap_if_performed_by_the_same_team_on_the_same_day_(3,_2):
   y(2,_0,_4) + y(3,_0,_4) - h(2,_3) - h(3,_2) <= 1
 Ensures_that_interventions_i_and_i'_do_not_overlap_if_performed_by_the_same_team_on_the_same_day_(3,_2):
   y(2,_1,_0) + y(3,_1,_0) - h(2,_3) - h(3,_2) <= 1
 Ensures_that_interventions_i_and_i'_do_not_overlap_if_performed_by_the_same_team_on_the_same_day_(3,_2):
   y(2,_1,_1) + y(3,_1,_1) - h(2,_3) - h(3,_2) <= 1
 Ensures_that_interventions_i_and_i'_do_not_overlap_if_performed_by_the_same_team_on_the_same_day_(3,_2):
   y(2,_1,_2) + y(3,_1,_2) - h(2,_3) - h(3,_2) <= 1
 Ensures_that_interventions_i_and_i'_do_not_overlap_if_performed_by_the_same_team_on_the_same_day_(3,_2):
   y(2,_1,_3) + y(3,_1,_3) - h(2,_3) - h(3,_2) <= 1
 Ensures_that_interventions_i_and_i'_do_not_overlap_if_performed_by_the_same_team_on_the_same_day_(3,_2):
   y(2,_1,_4) + y(3,_1,_4) - h(2,_3) - h(3,_2) <= 1
 Ensures_that_interventions_i_and_i'_do_not_overlap_if_performed_by_the_same_team_on_the_same_day_(3,_2):
   y(2,_2,_0) + y(3,_2,_0) - h(2,_3) - h(3,_2) <= 1
 Ensures_that_interventions_i_and_i'_do_not_overlap_if_performed_by_the_same_team_on_the_same_day_(3,_2):
   y(2,_2,_1) + y(3,_2,_1) - h(2,_3) - h(3,_2) <= 1
 Ensures_that_interventions_i_and_i'_do_not_overlap_if_performed_by_the_same_team_on_the_same_day_(3,_2):
   y(2,_2,_2) + y(3,_2,_2) - h(2,_3) - h(3,_2) <= 1
 Ensures_that_interventions_i_and_i'_do_not_overlap_if_performed_by_the_same_team_on_the_same_day_(3,_2):
   y(2,_2,_3) + y(3,_2,_3) - h(2,_3) - h(3,_2) <= 1
 Ensures_that_interventions_i_and_i'_do_not_overlap_if_performed_by_the_same_team_on_the_same_day_(3,_2):
   y(2,_2,_4) + y(3,_2,_4) - h(2,_3) - h(3,_2) <= 1
 Ensures_that_interventions_i_and_i'_do_not_overlap_if_performed_by_the_same_team_on_the_same_day_(3,_2):
   y(2,_3,_0) + y(3,_3,_0) - h(2,_3) - h(3,_2) <= 1
 Ensures_that_interventions_i_and_i'_do_not_overlap_if_performed_by_the_same_team_on_the_same_day_(3,_2):
   y(2,_3,_1) + y(3,_3,_1) - h(2,_3) - h(3,_2) <= 1
 Ensures_that_interventions_i_and_i'_do_not_overlap_if_performed_by_the_same_team_on_the_same_day_(3,_2):
   y(2,_3,_2) + y(3,_3,_2) - h(2,_3) - h(3,_2) <= 1
 Ensures_that_interventions_i_and_i'_do_not_overlap_if_performed_by_the_same_team_on_the_same_day_(3,_2):
   y(2,_3,_3) + y(3,_3,_3) - h(2,_3) - h(3,_2) <= 1
 Ensures_that_interventions_i_and_i'_do_not_overlap_if_performed_by_the_same_team_on_the_same_day_(3,_2):
   y(2,_3,_4) + y(3,_3,_4) - h(2,_3) - h(3,_2) <= 1
 Ensures_that_interventions_i_and_i'_do_not_overlap_if_performed_by_the_same_team_on_the_same_day_(3,_2):
   y(2,_4,_0) + y(3,_4,_0) - h(2,_3) - h(3,_2) <= 1
 Ensures_that_interventions_i_and_i'_do_not_overlap_if_performed_by_the_same_team_on_the_same_day_(3,_2):
   y(2,_4,_1) + y(3,_4,_1) - h(2,_3) - h(3,_2) <= 1
 Ensures_that_interventions_i_and_i'_do_not_overlap_if_performed_by_the_same_team_on_the_same_day_(3,_2):
   y(2,_4,_2) + y(3,_4,_2) - h(2,_3) - h(3,_2) <= 1
 Ensures_that_interventions_i_and_i'_do_not_overlap_if_performed_by_the_same_team_on_the_same_day_(3,_2):
   y(2,_4,_3) + y(3,_4,_3) - h(2,_3) - h(3,_2) <= 1
 Ensures_that_interventions_i_and_i'_do_not_overlap_if_performed_by_the_same_team_on_the_same_day_(3,_2):
   y(2,_4,_4) + y(3,_4,_4) - h(2,_3) - h(3,_2) <= 1
 Ensures_that_interventions_i_and_i'_do_not_overlap_if_performed_by_the_same_team_on_the_same_day_(3,_4):
   y(3,_0,_0) + y(4,_0,_0) - h(3,_4) - h(4,_3) <= 1
 Ensures_that_interventions_i_and_i'_do_not_overlap_if_performed_by_the_same_team_on_the_same_day_(3,_4):
   y(3,_0,_1) + y(4,_0,_1) - h(3,_4) - h(4,_3) <= 1
 Ensures_that_interventions_i_and_i'_do_not_overlap_if_performed_by_the_same_team_on_the_same_day_(3,_4):
   y(3,_0,_2) + y(4,_0,_2) - h(3,_4) - h(4,_3) <= 1
 Ensures_that_interventions_i_and_i'_do_not_overlap_if_performed_by_the_same_team_on_the_same_day_(3,_4):
   y(3,_0,_3) + y(4,_0,_3) - h(3,_4) - h(4,_3) <= 1
 Ensures_that_interventions_i_and_i'_do_not_overlap_if_performed_by_the_same_team_on_the_same_day_(3,_4):
   y(3,_0,_4) + y(4,_0,_4) - h(3,_4) - h(4,_3) <= 1
 Ensures_that_interventions_i_and_i'_do_not_overlap_if_performed_by_the_same_team_on_the_same_day_(3,_4):
   y(3,_1,_0) + y(4,_1,_0) - h(3,_4) - h(4,_3) <= 1
 Ensures_that_interventions_i_and_i'_do_not_overlap_if_performed_by_the_same_team_on_the_same_day_(3,_4):
   y(3,_1,_1) + y(4,_1,_1) - h(3,_4) - h(4,_3) <= 1
 Ensures_that_interventions_i_and_i'_do_not_overlap_if_performed_by_the_same_team_on_the_same_day_(3,_4):
   y(3,_1,_2) + y(4,_1,_2) - h(3,_4) - h(4,_3) <= 1
 Ensures_that_interventions_i_and_i'_do_not_overlap_if_performed_by_the_same_team_on_the_same_day_(3,_4):
   y(3,_1,_3) + y(4,_1,_3) - h(3,_4) - h(4,_3) <= 1
 Ensures_that_interventions_i_and_i'_do_not_overlap_if_performed_by_the_same_team_on_the_same_day_(3,_4):
   y(3,_1,_4) + y(4,_1,_4) - h(3,_4) - h(4,_3) <= 1
 Ensures_that_interventions_i_and_i'_do_not_overlap_if_performed_by_the_same_team_on_the_same_day_(3,_4):
   y(3,_2,_0) + y(4,_2,_0) - h(3,_4) - h(4,_3) <= 1
 Ensures_that_interventions_i_and_i'_do_not_overlap_if_performed_by_the_same_team_on_the_same_day_(3,_4):
   y(3,_2,_1) + y(4,_2,_1) - h(3,_4) - h(4,_3) <= 1
 Ensures_that_interventions_i_and_i'_do_not_overlap_if_performed_by_the_same_team_on_the_same_day_(3,_4):
   y(3,_2,_2) + y(4,_2,_2) - h(3,_4) - h(4,_3) <= 1
 Ensures_that_interventions_i_and_i'_do_not_overlap_if_performed_by_the_same_team_on_the_same_day_(3,_4):
   y(3,_2,_3) + y(4,_2,_3) - h(3,_4) - h(4,_3) <= 1
 Ensures_that_interventions_i_and_i'_do_not_overlap_if_performed_by_the_same_team_on_the_same_day_(3,_4):
   y(3,_2,_4) + y(4,_2,_4) - h(3,_4) - h(4,_3) <= 1
 Ensures_that_interventions_i_and_i'_do_not_overlap_if_performed_by_the_same_team_on_the_same_day_(3,_4):
   y(3,_3,_0) + y(4,_3,_0) - h(3,_4) - h(4,_3) <= 1
 Ensures_that_interventions_i_and_i'_do_not_overlap_if_performed_by_the_same_team_on_the_same_day_(3,_4):
   y(3,_3,_1) + y(4,_3,_1) - h(3,_4) - h(4,_3) <= 1
 Ensures_that_interventions_i_and_i'_do_not_overlap_if_performed_by_the_same_team_on_the_same_day_(3,_4):
   y(3,_3,_2) + y(4,_3,_2) - h(3,_4) - h(4,_3) <= 1
 Ensures_that_interventions_i_and_i'_do_not_overlap_if_performed_by_the_same_team_on_the_same_day_(3,_4):
   y(3,_3,_3) + y(4,_3,_3) - h(3,_4) - h(4,_3) <= 1
 Ensures_that_interventions_i_and_i'_do_not_overlap_if_performed_by_the_same_team_on_the_same_day_(3,_4):
   y(3,_3,_4) + y(4,_3,_4) - h(3,_4) - h(4,_3) <= 1
 Ensures_that_interventions_i_and_i'_do_not_overlap_if_performed_by_the_same_team_on_the_same_day_(3,_4):
   y(3,_4,_0) + y(4,_4,_0) - h(3,_4) - h(4,_3) <= 1
 Ensures_that_interventions_i_and_i'_do_not_overlap_if_performed_by_the_same_team_on_the_same_day_(3,_4):
   y(3,_4,_1) + y(4,_4,_1) - h(3,_4) - h(4,_3) <= 1
 Ensures_that_interventions_i_and_i'_do_not_overlap_if_performed_by_the_same_team_on_the_same_day_(3,_4):
   y(3,_4,_2) + y(4,_4,_2) - h(3,_4) - h(4,_3) <= 1
 Ensures_that_interventions_i_and_i'_do_not_overlap_if_performed_by_the_same_team_on_the_same_day_(3,_4):
   y(3,_4,_3) + y(4,_4,_3) - h(3,_4) - h(4,_3) <= 1
 Ensures_that_interventions_i_and_i'_do_not_overlap_if_performed_by_the_same_team_on_the_same_day_(3,_4):
   y(3,_4,_4) + y(4,_4,_4) - h(3,_4) - h(4,_3) <= 1
 Ensures_that_interventions_i_and_i'_do_not_overlap_if_performed_by_the_same_team_on_the_same_day_(4,_0):
   y(0,_0,_0) + y(4,_0,_0) - h(0,_4) - h(4,_0) <= 1
 Ensures_that_interventions_i_and_i'_do_not_overlap_if_performed_by_the_same_team_on_the_same_day_(4,_0):
   y(0,_0,_1) + y(4,_0,_1) - h(0,_4) - h(4,_0) <= 1
 Ensures_that_interventions_i_and_i'_do_not_overlap_if_performed_by_the_same_team_on_the_same_day_(4,_0):
   y(0,_0,_2) + y(4,_0,_2) - h(0,_4) - h(4,_0) <= 1
 Ensures_that_interventions_i_and_i'_do_not_overlap_if_performed_by_the_same_team_on_the_same_day_(4,_0):
   y(0,_0,_3) + y(4,_0,_3) - h(0,_4) - h(4,_0) <= 1
 Ensures_that_interventions_i_and_i'_do_not_overlap_if_performed_by_the_same_team_on_the_same_day_(4,_0):
   y(0,_0,_4) + y(4,_0,_4) - h(0,_4) - h(4,_0) <= 1
 Ensures_that_interventions_i_and_i'_do_not_overlap_if_performed_by_the_same_team_on_the_same_day_(4,_0):
   y(0,_1,_0) + y(4,_1,_0) - h(0,_4) - h(4,_0) <= 1
 Ensures_that_interventions_i_and_i'_do_not_overlap_if_performed_by_the_same_team_on_the_same_day_(4,_0):
   y(0,_1,_1) + y(4,_1,_1) - h(0,_4) - h(4,_0) <= 1
 Ensures_that_interventions_i_and_i'_do_not_overlap_if_performed_by_the_same_team_on_the_same_day_(4,_0):
   y(0,_1,_2) + y(4,_1,_2) - h(0,_4) - h(4,_0) <= 1
 Ensures_that_interventions_i_and_i'_do_not_overlap_if_performed_by_the_same_team_on_the_same_day_(4,_0):
   y(0,_1,_3) + y(4,_1,_3) - h(0,_4) - h(4,_0) <= 1
 Ensures_that_interventions_i_and_i'_do_not_overlap_if_performed_by_the_same_team_on_the_same_day_(4,_0):
   y(0,_1,_4) + y(4,_1,_4) - h(0,_4) - h(4,_0) <= 1
 Ensures_that_interventions_i_and_i'_do_not_overlap_if_performed_by_the_same_team_on_the_same_day_(4,_0):
   y(0,_2,_0) + y(4,_2,_0) - h(0,_4) - h(4,_0) <= 1
 Ensures_that_interventions_i_and_i'_do_not_overlap_if_performed_by_the_same_team_on_the_same_day_(4,_0):
   y(0,_2,_1) + y(4,_2,_1) - h(0,_4) - h(4,_0) <= 1
 Ensures_that_interventions_i_and_i'_do_not_overlap_if_performed_by_the_same_team_on_the_same_day_(4,_0):
   y(0,_2,_2) + y(4,_2,_2) - h(0,_4) - h(4,_0) <= 1
 Ensures_that_interventions_i_and_i'_do_not_overlap_if_performed_by_the_same_team_on_the_same_day_(4,_0):
   y(0,_2,_3) + y(4,_2,_3) - h(0,_4) - h(4,_0) <= 1
 Ensures_that_interventions_i_and_i'_do_not_overlap_if_performed_by_the_same_team_on_the_same_day_(4,_0):
   y(0,_2,_4) + y(4,_2,_4) - h(0,_4) - h(4,_0) <= 1
 Ensures_that_interventions_i_and_i'_do_not_overlap_if_performed_by_the_same_team_on_the_same_day_(4,_0):
   y(0,_3,_0) + y(4,_3,_0) - h(0,_4) - h(4,_0) <= 1
 Ensures_that_interventions_i_and_i'_do_not_overlap_if_performed_by_the_same_team_on_the_same_day_(4,_0):
   y(0,_3,_1) + y(4,_3,_1) - h(0,_4) - h(4,_0) <= 1
 Ensures_that_interventions_i_and_i'_do_not_overlap_if_performed_by_the_same_team_on_the_same_day_(4,_0):
   y(0,_3,_2) + y(4,_3,_2) - h(0,_4) - h(4,_0) <= 1
 Ensures_that_interventions_i_and_i'_do_not_overlap_if_performed_by_the_same_team_on_the_same_day_(4,_0):
   y(0,_3,_3) + y(4,_3,_3) - h(0,_4) - h(4,_0) <= 1
 Ensures_that_interventions_i_and_i'_do_not_overlap_if_performed_by_the_same_team_on_the_same_day_(4,_0):
   y(0,_3,_4) + y(4,_3,_4) - h(0,_4) - h(4,_0) <= 1
 Ensures_that_interventions_i_and_i'_do_not_overlap_if_performed_by_the_same_team_on_the_same_day_(4,_0):
   y(0,_4,_0) + y(4,_4,_0) - h(0,_4) - h(4,_0) <= 1
 Ensures_that_interventions_i_and_i'_do_not_overlap_if_performed_by_the_same_team_on_the_same_day_(4,_0):
   y(0,_4,_1) + y(4,_4,_1) - h(0,_4) - h(4,_0) <= 1
 Ensures_that_interventions_i_and_i'_do_not_overlap_if_performed_by_the_same_team_on_the_same_day_(4,_0):
   y(0,_4,_2) + y(4,_4,_2) - h(0,_4) - h(4,_0) <= 1
 Ensures_that_interventions_i_and_i'_do_not_overlap_if_performed_by_the_same_team_on_the_same_day_(4,_0):
   y(0,_4,_3) + y(4,_4,_3) - h(0,_4) - h(4,_0) <= 1
 Ensures_that_interventions_i_and_i'_do_not_overlap_if_performed_by_the_same_team_on_the_same_day_(4,_0):
   y(0,_4,_4) + y(4,_4,_4) - h(0,_4) - h(4,_0) <= 1
 Ensures_that_interventions_i_and_i'_do_not_overlap_if_performed_by_the_same_team_on_the_same_day_(4,_1):
   y(1,_0,_0) + y(4,_0,_0) - h(1,_4) - h(4,_1) <= 1
 Ensures_that_interventions_i_and_i'_do_not_overlap_if_performed_by_the_same_team_on_the_same_day_(4,_1):
   y(1,_0,_1) + y(4,_0,_1) - h(1,_4) - h(4,_1) <= 1
 Ensures_that_interventions_i_and_i'_do_not_overlap_if_performed_by_the_same_team_on_the_same_day_(4,_1):
   y(1,_0,_2) + y(4,_0,_2) - h(1,_4) - h(4,_1) <= 1
 Ensures_that_interventions_i_and_i'_do_not_overlap_if_performed_by_the_same_team_on_the_same_day_(4,_1):
   y(1,_0,_3) + y(4,_0,_3) - h(1,_4) - h(4,_1) <= 1
 Ensures_that_interventions_i_and_i'_do_not_overlap_if_performed_by_the_same_team_on_the_same_day_(4,_1):
   y(1,_0,_4) + y(4,_0,_4) - h(1,_4) - h(4,_1) <= 1
 Ensures_that_interventions_i_and_i'_do_not_overlap_if_performed_by_the_same_team_on_the_same_day_(4,_1):
   y(1,_1,_0) + y(4,_1,_0) - h(1,_4) - h(4,_1) <= 1
 Ensures_that_interventions_i_and_i'_do_not_overlap_if_performed_by_the_same_team_on_the_same_day_(4,_1):
   y(1,_1,_1) + y(4,_1,_1) - h(1,_4) - h(4,_1) <= 1
 Ensures_that_interventions_i_and_i'_do_not_overlap_if_performed_by_the_same_team_on_the_same_day_(4,_1):
   y(1,_1,_2) + y(4,_1,_2) - h(1,_4) - h(4,_1) <= 1
 Ensures_that_interventions_i_and_i'_do_not_overlap_if_performed_by_the_same_team_on_the_same_day_(4,_1):
   y(1,_1,_3) + y(4,_1,_3) - h(1,_4) - h(4,_1) <= 1
 Ensures_that_interventions_i_and_i'_do_not_overlap_if_performed_by_the_same_team_on_the_same_day_(4,_1):
   y(1,_1,_4) + y(4,_1,_4) - h(1,_4) - h(4,_1) <= 1
 Ensures_that_interventions_i_and_i'_do_not_overlap_if_performed_by_the_same_team_on_the_same_day_(4,_1):
   y(1,_2,_0) + y(4,_2,_0) - h(1,_4) - h(4,_1) <= 1
 Ensures_that_interventions_i_and_i'_do_not_overlap_if_performed_by_the_same_team_on_the_same_day_(4,_1):
   y(1,_2,_1) + y(4,_2,_1) - h(1,_4) - h(4,_1) <= 1
 Ensures_that_interventions_i_and_i'_do_not_overlap_if_performed_by_the_same_team_on_the_same_day_(4,_1):
   y(1,_2,_2) + y(4,_2,_2) - h(1,_4) - h(4,_1) <= 1
 Ensures_that_interventions_i_and_i'_do_not_overlap_if_performed_by_the_same_team_on_the_same_day_(4,_1):
   y(1,_2,_3) + y(4,_2,_3) - h(1,_4) - h(4,_1) <= 1
 Ensures_that_interventions_i_and_i'_do_not_overlap_if_performed_by_the_same_team_on_the_same_day_(4,_1):
   y(1,_2,_4) + y(4,_2,_4) - h(1,_4) - h(4,_1) <= 1
 Ensures_that_interventions_i_and_i'_do_not_overlap_if_performed_by_the_same_team_on_the_same_day_(4,_1):
   y(1,_3,_0) + y(4,_3,_0) - h(1,_4) - h(4,_1) <= 1
 Ensures_that_interventions_i_and_i'_do_not_overlap_if_performed_by_the_same_team_on_the_same_day_(4,_1):
   y(1,_3,_1) + y(4,_3,_1) - h(1,_4) - h(4,_1) <= 1
 Ensures_that_interventions_i_and_i'_do_not_overlap_if_performed_by_the_same_team_on_the_same_day_(4,_1):
   y(1,_3,_2) + y(4,_3,_2) - h(1,_4) - h(4,_1) <= 1
 Ensures_that_interventions_i_and_i'_do_not_overlap_if_performed_by_the_same_team_on_the_same_day_(4,_1):
   y(1,_3,_3) + y(4,_3,_3) - h(1,_4) - h(4,_1) <= 1
 Ensures_that_interventions_i_and_i'_do_not_overlap_if_performed_by_the_same_team_on_the_same_day_(4,_1):
   y(1,_3,_4) + y(4,_3,_4) - h(1,_4) - h(4,_1) <= 1
 Ensures_that_interventions_i_and_i'_do_not_overlap_if_performed_by_the_same_team_on_the_same_day_(4,_1):
   y(1,_4,_0) + y(4,_4,_0) - h(1,_4) - h(4,_1) <= 1
 Ensures_that_interventions_i_and_i'_do_not_overlap_if_performed_by_the_same_team_on_the_same_day_(4,_1):
   y(1,_4,_1) + y(4,_4,_1) - h(1,_4) - h(4,_1) <= 1
 Ensures_that_interventions_i_and_i'_do_not_overlap_if_performed_by_the_same_team_on_the_same_day_(4,_1):
   y(1,_4,_2) + y(4,_4,_2) - h(1,_4) - h(4,_1) <= 1
 Ensures_that_interventions_i_and_i'_do_not_overlap_if_performed_by_the_same_team_on_the_same_day_(4,_1):
   y(1,_4,_3) + y(4,_4,_3) - h(1,_4) - h(4,_1) <= 1
 Ensures_that_interventions_i_and_i'_do_not_overlap_if_performed_by_the_same_team_on_the_same_day_(4,_1):
   y(1,_4,_4) + y(4,_4,_4) - h(1,_4) - h(4,_1) <= 1
 Ensures_that_interventions_i_and_i'_do_not_overlap_if_performed_by_the_same_team_on_the_same_day_(4,_2):
   y(2,_0,_0) + y(4,_0,_0) - h(2,_4) - h(4,_2) <= 1
 Ensures_that_interventions_i_and_i'_do_not_overlap_if_performed_by_the_same_team_on_the_same_day_(4,_2):
   y(2,_0,_1) + y(4,_0,_1) - h(2,_4) - h(4,_2) <= 1
 Ensures_that_interventions_i_and_i'_do_not_overlap_if_performed_by_the_same_team_on_the_same_day_(4,_2):
   y(2,_0,_2) + y(4,_0,_2) - h(2,_4) - h(4,_2) <= 1
 Ensures_that_interventions_i_and_i'_do_not_overlap_if_performed_by_the_same_team_on_the_same_day_(4,_2):
   y(2,_0,_3) + y(4,_0,_3) - h(2,_4) - h(4,_2) <= 1
 Ensures_that_interventions_i_and_i'_do_not_overlap_if_performed_by_the_same_team_on_the_same_day_(4,_2):
   y(2,_0,_4) + y(4,_0,_4) - h(2,_4) - h(4,_2) <= 1
 Ensures_that_interventions_i_and_i'_do_not_overlap_if_performed_by_the_same_team_on_the_same_day_(4,_2):
   y(2,_1,_0) + y(4,_1,_0) - h(2,_4) - h(4,_2) <= 1
 Ensures_that_interventions_i_and_i'_do_not_overlap_if_performed_by_the_same_team_on_the_same_day_(4,_2):
   y(2,_1,_1) + y(4,_1,_1) - h(2,_4) - h(4,_2) <= 1
 Ensures_that_interventions_i_and_i'_do_not_overlap_if_performed_by_the_same_team_on_the_same_day_(4,_2):
   y(2,_1,_2) + y(4,_1,_2) - h(2,_4) - h(4,_2) <= 1
 Ensures_that_interventions_i_and_i'_do_not_overlap_if_performed_by_the_same_team_on_the_same_day_(4,_2):
   y(2,_1,_3) + y(4,_1,_3) - h(2,_4) - h(4,_2) <= 1
 Ensures_that_interventions_i_and_i'_do_not_overlap_if_performed_by_the_same_team_on_the_same_day_(4,_2):
   y(2,_1,_4) + y(4,_1,_4) - h(2,_4) - h(4,_2) <= 1
 Ensures_that_interventions_i_and_i'_do_not_overlap_if_performed_by_the_same_team_on_the_same_day_(4,_2):
   y(2,_2,_0) + y(4,_2,_0) - h(2,_4) - h(4,_2) <= 1
 Ensures_that_interventions_i_and_i'_do_not_overlap_if_performed_by_the_same_team_on_the_same_day_(4,_2):
   y(2,_2,_1) + y(4,_2,_1) - h(2,_4) - h(4,_2) <= 1
 Ensures_that_interventions_i_and_i'_do_not_overlap_if_performed_by_the_same_team_on_the_same_day_(4,_2):
   y(2,_2,_2) + y(4,_2,_2) - h(2,_4) - h(4,_2) <= 1
 Ensures_that_interventions_i_and_i'_do_not_overlap_if_performed_by_the_same_team_on_the_same_day_(4,_2):
   y(2,_2,_3) + y(4,_2,_3) - h(2,_4) - h(4,_2) <= 1
 Ensures_that_interventions_i_and_i'_do_not_overlap_if_performed_by_the_same_team_on_the_same_day_(4,_2):
   y(2,_2,_4) + y(4,_2,_4) - h(2,_4) - h(4,_2) <= 1
 Ensures_that_interventions_i_and_i'_do_not_overlap_if_performed_by_the_same_team_on_the_same_day_(4,_2):
   y(2,_3,_0) + y(4,_3,_0) - h(2,_4) - h(4,_2) <= 1
 Ensures_that_interventions_i_and_i'_do_not_overlap_if_performed_by_the_same_team_on_the_same_day_(4,_2):
   y(2,_3,_1) + y(4,_3,_1) - h(2,_4) - h(4,_2) <= 1
 Ensures_that_interventions_i_and_i'_do_not_overlap_if_performed_by_the_same_team_on_the_same_day_(4,_2):
   y(2,_3,_2) + y(4,_3,_2) - h(2,_4) - h(4,_2) <= 1
 Ensures_that_interventions_i_and_i'_do_not_overlap_if_performed_by_the_same_team_on_the_same_day_(4,_2):
   y(2,_3,_3) + y(4,_3,_3) - h(2,_4) - h(4,_2) <= 1
 Ensures_that_interventions_i_and_i'_do_not_overlap_if_performed_by_the_same_team_on_the_same_day_(4,_2):
   y(2,_3,_4) + y(4,_3,_4) - h(2,_4) - h(4,_2) <= 1
 Ensures_that_interventions_i_and_i'_do_not_overlap_if_performed_by_the_same_team_on_the_same_day_(4,_2):
   y(2,_4,_0) + y(4,_4,_0) - h(2,_4) - h(4,_2) <= 1
 Ensures_that_interventions_i_and_i'_do_not_overlap_if_performed_by_the_same_team_on_the_same_day_(4,_2):
   y(2,_4,_1) + y(4,_4,_1) - h(2,_4) - h(4,_2) <= 1
 Ensures_that_interventions_i_and_i'_do_not_overlap_if_performed_by_the_same_team_on_the_same_day_(4,_2):
   y(2,_4,_2) + y(4,_4,_2) - h(2,_4) - h(4,_2) <= 1
 Ensures_that_interventions_i_and_i'_do_not_overlap_if_performed_by_the_same_team_on_the_same_day_(4,_2):
   y(2,_4,_3) + y(4,_4,_3) - h(2,_4) - h(4,_2) <= 1
 Ensures_that_interventions_i_and_i'_do_not_overlap_if_performed_by_the_same_team_on_the_same_day_(4,_2):
   y(2,_4,_4) + y(4,_4,_4) - h(2,_4) - h(4,_2) <= 1
 Ensures_that_interventions_i_and_i'_do_not_overlap_if_performed_by_the_same_team_on_the_same_day_(4,_3):
   y(3,_0,_0) + y(4,_0,_0) - h(3,_4) - h(4,_3) <= 1
 Ensures_that_interventions_i_and_i'_do_not_overlap_if_performed_by_the_same_team_on_the_same_day_(4,_3):
   y(3,_0,_1) + y(4,_0,_1) - h(3,_4) - h(4,_3) <= 1
 Ensures_that_interventions_i_and_i'_do_not_overlap_if_performed_by_the_same_team_on_the_same_day_(4,_3):
   y(3,_0,_2) + y(4,_0,_2) - h(3,_4) - h(4,_3) <= 1
 Ensures_that_interventions_i_and_i'_do_not_overlap_if_performed_by_the_same_team_on_the_same_day_(4,_3):
   y(3,_0,_3) + y(4,_0,_3) - h(3,_4) - h(4,_3) <= 1
 Ensures_that_interventions_i_and_i'_do_not_overlap_if_performed_by_the_same_team_on_the_same_day_(4,_3):
   y(3,_0,_4) + y(4,_0,_4) - h(3,_4) - h(4,_3) <= 1
 Ensures_that_interventions_i_and_i'_do_not_overlap_if_performed_by_the_same_team_on_the_same_day_(4,_3):
   y(3,_1,_0) + y(4,_1,_0) - h(3,_4) - h(4,_3) <= 1
 Ensures_that_interventions_i_and_i'_do_not_overlap_if_performed_by_the_same_team_on_the_same_day_(4,_3):
   y(3,_1,_1) + y(4,_1,_1) - h(3,_4) - h(4,_3) <= 1
 Ensures_that_interventions_i_and_i'_do_not_overlap_if_performed_by_the_same_team_on_the_same_day_(4,_3):
   y(3,_1,_2) + y(4,_1,_2) - h(3,_4) - h(4,_3) <= 1
 Ensures_that_interventions_i_and_i'_do_not_overlap_if_performed_by_the_same_team_on_the_same_day_(4,_3):
   y(3,_1,_3) + y(4,_1,_3) - h(3,_4) - h(4,_3) <= 1
 Ensures_that_interventions_i_and_i'_do_not_overlap_if_performed_by_the_same_team_on_the_same_day_(4,_3):
   y(3,_1,_4) + y(4,_1,_4) - h(3,_4) - h(4,_3) <= 1
 Ensures_that_interventions_i_and_i'_do_not_overlap_if_performed_by_the_same_team_on_the_same_day_(4,_3):
   y(3,_2,_0) + y(4,_2,_0) - h(3,_4) - h(4,_3) <= 1
 Ensures_that_interventions_i_and_i'_do_not_overlap_if_performed_by_the_same_team_on_the_same_day_(4,_3):
   y(3,_2,_1) + y(4,_2,_1) - h(3,_4) - h(4,_3) <= 1
 Ensures_that_interventions_i_and_i'_do_not_overlap_if_performed_by_the_same_team_on_the_same_day_(4,_3):
   y(3,_2,_2) + y(4,_2,_2) - h(3,_4) - h(4,_3) <= 1
 Ensures_that_interventions_i_and_i'_do_not_overlap_if_performed_by_the_same_team_on_the_same_day_(4,_3):
   y(3,_2,_3) + y(4,_2,_3) - h(3,_4) - h(4,_3) <= 1
 Ensures_that_interventions_i_and_i'_do_not_overlap_if_performed_by_the_same_team_on_the_same_day_(4,_3):
   y(3,_2,_4) + y(4,_2,_4) - h(3,_4) - h(4,_3) <= 1
 Ensures_that_interventions_i_and_i'_do_not_overlap_if_performed_by_the_same_team_on_the_same_day_(4,_3):
   y(3,_3,_0) + y(4,_3,_0) - h(3,_4) - h(4,_3) <= 1
 Ensures_that_interventions_i_and_i'_do_not_overlap_if_performed_by_the_same_team_on_the_same_day_(4,_3):
   y(3,_3,_1) + y(4,_3,_1) - h(3,_4) - h(4,_3) <= 1
 Ensures_that_interventions_i_and_i'_do_not_overlap_if_performed_by_the_same_team_on_the_same_day_(4,_3):
   y(3,_3,_2) + y(4,_3,_2) - h(3,_4) - h(4,_3) <= 1
 Ensures_that_interventions_i_and_i'_do_not_overlap_if_performed_by_the_same_team_on_the_same_day_(4,_3):
   y(3,_3,_3) + y(4,_3,_3) - h(3,_4) - h(4,_3) <= 1
 Ensures_that_interventions_i_and_i'_do_not_overlap_if_performed_by_the_same_team_on_the_same_day_(4,_3):
   y(3,_3,_4) + y(4,_3,_4) - h(3,_4) - h(4,_3) <= 1
 Ensures_that_interventions_i_and_i'_do_not_overlap_if_performed_by_the_same_team_on_the_same_day_(4,_3):
   y(3,_4,_0) + y(4,_4,_0) - h(3,_4) - h(4,_3) <= 1
 Ensures_that_interventions_i_and_i'_do_not_overlap_if_performed_by_the_same_team_on_the_same_day_(4,_3):
   y(3,_4,_1) + y(4,_4,_1) - h(3,_4) - h(4,_3) <= 1
 Ensures_that_interventions_i_and_i'_do_not_overlap_if_performed_by_the_same_team_on_the_same_day_(4,_3):
   y(3,_4,_2) + y(4,_4,_2) - h(3,_4) - h(4,_3) <= 1
 Ensures_that_interventions_i_and_i'_do_not_overlap_if_performed_by_the_same_team_on_the_same_day_(4,_3):
   y(3,_4,_3) + y(4,_4,_3) - h(3,_4) - h(4,_3) <= 1
 Ensures_that_interventions_i_and_i'_do_not_overlap_if_performed_by_the_same_team_on_the_same_day_(4,_3):
   y(3,_4,_4) + y(4,_4,_4) - h(3,_4) - h(4,_3) <= 1
Bounds
Binaries
 x(0,_0,_0) x(0,_0,_1) x(0,_0,_2) x(0,_0,_3) x(0,_0,_4) x(0,_1,_0)
 x(0,_1,_1) x(0,_1,_2) x(0,_1,_3) x(0,_1,_4) x(0,_2,_0) x(0,_2,_1)
 x(0,_2,_2) x(0,_2,_3) x(0,_2,_4) x(0,_3,_0) x(0,_3,_1) x(0,_3,_2)
 x(0,_3,_3) x(0,_3,_4) x(0,_4,_0) x(0,_4,_1) x(0,_4,_2) x(0,_4,_3)
 x(0,_4,_4) x(1,_0,_0) x(1,_0,_1) x(1,_0,_2) x(1,_0,_3) x(1,_0,_4)
 x(1,_1,_0) x(1,_1,_1) x(1,_1,_2) x(1,_1,_3) x(1,_1,_4) x(1,_2,_0)
 x(1,_2,_1) x(1,_2,_2) x(1,_2,_3) x(1,_2,_4) x(1,_3,_0) x(1,_3,_1)
 x(1,_3,_2) x(1,_3,_3) x(1,_3,_4) x(1,_4,_0) x(1,_4,_1) x(1,_4,_2)
 x(1,_4,_3) x(1,_4,_4) x(2,_0,_0) x(2,_0,_1) x(2,_0,_2) x(2,_0,_3)
 x(2,_0,_4) x(2,_1,_0) x(2,_1,_1) x(2,_1,_2) x(2,_1,_3) x(2,_1,_4)
 x(2,_2,_0) x(2,_2,_1) x(2,_2,_2) x(2,_2,_3) x(2,_2,_4) x(2,_3,_0)
 x(2,_3,_1) x(2,_3,_2) x(2,_3,_3) x(2,_3,_4) x(2,_4,_0) x(2,_4,_1)
 x(2,_4,_2) x(2,_4,_3) x(2,_4,_4) x(3,_0,_0) x(3,_0,_1) x(3,_0,_2)
 x(3,_0,_3) x(3,_0,_4) x(3,_1,_0) x(3,_1,_1) x(3,_1,_2) x(3,_1,_3)
 x(3,_1,_4) x(3,_2,_0) x(3,_2,_1) x(3,_2,_2) x(3,_2,_3) x(3,_2,_4)
 x(3,_3,_0) x(3,_3,_1) x(3,_3,_2) x(3,_3,_3) x(3,_3,_4) x(3,_4,_0)
 x(3,_4,_1) x(3,_4,_2) x(3,_4,_3) x(3,_4,_4) x(4,_0,_0) x(4,_0,_1)
 x(4,_0,_2) x(4,_0,_3) x(4,_0,_4) x(4,_1,_0) x(4,_1,_1) x(4,_1,_2)
 x(4,_1,_3) x(4,_1,_4) x(4,_2,_0) x(4,_2,_1) x(4,_2,_2) x(4,_2,_3)
 x(4,_2,_4) x(4,_3,_0) x(4,_3,_1) x(4,_3,_2) x(4,_3,_3) x(4,_3,_4)
 x(4,_4,_0) x(4,_4,_1) x(4,_4,_2) x(4,_4,_3) x(4,_4,_4) y(0,_0,_0)
 y(0,_0,_1) y(0,_0,_2) y(0,_0,_3) y(0,_0,_4) y(0,_1,_0) y(0,_1,_1)
 y(0,_1,_2) y(0,_1,_3) y(0,_1,_4) y(0,_2,_0) y(0,_2,_1) y(0,_2,_2)
 y(0,_2,_3) y(0,_2,_4) y(0,_3,_0) y(0,_3,_1) y(0,_3,_2) y(0,_3,_3)
 y(0,_3,_4) y(0,_4,_0) y(0,_4,_1) y(0,_4,_2) y(0,_4,_3) y(0,_4,_4)
 y(1,_0,_0) y(1,_0,_1) y(1,_0,_2) y(1,_0,_3) y(1,_0,_4) y(1,_1,_0)
 y(1,_1,_1) y(1,_1,_2) y(1,_1,_3) y(1,_1,_4) y(1,_2,_0) y(1,_2,_1)
 y(1,_2,_2) y(1,_2,_3) y(1,_2,_4) y(1,_3,_0) y(1,_3,_1) y(1,_3,_2)
 y(1,_3,_3) y(1,_3,_4) y(1,_4,_0) y(1,_4,_1) y(1,_4,_2) y(1,_4,_3)
 y(1,_4,_4) y(2,_0,_0) y(2,_0,_1) y(2,_0,_2) y(2,_0,_3) y(2,_0,_4)
 y(2,_1,_0) y(2,_1,_1) y(2,_1,_2) y(2,_1,_3) y(2,_1,_4) y(2,_2,_0)
 y(2,_2,_1) y(2,_2,_2) y(2,_2,_3) y(2,_2,_4) y(2,_3,_0) y(2,_3,_1)
 y(2,_3,_2) y(2,_3,_3) y(2,_3,_4) y(2,_4,_0) y(2,_4,_1) y(2,_4,_2)
 y(2,_4,_3) y(2,_4,_4) y(3,_0,_0) y(3,_0,_1) y(3,_0,_2) y(3,_0,_3)
 y(3,_0,_4) y(3,_1,_0) y(3,_1,_1) y(3,_1,_2) y(3,_1,_3) y(3,_1,_4)
 y(3,_2,_0) y(3,_2,_1) y(3,_2,_2) y(3,_2,_3) y(3,_2,_4) y(3,_3,_0)
 y(3,_3,_1) y(3,_3,_2) y(3,_3,_3) y(3,_3,_4) y(3,_4,_0) y(3,_4,_1)
 y(3,_4,_2) y(3,_4,_3) y(3,_4,_4) y(4,_0,_0) y(4,_0,_1) y(4,_0,_2)
 y(4,_0,_3) y(4,_0,_4) y(4,_1,_0) y(4,_1,_1) y(4,_1,_2) y(4,_1,_3)
 y(4,_1,_4) y(4,_2,_0) y(4,_2,_1) y(4,_2,_2) y(4,_2,_3) y(4,_2,_4)
 y(4,_3,_0) y(4,_3,_1) y(4,_3,_2) y(4,_3,_3) y(4,_3,_4) y(4,_4,_0)
 y(4,_4,_1) y(4,_4,_2) y(4,_4,_3) y(4,_4,_4) z(0) z(1) z(2) z(3) z(4)
 h(0,_1) h(0,_2) h(0,_3) h(0,_4) h(1,_0) h(1,_2) h(1,_3) h(1,_4) h(2,_0)
 h(2,_1) h(2,_3) h(2,_4) h(3,_0) h(3,_1) h(3,_2) h(3,_4) h(4,_0) h(4,_1)
 h(4,_2) h(4,_3)
End
