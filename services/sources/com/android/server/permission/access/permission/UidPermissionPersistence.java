package com.android.server.permission.access.permission;

import android.content.pm.PermissionInfo;
import android.util.ArrayMap;
import android.util.Log;
import android.util.SparseArray;
import com.android.modules.utils.BinaryXmlPullParser;
import com.android.modules.utils.BinaryXmlSerializer;
import com.android.server.permission.access.AccessState;
import com.android.server.permission.access.SystemState;
import com.android.server.permission.access.UserState;
import com.android.server.permission.jarjar.kotlin.jvm.internal.DefaultConstructorMarker;
import com.android.server.permission.jarjar.kotlin.jvm.internal.Intrinsics;
import com.samsung.android.knox.custom.KnoxCustomManagerService;

/* compiled from: UidPermissionPersistence.kt */
/* loaded from: classes2.dex */
public final class UidPermissionPersistence {
    public static final Companion Companion = new Companion(null);
    public static final String LOG_TAG = UidPermissionPersistence.class.getSimpleName();

    /* compiled from: UidPermissionPersistence.kt */
    /* loaded from: classes2.dex */
    public final class Companion {
        public Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }
    }

    public final void parseSystemState(BinaryXmlPullParser binaryXmlPullParser, AccessState accessState) {
        SystemState systemState = accessState.getSystemState();
        String name = binaryXmlPullParser.getName();
        if (Intrinsics.areEqual(name, "permission-trees")) {
            parsePermissions(binaryXmlPullParser, systemState.getPermissionTrees());
        } else if (Intrinsics.areEqual(name, "permissions")) {
            parsePermissions(binaryXmlPullParser, systemState.getPermissions());
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:47:0x00a2, code lost:
    
        r0 = r10.next();
     */
    /* JADX WARN: Code restructure failed: missing block: B:48:0x00a6, code lost:
    
        if (r0 == 1) goto L61;
     */
    /* JADX WARN: Code restructure failed: missing block: B:49:0x00a8, code lost:
    
        if (r0 == 2) goto L62;
     */
    /* JADX WARN: Code restructure failed: missing block: B:50:0x00aa, code lost:
    
        if (r0 == 3) goto L63;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final void parseAppIdPermissions(com.android.modules.utils.BinaryXmlPullParser r10, android.util.ArrayMap r11) {
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
            if (r0 == r3) goto Lec
            if (r0 == r2) goto L4f
            if (r0 != r4) goto L3a
            goto Lec
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
            java.lang.String r6 = "permission"
            boolean r5 = com.android.server.permission.jarjar.kotlin.jvm.internal.Intrinsics.areEqual(r5, r6)
            if (r5 == 0) goto L64
            r9.parseAppIdPermission(r10, r11)
            goto L83
        L64:
            java.lang.String r5 = com.android.server.permission.access.permission.UidPermissionPersistence.LOG_TAG
            java.lang.String r6 = r10.getName()
            java.lang.StringBuilder r7 = new java.lang.StringBuilder
            r7.<init>()
            java.lang.String r8 = "Ignoring unknown tag "
            r7.append(r8)
            r7.append(r6)
            java.lang.String r6 = " when parsing permission state"
            r7.append(r6)
            java.lang.String r6 = r7.toString()
            android.util.Log.w(r5, r6)
        L83:
            int r5 = r10.getDepth()
            if (r5 != r0) goto Lcd
        L89:
            int r5 = r10.getEventType()
            if (r5 == r2) goto Lc2
            if (r5 != r4) goto Lad
            int r5 = r10.getDepth()
            if (r5 <= r0) goto La2
        L97:
            int r5 = r10.next()
            if (r5 == r3) goto L89
            if (r5 == r2) goto L89
            if (r5 == r4) goto L89
            goto L97
        La2:
            int r0 = r10.next()
            if (r0 == r3) goto L2e
            if (r0 == r2) goto L2e
            if (r0 == r4) goto L2e
            goto La2
        Lad:
            org.xmlpull.v1.XmlPullParserException r9 = new org.xmlpull.v1.XmlPullParserException
            java.lang.StringBuilder r10 = new java.lang.StringBuilder
            r10.<init>()
            r10.append(r1)
            r10.append(r5)
            java.lang.String r10 = r10.toString()
            r9.<init>(r10)
            throw r9
        Lc2:
            int r5 = r10.next()
            if (r5 == r3) goto L89
            if (r5 == r2) goto L89
            if (r5 == r4) goto L89
            goto Lc2
        Lcd:
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
        Lec:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.server.permission.access.permission.UidPermissionPersistence.parseAppIdPermissions(com.android.modules.utils.BinaryXmlPullParser, android.util.ArrayMap):void");
    }

    /* JADX WARN: Code restructure failed: missing block: B:47:0x009e, code lost:
    
        r0 = r10.next();
     */
    /* JADX WARN: Code restructure failed: missing block: B:48:0x00a2, code lost:
    
        if (r0 == 1) goto L61;
     */
    /* JADX WARN: Code restructure failed: missing block: B:49:0x00a4, code lost:
    
        if (r0 == 2) goto L62;
     */
    /* JADX WARN: Code restructure failed: missing block: B:50:0x00a6, code lost:
    
        if (r0 == 3) goto L63;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final void parsePermissions(com.android.modules.utils.BinaryXmlPullParser r10, android.util.ArrayMap r11) {
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
            if (r0 == r3) goto Le8
            if (r0 == r2) goto L4f
            if (r0 != r4) goto L3a
            goto Le8
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
            java.lang.String r6 = "permission"
            boolean r6 = com.android.server.permission.jarjar.kotlin.jvm.internal.Intrinsics.areEqual(r5, r6)
            if (r6 == 0) goto L64
            r9.parsePermission(r10, r11)
            goto L7f
        L64:
            java.lang.String r6 = com.android.server.permission.access.permission.UidPermissionPersistence.LOG_TAG
            java.lang.StringBuilder r7 = new java.lang.StringBuilder
            r7.<init>()
            java.lang.String r8 = "Ignoring unknown tag "
            r7.append(r8)
            r7.append(r5)
            java.lang.String r5 = " when parsing permissions"
            r7.append(r5)
            java.lang.String r5 = r7.toString()
            android.util.Log.w(r6, r5)
        L7f:
            int r5 = r10.getDepth()
            if (r5 != r0) goto Lc9
        L85:
            int r5 = r10.getEventType()
            if (r5 == r2) goto Lbe
            if (r5 != r4) goto La9
            int r5 = r10.getDepth()
            if (r5 <= r0) goto L9e
        L93:
            int r5 = r10.next()
            if (r5 == r3) goto L85
            if (r5 == r2) goto L85
            if (r5 == r4) goto L85
            goto L93
        L9e:
            int r0 = r10.next()
            if (r0 == r3) goto L2e
            if (r0 == r2) goto L2e
            if (r0 == r4) goto L2e
            goto L9e
        La9:
            org.xmlpull.v1.XmlPullParserException r9 = new org.xmlpull.v1.XmlPullParserException
            java.lang.StringBuilder r10 = new java.lang.StringBuilder
            r10.<init>()
            r10.append(r1)
            r10.append(r5)
            java.lang.String r10 = r10.toString()
            r9.<init>(r10)
            throw r9
        Lbe:
            int r5 = r10.next()
            if (r5 == r3) goto L85
            if (r5 == r2) goto L85
            if (r5 == r4) goto L85
            goto Lbe
        Lc9:
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
        Le8:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.server.permission.access.permission.UidPermissionPersistence.parsePermissions(com.android.modules.utils.BinaryXmlPullParser, android.util.ArrayMap):void");
    }

    public final void serializeAppId(BinaryXmlSerializer binaryXmlSerializer, int i, ArrayMap arrayMap) {
        binaryXmlSerializer.startTag((String) null, "app-id");
        binaryXmlSerializer.attributeInt((String) null, "id", i);
        serializeAppIdPermissions(binaryXmlSerializer, arrayMap);
        binaryXmlSerializer.endTag((String) null, "app-id");
    }

    public final void serializeAppIdPermission(BinaryXmlSerializer binaryXmlSerializer, String str, int i) {
        binaryXmlSerializer.startTag((String) null, "permission");
        binaryXmlSerializer.attributeInterned((String) null, "name", str);
        binaryXmlSerializer.attributeInt((String) null, "flags", i);
        binaryXmlSerializer.endTag((String) null, "permission");
    }

    public final void serializePermissionFlags(BinaryXmlSerializer binaryXmlSerializer, UserState userState) {
        binaryXmlSerializer.startTag((String) null, "permissions");
        SparseArray uidPermissionFlags = userState.getUidPermissionFlags();
        int size = uidPermissionFlags.size();
        for (int i = 0; i < size; i++) {
            serializeAppId(binaryXmlSerializer, uidPermissionFlags.keyAt(i), (ArrayMap) uidPermissionFlags.valueAt(i));
        }
        binaryXmlSerializer.endTag((String) null, "permissions");
    }

    public final void serializePermissions(BinaryXmlSerializer binaryXmlSerializer, String str, ArrayMap arrayMap) {
        binaryXmlSerializer.startTag((String) null, str);
        int size = arrayMap.size();
        for (int i = 0; i < size; i++) {
            serializePermission(binaryXmlSerializer, (Permission) arrayMap.valueAt(i));
        }
        binaryXmlSerializer.endTag((String) null, str);
    }

    public final void serializeAppIdPermissions(BinaryXmlSerializer binaryXmlSerializer, ArrayMap arrayMap) {
        int size = arrayMap.size();
        for (int i = 0; i < size; i++) {
            serializeAppIdPermission(binaryXmlSerializer, (String) arrayMap.keyAt(i), ((Number) arrayMap.valueAt(i)).intValue());
        }
    }

    public final void serializeSystemState(BinaryXmlSerializer binaryXmlSerializer, AccessState accessState) {
        SystemState systemState = accessState.getSystemState();
        serializePermissions(binaryXmlSerializer, "permission-trees", systemState.getPermissionTrees());
        serializePermissions(binaryXmlSerializer, "permissions", systemState.getPermissions());
    }

    public final void serializePermission(BinaryXmlSerializer binaryXmlSerializer, Permission permission) {
        String obj;
        int type = permission.getType();
        if (type != 0) {
            if (type == 1) {
                return;
            }
            if (type != 2) {
                Log.w(LOG_TAG, "Skipping serializing permission " + binaryXmlSerializer.getName() + " with unknown type " + type);
                return;
            }
        }
        binaryXmlSerializer.startTag((String) null, "permission");
        binaryXmlSerializer.attributeInterned((String) null, "name", permission.getPermissionInfo().name);
        binaryXmlSerializer.attributeInterned((String) null, "packageName", permission.getPermissionInfo().packageName);
        binaryXmlSerializer.attributeIntHex((String) null, "protectionLevel", permission.getPermissionInfo().protectionLevel);
        binaryXmlSerializer.attributeInt((String) null, "type", type);
        if (type == 2) {
            PermissionInfo permissionInfo = permission.getPermissionInfo();
            int i = permissionInfo.icon;
            if (i != 0) {
                binaryXmlSerializer.attributeIntHex((String) null, KnoxCustomManagerService.ICON, i);
            }
            CharSequence charSequence = permissionInfo.nonLocalizedLabel;
            if (charSequence != null && (obj = charSequence.toString()) != null) {
                binaryXmlSerializer.attribute((String) null, "label", obj);
            }
        }
        binaryXmlSerializer.endTag((String) null, "permission");
    }

    public final void parseUserState(BinaryXmlPullParser binaryXmlPullParser, AccessState accessState, int i) {
        if (Intrinsics.areEqual(binaryXmlPullParser.getName(), "permissions")) {
            parsePermissionFlags(binaryXmlPullParser, accessState, i);
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:47:0x00ab, code lost:
    
        r0 = r11.next();
     */
    /* JADX WARN: Code restructure failed: missing block: B:48:0x00af, code lost:
    
        if (r0 == 1) goto L70;
     */
    /* JADX WARN: Code restructure failed: missing block: B:49:0x00b1, code lost:
    
        if (r0 == 2) goto L71;
     */
    /* JADX WARN: Code restructure failed: missing block: B:50:0x00b3, code lost:
    
        if (r0 == 3) goto L72;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final void parsePermissionFlags(com.android.modules.utils.BinaryXmlPullParser r11, com.android.server.permission.access.AccessState r12, int r13) {
        /*
            Method dump skipped, instructions count: 315
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.server.permission.access.permission.UidPermissionPersistence.parsePermissionFlags(com.android.modules.utils.BinaryXmlPullParser, com.android.server.permission.access.AccessState, int):void");
    }

    public final void parseAppIdPermission(BinaryXmlPullParser binaryXmlPullParser, ArrayMap arrayMap) {
        String intern = binaryXmlPullParser.getAttributeValue(binaryXmlPullParser.getAttributeIndexOrThrow((String) null, "name")).intern();
        Intrinsics.checkNotNullExpressionValue(intern, "this as java.lang.String).intern()");
        arrayMap.put(intern, Integer.valueOf(binaryXmlPullParser.getAttributeInt((String) null, "flags")));
    }

    public final void parsePermission(BinaryXmlPullParser binaryXmlPullParser, ArrayMap arrayMap) {
        String intern = binaryXmlPullParser.getAttributeValue(binaryXmlPullParser.getAttributeIndexOrThrow((String) null, "name")).intern();
        Intrinsics.checkNotNullExpressionValue(intern, "this as java.lang.String).intern()");
        PermissionInfo permissionInfo = new PermissionInfo();
        permissionInfo.name = intern;
        String intern2 = binaryXmlPullParser.getAttributeValue(binaryXmlPullParser.getAttributeIndexOrThrow((String) null, "packageName")).intern();
        Intrinsics.checkNotNullExpressionValue(intern2, "this as java.lang.String).intern()");
        permissionInfo.packageName = intern2;
        permissionInfo.protectionLevel = binaryXmlPullParser.getAttributeIntHex((String) null, "protectionLevel");
        int attributeInt = binaryXmlPullParser.getAttributeInt((String) null, "type");
        if (attributeInt != 0) {
            if (attributeInt == 1) {
                Log.w(LOG_TAG, "Ignoring unexpected config permission " + intern);
                return;
            }
            if (attributeInt == 2) {
                permissionInfo.icon = binaryXmlPullParser.getAttributeIntHex((String) null, KnoxCustomManagerService.ICON, 0);
                permissionInfo.nonLocalizedLabel = binaryXmlPullParser.getAttributeValue((String) null, "label");
            } else {
                Log.w(LOG_TAG, "Ignoring permission " + intern + " with unknown type " + attributeInt);
                return;
            }
        }
        arrayMap.put(intern, new Permission(permissionInfo, false, attributeInt, 0, null, false, 48, null));
    }

    public final void serializeUserState(BinaryXmlSerializer binaryXmlSerializer, AccessState accessState, int i) {
        serializePermissionFlags(binaryXmlSerializer, (UserState) accessState.getUserStates().get(i));
    }

    public final void parseAppId(BinaryXmlPullParser binaryXmlPullParser, UserState userState) {
        int attributeInt = binaryXmlPullParser.getAttributeInt((String) null, "id");
        ArrayMap arrayMap = new ArrayMap();
        userState.getUidPermissionFlags().set(attributeInt, arrayMap);
        parseAppIdPermissions(binaryXmlPullParser, arrayMap);
    }
}
