------------------------------------------------------------------------------
--                                                                          --
--                         GNAT RUNTIME COMPONENTS                          --
--                                                                          --
--                       S Y S T E M . E X N _ G E N                        --
--                                                                          --
--                                 S p e c                                  --
--                                                                          --
--                            $Revision: 2 $                              --
--                                                                          --
--           Copyright (c) 1992,1993,1994 NYU, All Rights Reserved          --
--                                                                          --
-- The GNAT library is free software; you can redistribute it and/or modify --
-- it under terms of the GNU Library General Public License as published by --
-- the Free Software  Foundation; either version 2, or (at your option) any --
-- later version.  The GNAT library is distributed in the hope that it will --
-- be useful, but WITHOUT ANY WARRANTY;  without even  the implied warranty --
-- of MERCHANTABILITY  or  FITNESS FOR  A PARTICULAR PURPOSE.  See the  GNU --
-- Library  General  Public  License for  more  details.  You  should  have --
-- received  a copy of the GNU  Library  General Public License  along with --
-- the GNAT library;  see the file  COPYING.LIB.  If not, write to the Free --
-- Free Software Foundation, 675 Mass Ave, Cambridge, MA 02139, USA.        --
--                                                                          --
------------------------------------------------------------------------------

--  This package contains the generic functions which are instantiated with
--  predefined integer and real types to generate the runtime exponentiation
--  functions called by expanded code generated by Expand_Op_Expon. This
--  version of the package contains routines that are compiled with overflow
--  checks suppressed, so they are called for exponentiation operations which
--  do not require overflow checking

package System.Exn_Gen is
pragma Pure (System.Exn_Gen);

   --  Exponentiation for float types (checks off)

   generic
      type Type_Of_Base is digits <>;
   function Exn_Float_Type
     (Left : Type_Of_Base; Right : Integer) return Type_Of_Base;

   --  Exponentiation for signed integer base

   generic
      type Type_Of_Base is range <>;
   function Exn_Integer_Type
     (Left : Type_Of_Base; Right : Natural) return Type_Of_Base;

end System.Exn_Gen;
