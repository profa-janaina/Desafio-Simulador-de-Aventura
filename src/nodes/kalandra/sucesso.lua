-- Constants
local ID = "kalandra.sucesso"

-- Dependencies
local Node = require("node")
local Choice = require("choice")

-- Create node
local node = Node:new(ID) ---@type Node
node.title = "Sucesso!"
node.gameWon = true
node.description = [[%{green}
A porta abriu! Lá dentro você encontra uma trombeta de ouro, um recipiente com pó prateado e um pergaminho, contendo instruções de um feitiço para aprisionar para sempre o Octaren.

Você retorna a praia. Toca a trombeta. As águas ficam agitadas e o Octaren surge das profundezas. É assustador, mas é preciso continuar.

Você lança o pó prateado no ar. O Octaren fica paralisado. Você lança o encantamento. Um portal se abre e ele é transportado para dentro.

Do portal foram lançados um livro e um anel de diamante. Isso significa que você agora é o guardião desse portal. Você deve mantê-lo fechado. O livro contém feitiços e segredos, o que te tornará poderoso e sábio.

Sua aventura em Kalandra foi fantástica! Você sobreviveu a situações perigosas, fez o bem e se tornou mais forte. Sua aventura não termina por aqui. A escolha do próximo passo só depende de você]]
node.header = [[
%{      }      %{blue}        %{   }      %{      }  %{    }          %{     }  %{magenta} .''.   %{     }       
%{      }      %{blue} .''.   %{red}   .  %{      }  %{cyan}    *''*  %{     }  %{magenta}:_\/_:  %{green}   .   
%{      }      %{blue}:_\/_:  %{red} _\(/_%{      }  %{cyan}.:.*_\/_* %{     }  %{magenta}: /\ :  %{green}.'.:.'.
%{yellow}  .''.%{blue}: /\ :  %{red} ./)\ %{      }  %{cyan}':'* /\ * %{white}: %{magenta} '..'.  %{green}-=:o:=-
%{yellow} :_\/_:'%{blue}.:::. %{red}   '%{yellow} *''* %{cyan}   * %{white}'.\'/.'%{red    } _\(/_%{green}'.':'.'
%{yellow} : /\ : %{blue}::::: %{   }   %{yellow} *_\/_*%{    }     %{white}-= o =-%{red    }  /)\ %{green}   '  *
%{yellow}  '..'  %{blue}':::' %{   }   %{yellow} * /\ *%{    }     %{white}.'/.\'.%{red    }   '  %{     }       
%{      }      *   %{    }    %{   }   %{yellow}  *..* %{    }     %{white}   :   %{       }      %{     }       
%{white }jgs     * %{    }    %{   }   %{      }       %{    }     %{     }       %{       }      %{     }       
%{      }        * %{    }    %{   }   %{      }       %{    }     %{     }       %{       }      %{     }       
]]

return node