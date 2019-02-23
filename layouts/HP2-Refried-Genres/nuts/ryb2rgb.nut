function max(a,b) {return a > b ? a : b}
function min(a,b) {return a < b ? a : b}

function ryb2rgb(color) {
    local r = color[0].tofloat()
	local y = color[1].tofloat()
	local b = color[2].tofloat()
    // Remove the whiteness from the color.
    local w = min(r, min(y, b));
    r -= w;
    y -= w;
    b -= w;

    local my = max(r, max(y, b));

    // Get the green out of the yellow and blue
    local g = min(y, b);
    y -= g;
    b -= g;

    if (b > 0 && g > 0) {
        b *= 2.0;
        g *= 2.0;
    }

    // Redistribute the remaining yellow.
    r += y;
    g += y;

    // Normalize to values.
    local mg = max(r, max(g, b));
    if (mg > 0) {
        local n = my / mg;
        r *= n;
        g *= n;
        b *= n;
    }

    // Add the white back in.
    r += w;
    g += w;
    b += w;

    // And return back the ryb typed accordingly.
    return [floor(r), floor(g), floor(b)];
}