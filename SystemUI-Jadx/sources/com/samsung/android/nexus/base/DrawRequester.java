package com.samsung.android.nexus.base;

import com.samsung.android.nexus.base.utils.Log;
import java.lang.reflect.Method;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes3.dex */
public final class DrawRequester {
    public final Method mInvalidateMethod;
    public final Object mInvalidatorInstance;

    public DrawRequester(Object obj) {
        this.mInvalidateMethod = null;
        this.mInvalidatorInstance = obj;
        try {
            try {
                this.mInvalidateMethod = obj.getClass().getMethod("invalidate", new Class[0]);
            } catch (NoSuchMethodException unused) {
                Method declaredMethod = obj.getClass().getDeclaredMethod("invalidate", new Class[0]);
                this.mInvalidateMethod = declaredMethod;
                declaredMethod.setAccessible(true);
            }
        } catch (NoSuchMethodException unused2) {
            Log.e("DrawRequester", "There's no invalidate() method in you Engine. You should implement it.");
        }
    }
}
