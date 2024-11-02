package com.airbnb.lottie.animation.keyframe;

import android.graphics.Path;
import android.graphics.PointF;
import androidx.constraintlayout.core.widgets.analyzer.DependencyGraph$$ExternalSyntheticOutline0;
import com.airbnb.lottie.animation.content.RoundedCornersContent;
import com.airbnb.lottie.model.CubicCurveData;
import com.airbnb.lottie.model.content.ShapeData;
import com.airbnb.lottie.utils.Logger;
import com.airbnb.lottie.utils.MiscUtils;
import com.airbnb.lottie.value.Keyframe;
import java.util.ArrayList;
import java.util.List;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public final class ShapeKeyframeAnimation extends BaseKeyframeAnimation {
    public List shapeModifiers;
    public final Path tempPath;
    public final ShapeData tempShapeData;

    public ShapeKeyframeAnimation(List<Keyframe> list) {
        super(list);
        this.tempShapeData = new ShapeData();
        this.tempPath = new Path();
    }

    @Override // com.airbnb.lottie.animation.keyframe.BaseKeyframeAnimation
    public final Object getValue(Keyframe keyframe, float f) {
        boolean z;
        int i;
        int i2;
        PointF pointF;
        PointF pointF2;
        boolean z2;
        int i3;
        ArrayList arrayList;
        ShapeData shapeData;
        float f2;
        PointF pointF3;
        PointF pointF4;
        int i4;
        ShapeKeyframeAnimation shapeKeyframeAnimation = this;
        ShapeData shapeData2 = (ShapeData) keyframe.startValue;
        ShapeData shapeData3 = (ShapeData) keyframe.endValue;
        ShapeData shapeData4 = shapeKeyframeAnimation.tempShapeData;
        if (shapeData4.initialPoint == null) {
            shapeData4.initialPoint = new PointF();
        }
        int i5 = 1;
        if (!shapeData2.closed && !shapeData3.closed) {
            z = false;
        } else {
            z = true;
        }
        shapeData4.closed = z;
        ArrayList arrayList2 = (ArrayList) shapeData2.curves;
        int size = arrayList2.size();
        int size2 = ((ArrayList) shapeData3.curves).size();
        List list = shapeData3.curves;
        if (size != size2) {
            Logger.warning("Curves must have the same number of control points. Shape 1: " + arrayList2.size() + "\tShape 2: " + ((ArrayList) list).size());
        }
        ArrayList arrayList3 = (ArrayList) list;
        int min = Math.min(arrayList2.size(), arrayList3.size());
        ArrayList arrayList4 = (ArrayList) shapeData4.curves;
        if (arrayList4.size() < min) {
            for (int size3 = arrayList4.size(); size3 < min; size3++) {
                arrayList4.add(new CubicCurveData());
            }
        } else if (arrayList4.size() > min) {
            for (int size4 = arrayList4.size() - 1; size4 >= min; size4--) {
                arrayList4.remove(arrayList4.size() - 1);
            }
        }
        PointF pointF5 = shapeData2.initialPoint;
        PointF pointF6 = shapeData3.initialPoint;
        float f3 = pointF5.x;
        float f4 = pointF6.x;
        PointF pointF7 = MiscUtils.pathFromDataCurrentPoint;
        float m = DependencyGraph$$ExternalSyntheticOutline0.m(f4, f3, f, f3);
        float f5 = pointF5.y;
        shapeData4.setInitialPoint(m, ((pointF6.y - f5) * f) + f5);
        for (int size5 = arrayList4.size() - 1; size5 >= 0; size5--) {
            CubicCurveData cubicCurveData = (CubicCurveData) arrayList2.get(size5);
            CubicCurveData cubicCurveData2 = (CubicCurveData) arrayList3.get(size5);
            PointF pointF8 = cubicCurveData.controlPoint1;
            PointF pointF9 = cubicCurveData2.controlPoint1;
            CubicCurveData cubicCurveData3 = (CubicCurveData) arrayList4.get(size5);
            float f6 = pointF8.x;
            float m2 = DependencyGraph$$ExternalSyntheticOutline0.m(pointF9.x, f6, f, f6);
            float f7 = pointF8.y;
            cubicCurveData3.controlPoint1.set(m2, DependencyGraph$$ExternalSyntheticOutline0.m(pointF9.y, f7, f, f7));
            CubicCurveData cubicCurveData4 = (CubicCurveData) arrayList4.get(size5);
            PointF pointF10 = cubicCurveData.controlPoint2;
            float f8 = pointF10.x;
            PointF pointF11 = cubicCurveData2.controlPoint2;
            float m3 = DependencyGraph$$ExternalSyntheticOutline0.m(pointF11.x, f8, f, f8);
            float f9 = pointF10.y;
            cubicCurveData4.controlPoint2.set(m3, DependencyGraph$$ExternalSyntheticOutline0.m(pointF11.y, f9, f, f9));
            CubicCurveData cubicCurveData5 = (CubicCurveData) arrayList4.get(size5);
            PointF pointF12 = cubicCurveData.vertex;
            float f10 = pointF12.x;
            PointF pointF13 = cubicCurveData2.vertex;
            float m4 = DependencyGraph$$ExternalSyntheticOutline0.m(pointF13.x, f10, f, f10);
            float f11 = pointF12.y;
            cubicCurveData5.vertex.set(m4, DependencyGraph$$ExternalSyntheticOutline0.m(pointF13.y, f11, f, f11));
        }
        List list2 = shapeKeyframeAnimation.shapeModifiers;
        if (list2 != null) {
            int size6 = list2.size() - 1;
            while (size6 >= 0) {
                RoundedCornersContent roundedCornersContent = (RoundedCornersContent) shapeKeyframeAnimation.shapeModifiers.get(size6);
                roundedCornersContent.getClass();
                ArrayList arrayList5 = (ArrayList) shapeData4.curves;
                if (arrayList5.size() > 2) {
                    float floatValue = ((Float) roundedCornersContent.roundedCorners.getValue()).floatValue();
                    if (floatValue != 0.0f) {
                        List list3 = shapeData4.curves;
                        boolean z3 = shapeData4.closed;
                        ArrayList arrayList6 = (ArrayList) list3;
                        int size7 = arrayList6.size() - i5;
                        int i6 = 0;
                        while (size7 >= 0) {
                            CubicCurveData cubicCurveData6 = (CubicCurveData) arrayList6.get(size7);
                            int i7 = size7 - 1;
                            CubicCurveData cubicCurveData7 = (CubicCurveData) arrayList6.get(RoundedCornersContent.floorMod(i7, arrayList6.size()));
                            if (size7 == 0 && !z3) {
                                pointF3 = shapeData4.initialPoint;
                            } else {
                                pointF3 = cubicCurveData7.vertex;
                            }
                            if (size7 == 0 && !z3) {
                                pointF4 = pointF3;
                            } else {
                                pointF4 = cubicCurveData7.controlPoint2;
                            }
                            PointF pointF14 = cubicCurveData6.controlPoint1;
                            if (!shapeData4.closed && size7 == 0 && size7 == arrayList6.size() - i5) {
                                i4 = i5;
                            } else {
                                i4 = 0;
                            }
                            if (pointF4.equals(pointF3) && pointF14.equals(pointF3) && i4 == 0) {
                                i6 += 2;
                            } else {
                                i6++;
                            }
                            size7 = i7;
                        }
                        ShapeData shapeData5 = roundedCornersContent.shapeData;
                        if (shapeData5 != null && ((ArrayList) shapeData5.curves).size() == i6) {
                            i2 = 0;
                        } else {
                            ArrayList arrayList7 = new ArrayList(i6);
                            for (int i8 = 0; i8 < i6; i8++) {
                                arrayList7.add(new CubicCurveData());
                            }
                            roundedCornersContent.shapeData = new ShapeData(new PointF(0.0f, 0.0f), false, arrayList7);
                            i2 = 0;
                        }
                        ShapeData shapeData6 = roundedCornersContent.shapeData;
                        shapeData6.closed = z3;
                        PointF pointF15 = shapeData4.initialPoint;
                        shapeData6.setInitialPoint(pointF15.x, pointF15.y);
                        List list4 = shapeData6.curves;
                        boolean z4 = shapeData4.closed;
                        int i9 = i2;
                        while (i2 < arrayList5.size()) {
                            CubicCurveData cubicCurveData8 = (CubicCurveData) arrayList5.get(i2);
                            CubicCurveData cubicCurveData9 = (CubicCurveData) arrayList5.get(RoundedCornersContent.floorMod(i2 - 1, arrayList5.size()));
                            CubicCurveData cubicCurveData10 = (CubicCurveData) arrayList5.get(RoundedCornersContent.floorMod(i2 - 2, arrayList5.size()));
                            if (i2 == 0 && !z4) {
                                pointF = shapeData4.initialPoint;
                            } else {
                                pointF = cubicCurveData9.vertex;
                            }
                            if (i2 == 0 && !z4) {
                                pointF2 = pointF;
                            } else {
                                pointF2 = cubicCurveData9.controlPoint2;
                            }
                            PointF pointF16 = cubicCurveData8.controlPoint1;
                            PointF pointF17 = cubicCurveData10.vertex;
                            boolean z5 = z4;
                            if (!shapeData4.closed && i2 == 0 && i2 == arrayList5.size() - 1) {
                                z2 = true;
                            } else {
                                z2 = false;
                            }
                            if (pointF2.equals(pointF) && pointF16.equals(pointF) && !z2) {
                                float f12 = pointF.x;
                                float f13 = f12 - pointF17.x;
                                float f14 = pointF.y;
                                float f15 = f14 - pointF17.y;
                                PointF pointF18 = cubicCurveData8.vertex;
                                arrayList = arrayList5;
                                float f16 = pointF18.x - f12;
                                float f17 = pointF18.y - f14;
                                i3 = size6;
                                float hypot = (float) Math.hypot(f13, f15);
                                ShapeData shapeData7 = shapeData4;
                                float hypot2 = (float) Math.hypot(f16, f17);
                                float min2 = Math.min(floatValue / hypot, 0.5f);
                                float min3 = Math.min(floatValue / hypot2, 0.5f);
                                float f18 = pointF.x;
                                float m5 = DependencyGraph$$ExternalSyntheticOutline0.m(pointF17.x, f18, min2, f18);
                                float f19 = pointF.y;
                                float m6 = DependencyGraph$$ExternalSyntheticOutline0.m(pointF17.y, f19, min2, f19);
                                float m7 = DependencyGraph$$ExternalSyntheticOutline0.m(pointF18.x, f18, min3, f18);
                                float m8 = DependencyGraph$$ExternalSyntheticOutline0.m(pointF18.y, f19, min3, f19);
                                float f20 = m5 - ((m5 - f18) * 0.5519f);
                                float f21 = m6 - ((m6 - f19) * 0.5519f);
                                float f22 = m7 - ((m7 - f18) * 0.5519f);
                                float f23 = m8 - ((m8 - f19) * 0.5519f);
                                ArrayList arrayList8 = (ArrayList) list4;
                                shapeData = shapeData7;
                                CubicCurveData cubicCurveData11 = (CubicCurveData) arrayList8.get(RoundedCornersContent.floorMod(i9 - 1, arrayList8.size()));
                                CubicCurveData cubicCurveData12 = (CubicCurveData) arrayList8.get(i9);
                                f2 = floatValue;
                                cubicCurveData11.controlPoint2.set(m5, m6);
                                cubicCurveData11.vertex.set(m5, m6);
                                if (i2 == 0) {
                                    shapeData6.setInitialPoint(m5, m6);
                                }
                                cubicCurveData12.controlPoint1.set(f20, f21);
                                i9++;
                                CubicCurveData cubicCurveData13 = (CubicCurveData) arrayList8.get(i9);
                                cubicCurveData12.controlPoint2.set(f22, f23);
                                cubicCurveData12.vertex.set(m7, m8);
                                cubicCurveData13.controlPoint1.set(m7, m8);
                            } else {
                                i3 = size6;
                                arrayList = arrayList5;
                                shapeData = shapeData4;
                                f2 = floatValue;
                                ArrayList arrayList9 = (ArrayList) list4;
                                CubicCurveData cubicCurveData14 = (CubicCurveData) arrayList9.get(RoundedCornersContent.floorMod(i9 - 1, arrayList9.size()));
                                CubicCurveData cubicCurveData15 = (CubicCurveData) arrayList9.get(i9);
                                PointF pointF19 = cubicCurveData9.controlPoint2;
                                cubicCurveData14.controlPoint2.set(pointF19.x, pointF19.y);
                                PointF pointF20 = cubicCurveData9.vertex;
                                cubicCurveData14.vertex.set(pointF20.x, pointF20.y);
                                PointF pointF21 = cubicCurveData8.controlPoint1;
                                cubicCurveData15.controlPoint1.set(pointF21.x, pointF21.y);
                            }
                            i9++;
                            i2++;
                            z4 = z5;
                            arrayList5 = arrayList;
                            size6 = i3;
                            shapeData4 = shapeData;
                            floatValue = f2;
                        }
                        i = size6;
                        shapeData4 = shapeData6;
                        size6 = i - 1;
                        i5 = 1;
                        shapeKeyframeAnimation = this;
                    }
                }
                i = size6;
                size6 = i - 1;
                i5 = 1;
                shapeKeyframeAnimation = this;
            }
        }
        Path path = this.tempPath;
        path.reset();
        PointF pointF22 = shapeData4.initialPoint;
        path.moveTo(pointF22.x, pointF22.y);
        PointF pointF23 = MiscUtils.pathFromDataCurrentPoint;
        pointF23.set(pointF22.x, pointF22.y);
        int i10 = 0;
        while (true) {
            ArrayList arrayList10 = (ArrayList) shapeData4.curves;
            if (i10 >= arrayList10.size()) {
                break;
            }
            CubicCurveData cubicCurveData16 = (CubicCurveData) arrayList10.get(i10);
            PointF pointF24 = cubicCurveData16.controlPoint1;
            boolean equals = pointF24.equals(pointF23);
            PointF pointF25 = cubicCurveData16.controlPoint2;
            PointF pointF26 = cubicCurveData16.vertex;
            if (equals && pointF25.equals(pointF26)) {
                path.lineTo(pointF26.x, pointF26.y);
            } else {
                path.cubicTo(pointF24.x, pointF24.y, pointF25.x, pointF25.y, pointF26.x, pointF26.y);
            }
            pointF23.set(pointF26.x, pointF26.y);
            i10++;
        }
        if (shapeData4.closed) {
            path.close();
        }
        return path;
    }
}
