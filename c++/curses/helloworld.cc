#include <ncurses.h>
using namespace std;

int main(int argc, const char * argv[])
{
  initscr();

  move(10, 0); //(y, x)

  printw("Hello World!");

  int c = getch();

  move(20, 40);
  printw("You pressed: %c\n[hit any key to end]", c);

  getch();

  endwin();
  return 0;
}
