#include <iostream>
#include <string>
using namespace std;
bool Status[4] = {false, false, false, false};
string Names[4] = {"w ", "s ", "c ", "boat"};
bool GameContinue = true;
void Lose(int a)
{
    if (a)
        cout << "Wolf eats your sheep!" << endl
             << "Sorry, you lose. Please try again!" << endl;
    else
        cout << "Sheep eats your Cabbage!" << endl
             << "Sorry, you lose. Please try again!" << endl;
    GameContinue = false;
    return;
}
void Win()
{
    cout << "Wolf, sheep and cabbage are all on right side!" << endl
         << "Congratulations! You win!" << endl;
    GameContinue = false;
    return;
}

void Display()
{
    cout << "Left  --------------------  Right" << endl;
    for (int i = 0; i < 3; i++)
    {
        if (!Status[i])
            cout << Names[i];
        else
            cout << "  ";
    }
    cout << "                      ";
    for (int i = 0; i < 3; i++)
    {
        if (Status[i])
            cout << Names[i];
        else
            cout << "  ";
    }
    cout << endl;
    if (!Status[3])
        cout << "boat";
    else
        cout << "    ";
    cout << "                        ";
    if (Status[3])
        cout << "boat";
    else
        cout << "    ";
    cout << endl;
    return;
}

void Play()
{
    char input;
    cout << "Item to carry (w: wolf, s: sheep, c: cabbage, n: nothing):" << endl;
    cin >> input;
    Status[3] = !Status[3];
    switch (input)
    {
    case 'w':
        Status[0] = !Status[0];
        break;
    case 's':
        Status[1] = !Status[1];
        break;
    case 'c':
        Status[2] = !Status[2];
        break;
    case 'n':
        break;
    default:
        cout << "wrong input!" << endl;
        break;
    }
    Display();
    if (Status[0] && Status[1] && Status[2])
        Win();
    if (!GameContinue)
        return;
    if (Status[1] != Status[3])
    {
        if (Status[0] == Status[1])
            Lose(1);
        if (Status[2] == Status[1])
            Lose(0);
    }
    return;
}

void GameStart()
{
    cout << "****************************" << endl
         << "Wolf, Sheep and Cabbage Game" << endl
         << "****************************" << endl
         << endl
         << "Left  --------------------  Right" << endl
         << "w s c" << endl
         << "boat" << endl
         << endl
         << "Game Start!" << endl;
    return;
}

int main()
{
    char input;
    GameStart();
    while (GameContinue)
    {
        Play();
    }
    return 0;
}