   M S B A M L   `   `   `  ����D  @sudokuGUI, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null%clr-namespace:sudokuGUI	sudokuGUI  5   	       sudokuGUI.MainWindow   5   	   \ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   )localclr-namespace:sudokuGUI     5   	     � Title$  Sudoku-ellenőrző��5   	   $	��210��6"   $	��210��62   $	��540��6B   $	��540��6Q   .��5	      � .+�5
   
   �� $ ��Az új feladvány mérete:��6   $
��Left=�62   $��	24,24,0,0q�6M   $	��Top=�6`   $	��150��6x   �� 5   
   -   5        $��	BtnMinusz��5      $��-��6#   $
��Left=�6/   $��
163,27,0,0q�6J   $	��Top=�6^   $��20��6v   6�   �� 5   
   -   5        $��BtnPlus��5      $��+��6!   $
��Left=�6-   $��
215,27,0,0q�6H   $	��Top=�6\   $��20��6t   6   �� 5   
   -   5        $��TxtMeret��5      $
��Left=�6"   $��20��6=   $��
188,27,0,0q�6I    �� TextWrapping$
 Wrap=�6]   $��4��6q   $	��Top=�6z   $��22��6�    J� RenderTransformOrigin$ 0.485,0.467&�6�    �� 
IsReadOnly . 6�   �� 5   
   $
��Left=�6   $��21��6-   $��
24,104,0,0q�69   $
 Wrap=�6M   $��Kezdő állapot:��6a   $	��Top=�6w   $��82��6�   �� 5   
   -   5        $��TxtKezdoAllapot��5      $
��Left=�6)   $��20��6D   $��
24,130,0,0q�6P   $
 Wrap=�6d   $�� ��6x   $	��Top=�6�   $	��352��6�   6�   �� 5   
   -   5        $��LblHossz��5      $��Hossz:0��6    $
��Left=�62   $��24��6M   $��
24,155,0,0q�6Y   $	��Top=�6m   $��77��6�   �� 5   
   -   5        $��BtnEllenorzes��5      $��Ellenőrzés��6&   $
��Left=�6;   $��272,158,0,0q�6V   $	��Top=�6k   $��75��6�   6�   5      5      