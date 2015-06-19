$fn=100;
intersection() {
    linear_extrude(height=1000)
        import(file="top.dxf");
    rotate(90, [1, 0, 0])
    rotate(90, [0, 1, 0])
        linear_extrude(height=1000)
            import(file="side.dxf");
}