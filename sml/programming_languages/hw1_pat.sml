fun is_older (d1: int * int * int, d2: int * int * int) =
  let
      val y1 = #1 d1
      val y2 = #1 d2
      val m1 = #2 d1
      val m2 = #2 d2
      val day1 = #3 d1
      val day2 = #3 d2
  in
      y1 < y2 orelse
      (y1 = y2 andalso m1 < m2) orelse
      (y1 = y2 andalso m1 = m2 andalso day1 < day2)
  end

fun number_in_month (ds: (int * int * int) list, m: int) =
  case ds of
      [] => 0 
    | h :: t => (if m = #2 h then 1 else 0) + number_in_month (t, m)

fun number_in_months (ds: (int * int * int) list, ms: int list) =
  case ms of
      [] => 0
    | h :: t => number_in_month (ds, h) + number_in_months (ds, t)

fun dates_in_month (ds: (int * int * int) list, m: int) = 
  case ds of
      [] => []
    | h :: t => if m = #2 h 
                then h :: dates_in_month (t, m) 
                else dates_in_month (t, m)

fun dates_in_months (ds: (int * int * int) list, ms: int list) =
  case ms of
      [] => []
    | h :: t => dates_in_month (ds, h) @ dates_in_months (ds, t)

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
  case xs of
      [] => 0
    | h :: t => if sum <= h
             then 0
             else 1 + number_before_reaching_sum (sum - h, t)

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
