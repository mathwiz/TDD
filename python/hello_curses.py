import curses as cur

try:
    scr = cur.initscr()
    scr.addstr("Hello World! [Press any key to finish]")
    scr.refresh()
    scr.getch()
finally:
    cur.endwin()
