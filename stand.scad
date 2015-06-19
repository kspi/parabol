// This should be the same as DXF_SCALE in the Makefile.
dxf_scale = 100;

depth = 1000; // Extrusion depth
intersection() {
    linear_extrude(height=depth)
        scale(1 / dxf_scale) import(file="top.dxf");
    rotate(90, [1, 0, 0])
    rotate(90, [0, 1, 0])
        linear_extrude(height=depth)
            scale(1 / dxf_scale) import(file="side.dxf");
}