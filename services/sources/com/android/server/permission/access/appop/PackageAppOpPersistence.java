package com.android.server.permission.access.appop;

import android.util.ArrayMap;
import com.android.modules.utils.BinaryXmlPullParser;
import com.android.modules.utils.BinaryXmlSerializer;
import com.android.server.permission.access.AccessState;
import com.android.server.permission.access.UserState;
import com.android.server.permission.jarjar.kotlin.jvm.internal.DefaultConstructorMarker;
import com.android.server.permission.jarjar.kotlin.jvm.internal.Intrinsics;

/* compiled from: PackageAppOpPersistence.kt */
/* loaded from: classes2.dex */
public final class PackageAppOpPersistence extends BaseAppOpPersistence {
    public static final Companion Companion = new Companion(null);
    public static final String LOG_TAG = PackageAppOpPersistence.class.getSimpleName();

    /* compiled from: PackageAppOpPersistence.kt */
    /* loaded from: classes2.dex */
    public final class Companion {
        public Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:47:0x00ac, code lost:
    
        r0 = r11.next();
     */
    /* JADX WARN: Code restructure failed: missing block: B:48:0x00b0, code lost:
    
        if (r0 == 1) goto L70;
     */
    /* JADX WARN: Code restructure failed: missing block: B:49:0x00b2, code lost:
    
        if (r0 == 2) goto L71;
     */
    /* JADX WARN: Code restructure failed: missing block: B:50:0x00b4, code lost:
    
        if (r0 == 3) goto L72;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final void parsePackageAppOps(com.android.modules.utils.BinaryXmlPullParser r11, com.android.server.permission.access.AccessState r12, int r13) {
        /*
            Method dump skipped, instructions count: 318
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.server.permission.access.appop.PackageAppOpPersistence.parsePackageAppOps(com.android.modules.utils.BinaryXmlPullParser, com.android.server.permission.access.AccessState, int):void");
    }

    public final void serializePackage(BinaryXmlSerializer binaryXmlSerializer, String str, ArrayMap arrayMap) {
        binaryXmlSerializer.startTag((String) null, "package");
        binaryXmlSerializer.attributeInterned((String) null, "name", str);
        serializeAppOps(binaryXmlSerializer, arrayMap);
        binaryXmlSerializer.endTag((String) null, "package");
    }

    public final void serializePackageAppOps(BinaryXmlSerializer binaryXmlSerializer, UserState userState) {
        binaryXmlSerializer.startTag((String) null, "package-app-ops");
        ArrayMap packageAppOpModes = userState.getPackageAppOpModes();
        int size = packageAppOpModes.size();
        for (int i = 0; i < size; i++) {
            serializePackage(binaryXmlSerializer, (String) packageAppOpModes.keyAt(i), (ArrayMap) packageAppOpModes.valueAt(i));
        }
        binaryXmlSerializer.endTag((String) null, "package-app-ops");
    }

    @Override // com.android.server.permission.access.appop.BaseAppOpPersistence
    public void serializeUserState(BinaryXmlSerializer binaryXmlSerializer, AccessState accessState, int i) {
        serializePackageAppOps(binaryXmlSerializer, (UserState) accessState.getUserStates().get(i));
    }

    @Override // com.android.server.permission.access.appop.BaseAppOpPersistence
    public void parseUserState(BinaryXmlPullParser binaryXmlPullParser, AccessState accessState, int i) {
        if (Intrinsics.areEqual(binaryXmlPullParser.getName(), "package-app-ops")) {
            parsePackageAppOps(binaryXmlPullParser, accessState, i);
        }
    }

    public final void parsePackage(BinaryXmlPullParser binaryXmlPullParser, UserState userState) {
        String intern = binaryXmlPullParser.getAttributeValue(binaryXmlPullParser.getAttributeIndexOrThrow((String) null, "name")).intern();
        Intrinsics.checkNotNullExpressionValue(intern, "this as java.lang.String).intern()");
        ArrayMap arrayMap = new ArrayMap();
        userState.getPackageAppOpModes().put(intern, arrayMap);
        parseAppOps(binaryXmlPullParser, arrayMap);
    }
}
