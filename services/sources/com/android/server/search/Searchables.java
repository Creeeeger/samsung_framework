package com.android.server.search;

import android.app.AppGlobals;
import android.app.SearchableInfo;
import android.content.ComponentName;
import android.content.ContentResolver;
import android.content.Context;
import android.content.Intent;
import android.content.pm.ActivityInfo;
import android.content.pm.IPackageManager;
import android.content.pm.PackageManagerInternal;
import android.content.pm.ResolveInfo;
import android.os.Binder;
import android.os.Bundle;
import android.os.RemoteException;
import android.os.UserHandle;
import android.provider.Settings;
import android.text.TextUtils;
import android.util.Log;
import com.android.server.LocalServices;
import java.io.FileDescriptor;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;

/* loaded from: classes3.dex */
public class Searchables {
    public static final Comparator GLOBAL_SEARCH_RANKER = new Comparator() { // from class: com.android.server.search.Searchables.1
        @Override // java.util.Comparator
        public int compare(ResolveInfo resolveInfo, ResolveInfo resolveInfo2) {
            if (resolveInfo == resolveInfo2) {
                return 0;
            }
            boolean isSystemApp = Searchables.isSystemApp(resolveInfo);
            boolean isSystemApp2 = Searchables.isSystemApp(resolveInfo2);
            if (isSystemApp && !isSystemApp2) {
                return -1;
            }
            if (!isSystemApp2 || isSystemApp) {
                return resolveInfo2.priority - resolveInfo.priority;
            }
            return 1;
        }
    };
    public Context mContext;
    public List mGlobalSearchActivities;
    public int mUserId;
    public HashMap mSearchablesMap = null;
    public ArrayList mSearchablesList = null;
    public ArrayList mSearchablesInGlobalSearchList = null;
    public ArrayList mSearchablesInInsightSearchList = null;
    public ComponentName mCurrentGlobalSearchActivity = null;
    public ComponentName mWebSearchActivity = null;
    public final IPackageManager mPm = AppGlobals.getPackageManager();

    public Searchables(Context context, int i) {
        this.mContext = context;
        this.mUserId = i;
    }

    public SearchableInfo getSearchableInfo(ComponentName componentName) {
        ComponentName componentName2;
        SearchableInfo searchableInfo;
        Bundle bundle;
        synchronized (this) {
            SearchableInfo searchableInfo2 = (SearchableInfo) this.mSearchablesMap.get(componentName);
            if (searchableInfo2 != null) {
                if (((PackageManagerInternal) LocalServices.getService(PackageManagerInternal.class)).canAccessComponent(Binder.getCallingUid(), searchableInfo2.getSearchActivity(), UserHandle.getCallingUserId())) {
                    return searchableInfo2;
                }
                return null;
            }
            try {
                ActivityInfo activityInfo = this.mPm.getActivityInfo(componentName, 128L, this.mUserId);
                if (activityInfo == null) {
                    Log.e("Searchables", "Error activity info is null:" + componentName);
                    return null;
                }
                Bundle bundle2 = activityInfo.metaData;
                String string = bundle2 != null ? bundle2.getString("android.app.default_searchable") : null;
                if (string == null && (bundle = activityInfo.applicationInfo.metaData) != null) {
                    string = bundle.getString("android.app.default_searchable");
                }
                if (string == null || string.equals("*")) {
                    return null;
                }
                String packageName = componentName.getPackageName();
                if (string.charAt(0) == '.') {
                    componentName2 = new ComponentName(packageName, packageName + string);
                } else {
                    componentName2 = new ComponentName(packageName, string);
                }
                synchronized (this) {
                    searchableInfo = (SearchableInfo) this.mSearchablesMap.get(componentName2);
                    if (searchableInfo != null) {
                        this.mSearchablesMap.put(componentName, searchableInfo);
                    }
                }
                if (searchableInfo == null || !((PackageManagerInternal) LocalServices.getService(PackageManagerInternal.class)).canAccessComponent(Binder.getCallingUid(), searchableInfo.getSearchActivity(), UserHandle.getCallingUserId())) {
                    return null;
                }
                return searchableInfo;
            } catch (RemoteException e) {
                Log.e("Searchables", "Error getting activity info " + e);
                return null;
            }
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:26:0x005a, code lost:
    
        r12 = 0;
     */
    /* JADX WARN: Removed duplicated region for block: B:12:0x010b A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public void updateSearchableList() {
        /*
            Method dump skipped, instructions count: 298
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.server.search.Searchables.updateSearchableList():void");
    }

    public final List findGlobalSearchActivities() {
        List queryIntentActivities = queryIntentActivities(new Intent("android.search.action.GLOBAL_SEARCH"), 268500992);
        if (queryIntentActivities != null && !queryIntentActivities.isEmpty()) {
            Collections.sort(queryIntentActivities, GLOBAL_SEARCH_RANKER);
        }
        return queryIntentActivities;
    }

    public final ComponentName findGlobalSearchActivity(List list) {
        ComponentName unflattenFromString;
        String globalSearchProviderSetting = getGlobalSearchProviderSetting();
        return (TextUtils.isEmpty(globalSearchProviderSetting) || (unflattenFromString = ComponentName.unflattenFromString(globalSearchProviderSetting)) == null || !isInstalled(unflattenFromString)) ? getDefaultGlobalSearchProvider(list) : unflattenFromString;
    }

    public final boolean isInstalled(ComponentName componentName) {
        Intent intent = new Intent("android.search.action.GLOBAL_SEARCH");
        intent.setComponent(componentName);
        List queryIntentActivities = queryIntentActivities(intent, 65536);
        return (queryIntentActivities == null || queryIntentActivities.isEmpty()) ? false : true;
    }

    public static final boolean isSystemApp(ResolveInfo resolveInfo) {
        return (resolveInfo.activityInfo.applicationInfo.flags & 1) != 0;
    }

    public final ComponentName getDefaultGlobalSearchProvider(List list) {
        if (list != null && !list.isEmpty()) {
            ActivityInfo activityInfo = ((ResolveInfo) list.get(0)).activityInfo;
            return new ComponentName(activityInfo.packageName, activityInfo.name);
        }
        Log.w("Searchables", "No global search activity found");
        return null;
    }

    public final String getGlobalSearchProviderSetting() {
        ContentResolver contentResolver = this.mContext.getContentResolver();
        return Settings.Secure.getStringForUser(contentResolver, "search_global_search_activity", contentResolver.getUserId());
    }

    public final ComponentName findWebSearchActivity(ComponentName componentName) {
        if (componentName == null) {
            return null;
        }
        Intent intent = new Intent("android.intent.action.WEB_SEARCH");
        intent.setPackage(componentName.getPackageName());
        List queryIntentActivities = queryIntentActivities(intent, 65536);
        if (queryIntentActivities != null && !queryIntentActivities.isEmpty()) {
            ActivityInfo activityInfo = ((ResolveInfo) queryIntentActivities.get(0)).activityInfo;
            return new ComponentName(activityInfo.packageName, activityInfo.name);
        }
        Log.w("Searchables", "No web search activity found");
        return null;
    }

    public final List queryIntentActivities(Intent intent, int i) {
        try {
            return this.mPm.queryIntentActivities(intent, intent.resolveTypeIfNeeded(this.mContext.getContentResolver()), i | 8388608, this.mUserId).getList();
        } catch (RemoteException unused) {
            return null;
        }
    }

    public synchronized ArrayList getSearchablesInGlobalSearchList() {
        return createFilterdSearchableInfoList(this.mSearchablesInGlobalSearchList);
    }

    public synchronized ArrayList getSearchablesInInsightSearchList(boolean z) {
        ArrayList arrayList;
        arrayList = new ArrayList(this.mSearchablesInInsightSearchList);
        if (z) {
            arrayList.addAll(this.mSearchablesInGlobalSearchList);
        }
        return arrayList;
    }

    public synchronized ArrayList getGlobalSearchActivities() {
        return createFilterdResolveInfoList(this.mGlobalSearchActivities);
    }

    public final ArrayList createFilterdSearchableInfoList(List list) {
        if (list == null) {
            return null;
        }
        ArrayList arrayList = new ArrayList(list.size());
        PackageManagerInternal packageManagerInternal = (PackageManagerInternal) LocalServices.getService(PackageManagerInternal.class);
        int callingUid = Binder.getCallingUid();
        int callingUserId = UserHandle.getCallingUserId();
        Iterator it = list.iterator();
        while (it.hasNext()) {
            SearchableInfo searchableInfo = (SearchableInfo) it.next();
            if (packageManagerInternal.canAccessComponent(callingUid, searchableInfo.getSearchActivity(), callingUserId)) {
                arrayList.add(searchableInfo);
            }
        }
        return arrayList;
    }

    public final ArrayList createFilterdResolveInfoList(List list) {
        if (list == null) {
            return null;
        }
        ArrayList arrayList = new ArrayList(list.size());
        PackageManagerInternal packageManagerInternal = (PackageManagerInternal) LocalServices.getService(PackageManagerInternal.class);
        int callingUid = Binder.getCallingUid();
        int callingUserId = UserHandle.getCallingUserId();
        Iterator it = list.iterator();
        while (it.hasNext()) {
            ResolveInfo resolveInfo = (ResolveInfo) it.next();
            if (packageManagerInternal.canAccessComponent(callingUid, resolveInfo.activityInfo.getComponentName(), callingUserId)) {
                arrayList.add(resolveInfo);
            }
        }
        return arrayList;
    }

    public synchronized ComponentName getGlobalSearchActivity() {
        PackageManagerInternal packageManagerInternal = (PackageManagerInternal) LocalServices.getService(PackageManagerInternal.class);
        int callingUid = Binder.getCallingUid();
        int callingUserId = UserHandle.getCallingUserId();
        ComponentName componentName = this.mCurrentGlobalSearchActivity;
        if (componentName == null || !packageManagerInternal.canAccessComponent(callingUid, componentName, callingUserId)) {
            return null;
        }
        return this.mCurrentGlobalSearchActivity;
    }

    public synchronized ComponentName getWebSearchActivity() {
        PackageManagerInternal packageManagerInternal = (PackageManagerInternal) LocalServices.getService(PackageManagerInternal.class);
        int callingUid = Binder.getCallingUid();
        int callingUserId = UserHandle.getCallingUserId();
        ComponentName componentName = this.mWebSearchActivity;
        if (componentName == null || !packageManagerInternal.canAccessComponent(callingUid, componentName, callingUserId)) {
            return null;
        }
        return this.mWebSearchActivity;
    }

    public void dump(FileDescriptor fileDescriptor, PrintWriter printWriter, String[] strArr) {
        printWriter.println("Searchable authorities:");
        synchronized (this) {
            ArrayList arrayList = this.mSearchablesList;
            if (arrayList != null) {
                Iterator it = arrayList.iterator();
                while (it.hasNext()) {
                    SearchableInfo searchableInfo = (SearchableInfo) it.next();
                    printWriter.print("  ");
                    printWriter.println(searchableInfo.getSuggestAuthority());
                }
            }
        }
    }
}
