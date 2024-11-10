package com.android.server.permission.access.appop;

import android.util.ArrayMap;
import com.android.modules.utils.BinaryXmlPullParser;
import com.android.modules.utils.BinaryXmlSerializer;
import com.android.server.permission.access.AccessState;
import com.android.server.permission.jarjar.kotlin.jvm.internal.DefaultConstructorMarker;
import com.android.server.permission.jarjar.kotlin.jvm.internal.Intrinsics;

/* compiled from: BaseAppOpPersistence.kt */
/* loaded from: classes2.dex */
public abstract class BaseAppOpPersistence {
    public static final Companion Companion = new Companion(null);
    public static final String LOG_TAG = BaseAppOpPersistence.class.getSimpleName();

    /* compiled from: BaseAppOpPersistence.kt */
    /* loaded from: classes2.dex */
    public final class Companion {
        public Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }
    }

    public abstract void parseUserState(BinaryXmlPullParser binaryXmlPullParser, AccessState accessState, int i);

    public abstract void serializeUserState(BinaryXmlSerializer binaryXmlSerializer, AccessState accessState, int i);

    /* JADX WARN: Code restructure failed: missing block: B:47:0x00a1, code lost:
    
        r0 = r10.next();
     */
    /* JADX WARN: Code restructure failed: missing block: B:48:0x00a5, code lost:
    
        if (r0 == 1) goto L61;
     */
    /* JADX WARN: Code restructure failed: missing block: B:49:0x00a7, code lost:
    
        if (r0 == 2) goto L62;
     */
    /* JADX WARN: Code restructure failed: missing block: B:50:0x00a9, code lost:
    
        if (r0 == 3) goto L63;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final void parseAppOps(com.android.modules.utils.BinaryXmlPullParser r10, android.util.ArrayMap r11) {
        /*
            r9 = this;
            int r0 = r10.getEventType()
            java.lang.String r1 = "Unexpected event type "
            r2 = 2
            if (r0 == 0) goto L21
            if (r0 != r2) goto Lc
            goto L21
        Lc:
            org.xmlpull.v1.XmlPullParserException r9 = new org.xmlpull.v1.XmlPullParserException
            java.lang.StringBuilder r10 = new java.lang.StringBuilder
            r10.<init>()
            r10.append(r1)
            r10.append(r0)
            java.lang.String r10 = r10.toString()
            r9.<init>(r10)
            throw r9
        L21:
            int r0 = r10.next()
            r3 = 1
            r4 = 3
            if (r0 == r3) goto L2e
            if (r0 == r2) goto L2e
            if (r0 == r4) goto L2e
            goto L21
        L2e:
            int r0 = r10.getEventType()
            if (r0 == r3) goto Leb
            if (r0 == r2) goto L4f
            if (r0 != r4) goto L3a
            goto Leb
        L3a:
            org.xmlpull.v1.XmlPullParserException r9 = new org.xmlpull.v1.XmlPullParserException
            java.lang.StringBuilder r10 = new java.lang.StringBuilder
            r10.<init>()
            r10.append(r1)
            r10.append(r0)
            java.lang.String r10 = r10.toString()
            r9.<init>(r10)
            throw r9
        L4f:
            int r0 = r10.getDepth()
            java.lang.String r5 = r10.getName()
            java.lang.String r6 = "app-op"
            boolean r5 = com.android.server.permission.jarjar.kotlin.jvm.internal.Intrinsics.areEqual(r5, r6)
            if (r5 == 0) goto L63
            r9.parseAppOp(r10, r11)
            goto L82
        L63:
            java.lang.String r5 = com.android.server.permission.access.appop.BaseAppOpPersistence.LOG_TAG
            java.lang.String r6 = r10.getName()
            java.lang.StringBuilder r7 = new java.lang.StringBuilder
            r7.<init>()
            java.lang.String r8 = "Ignoring unknown tag "
            r7.append(r8)
            r7.append(r6)
            java.lang.String r6 = " when parsing app-op state"
            r7.append(r6)
            java.lang.String r6 = r7.toString()
            android.util.Log.w(r5, r6)
        L82:
            int r5 = r10.getDepth()
            if (r5 != r0) goto Lcc
        L88:
            int r5 = r10.getEventType()
            if (r5 == r2) goto Lc1
            if (r5 != r4) goto Lac
            int r5 = r10.getDepth()
            if (r5 <= r0) goto La1
        L96:
            int r5 = r10.next()
            if (r5 == r3) goto L88
            if (r5 == r2) goto L88
            if (r5 == r4) goto L88
            goto L96
        La1:
            int r0 = r10.next()
            if (r0 == r3) goto L2e
            if (r0 == r2) goto L2e
            if (r0 == r4) goto L2e
            goto La1
        Lac:
            org.xmlpull.v1.XmlPullParserException r9 = new org.xmlpull.v1.XmlPullParserException
            java.lang.StringBuilder r10 = new java.lang.StringBuilder
            r10.<init>()
            r10.append(r1)
            r10.append(r5)
            java.lang.String r10 = r10.toString()
            r9.<init>(r10)
            throw r9
        Lc1:
            int r5 = r10.next()
            if (r5 == r3) goto L88
            if (r5 == r2) goto L88
            if (r5 == r4) goto L88
            goto Lc1
        Lcc:
            org.xmlpull.v1.XmlPullParserException r9 = new org.xmlpull.v1.XmlPullParserException
            java.lang.StringBuilder r10 = new java.lang.StringBuilder
            r10.<init>()
            java.lang.String r11 = "Unexpected post-block depth "
            r10.append(r11)
            r10.append(r5)
            java.lang.String r11 = ", expected "
            r10.append(r11)
            r10.append(r0)
            java.lang.String r10 = r10.toString()
            r9.<init>(r10)
            throw r9
        Leb:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.server.permission.access.appop.BaseAppOpPersistence.parseAppOps(com.android.modules.utils.BinaryXmlPullParser, android.util.ArrayMap):void");
    }

    public final void serializeAppOp(BinaryXmlSerializer binaryXmlSerializer, String str, int i) {
        binaryXmlSerializer.startTag((String) null, "app-op");
        binaryXmlSerializer.attributeInterned((String) null, "name", str);
        binaryXmlSerializer.attributeInt((String) null, "mode", i);
        binaryXmlSerializer.endTag((String) null, "app-op");
    }

    public final void serializeAppOps(BinaryXmlSerializer binaryXmlSerializer, ArrayMap arrayMap) {
        int size = arrayMap.size();
        for (int i = 0; i < size; i++) {
            serializeAppOp(binaryXmlSerializer, (String) arrayMap.keyAt(i), ((Number) arrayMap.valueAt(i)).intValue());
        }
    }

    public final void parseAppOp(BinaryXmlPullParser binaryXmlPullParser, ArrayMap arrayMap) {
        String intern = binaryXmlPullParser.getAttributeValue(binaryXmlPullParser.getAttributeIndexOrThrow((String) null, "name")).intern();
        Intrinsics.checkNotNullExpressionValue(intern, "this as java.lang.String).intern()");
        arrayMap.put(intern, Integer.valueOf(binaryXmlPullParser.getAttributeInt((String) null, "mode")));
    }
}
