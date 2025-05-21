(* Project - Stellar Motion
Instructions are in the task pane to the left. Complete and submit each task one at a time.

This code loads the data and defines measurement parameters. *)
load starData
nObs = size(spectra,1)
lambdaStart = 630.02
lambdaDelta = 0.14

(* Creating lambda vector *)
lambdaEnd = lambdaStart + (nObs-1)*lambdaDelta
lambda = (lambdaStart:lambdaDelta:lambdaEnd)

(* data for 2nd star in spectrum, we can do for each star as well *)
s = spectra(:,2)


(* PLotting  *)
plot(lambda, s, ".-")
xlabel("Wavelength")
ylabel("Intensity")

(* Finding minimum wavelength for hydrogen alpha line *)
[sHa, idx] = min(s)
lambdaHa = lambda(idx)

(* Marking the point we found ofr hydrogen *)
hold on
plot(lambdaHa, sHa,"rs", MarkerSize=8)
hold off

(* Calculating redshift factor (the speed of the star relative to Earth) and then speed *)
z = (lambdaHa/656.28)-1
speed = z*299792.458




