   M S B A M L   `   `   `  ����B  >WpfApp1, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null!clr-namespace:WpfApp1WpfApp1  5   	       WpfApp1.MainWindow   5   	   \ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   'localclr-namespace:WpfApp1     5   	     � Title$  Sudoku-ellenőrző��5   	   $	��210��6"   $	��210��62   $	��540��6B   $	��540��6Q   .��5	      � .+�5
   
   �� $ ��Az új feladvány mérete:��6   $
��Left=�62   $��	10,10,0,0q�6M   $	��Top=�6`   �� 5   
   -   5        $��	BtnMinusz��5      $��-��6"   $
��Left=�6.   $��
160,14,0,0q�6I   $	��Top=�6]   $��20��6u   6�   �� 5   
   -   5        $��BtnPlusz��5      $��+��6!   $
��Left=�6-   $��
210,14,0,0q�6H   $	��Top=�6\   $��20��6t   6   �� 5   
   -   5        $��TxtMeret��5      $
��Left=�6"   $��17��6=   $��
185,15,0,0q�6I    �� TextWrapping$
 Wrap=�6]   $��4��6q   $	��Top=�6z   $��20��6�    J� RenderTransformOrigin$ 1.731,-0.789&�6�   �� 5   
   $��Kezdő állapot:��6   $
��Left=�6)   $��	10,94,0,0q�6D   $	��Top=�6W   �� 5   
   -   5        $��TxtKezdoAllapot��5      $
��Left=�6)   $��23��6D   $��
15,118,0,0q�6P   $
 Wrap=�6d   $�� ��6x   $	��Top=�6�   $	��504��6�   6�   �� 5   
   -   5        $��LblHossz��5      $��Hossz: 0��6    $
��Left=�63   $��
15,146,0,0q�6N   $	��Top=�6b   �� 5   
   -   5        $��BtnEllenorzes��5      $��Ellenőrzés��6&   $
��Left=�6;   $��444,150,0,0q�6V   $	��Top=�6k   $��75��6�   6�   5      5      