conta(0, []).              
conta(R, [_|T]) :- conta(R2, T), R is R2 + 1.           
