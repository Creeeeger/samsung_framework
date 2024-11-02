package com.android.systemui.edgelighting.manager;

import android.content.Context;
import android.net.Uri;
import android.provider.Settings;
import android.util.Slog;
import android.util.SparseArray;
import com.android.systemui.edgelighting.data.policy.PolicyClientContract;
import com.android.systemui.edgelighting.data.policy.PolicyInfo;
import com.samsung.android.edge.EdgeLightingPolicy;
import com.samsung.android.edge.EdgeLightingPolicyInfo;
import com.samsung.android.edge.SemEdgeManager;
import java.util.Comparator;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public final class EdgeLightingPolicyManager {
    public static final Uri EL_POLICY_ITEM_URI = Uri.withAppendedPath(PolicyClientContract.PolicyItems.CONTENT_URI, "EdgeLighting");
    public static final String[] POLICY_ITEM_PROJECTION = {"item", "category", "data1", "data2", "data3"};
    public static EdgeLightingPolicyManager mInstance;
    public int mPolicyType;
    public long mPolicyVersion;
    public final SparseArray mPolicyInfoData = new SparseArray();
    public final AnonymousClass1 mCategoryComparator = new Comparator(this) { // from class: com.android.systemui.edgelighting.manager.EdgeLightingPolicyManager.1
        @Override // java.util.Comparator
        public final int compare(Object obj, Object obj2) {
            return ((PolicyInfo) obj).category - ((PolicyInfo) obj2).category;
        }
    };

    /* JADX WARN: Code restructure failed: missing block: B:175:0x0152, code lost:
    
        if (r9 == 0) goto L146;
     */
    /* JADX WARN: Code restructure failed: missing block: B:176:0x0163, code lost:
    
        r10 = r9;
     */
    /* JADX WARN: Code restructure failed: missing block: B:189:0x0161, code lost:
    
        if (r9 != 0) goto L141;
     */
    /* JADX WARN: Code restructure failed: missing block: B:251:0x008e, code lost:
    
        if (r9 == null) goto L88;
     */
    /* JADX WARN: Code restructure failed: missing block: B:264:0x009d, code lost:
    
        if (r9 != null) goto L304;
     */
    /* JADX WARN: Finally extract failed */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:197:0x0333 A[Catch: all -> 0x032c, IOException -> 0x032f, TRY_LEAVE, TryCatch #9 {IOException -> 0x032f, blocks: (B:226:0x0328, B:197:0x0333), top: B:225:0x0328, outer: #10 }] */
    /* JADX WARN: Removed duplicated region for block: B:224:? A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:225:0x0328 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:276:0x00b9 A[Catch: all -> 0x00b2, IOException -> 0x00b5, TRY_LEAVE, TryCatch #2 {IOException -> 0x00b5, blocks: (B:305:0x00ae, B:276:0x00b9), top: B:304:0x00ae, outer: #15 }] */
    /* JADX WARN: Removed duplicated region for block: B:303:? A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:304:0x00ae A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Type inference failed for: r0v1, types: [com.android.systemui.edgelighting.manager.EdgeLightingPolicyManager$1] */
    /* JADX WARN: Type inference failed for: r10v8, types: [java.io.BufferedReader] */
    /* JADX WARN: Type inference failed for: r7v0, types: [java.lang.String] */
    /* JADX WARN: Type inference failed for: r7v5 */
    /* JADX WARN: Type inference failed for: r7v6 */
    /* JADX WARN: Type inference failed for: r7v7, types: [java.io.InputStream] */
    /* JADX WARN: Type inference failed for: r7v9, types: [java.io.FileInputStream, java.io.InputStream] */
    /* JADX WARN: Type inference failed for: r9v1 */
    /* JADX WARN: Type inference failed for: r9v20 */
    /* JADX WARN: Type inference failed for: r9v21 */
    /* JADX WARN: Type inference failed for: r9v22 */
    /* JADX WARN: Type inference failed for: r9v3 */
    /* JADX WARN: Type inference failed for: r9v4, types: [java.io.BufferedReader] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private EdgeLightingPolicyManager(android.content.Context r25, boolean r26) {
        /*
            Method dump skipped, instructions count: 853
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.systemui.edgelighting.manager.EdgeLightingPolicyManager.<init>(android.content.Context, boolean):void");
    }

    public static PolicyInfo createPolicyInfo(String str, String str2, String str3, String str4, String str5) {
        int i;
        int parseInt;
        int i2;
        int parseInt2;
        int i3;
        int i4;
        boolean z;
        int i5;
        int i6;
        int i7 = 1;
        if (str2 != null) {
            try {
                parseInt = Integer.parseInt(str2.trim());
            } catch (NumberFormatException e) {
                e.printStackTrace();
                i = 1;
            }
        } else {
            parseInt = 1;
        }
        i = parseInt;
        int i8 = 0;
        r9 = false;
        boolean z2 = false;
        int i9 = -11761985;
        if (i != 1 && i != 2) {
            if (i != 10) {
                switch (i) {
                    case 21:
                    case 22:
                    case 23:
                        return new PolicyInfo(str, i);
                    default:
                        Slog.w("ELPolicyManager", "createPolicyInfo : wrong category = " + i);
                        return null;
                }
            }
            if (str3 != null) {
                try {
                    i7 = Integer.parseInt(str3.trim());
                } catch (NumberFormatException e2) {
                    e2.printStackTrace();
                }
            }
            if (str4 != null) {
                z2 = Boolean.parseBoolean(str4.trim());
            }
            if (str5 != null) {
                z = z2;
                i6 = Integer.parseInt(str5.trim());
                i5 = i7;
                return new PolicyInfo(str, i, i5, z, i6);
            }
            z = z2;
            i5 = i7;
            i6 = -11761985;
            return new PolicyInfo(str, i, i5, z, i6);
        }
        if (str3 != null) {
            try {
                parseInt2 = Integer.parseInt(str3.trim());
            } catch (NumberFormatException e3) {
                e = e3;
                i2 = 0;
                e.printStackTrace();
                i3 = 0;
                i4 = i2;
                return new PolicyInfo(str, i, i4, i9, i3);
            }
        } else {
            parseInt2 = 0;
        }
        if (str4 != null) {
            try {
                i9 = Integer.parseInt(str4.trim());
            } catch (NumberFormatException e4) {
                i2 = parseInt2;
                e = e4;
                e.printStackTrace();
                i3 = 0;
                i4 = i2;
                return new PolicyInfo(str, i, i4, i9, i3);
            }
        }
        if (str5 != null) {
            i8 = Integer.parseInt(str5.trim());
        }
        i3 = i8;
        i4 = parseInt2;
        return new PolicyInfo(str, i, i4, i9, i3);
    }

    public static EdgeLightingPolicyManager getInstance(Context context, boolean z) {
        if (mInstance == null) {
            mInstance = new EdgeLightingPolicyManager(context, z);
        }
        return mInstance;
    }

    /* JADX WARN: Removed duplicated region for block: B:45:0x00d1  */
    /* JADX WARN: Removed duplicated region for block: B:47:0x00f5 A[RETURN] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final int getEdgeLightingColor(android.content.Context r9, java.lang.String r10) {
        /*
            r8 = this;
            android.util.SparseArray r8 = r8.mPolicyInfoData
            r0 = 1
            java.lang.Object r1 = r8.get(r0)
            java.util.HashMap r1 = (java.util.HashMap) r1
            java.lang.String r2 = "com.samsung.android.messaging"
            boolean r2 = r2.equals(r10)
            r3 = 0
            if (r2 == 0) goto L47
            int r2 = com.android.systemui.edgelighting.utils.Utils.$r8$clinit
            java.lang.String r2 = ""
            android.content.pm.PackageManager r4 = r9.getPackageManager()     // Catch: android.content.pm.PackageManager.NameNotFoundException -> L23
            android.content.pm.PackageInfo r4 = r4.getPackageInfo(r10, r3)     // Catch: android.content.pm.PackageManager.NameNotFoundException -> L23
            java.lang.String r2 = r4.versionName     // Catch: android.content.pm.PackageManager.NameNotFoundException -> L23
            int r4 = r4.versionCode     // Catch: android.content.pm.PackageManager.NameNotFoundException -> L23
            goto L28
        L23:
            r4 = move-exception
            r4.printStackTrace()
            r4 = -1
        L28:
            java.lang.String r5 = " pkgName : "
            java.lang.String r6 = " version NAme : "
            java.lang.String r7 = " "
            java.lang.StringBuilder r2 = com.android.keyguard.logging.KeyguardUpdateMonitorLogger$logAssistantVisible$2$$ExternalSyntheticOutline0.m(r5, r10, r6, r2, r7)
            r2.append(r4)
            java.lang.String r2 = r2.toString()
            java.lang.String r5 = "Utils"
            android.util.Slog.i(r5, r2)
            r2 = 500000000(0x1dcd6500, float:5.436748E-21)
            if (r4 >= r2) goto L47
            r8 = 15888924(0xf2721c, float:2.2265125E-38)
            return r8
        L47:
            r2 = -11761985(0xffffffffff4c86bf, float:-2.7186215E38)
            if (r1 == 0) goto L59
            java.lang.Object r1 = r1.get(r10)
            com.android.systemui.edgelighting.data.policy.PolicyInfo r1 = (com.android.systemui.edgelighting.data.policy.PolicyInfo) r1
            if (r1 == 0) goto L59
            int r1 = r1.color
            if (r1 == r2) goto L59
            return r1
        L59:
            r1 = 10
            java.lang.Object r8 = r8.get(r1)
            java.util.HashMap r8 = (java.util.HashMap) r8
            if (r8 == 0) goto L70
            java.lang.Object r8 = r8.get(r10)
            com.android.systemui.edgelighting.data.policy.PolicyInfo r8 = (com.android.systemui.edgelighting.data.policy.PolicyInfo) r8
            if (r8 == 0) goto L70
            int r8 = r8.color
            if (r8 == r2) goto L70
            return r8
        L70:
            android.content.pm.PackageManager r8 = r9.getPackageManager()
            java.util.List r8 = com.android.systemui.edgelighting.utils.EdgeLightingSettingUtils.getAppInfoSupportingEdgeLighting(r8, r10)
            if (r8 == 0) goto Lbf
            int r1 = r8.size()
            if (r1 <= 0) goto Lbf
            java.lang.Object r8 = r8.get(r3)
            android.content.pm.ResolveInfo r8 = (android.content.pm.ResolveInfo) r8
            android.content.pm.ActivityInfo r8 = r8.activityInfo
            java.lang.String r1 = r8.name
            java.lang.String r8 = r8.packageName
            android.content.ComponentName r3 = new android.content.ComponentName
            r3.<init>(r8, r1)
            java.lang.String r8 = r3.flattenToString()
            if (r8 == 0) goto L9b
            android.content.ComponentName r3 = android.content.ComponentName.unflattenFromString(r8)
        L9b:
            android.content.pm.PackageManager r8 = r9.getPackageManager()
            java.lang.String r1 = r3.getClassName()
            android.graphics.drawable.Drawable r1 = r8.semGetCscPackageItemIcon(r1)
            if (r1 == 0) goto Laa
            goto Lcf
        Laa:
            java.lang.String r1 = r3.getPackageName()
            android.graphics.drawable.Drawable r1 = r8.semGetCscPackageItemIcon(r1)
            if (r1 == 0) goto Lb5
            goto Lcf
        Lb5:
            android.graphics.drawable.Drawable r8 = r8.semGetActivityIconForIconTray(r3, r0)     // Catch: android.content.pm.PackageManager.NameNotFoundException -> Lba
            goto Lc7
        Lba:
            r8 = move-exception
            r8.printStackTrace()
            goto Lcf
        Lbf:
            android.content.pm.PackageManager r8 = r9.getPackageManager()
            android.graphics.drawable.Drawable r8 = r8.getApplicationIcon(r10)     // Catch: android.content.pm.PackageManager.NameNotFoundException -> Lc9
        Lc7:
            r1 = r8
            goto Lcf
        Lc9:
            r8 = move-exception
            r8.printStackTrace()
            r8 = 0
            goto Lc7
        Lcf:
            if (r1 == 0) goto Lf5
            int r8 = com.android.systemui.edgelighting.utils.ExtractAppIconUtils.processDominantColorInImage(r1)
            com.android.systemui.edgelighting.utils.EdgeLightingSettingUtils.saveAppCustomColor(r9, r10, r8)
            java.lang.StringBuilder r9 = new java.lang.StringBuilder
            java.lang.String r0 = "package : "
            r9.<init>(r0)
            r9.append(r10)
            java.lang.String r10 = " Extract color : "
            r9.append(r10)
            r9.append(r8)
            java.lang.String r9 = r9.toString()
            java.lang.String r10 = "ELPolicyManager"
            android.util.Slog.i(r10, r9)
            return r8
        Lf5:
            return r2
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.systemui.edgelighting.manager.EdgeLightingPolicyManager.getEdgeLightingColor(android.content.Context, java.lang.String):int");
    }

    public final void updateEdgeLightingPolicy(Context context, boolean z) {
        int i;
        HashMap hashMap;
        SemEdgeManager semEdgeManager = (SemEdgeManager) context.getSystemService("edge");
        if (semEdgeManager == null) {
            return;
        }
        int i2 = this.mPolicyType;
        if (z) {
            i = i2 | 1;
        } else {
            i = i2 & (-2);
        }
        EdgeLightingPolicy edgeLightingPolicy = new EdgeLightingPolicy();
        edgeLightingPolicy.setPolicyType(i);
        edgeLightingPolicy.setPolicyVersion(this.mPolicyVersion);
        SparseArray sparseArray = this.mPolicyInfoData;
        HashMap hashMap2 = (HashMap) sparseArray.get(1);
        if (hashMap2 != null) {
            Iterator it = hashMap2.entrySet().iterator();
            while (it.hasNext()) {
                PolicyInfo policyInfo = (PolicyInfo) ((Map.Entry) it.next()).getValue();
                edgeLightingPolicy.addEdgeLightingPolicyInfo(new EdgeLightingPolicyInfo(policyInfo.item, 1, policyInfo.range));
            }
        }
        if ((this.mPolicyType & 4) != 0 && (hashMap = (HashMap) sparseArray.get(2)) != null) {
            Iterator it2 = hashMap.entrySet().iterator();
            while (it2.hasNext()) {
                PolicyInfo policyInfo2 = (PolicyInfo) ((Map.Entry) it2.next()).getValue();
                edgeLightingPolicy.addEdgeLightingPolicyInfo(new EdgeLightingPolicyInfo(policyInfo2.item, 2, policyInfo2.range));
            }
        }
        HashMap hashMap3 = (HashMap) sparseArray.get(10);
        StringBuilder sb = new StringBuilder();
        for (Map.Entry entry : hashMap3.entrySet()) {
            if (entry.getValue() != null && ((PolicyInfo) entry.getValue()).item != null) {
                sb.append(((PolicyInfo) entry.getValue()).item);
                sb.append(",");
            }
        }
        Settings.Secure.putString(context.getContentResolver(), "edge_lighting_recommend_app_list", sb.toString());
        Slog.i("ELPolicyManager", " update Policy : " + edgeLightingPolicy.getEdgeLightingPolicyInfoList().size());
        semEdgeManager.updateEdgeLightingPolicy(edgeLightingPolicy);
    }
}
