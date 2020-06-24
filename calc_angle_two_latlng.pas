
function TDeviceTracker.AngleOfLine(const lat, lng, lat2, lng2: Double): Double;
var
  dLon, x, y, brng,angle: Double;
  dd:Integer;
begin


{Formula:	θ = atan2( sin Δλ ⋅ cos φ2 , cos φ1 ⋅ sin φ2 − sin φ1 ⋅ cos φ2 ⋅ cos Δλ )
where	φ1,λ1 is the start point, φ2,λ2 the end point (Δλ is the difference in longitude)
JavaScript:
(all angles
in radians)
const y = Math.sin(λ2-λ1) * Math.cos(φ2);
const x = Math.cos(φ1)*Math.sin(φ2) -
          Math.sin(φ1)*Math.cos(φ2)*Math.cos(λ2-λ1);
const θ = Math.atan2(y, x);
const brng = (θ*180/Math.PI + 360) % 360; // in degrees
 }

 y:=sin(lng2-lng) * cos(lat2);
 x:=cos(lat) * sin(lat2) -sin(lat) * cos(lat2) * cos(lng2-lng);
 angle:=ArcTan2(y,x);
 dd:=trunc(angle * 180/PI+360 mod 360);
 result:=dd+180;
end;