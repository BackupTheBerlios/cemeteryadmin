unit CHILDWIN;

{*********************************************************************************
  ********************************************************************************
   Copyright (C) 2004 by CemeteryAdmin-Team

   This file is part of the CemeteryAdmin-Codesource.

   CemeteryAdmin is free software; you can redistribute it and/or
   modify it under the terms of the GNU General Public License as published
   by the Free Software Foundation; either version 2, or (at your option)
   any later version.

   CemeteryAdmin-Codesource is distributed in the hope that it will be useful,
   but WITHOUT ANY WARRANTY; without even the implied warranty of
   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.
   See the GNU General Public License for more details.
   http://www.fsf.org/licenses/gpl.html

   You should have received a copy of the GNU General Public License
   along with the CemeteryAdmin-Codesource; see the file COPYING.  If not,
   write to the Free Software Foundation, 59 Temple Place - Suite 330,
   Boston, MA 02111-1307, USA.
  *********************************************************************************

   Last modification: $Id: CHILDWIN.PAS,v 1.2 2004/01/12 16:22:13 sebtom Exp $

***********************************************************************************
***********************************************************************************}
interface

uses Windows, Classes, Graphics, Forms, Controls, StdCtrls;

type
  TMDIChild = class(TForm)
    Memo1: TMemo;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private-Deklarationen }
  public
    { Public-Deklarationen }
  end;

implementation

{$R *.dfm}

procedure TMDIChild.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
end;

end.
