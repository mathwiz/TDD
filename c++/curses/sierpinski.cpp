#include <curses.h>
#include <stdlib.h>
#include <math.h>

#define ITERMAX 1000

int random_int() 
{
  return fabs(random());
}

int main(int argc, const char * argv[])
{
  initscr();
  cbreak();
  noecho();
  clear();

  int maxlines = LINES - 1;
  int maxcols = COLS - 1;
  int y[3], x[3];

  y[0] = 0;
  x[0] = 0;

  y[1] = maxlines;
  x[1] = maxcols / 2;

  y[2] = 0;
  x[2] = maxcols;

  mvaddch(y[0], x[0], '0');
  mvaddch(y[1], x[1], '1');
  mvaddch(y[2], x[2], '2');

  int yi = random_int() % maxlines;
  int xi = random_int() % maxcols;

  mvaddch(yi, xi, '.');

  for (int it=0; it<ITERMAX; it++)
  {
    int index = random_int() % 3;
    yi = (yi + y[index]) / 2;
    xi = (xi + x[index]) / 2;
    mvaddch(yi, xi, '*');
    refresh();
  }

  getch();
  endwin();
  return 0;
}
