# ti84calc

TI-84 Plus modular TI-BASIC source files.

## TI Connect CE upload notes

TI Connect CE does **not** always accept raw `.bas` files by drag-and-drop as calculator programs.
Use one of these workflows:

1. Open **Program Editor** in TI Connect CE.
2. Create a program with the same 8-character name (for example `MATHMAIN`).
3. Paste the matching `.bas` file contents.
4. Save, then send to calculator.

Program load order:
1. `QUADLCK`
2. `ALGEBRA`
3. `GEOMTRIG`
4. `CALCLUS`
5. `STATS`
6. `SEARCH`
7. `FAVES`
8. `SETTING`
9. `MATHMAIN`

Then run `prgmMATHMAIN`.
