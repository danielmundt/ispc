
export uniform int width() { return programCount; }


export void f_fu(uniform float RET[], uniform float aFOO[], uniform float b) {
    float a = aFOO[programIndex&0x3];
    float i;
    if (a < 3) {
        ++a;
    }
    else {
        cfor (i = 0; i < b; ++i) {
            if (i == 2) break;
            ++a;
        }
    }
    RET[programIndex] = a;
}


export void result(uniform float RET[]) {
  for (int i = 0; i < programCount; i += 4)
  {
    RET[i+0] = 2;
    RET[i+1] = 3;
    RET[i+2] = 5;
    RET[i+3] = 6;
  }
}
