% a loop 


RMSEs = zeros(10,100);
%{
for n_ = 10:10:100
   i_ = i_+1;
   N = n_;
   x_R = 1;
   for trial_ = 1:100
       particle_filter_student_dave_basic_ex1;
       RMSEs(i_, trial_) = RMSE;
   end
end
%}

i_ = 0;
N = 10;
for x_R_ = 1:10
    i_ = i_ + 1;
    x_R = x_R_;
    
    for trial_ = 1:100
        particle_filter_student_dave_basic_ex1
        RMSEs(i_ , trial_) = RMSE;
        sprintf('%i, %i', i_, trial_)
    end
end
