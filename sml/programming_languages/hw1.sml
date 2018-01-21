fun is_older (d1: int * int * int, d2: int * int * int) =
  if #1 d1 = #1 d2 andalso #2 d1 = #2 d2 then #3 d1 < #3 d2
  else if #1 d1 = #1 d2 then #2 d1 < #2 d2
  else #1 d1 < #1 d2

fun number_in_month (ds: (int * int * int) list, m: int) =
  if null ds then 0
  else if m = #2 (hd ds) then 1 + number_in_month (tl ds, m)
  else number_in_month (tl ds, m)

fun number_in_months (ds: (int * int * int) list, ms: int list) =
  if null ms then 0
  else number_in_month (ds, hd ms) + number_in_months (ds, tl ms)

fun dates_in_month (ds: (int * int * int) list, m: int) = 
  if null ds then []
  else if #2 (hd ds) = m then hd ds :: dates_in_month (tl ds, m)
  else dates_in_month (tl ds, m)

fun dates_in_months (ds: (int * int * int) list, ms: int list) =
  if null ms then []
  else dates_in_month (ds, hd ms) @ dates_in_months (ds, tl ms)

fun get_nth (xs: string list, n: int) =
  if n = 1 then hd xs
  else get_nth (tl xs, n - 1)

fun date_to_string (d: int * int * int) =
  let 
      val months = [
          "January",
          "February",
          "March",
          "April",
          "May",
          "June",
          "July",
          "August",
          "September",
          "October",
          "November",
          "December"
      ]
  in
      get_nth (months, #2 d) ^ " " ^ Int.toString (#3 d) ^ ", " ^ Int.toString (#1 d)
  end

fun number_before_reaching_sum (sum: int, xs: int list) =
  if null xs then 0
  else if hd xs >= sum then 0
  else if null (tl xs) then 1                               
  else if hd xs + hd (tl xs) >= sum then 1                      
  else 1 + number_before_reaching_sum (sum - (hd xs), tl xs)                      

fun what_month (day: int) =
  let
      val mdays = [
          31,
          28,
          31,
          30,
          31,
          30,
          31,
          31,
          30,
          31,
          30,
          31
      ]
  in
      1 + number_before_reaching_sum (day, mdays)
  end

fun month_range (day1: int, day2: int) =
  if day1 > day2 then []
  else what_month day1 :: month_range (day1 + 1, day2)

fun oldest (ds: (int * int * int) list) =
  if null ds then NONE
  else let
           fun find_old (xs) =
             if null (tl xs) then hd xs
             else let val tl_ans = find_old (tl xs)
                  in 
                    if is_older (hd xs, tl_ans) then hd xs
                    else tl_ans
                  end
       in
           SOME (find_old ds)
       end
