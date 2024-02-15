local utils = {}

---
---Habilita o UTF8 no código
---
function utils.enableUTF8()
   os.execute("chcp 65001")
end

---Verifica o sistema operacional
function utils.isWindows()
return type(package) == 'table' and type(package.config) == 'string' and package.config:sub(1,1) == '\\'
end

---Limpa o terminal
function utils.clearScreen()
   if utils.isWindows then
      os.execute('cls')
   else
      os.execute('clear')
   end
end

---Imprimi um header generico
---@return string
function utils.getHeaderGamerOver()
   return[[%{red}

      ░▄▀▒▒▄▀▄░█▄▒▄█▒██▀░░░▄▀▄░█▒█▒██▀▒█▀▄
      ░▀▄█░█▀█░█▒▀▒█░█▄▄▒░░▀▄▀░▀▄▀░█▄▄░█▀▄   

   ]]
end

---@return string
function utils.getHeaderGamerWin()
   return[[

%{white}         `'::.
%{white}     _________H %{green},%%&%,
%{white}    /\     _   \%{green}%&&%%&%
%{white}   /  \___/^\___\%{green}%&%%&&
%{white}   |  | []   []%{white} |%{green}%\Y&%'
%{white}   |  |   %{magenta}.-.%{white}   | ||  
%{white} %{green}~~%{white}@._|@@_%{magenta}|||%{white}_@@|%{green}~%{white}||%{green}~~~~~~~~~~~~~
%{white}      `""") )"""`

   ]]
end

return utils