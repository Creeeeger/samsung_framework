package com.samsung.android.knox.lockscreen;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes3.dex */
public final class LSOWidgetView {
    public static final String TAG = "LSO";

    /* JADX WARN: Removed duplicated region for block: B:17:0x0053 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:18:0x0054  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static android.view.View getWidget(android.content.Context r9, com.samsung.android.knox.lockscreen.LSOItemWidget r10) {
        /*
            java.lang.String r0 = "LSO"
            java.lang.String r1 = " directly/indirectly not inherited from View object"
            java.lang.String r2 = r10.packageName
            r3 = 0
            if (r2 == 0) goto Lcd
            int r4 = r2.length()
            if (r4 != 0) goto L11
            goto Lcd
        L11:
            r4 = 0
            r5 = 1
            java.lang.Class r6 = java.lang.Class.forName(r2)     // Catch: java.lang.Exception -> L3e java.lang.ClassNotFoundException -> L46
            java.lang.Class<android.view.View> r7 = android.view.View.class
            boolean r7 = r7.isAssignableFrom(r6)     // Catch: java.lang.Exception -> L3c java.lang.ClassNotFoundException -> L47
            if (r7 != 0) goto L27
            java.lang.String r9 = r2.concat(r1)     // Catch: java.lang.Exception -> L3c java.lang.ClassNotFoundException -> L47
            android.util.Log.d(r0, r9)     // Catch: java.lang.Exception -> L3c java.lang.ClassNotFoundException -> L47
            return r3
        L27:
            java.lang.Class[] r1 = new java.lang.Class[r5]     // Catch: java.lang.Exception -> L3c java.lang.ClassNotFoundException -> L47
            java.lang.Class<android.content.Context> r7 = android.content.Context.class
            r1[r4] = r7     // Catch: java.lang.Exception -> L3c java.lang.ClassNotFoundException -> L47
            java.lang.Object[] r9 = new java.lang.Object[]{r9}     // Catch: java.lang.Exception -> L3c java.lang.ClassNotFoundException -> L47
            java.lang.reflect.Constructor r1 = r6.getConstructor(r1)     // Catch: java.lang.Exception -> L3c java.lang.ClassNotFoundException -> L47
            java.lang.Object r9 = r1.newInstance(r9)     // Catch: java.lang.Exception -> L3c java.lang.ClassNotFoundException -> L47
            android.view.View r9 = (android.view.View) r9     // Catch: java.lang.Exception -> L3c java.lang.ClassNotFoundException -> L47
            goto L51
        L3c:
            r9 = move-exception
            goto L40
        L3e:
            r9 = move-exception
            r6 = r3
        L40:
            java.lang.String r1 = "Unhandled Exception: "
            com.android.keyguard.EmergencyButton$$ExternalSyntheticOutline0.m(r1, r9, r0)
            goto L50
        L46:
            r6 = r3
        L47:
            java.lang.String r9 = " Class not found Exception: "
            java.lang.String r9 = r2.concat(r9)
            android.util.Log.e(r0, r9)
        L50:
            r9 = r3
        L51:
            if (r9 != 0) goto L54
            return r3
        L54:
            com.samsung.android.knox.lockscreen.LSOAttributeSet r1 = r10.getAttrs()
            int r3 = r1.size()
            if (r3 > 0) goto L5f
            return r9
        L5f:
            r3 = 2
            java.lang.Class[] r7 = new java.lang.Class[r3]     // Catch: java.lang.Exception -> Lad java.lang.NoSuchMethodException -> Lb4
            java.lang.Class<java.lang.String> r8 = java.lang.String.class
            r7[r4] = r8     // Catch: java.lang.Exception -> Lad java.lang.NoSuchMethodException -> Lb4
            java.lang.Class<java.lang.Object> r8 = java.lang.Object.class
            r7[r5] = r8     // Catch: java.lang.Exception -> Lad java.lang.NoSuchMethodException -> Lb4
            java.lang.String r8 = "setAttribute"
            java.lang.reflect.Method r6 = r6.getMethod(r8, r7)     // Catch: java.lang.Exception -> Lad java.lang.NoSuchMethodException -> Lb4
            java.lang.Object[] r3 = new java.lang.Object[r3]     // Catch: java.lang.Exception -> Lad java.lang.NoSuchMethodException -> Lb4
            r7 = 32
            boolean r7 = r10.isFieldUpdated(r7)     // Catch: java.lang.Exception -> Lad java.lang.NoSuchMethodException -> Lb4
            if (r7 == 0) goto L89
            java.lang.String r7 = "android:gravity"
            r3[r4] = r7     // Catch: java.lang.Exception -> Lad java.lang.NoSuchMethodException -> Lb4
            int r10 = r10.gravity     // Catch: java.lang.Exception -> Lad java.lang.NoSuchMethodException -> Lb4
            java.lang.Integer r10 = java.lang.Integer.valueOf(r10)     // Catch: java.lang.Exception -> Lad java.lang.NoSuchMethodException -> Lb4
            r3[r5] = r10     // Catch: java.lang.Exception -> Lad java.lang.NoSuchMethodException -> Lb4
            r6.invoke(r9, r3)     // Catch: java.lang.Exception -> Lad java.lang.NoSuchMethodException -> Lb4
        L89:
            java.util.Set r10 = r1.valueSet()     // Catch: java.lang.Exception -> Lad java.lang.NoSuchMethodException -> Lb4
            java.util.Iterator r10 = r10.iterator()     // Catch: java.lang.Exception -> Lad java.lang.NoSuchMethodException -> Lb4
        L91:
            boolean r1 = r10.hasNext()     // Catch: java.lang.Exception -> Lad java.lang.NoSuchMethodException -> Lb4
            if (r1 == 0) goto Lcc
            java.lang.Object r1 = r10.next()     // Catch: java.lang.Exception -> Lad java.lang.NoSuchMethodException -> Lb4
            java.util.Map$Entry r1 = (java.util.Map.Entry) r1     // Catch: java.lang.Exception -> Lad java.lang.NoSuchMethodException -> Lb4
            java.lang.Object r7 = r1.getKey()     // Catch: java.lang.Exception -> Lad java.lang.NoSuchMethodException -> Lb4
            r3[r4] = r7     // Catch: java.lang.Exception -> Lad java.lang.NoSuchMethodException -> Lb4
            java.lang.Object r1 = r1.getValue()     // Catch: java.lang.Exception -> Lad java.lang.NoSuchMethodException -> Lb4
            r3[r5] = r1     // Catch: java.lang.Exception -> Lad java.lang.NoSuchMethodException -> Lb4
            r6.invoke(r9, r3)     // Catch: java.lang.Exception -> Lad java.lang.NoSuchMethodException -> Lb4
            goto L91
        Lad:
            r10 = move-exception
            java.lang.String r1 = "Exception: "
            com.android.keyguard.EmergencyButton$$ExternalSyntheticOutline0.m(r1, r10, r0)
            goto Lcc
        Lb4:
            r10 = move-exception
            java.lang.StringBuilder r1 = new java.lang.StringBuilder
            r1.<init>()
            r1.append(r2)
            java.lang.String r2 = " does not support method setAttribute(String,Object) : "
            r1.append(r2)
            r1.append(r10)
            java.lang.String r10 = r1.toString()
            android.util.Log.e(r0, r10)
        Lcc:
            return r9
        Lcd:
            return r3
        */
        throw new UnsupportedOperationException("Method not decompiled: com.samsung.android.knox.lockscreen.LSOWidgetView.getWidget(android.content.Context, com.samsung.android.knox.lockscreen.LSOItemWidget):android.view.View");
    }
}
