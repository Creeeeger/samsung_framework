package com.android.server.permission.access;

import android.util.ArrayMap;
import android.util.SparseArray;
import com.android.modules.utils.BinaryXmlSerializer;
import com.android.server.permission.access.collection.IndexedListSet;
import com.android.server.permission.access.collection.IntSet;
import com.android.server.permission.access.collection.IntSetKt;
import com.android.server.permission.jarjar.kotlin.jvm.internal.DefaultConstructorMarker;
import com.android.server.permission.jarjar.kotlin.jvm.internal.Intrinsics;
import com.android.server.pm.permission.PermissionAllowlist;
import com.android.server.pm.pkg.PackageState;
import java.util.Iterator;
import java.util.Map;

/* compiled from: AccessPolicy.kt */
/* loaded from: classes2.dex */
public final class AccessPolicy {
    public static final Companion Companion = new Companion(null);
    public static final String LOG_TAG = AccessPolicy.class.getSimpleName();
    public final ArrayMap schemePolicies;

    /* compiled from: AccessPolicy.kt */
    /* loaded from: classes2.dex */
    public final class Companion {
        public Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }
    }

    public AccessPolicy(ArrayMap arrayMap) {
        this.schemePolicies = arrayMap;
    }

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public AccessPolicy() {
        /*
            r2 = this;
            android.util.ArrayMap r0 = new android.util.ArrayMap
            r0.<init>()
            com.android.server.permission.access.permission.UidPermissionPolicy r1 = new com.android.server.permission.access.permission.UidPermissionPolicy
            r1.<init>()
            _init_$lambda$1$addPolicy(r0, r1)
            com.android.server.permission.access.appop.UidAppOpPolicy r1 = new com.android.server.permission.access.appop.UidAppOpPolicy
            r1.<init>()
            _init_$lambda$1$addPolicy(r0, r1)
            com.android.server.permission.access.appop.PackageAppOpPolicy r1 = new com.android.server.permission.access.appop.PackageAppOpPolicy
            r1.<init>()
            _init_$lambda$1$addPolicy(r0, r1)
            r2.<init>(r0)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.server.permission.access.AccessPolicy.<init>():void");
    }

    public static final SchemePolicy _init_$lambda$1$addPolicy(ArrayMap arrayMap, SchemePolicy schemePolicy) {
        String subjectScheme = schemePolicy.getSubjectScheme();
        Object obj = arrayMap.get(subjectScheme);
        if (obj == null) {
            obj = new ArrayMap();
            arrayMap.put(subjectScheme, obj);
        }
        return (SchemePolicy) ((ArrayMap) obj).put(schemePolicy.getObjectScheme(), schemePolicy);
    }

    public final SchemePolicy getSchemePolicy(String str, String str2) {
        ArrayMap arrayMap = (ArrayMap) this.schemePolicies.get(str);
        SchemePolicy schemePolicy = arrayMap != null ? (SchemePolicy) arrayMap.get(str2) : null;
        if (schemePolicy != null) {
            return schemePolicy;
        }
        throw new IllegalStateException(("Scheme policy for " + str + " and " + str2 + " does not exist").toString());
    }

    /* JADX WARN: Code restructure failed: missing block: B:122:0x01a5, code lost:
    
        r0 = r18.next();
     */
    /* JADX WARN: Code restructure failed: missing block: B:123:0x01aa, code lost:
    
        if (r0 == 1) goto L122;
     */
    /* JADX WARN: Code restructure failed: missing block: B:124:0x01ac, code lost:
    
        if (r0 == 2) goto L123;
     */
    /* JADX WARN: Code restructure failed: missing block: B:126:0x01af, code lost:
    
        if (r0 == 3) goto L124;
     */
    /* JADX WARN: Code restructure failed: missing block: B:72:0x0111, code lost:
    
        r5 = r18.next();
     */
    /* JADX WARN: Code restructure failed: missing block: B:73:0x0116, code lost:
    
        if (r5 == 1) goto L133;
     */
    /* JADX WARN: Code restructure failed: missing block: B:74:0x0118, code lost:
    
        if (r5 == 2) goto L134;
     */
    /* JADX WARN: Code restructure failed: missing block: B:76:0x011b, code lost:
    
        if (r5 == 3) goto L135;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final void parseSystemState(com.android.modules.utils.BinaryXmlPullParser r18, com.android.server.permission.access.AccessState r19) {
        /*
            Method dump skipped, instructions count: 502
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.server.permission.access.AccessPolicy.parseSystemState(com.android.modules.utils.BinaryXmlPullParser, com.android.server.permission.access.AccessState):void");
    }

    /* JADX WARN: Code restructure failed: missing block: B:121:0x01b3, code lost:
    
        r1 = r18.next();
     */
    /* JADX WARN: Code restructure failed: missing block: B:122:0x01b8, code lost:
    
        if (r1 == 1) goto L123;
     */
    /* JADX WARN: Code restructure failed: missing block: B:124:0x01bb, code lost:
    
        if (r1 == 2) goto L124;
     */
    /* JADX WARN: Code restructure failed: missing block: B:126:0x01be, code lost:
    
        if (r1 == 3) goto L125;
     */
    /* JADX WARN: Code restructure failed: missing block: B:73:0x0117, code lost:
    
        r5 = r18.next();
     */
    /* JADX WARN: Code restructure failed: missing block: B:74:0x011c, code lost:
    
        if (r5 == 1) goto L134;
     */
    /* JADX WARN: Code restructure failed: missing block: B:76:0x011f, code lost:
    
        if (r5 == 2) goto L135;
     */
    /* JADX WARN: Code restructure failed: missing block: B:78:0x0122, code lost:
    
        if (r5 == 3) goto L136;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final void parseUserState(com.android.modules.utils.BinaryXmlPullParser r18, com.android.server.permission.access.AccessState r19, int r20) {
        /*
            Method dump skipped, instructions count: 517
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.server.permission.access.AccessPolicy.parseUserState(com.android.modules.utils.BinaryXmlPullParser, com.android.server.permission.access.AccessState, int):void");
    }

    public final int getDecision(GetStateScope getStateScope, AccessUri accessUri, AccessUri accessUri2) {
        return getSchemePolicy(accessUri, accessUri2).getDecision(getStateScope, accessUri, accessUri2);
    }

    public final void serializeSystemState(BinaryXmlSerializer binaryXmlSerializer, AccessState accessState) {
        binaryXmlSerializer.startTag((String) null, "access");
        ArrayMap arrayMap = this.schemePolicies;
        int size = arrayMap.size();
        for (int i = 0; i < size; i++) {
            ArrayMap arrayMap2 = (ArrayMap) arrayMap.valueAt(i);
            int size2 = arrayMap2.size();
            for (int i2 = 0; i2 < size2; i2++) {
                ((SchemePolicy) arrayMap2.valueAt(i2)).serializeSystemState(binaryXmlSerializer, accessState);
            }
        }
        binaryXmlSerializer.endTag((String) null, "access");
    }

    public final void serializeUserState(BinaryXmlSerializer binaryXmlSerializer, AccessState accessState, int i) {
        binaryXmlSerializer.startTag((String) null, "access");
        ArrayMap arrayMap = this.schemePolicies;
        int size = arrayMap.size();
        for (int i2 = 0; i2 < size; i2++) {
            ArrayMap arrayMap2 = (ArrayMap) arrayMap.valueAt(i2);
            int size2 = arrayMap2.size();
            for (int i3 = 0; i3 < size2; i3++) {
                ((SchemePolicy) arrayMap2.valueAt(i3)).serializeUserState(binaryXmlSerializer, accessState, i);
            }
        }
        binaryXmlSerializer.endTag((String) null, "access");
    }

    public final void setDecision(MutateStateScope mutateStateScope, AccessUri accessUri, AccessUri accessUri2, int i) {
        getSchemePolicy(accessUri, accessUri2).setDecision(mutateStateScope, accessUri, accessUri2, i);
    }

    public final void initialize(AccessState accessState, IntSet intSet, Map map, Map map2, SparseArray sparseArray, boolean z, Map map3, IndexedListSet indexedListSet, PermissionAllowlist permissionAllowlist, ArrayMap arrayMap) {
        SystemState systemState = accessState.getSystemState();
        IntSetKt.plusAssign(systemState.getUserIds(), intSet);
        systemState.setPackageStates(map);
        systemState.setDisabledSystemPackageStates(map2);
        Iterator it = map.entrySet().iterator();
        while (it.hasNext()) {
            PackageState packageState = (PackageState) ((Map.Entry) it.next()).getValue();
            SparseArray appIds = systemState.getAppIds();
            int appId = packageState.getAppId();
            Object obj = appIds.get(appId);
            if (obj == null) {
                obj = new IndexedListSet();
                appIds.put(appId, obj);
            }
            ((IndexedListSet) obj).add(packageState.getPackageName());
        }
        systemState.setKnownPackages(sparseArray);
        systemState.setLeanback(z);
        systemState.setConfigPermissions(map3);
        systemState.setPrivilegedPermissionAllowlistPackages(indexedListSet);
        systemState.setPermissionAllowlist(permissionAllowlist);
        systemState.setImplicitToSourcePermissions(arrayMap);
        SparseArray userStates = accessState.getUserStates();
        int size = intSet.getSize();
        for (int i = 0; i < size; i++) {
            userStates.set(intSet.elementAt(i), new UserState());
        }
    }

    public final void onUserAdded(MutateStateScope mutateStateScope, int i) {
        mutateStateScope.getNewState().getSystemState().getUserIds().add(i);
        mutateStateScope.getNewState().getUserStates().set(i, new UserState());
        ArrayMap arrayMap = this.schemePolicies;
        int size = arrayMap.size();
        for (int i2 = 0; i2 < size; i2++) {
            ArrayMap arrayMap2 = (ArrayMap) arrayMap.valueAt(i2);
            int size2 = arrayMap2.size();
            for (int i3 = 0; i3 < size2; i3++) {
                ((SchemePolicy) arrayMap2.valueAt(i3)).onUserAdded(mutateStateScope, i);
            }
        }
    }

    public final void onUserRemoved(MutateStateScope mutateStateScope, int i) {
        mutateStateScope.getNewState().getSystemState().getUserIds().remove(i);
        mutateStateScope.getNewState().getUserStates().remove(i);
        ArrayMap arrayMap = this.schemePolicies;
        int size = arrayMap.size();
        for (int i2 = 0; i2 < size; i2++) {
            ArrayMap arrayMap2 = (ArrayMap) arrayMap.valueAt(i2);
            int size2 = arrayMap2.size();
            for (int i3 = 0; i3 < size2; i3++) {
                ((SchemePolicy) arrayMap2.valueAt(i3)).onUserRemoved(mutateStateScope, i);
            }
        }
    }

    public final void onStorageVolumeMounted(MutateStateScope mutateStateScope, Map map, Map map2, SparseArray sparseArray, String str, boolean z) {
        IntSet intSet = new IntSet();
        SystemState systemState = mutateStateScope.getNewState().getSystemState();
        systemState.setPackageStates(map);
        systemState.setDisabledSystemPackageStates(map2);
        for (Map.Entry entry : map.entrySet()) {
            String str2 = (String) entry.getKey();
            PackageState packageState = (PackageState) entry.getValue();
            if (Intrinsics.areEqual(packageState.getVolumeUuid(), str)) {
                int appId = packageState.getAppId();
                SparseArray appIds = systemState.getAppIds();
                Object obj = appIds.get(appId);
                if (obj == null) {
                    intSet.add(appId);
                    obj = new IndexedListSet();
                    appIds.put(appId, obj);
                }
                ((IndexedListSet) obj).add(str2);
            }
        }
        systemState.setKnownPackages(sparseArray);
        int size = intSet.getSize();
        for (int i = 0; i < size; i++) {
            int elementAt = intSet.elementAt(i);
            ArrayMap arrayMap = this.schemePolicies;
            int size2 = arrayMap.size();
            for (int i2 = 0; i2 < size2; i2++) {
                ArrayMap arrayMap2 = (ArrayMap) arrayMap.valueAt(i2);
                int size3 = arrayMap2.size();
                for (int i3 = 0; i3 < size3; i3++) {
                    ((SchemePolicy) arrayMap2.valueAt(i3)).onAppIdAdded(mutateStateScope, elementAt);
                }
            }
        }
        ArrayMap arrayMap3 = this.schemePolicies;
        int size4 = arrayMap3.size();
        for (int i4 = 0; i4 < size4; i4++) {
            ArrayMap arrayMap4 = (ArrayMap) arrayMap3.valueAt(i4);
            int size5 = arrayMap4.size();
            for (int i5 = 0; i5 < size5; i5++) {
                ((SchemePolicy) arrayMap4.valueAt(i5)).onStorageVolumeMounted(mutateStateScope, str, z);
            }
        }
    }

    public final void onPackageAdded(MutateStateScope mutateStateScope, Map map, Map map2, SparseArray sparseArray, String str) {
        boolean z;
        PackageState packageState = (PackageState) map.get(str);
        if (packageState == null) {
            throw new IllegalStateException(("Added package " + str + " isn't found in packageStates in onPackageAdded()").toString());
        }
        int appId = packageState.getAppId();
        SystemState systemState = mutateStateScope.getNewState().getSystemState();
        systemState.setPackageStates(map);
        systemState.setDisabledSystemPackageStates(map2);
        SparseArray appIds = systemState.getAppIds();
        Object obj = appIds.get(appId);
        if (obj != null) {
            z = false;
        } else {
            obj = new IndexedListSet();
            appIds.put(appId, obj);
            z = true;
        }
        ((IndexedListSet) obj).add(str);
        systemState.setKnownPackages(sparseArray);
        if (z) {
            ArrayMap arrayMap = this.schemePolicies;
            int size = arrayMap.size();
            for (int i = 0; i < size; i++) {
                ArrayMap arrayMap2 = (ArrayMap) arrayMap.valueAt(i);
                int size2 = arrayMap2.size();
                for (int i2 = 0; i2 < size2; i2++) {
                    ((SchemePolicy) arrayMap2.valueAt(i2)).onAppIdAdded(mutateStateScope, appId);
                }
            }
        }
        ArrayMap arrayMap3 = this.schemePolicies;
        int size3 = arrayMap3.size();
        for (int i3 = 0; i3 < size3; i3++) {
            ArrayMap arrayMap4 = (ArrayMap) arrayMap3.valueAt(i3);
            int size4 = arrayMap4.size();
            for (int i4 = 0; i4 < size4; i4++) {
                ((SchemePolicy) arrayMap4.valueAt(i4)).onPackageAdded(mutateStateScope, packageState);
            }
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0041  */
    /* JADX WARN: Removed duplicated region for block: B:17:0x005f  */
    /* JADX WARN: Removed duplicated region for block: B:27:0x0084 A[ORIG_RETURN, RETURN] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final void onPackageRemoved(com.android.server.permission.access.MutateStateScope r7, java.util.Map r8, java.util.Map r9, android.util.SparseArray r10, java.lang.String r11, int r12) {
        /*
            r6 = this;
            boolean r0 = r8.containsKey(r11)
            r1 = 1
            r0 = r0 ^ r1
            if (r0 == 0) goto L85
            com.android.server.permission.access.AccessState r0 = r7.getNewState()
            com.android.server.permission.access.SystemState r0 = r0.getSystemState()
            r0.setPackageStates(r8)
            r0.setDisabledSystemPackageStates(r9)
            android.util.SparseArray r8 = r0.getAppIds()
            java.lang.Object r8 = r8.get(r12)
            com.android.server.permission.access.collection.IndexedListSet r8 = (com.android.server.permission.access.collection.IndexedListSet) r8
            r9 = 0
            if (r8 == 0) goto L34
            r8.remove(r11)
            boolean r8 = r8.isEmpty()
            if (r8 == 0) goto L34
            android.util.SparseArray r8 = r0.getAppIds()
            r8.remove(r12)
            goto L35
        L34:
            r1 = r9
        L35:
            r0.setKnownPackages(r10)
            android.util.ArrayMap r8 = r6.schemePolicies
            int r10 = r8.size()
            r0 = r9
        L3f:
            if (r0 >= r10) goto L5d
            java.lang.Object r2 = r8.valueAt(r0)
            android.util.ArrayMap r2 = (android.util.ArrayMap) r2
            int r3 = r2.size()
            r4 = r9
        L4c:
            if (r4 >= r3) goto L5a
            java.lang.Object r5 = r2.valueAt(r4)
            com.android.server.permission.access.SchemePolicy r5 = (com.android.server.permission.access.SchemePolicy) r5
            r5.onPackageRemoved(r7, r11, r12)
            int r4 = r4 + 1
            goto L4c
        L5a:
            int r0 = r0 + 1
            goto L3f
        L5d:
            if (r1 == 0) goto L84
            android.util.ArrayMap r6 = r6.schemePolicies
            int r8 = r6.size()
            r10 = r9
        L66:
            if (r10 >= r8) goto L84
            java.lang.Object r11 = r6.valueAt(r10)
            android.util.ArrayMap r11 = (android.util.ArrayMap) r11
            int r0 = r11.size()
            r1 = r9
        L73:
            if (r1 >= r0) goto L81
            java.lang.Object r2 = r11.valueAt(r1)
            com.android.server.permission.access.SchemePolicy r2 = (com.android.server.permission.access.SchemePolicy) r2
            r2.onAppIdRemoved(r7, r12)
            int r1 = r1 + 1
            goto L73
        L81:
            int r10 = r10 + 1
            goto L66
        L84:
            return
        L85:
            java.lang.StringBuilder r6 = new java.lang.StringBuilder
            r6.<init>()
            java.lang.String r7 = "Removed package "
            r6.append(r7)
            r6.append(r11)
            java.lang.String r7 = " is still in packageStates in onPackageRemoved()"
            r6.append(r7)
            java.lang.String r6 = r6.toString()
            java.lang.IllegalStateException r7 = new java.lang.IllegalStateException
            java.lang.String r6 = r6.toString()
            r7.<init>(r6)
            throw r7
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.server.permission.access.AccessPolicy.onPackageRemoved(com.android.server.permission.access.MutateStateScope, java.util.Map, java.util.Map, android.util.SparseArray, java.lang.String, int):void");
    }

    public final void onPackageInstalled(MutateStateScope mutateStateScope, Map map, Map map2, SparseArray sparseArray, String str, int i) {
        SystemState systemState = mutateStateScope.getNewState().getSystemState();
        systemState.setPackageStates(map);
        systemState.setDisabledSystemPackageStates(map2);
        systemState.setKnownPackages(sparseArray);
        PackageState packageState = (PackageState) map.get(str);
        if (packageState == null) {
            throw new IllegalStateException(("Installed package " + str + " isn't found in packageStates in onPackageInstalled()").toString());
        }
        ArrayMap arrayMap = this.schemePolicies;
        int size = arrayMap.size();
        for (int i2 = 0; i2 < size; i2++) {
            ArrayMap arrayMap2 = (ArrayMap) arrayMap.valueAt(i2);
            int size2 = arrayMap2.size();
            for (int i3 = 0; i3 < size2; i3++) {
                ((SchemePolicy) arrayMap2.valueAt(i3)).onPackageInstalled(mutateStateScope, packageState, i);
            }
        }
    }

    public final void onPackageUninstalled(MutateStateScope mutateStateScope, Map map, Map map2, SparseArray sparseArray, String str, int i, int i2) {
        SystemState systemState = mutateStateScope.getNewState().getSystemState();
        systemState.setPackageStates(map);
        systemState.setDisabledSystemPackageStates(map2);
        systemState.setKnownPackages(sparseArray);
        ArrayMap arrayMap = this.schemePolicies;
        int size = arrayMap.size();
        for (int i3 = 0; i3 < size; i3++) {
            ArrayMap arrayMap2 = (ArrayMap) arrayMap.valueAt(i3);
            int size2 = arrayMap2.size();
            for (int i4 = 0; i4 < size2; i4++) {
                ((SchemePolicy) arrayMap2.valueAt(i4)).onPackageUninstalled(mutateStateScope, str, i, i2);
            }
        }
    }

    public final void onSystemReady(MutateStateScope mutateStateScope) {
        mutateStateScope.getNewState().getSystemState().setSystemReady(true);
        ArrayMap arrayMap = this.schemePolicies;
        int size = arrayMap.size();
        for (int i = 0; i < size; i++) {
            ArrayMap arrayMap2 = (ArrayMap) arrayMap.valueAt(i);
            int size2 = arrayMap2.size();
            for (int i2 = 0; i2 < size2; i2++) {
                ((SchemePolicy) arrayMap2.valueAt(i2)).onSystemReady(mutateStateScope);
            }
        }
    }

    public final SchemePolicy getSchemePolicy(AccessUri accessUri, AccessUri accessUri2) {
        throw null;
    }

    public final void onInitialized(MutateStateScope mutateStateScope) {
        ArrayMap arrayMap = this.schemePolicies;
        int size = arrayMap.size();
        for (int i = 0; i < size; i++) {
            ArrayMap arrayMap2 = (ArrayMap) arrayMap.valueAt(i);
            int size2 = arrayMap2.size();
            for (int i2 = 0; i2 < size2; i2++) {
                ((SchemePolicy) arrayMap2.valueAt(i2)).onInitialized(mutateStateScope);
            }
        }
    }

    public final void onStateMutated(GetStateScope getStateScope) {
        ArrayMap arrayMap = this.schemePolicies;
        int size = arrayMap.size();
        for (int i = 0; i < size; i++) {
            ArrayMap arrayMap2 = (ArrayMap) arrayMap.valueAt(i);
            int size2 = arrayMap2.size();
            for (int i2 = 0; i2 < size2; i2++) {
                ((SchemePolicy) arrayMap2.valueAt(i2)).onStateMutated(getStateScope);
            }
        }
    }
}
