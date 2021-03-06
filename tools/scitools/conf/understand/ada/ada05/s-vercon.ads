------------------------------------------------------------------------------
--                                                                          --
--                          GNAT RUN-TIME COMPONENTS                        --
--                                                                          --
--               S Y S T E M . V E R S I O N _ C O N T R O L                --
--                                                                          --
--                                 S p e c                                  --
--                                                                          --
--          Copyright (C) 1992-2005, Free Software Foundation, Inc.         --
--                                                                          --
-- GNAT is free software;  you can  redistribute it  and/or modify it under --
-- terms of the  GNU General Public License as published  by the Free Soft- --
-- ware  Foundation;  either version 2,  or (at your option) any later ver- --
-- sion.  GNAT is distributed in the hope that it will be useful, but WITH- --
-- OUT ANY WARRANTY;  without even the  implied warranty of MERCHANTABILITY --
-- or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU General Public License --
-- for  more details.  You should have  received  a copy of the GNU General --
-- Public License  distributed with GNAT;  see file COPYING.  If not, write --
-- to  the  Free Software Foundation,  51  Franklin  Street,  Fifth  Floor, --
-- Boston, MA 02110-1301, USA.                                              --
--                                                                          --
--
--
--
--
--
--
--
-- GNAT was originally developed  by the GNAT team at  New York University. --
-- Extensive contributions were provided by Ada Core Technologies Inc.      --
--                                                                          --
------------------------------------------------------------------------------

--  This module contains the runtime routine for implementation of the
--  Version and Body_Version attributes, as well as the string type that
--  is returned as a result of using these attributes.

with System.Unsigned_Types;

package System.Version_Control is
   pragma Pure;

   subtype Version_String is String (1 .. 8);
   --  Eight character string returned by Get_version_String;

   function Get_Version_String
     (V    : System.Unsigned_Types.Unsigned)
      return Version_String;
   --  The version information in the executable file is stored as unsigned
   --  integers. This routine converts the unsigned integer into an eight
   --  character string containing its hexadecimal digits (with lower case
   --  letters).

end System.Version_Control;
