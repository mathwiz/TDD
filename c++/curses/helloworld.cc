#include <ncurses.h>
using namespace std;

int main(int argc, const char * argv[])
{
  initscr();

  move(20, 40); //(y, x)

  printw("Hello World! [hit any key]");

  int c = getch();

  move(0, 0);
  printw("You pressed: %c\n[hit any key to end]", c);

  getch();

  endwin();
  return 0;
}
