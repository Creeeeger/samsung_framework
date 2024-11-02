package com.android.systemui.edgelighting.manager;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.SharedPreferences;
import android.content.pm.ActivityInfo;
import android.content.pm.PackageManager;
import android.content.pm.ResolveInfo;
import android.os.AsyncTask;
import android.util.Slog;
import android.util.SparseArray;
import androidx.concurrent.futures.AbstractResolvableFuture$$ExternalSyntheticOutline0;
import com.android.systemui.edgelighting.data.AppInfo;
import com.android.systemui.edgelighting.data.EdgeLightingSettingItem;
import com.android.systemui.edgelighting.data.policy.PolicyInfo;
import com.android.systemui.edgelighting.utils.EdgeLightingSettingUtils;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public final class EdgeLightingSettingManager {
    public static EdgeLightingSettingManager sInstance;
    public boolean mAllApplication;
    public final AnonymousClass1 mAppNameComparator;
    public final Context mContext;
    public final HashMap mEnableSet;

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes.dex */
    public final class GetAppNameListAsyncTask extends AsyncTask {
        public /* synthetic */ GetAppNameListAsyncTask(EdgeLightingSettingManager edgeLightingSettingManager, int i) {
            this();
        }

        @Override // android.os.AsyncTask
        public final Object doInBackground(Object[] objArr) {
            HashMap hashMap;
            String str;
            PolicyInfo policyInfo;
            int i;
            EdgeLightingSettingManager edgeLightingSettingManager = EdgeLightingSettingManager.this;
            edgeLightingSettingManager.getClass();
            ArrayList arrayList = new ArrayList();
            Context context = edgeLightingSettingManager.mContext;
            PackageManager packageManager = context.getPackageManager();
            EdgeLightingPolicyManager edgeLightingPolicyManager = EdgeLightingPolicyManager.getInstance(context, false);
            int i2 = edgeLightingPolicyManager.mPolicyType & 4;
            SparseArray sparseArray = edgeLightingPolicyManager.mPolicyInfoData;
            if (i2 != 0) {
                hashMap = (HashMap) sparseArray.get(2);
            } else {
                hashMap = null;
            }
            HashMap hashMap2 = (HashMap) sparseArray.get(10);
            ArrayList arrayList2 = new ArrayList();
            Intent intent = new Intent("android.intent.action.MAIN");
            intent.addCategory("android.intent.category.LAUNCHER");
            List<ResolveInfo> queryIntentActivities = packageManager.queryIntentActivities(intent, 0);
            if (queryIntentActivities != null) {
                Iterator<ResolveInfo> it = queryIntentActivities.iterator();
                while (it.hasNext()) {
                    ActivityInfo activityInfo = it.next().activityInfo;
                    String str2 = activityInfo.name;
                    String str3 = activityInfo.packageName;
                    if (hashMap == null || !hashMap.containsKey(str3)) {
                        ComponentName componentName = new ComponentName(str3, str2);
                        String flattenToString = componentName.flattenToString();
                        if (flattenToString != null) {
                            componentName = ComponentName.unflattenFromString(flattenToString);
                        }
                        try {
                            str = packageManager.getActivityInfo(componentName, 0).loadLabel(packageManager).toString();
                        } catch (PackageManager.NameNotFoundException e) {
                            e.printStackTrace();
                            str = null;
                        }
                        if (str != null && str3 != null) {
                            if (hashMap2 != null) {
                                policyInfo = (PolicyInfo) hashMap2.get(str3);
                            } else {
                                policyInfo = null;
                            }
                            if (policyInfo != null) {
                                i = policyInfo.priority;
                            } else {
                                i = 0;
                            }
                            arrayList2.add(new AppInfo(str, str3, null, i, false));
                        } else {
                            Slog.e("EdgeLightingSettingManager", "Error...");
                        }
                    }
                }
            }
            Collections.sort(arrayList2, edgeLightingSettingManager.mAppNameComparator);
            for (int i3 = 0; i3 < arrayList2.size(); i3++) {
                AppInfo appInfo = (AppInfo) arrayList2.get(i3);
                if (appInfo == null) {
                    Slog.e("EdgeLightingSettingManager", "updateAppList item is null..");
                } else {
                    arrayList.add(appInfo.packageName);
                }
            }
            return arrayList;
        }

        @Override // android.os.AsyncTask
        public final void onPostExecute(Object obj) {
            List<String> list = (List) obj;
            super.onPostExecute(list);
            for (String str : list) {
                EdgeLightingSettingManager.this.mEnableSet.put(str, new EdgeLightingSettingItem(str, -11761985));
            }
        }

        private GetAppNameListAsyncTask() {
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:101:0x00a0, code lost:
    
        if (r7 == null) goto L173;
     */
    /* JADX WARN: Code restructure failed: missing block: B:112:0x00ae, code lost:
    
        if (r7 != null) goto L153;
     */
    /* JADX WARN: Code restructure failed: missing block: B:125:0x016b, code lost:
    
        if (r7 == null) goto L117;
     */
    /* JADX WARN: Code restructure failed: missing block: B:128:0x017b, code lost:
    
        r7.close();
     */
    /* JADX WARN: Code restructure failed: missing block: B:130:0x017f, code lost:
    
        r11 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:131:0x0180, code lost:
    
        r11.printStackTrace();
     */
    /* JADX WARN: Code restructure failed: missing block: B:142:0x0179, code lost:
    
        if (r7 != null) goto L168;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:120:0x0164 A[Catch: all -> 0x015e, IOException -> 0x0160, TRY_LEAVE, TryCatch #16 {IOException -> 0x0160, blocks: (B:144:0x015a, B:120:0x0164), top: B:143:0x015a, outer: #18 }] */
    /* JADX WARN: Removed duplicated region for block: B:143:0x015a A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Type inference failed for: r10v0, types: [com.android.systemui.edgelighting.manager.EdgeLightingSettingManager] */
    /* JADX WARN: Type inference failed for: r2v1, types: [com.android.systemui.edgelighting.manager.EdgeLightingSettingManager$1] */
    /* JADX WARN: Type inference failed for: r7v2, types: [java.lang.Object, java.lang.String] */
    /* JADX WARN: Type inference failed for: r7v24, types: [android.content.pm.PackageManager] */
    /* JADX WARN: Type inference failed for: r7v3 */
    /* JADX WARN: Type inference failed for: r7v5, types: [java.lang.CharSequence] */
    /* JADX WARN: Type inference failed for: r8v2, types: [android.content.pm.PackageManager] */
    /* JADX WARN: Type inference failed for: r8v6, types: [java.lang.Object, java.lang.String] */
    /* JADX WARN: Type inference failed for: r8v7 */
    /* JADX WARN: Type inference failed for: r8v9, types: [java.lang.CharSequence] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private EdgeLightingSettingManager(android.content.Context r11) {
        /*
            Method dump skipped, instructions count: 608
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.systemui.edgelighting.manager.EdgeLightingSettingManager.<init>(android.content.Context):void");
    }

    public static synchronized EdgeLightingSettingManager getInstance(Context context) {
        EdgeLightingSettingManager edgeLightingSettingManager;
        synchronized (EdgeLightingSettingManager.class) {
            edgeLightingSettingManager = sInstance;
            if (edgeLightingSettingManager == null) {
                edgeLightingSettingManager = new EdgeLightingSettingManager(context);
                sInstance = edgeLightingSettingManager;
            }
        }
        return edgeLightingSettingManager;
    }

    public static void putStringSet(SharedPreferences sharedPreferences, String str, Set set) {
        SharedPreferences.Editor edit = sharedPreferences.edit();
        edit.putStringSet(str, set);
        edit.apply();
    }

    public static void remove(SharedPreferences sharedPreferences, String str) {
        SharedPreferences.Editor edit = sharedPreferences.edit();
        edit.remove(str);
        edit.apply();
    }

    public final void removeBlockListInEnabledEdgeLightingList(Context context, HashMap hashMap) {
        HashMap hashMap2;
        if (!this.mAllApplication && hashMap != null) {
            Iterator it = hashMap.entrySet().iterator();
            boolean z = false;
            while (true) {
                boolean hasNext = it.hasNext();
                hashMap2 = this.mEnableSet;
                if (!hasNext) {
                    break;
                } else if (hashMap2.remove((String) ((Map.Entry) it.next()).getKey()) != null) {
                    z = true;
                }
            }
            if (z) {
                SharedPreferences.Editor edit = context.getSharedPreferences("edge_lighting_settings", 0).edit();
                edit.putInt("version", 1);
                edit.putBoolean("all_application", false);
                edit.putStringSet("enable_list", hashMap2.keySet());
                edit.apply();
            }
        }
    }

    public final void replaceSilentInstalledPackage(Context context, String str) {
        SharedPreferences sharedPreferences = context.getSharedPreferences("edge_lighting_settings", 0);
        SharedPreferences.Editor edit = sharedPreferences.edit();
        String string = sharedPreferences.getString("update_package_name", null);
        boolean z = sharedPreferences.getBoolean("update_package_enable", false);
        if (string != null && !string.isEmpty() && string.equals(str)) {
            Slog.d("EdgeLightingSettingManager", "replaceSilentInstalledPackage : " + z + ", packageName = " + str);
            if (EdgeLightingSettingUtils.isEdgeLightingEnabled(context.getContentResolver())) {
                if (z) {
                    setEnablePackage(context, str);
                } else {
                    setDisablePackage(context, str);
                }
                EdgeLightingPolicyManager.getInstance(context, false).updateEdgeLightingPolicy(context, this.mAllApplication);
            } else if (z) {
                Set<String> stringSet = sharedPreferences.getStringSet("silent_add_list", new HashSet());
                stringSet.add(str);
                remove(sharedPreferences, "silent_add_list");
                putStringSet(sharedPreferences, "silent_add_list", stringSet);
                Set<String> stringSet2 = sharedPreferences.getStringSet("silent_remove_list", new HashSet());
                stringSet2.remove(str);
                remove(sharedPreferences, "silent_remove_list");
                putStringSet(sharedPreferences, "silent_remove_list", stringSet2);
            } else {
                Set<String> stringSet3 = sharedPreferences.getStringSet("silent_remove_list", new HashSet());
                stringSet3.add(str);
                remove(sharedPreferences, "silent_remove_list");
                putStringSet(sharedPreferences, "silent_remove_list", stringSet3);
                Set<String> stringSet4 = sharedPreferences.getStringSet("silent_add_list", new HashSet());
                stringSet4.remove(str);
                remove(sharedPreferences, "silent_add_list");
                putStringSet(sharedPreferences, "silent_add_list", stringSet4);
            }
        }
        edit.putString("update_package_name", null);
        edit.putBoolean("update_package_enable", false);
        edit.apply();
    }

    public final void setDisablePackage(Context context, String str) {
        HashMap hashMap = this.mEnableSet;
        hashMap.remove(str);
        SharedPreferences.Editor edit = context.getSharedPreferences("edge_lighting_settings", 0).edit();
        edit.putInt("version", 1);
        edit.putStringSet("enable_list", hashMap.keySet());
        edit.apply();
        EdgeLightingPolicyManager.getInstance(context, false).updateEdgeLightingPolicy(context, this.mAllApplication);
    }

    public final void setEnablePackage(Context context, String str) {
        HashMap hashMap = this.mEnableSet;
        hashMap.put(str, new EdgeLightingSettingItem(str, -11761985));
        SharedPreferences.Editor edit = context.getSharedPreferences("edge_lighting_settings", 0).edit();
        edit.putInt("version", 1);
        edit.putStringSet("enable_list", hashMap.keySet());
        edit.apply();
    }

    public final void writeAppNameList(List list) {
        String str;
        if (this.mAllApplication) {
            str = "AllAppsAvailable";
        } else {
            ArrayList arrayList = (ArrayList) list;
            if (arrayList.size() <= 0) {
                str = "";
            } else {
                Iterator it = arrayList.iterator();
                String str2 = "";
                while (it.hasNext()) {
                    String str3 = (String) it.next();
                    if ("".equals(str2)) {
                        str2 = AbstractResolvableFuture$$ExternalSyntheticOutline0.m(str2, str3);
                    } else {
                        str2 = AbstractResolvableFuture$$ExternalSyntheticOutline0.m(str2, ",", str3);
                    }
                }
                str = str2;
            }
        }
        Slog.d("EdgeLightingSettingManager", "write default enable app list... " + str);
    }
}
