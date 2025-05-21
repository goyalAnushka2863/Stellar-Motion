(* Project - Compare Stellar Spectra *)

load starData

[sHa,idx] = min(spectra(:,:));
lambdaHa = lambda(idx);
z = lambdaHa/656.28 - 1;
speed = z*299792.458

(* Plotting differently for blueShifted and redShifted spectra depending on sign of speed *)
for v=1:7
    s = spectra(:,v)
    if speed(v)<=0
        plot(lambda, s,"--")
    else
        plot(lambda,s,LineWidth=3)
    end
    hold on
end
hold off
(* legends for different curves with their names *)
]legend(starnames)


(* redShifted spectras *)
movaway = starnames(speed>0)


(* Plotting all spectras at once without differentiating *)
plot(lambda, spectra)
legend(starnames)

