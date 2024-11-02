package com.airbnb.lottie.parser;

import android.graphics.Color;
import android.graphics.PointF;
import com.airbnb.lottie.model.content.GradientColor;
import com.airbnb.lottie.parser.moshi.JsonReader;
import com.airbnb.lottie.utils.GammaEvaluator;
import com.airbnb.lottie.utils.MiscUtils;
import java.util.ArrayList;
import java.util.Arrays;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public final class GradientColorParser implements ValueParser {
    public int colorPoints;

    public GradientColorParser(int i) {
        this.colorPoints = i;
    }

    @Override // com.airbnb.lottie.parser.ValueParser
    public final Object parse(JsonReader jsonReader, float f) {
        boolean z;
        float[] fArr;
        float f2;
        int i;
        int argb;
        int i2;
        ArrayList arrayList = new ArrayList();
        char c = 0;
        int i3 = 1;
        if (jsonReader.peek() == JsonReader.Token.BEGIN_ARRAY) {
            z = true;
        } else {
            z = false;
        }
        if (z) {
            jsonReader.beginArray();
        }
        while (jsonReader.hasNext()) {
            arrayList.add(Float.valueOf((float) jsonReader.nextDouble()));
        }
        int i4 = 2;
        if (arrayList.size() == 4 && ((Float) arrayList.get(0)).floatValue() == 1.0f) {
            arrayList.set(0, Float.valueOf(0.0f));
            arrayList.add(Float.valueOf(1.0f));
            arrayList.add((Float) arrayList.get(1));
            arrayList.add((Float) arrayList.get(2));
            arrayList.add((Float) arrayList.get(3));
            this.colorPoints = 2;
        }
        if (z) {
            jsonReader.endArray();
        }
        if (this.colorPoints == -1) {
            this.colorPoints = arrayList.size() / 4;
        }
        int i5 = this.colorPoints;
        float[] fArr2 = new float[i5];
        int[] iArr = new int[i5];
        int i6 = 0;
        int i7 = 0;
        int i8 = 0;
        while (i6 < this.colorPoints * 4) {
            int i9 = i6 / 4;
            double floatValue = ((Float) arrayList.get(i6)).floatValue();
            int i10 = i6 % 4;
            if (i10 != 0) {
                if (i10 != i3) {
                    if (i10 != 2) {
                        if (i10 == 3) {
                            iArr[i9] = Color.argb(255, i7, i8, (int) (floatValue * 255.0d));
                        }
                    } else {
                        i8 = (int) (floatValue * 255.0d);
                    }
                } else {
                    i7 = (int) (floatValue * 255.0d);
                }
            } else {
                if (i9 > 0) {
                    float f3 = (float) floatValue;
                    if (fArr2[i9 - 1] >= f3) {
                        fArr2[i9] = f3 + 0.01f;
                    }
                }
                fArr2[i9] = (float) floatValue;
            }
            i6++;
            i3 = 1;
        }
        GradientColor gradientColor = new GradientColor(fArr2, iArr);
        int i11 = this.colorPoints * 4;
        if (arrayList.size() > i11) {
            int size = (arrayList.size() - i11) / 2;
            float[] fArr3 = new float[size];
            float[] fArr4 = new float[size];
            int i12 = 0;
            while (i11 < arrayList.size()) {
                if (i11 % 2 == 0) {
                    fArr3[i12] = ((Float) arrayList.get(i11)).floatValue();
                } else {
                    fArr4[i12] = ((Float) arrayList.get(i11)).floatValue();
                    i12++;
                }
                i11++;
            }
            float[] fArr5 = gradientColor.positions;
            if (fArr5.length == 0) {
                fArr = fArr3;
            } else if (size == 0) {
                fArr = fArr5;
            } else {
                int length = fArr5.length + size;
                fArr = new float[length];
                int i13 = 0;
                int i14 = 0;
                int i15 = 0;
                for (int i16 = 0; i16 < length; i16++) {
                    float f4 = Float.NaN;
                    if (i14 < fArr5.length) {
                        f2 = fArr5[i14];
                    } else {
                        f2 = Float.NaN;
                    }
                    if (i15 < size) {
                        f4 = fArr3[i15];
                    }
                    if (!Float.isNaN(f4) && f2 >= f4) {
                        if (!Float.isNaN(f2) && f4 >= f2) {
                            fArr[i16] = f2;
                            i14++;
                            i15++;
                            i13++;
                        } else {
                            fArr[i16] = f4;
                            i15++;
                        }
                    } else {
                        fArr[i16] = f2;
                        i14++;
                    }
                }
                if (i13 != 0) {
                    fArr = Arrays.copyOf(fArr, length - i13);
                }
            }
            int length2 = fArr.length;
            int[] iArr2 = new int[length2];
            int i17 = 0;
            while (i17 < length2) {
                float f5 = fArr[i17];
                int binarySearch = Arrays.binarySearch(fArr5, f5);
                int binarySearch2 = Arrays.binarySearch(fArr3, f5);
                int[] iArr3 = gradientColor.colors;
                if (binarySearch >= 0 && binarySearch2 <= 0) {
                    int i18 = iArr3[binarySearch];
                    if (size >= i4 && f5 > fArr3[c]) {
                        for (int i19 = 1; i19 < size; i19++) {
                            float f6 = fArr3[i19];
                            if (f6 >= f5 || i19 == size - 1) {
                                if (f6 <= f5) {
                                    i2 = (int) (fArr4[i19] * 255.0f);
                                } else {
                                    int i20 = i19 - 1;
                                    float f7 = fArr3[i20];
                                    float f8 = (f5 - f7) / (f6 - f7);
                                    float f9 = fArr4[i20];
                                    float f10 = fArr4[i19];
                                    PointF pointF = MiscUtils.pathFromDataCurrentPoint;
                                    i2 = (int) ((((f10 - f9) * f8) + f9) * 255.0f);
                                }
                                argb = Color.argb(i2, Color.red(i18), Color.green(i18), Color.blue(i18));
                            }
                        }
                        throw new IllegalArgumentException("Unreachable code.");
                    }
                    argb = Color.argb((int) (fArr4[c] * 255.0f), Color.red(i18), Color.green(i18), Color.blue(i18));
                    iArr2[i17] = argb;
                } else {
                    if (binarySearch2 < 0) {
                        binarySearch2 = -(binarySearch2 + 1);
                    }
                    float f11 = fArr4[binarySearch2];
                    if (iArr3.length >= 2 && f5 != fArr5[c]) {
                        for (int i21 = 1; i21 < fArr5.length; i21++) {
                            float f12 = fArr5[i21];
                            if (f12 < f5 && i21 != fArr5.length - 1) {
                            }
                            int i22 = i21 - 1;
                            float f13 = fArr5[i22];
                            float f14 = (f5 - f13) / (f12 - f13);
                            int i23 = iArr3[i21];
                            int i24 = iArr3[i22];
                            i = Color.argb((int) (f11 * 255.0f), GammaEvaluator.evaluate(f14, Color.red(i24), Color.red(i23)), GammaEvaluator.evaluate(f14, Color.green(i24), Color.green(i23)), GammaEvaluator.evaluate(f14, Color.blue(i24), Color.blue(i23)));
                            c = 0;
                        }
                        throw new IllegalArgumentException("Unreachable code.");
                    }
                    i = iArr3[c];
                    iArr2[i17] = i;
                }
                i17++;
                i4 = 2;
            }
            return new GradientColor(fArr, iArr2);
        }
        return gradientColor;
    }
}
