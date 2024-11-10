package com.android.server.permission.access.appop;

import android.util.ArrayMap;
import android.util.SparseArray;
import com.android.modules.utils.BinaryXmlPullParser;
import com.android.modules.utils.BinaryXmlSerializer;
import com.android.server.permission.access.AccessState;
import com.android.server.permission.access.UserState;
import com.android.server.permission.jarjar.kotlin.jvm.internal.DefaultConstructorMarker;
import com.android.server.permission.jarjar.kotlin.jvm.internal.Intrinsics;

/* compiled from: UidAppOpPersistence.kt */
/* loaded from: classes2.dex */
public final class UidAppOpPersistence extends BaseAppOpPersistence {
    public static final Companion Companion = new Companion(null);
    public static final String LOG_TAG = UidAppOpPersistence.class.getSimpleName();

    /* compiled from: UidAppOpPersistence.kt */
    /* loaded from: classes2.dex */
    public final class Companion {
        public Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
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
    public final void parseUidAppOps(com.android.modules.utils.BinaryXmlPullParser r11, com.android.server.permission.access.AccessState r12, int r13) {
        /*
            Method dump skipped, instructions count: 315
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.server.permission.access.appop.UidAppOpPersistence.parseUidAppOps(com.android.modules.utils.BinaryXmlPullParser, com.android.server.permission.access.AccessState, int):void");
    }

    public final void serializeAppId(BinaryXmlSerializer binaryXmlSerializer, int i, ArrayMap arrayMap) {
        binaryXmlSerializer.startTag((String) null, "app-id");
        binaryXmlSerializer.attributeInt((String) null, "id", i);
        serializeAppOps(binaryXmlSerializer, arrayMap);
        binaryXmlSerializer.endTag((String) null, "app-id");
    }

    public final void serializeUidAppOps(BinaryXmlSerializer binaryXmlSerializer, UserState userState) {
        binaryXmlSerializer.startTag((String) null, "uid-app-ops");
        SparseArray uidAppOpModes = userState.getUidAppOpModes();
        int size = uidAppOpModes.size();
        for (int i = 0; i < size; i++) {
            serializeAppId(binaryXmlSerializer, uidAppOpModes.keyAt(i), (ArrayMap) uidAppOpModes.valueAt(i));
        }
        binaryXmlSerializer.endTag((String) null, "uid-app-ops");
    }

    @Override // com.android.server.permission.access.appop.BaseAppOpPersistence
    public void serializeUserState(BinaryXmlSerializer binaryXmlSerializer, AccessState accessState, int i) {
        serializeUidAppOps(binaryXmlSerializer, (UserState) accessState.getUserStates().get(i));
    }

    @Override // com.android.server.permission.access.appop.BaseAppOpPersistence
    public void parseUserState(BinaryXmlPullParser binaryXmlPullParser, AccessState accessState, int i) {
        if (Intrinsics.areEqual(binaryXmlPullParser.getName(), "uid-app-ops")) {
            parseUidAppOps(binaryXmlPullParser, accessState, i);
        }
    }

    public final void parseAppId(BinaryXmlPullParser binaryXmlPullParser, UserState userState) {
        int attributeInt = binaryXmlPullParser.getAttributeInt((String) null, "id");
        ArrayMap arrayMap = new ArrayMap();
        userState.getUidAppOpModes().set(attributeInt, arrayMap);
        parseAppOps(binaryXmlPullParser, arrayMap);
    }
}
