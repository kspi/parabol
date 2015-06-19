DXF := top.dxf side.dxf

# Scale up by this amount when converting to DXF. This controls the curve
# detail and is compensated in the SCAD file.
DXF_SCALE := 100

all: stand.stl $(DXF)

%.stl: %.scad $(DXF)
	openscad --render -o $@ $<

%.eps: %.svg
	inkscape --export-eps $@ $<

%.dxf: %.eps
	pstoedit -dt -f "dxf: -polyaslines -mm" -xscale $(DXF_SCALE) -yscale $(DXF_SCALE) $< $@

clean:
	rm -f $(DXF) stand.stl
