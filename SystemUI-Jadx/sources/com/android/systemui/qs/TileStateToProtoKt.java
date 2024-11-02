package com.android.systemui.qs;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public abstract class TileStateToProtoKt {
    /* JADX WARN: Code restructure failed: missing block: B:13:0x0041, code lost:
    
        if (r1 != 2) goto L16;
     */
    /* JADX WARN: Removed duplicated region for block: B:16:0x004a  */
    /* JADX WARN: Removed duplicated region for block: B:19:0x0055  */
    /* JADX WARN: Removed duplicated region for block: B:22:0x0060  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static final com.android.systemui.qs.nano.QsTileState toProto(com.android.systemui.plugins.qs.QSTile.State r4) {
        /*
            java.lang.String r0 = r4.spec
            boolean r0 = android.text.TextUtils.isEmpty(r0)
            if (r0 == 0) goto La
            r4 = 0
            return r4
        La:
            com.android.systemui.qs.nano.QsTileState r0 = new com.android.systemui.qs.nano.QsTileState
            r0.<init>()
            java.lang.String r1 = r4.spec
            java.lang.String r2 = "custom("
            boolean r1 = r1.startsWith(r2)
            if (r1 == 0) goto L34
            com.android.systemui.util.nano.ComponentNameProto r1 = new com.android.systemui.util.nano.ComponentNameProto
            r1.<init>()
            java.lang.String r2 = r4.spec
            android.content.ComponentName r2 = com.android.systemui.qs.external.CustomTile.getComponentFromSpec(r2)
            java.lang.String r3 = r2.getPackageName()
            r1.packageName = r3
            java.lang.String r2 = r2.getClassName()
            r1.className = r2
            r0.setComponentName(r1)
            goto L39
        L34:
            java.lang.String r1 = r4.spec
            r0.setSpec(r1)
        L39:
            int r1 = r4.state
            if (r1 == 0) goto L43
            r2 = 1
            if (r1 == r2) goto L44
            r2 = 2
            if (r1 == r2) goto L44
        L43:
            r2 = 0
        L44:
            r0.state = r2
            java.lang.CharSequence r1 = r4.label
            if (r1 == 0) goto L51
            java.lang.String r1 = r1.toString()
            r0.setLabel(r1)
        L51:
            java.lang.CharSequence r1 = r4.secondaryLabel
            if (r1 == 0) goto L5c
            java.lang.String r1 = r1.toString()
            r0.setSecondaryLabel(r1)
        L5c:
            boolean r1 = r4 instanceof com.android.systemui.plugins.qs.QSTile.BooleanState
            if (r1 == 0) goto L67
            com.android.systemui.plugins.qs.QSTile$BooleanState r4 = (com.android.systemui.plugins.qs.QSTile.BooleanState) r4
            boolean r4 = r4.value
            r0.setBooleanState(r4)
        L67:
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.systemui.qs.TileStateToProtoKt.toProto(com.android.systemui.plugins.qs.QSTile$State):com.android.systemui.qs.nano.QsTileState");
    }
}
