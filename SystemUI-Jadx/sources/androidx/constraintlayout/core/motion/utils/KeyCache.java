package androidx.constraintlayout.core.motion.utils;

import java.util.HashMap;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public final class KeyCache {
    public final HashMap map = new HashMap();

    public final float getFloatValue(String str, Object obj) {
        HashMap hashMap;
        float[] fArr;
        HashMap hashMap2 = this.map;
        if (!hashMap2.containsKey(obj) || (hashMap = (HashMap) hashMap2.get(obj)) == null || !hashMap.containsKey(str) || (fArr = (float[]) hashMap.get(str)) == null || fArr.length <= 0) {
            return Float.NaN;
        }
        return fArr[0];
    }
}
