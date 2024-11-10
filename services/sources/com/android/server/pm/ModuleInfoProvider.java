package com.android.server.pm;

import android.R;
import android.content.Context;
import android.content.pm.IPackageManager;
import android.content.pm.ModuleInfo;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.res.Resources;
import android.content.res.XmlResourceParser;
import android.os.RemoteException;
import android.os.ServiceManager;
import android.os.UserHandle;
import android.text.TextUtils;
import android.util.ArrayMap;
import android.util.Slog;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

/* loaded from: classes3.dex */
public class ModuleInfoProvider {
    public final ApexManager mApexManager;
    public final Context mContext;
    public volatile boolean mMetadataLoaded;
    public final Map mModuleInfo;
    public IPackageManager mPackageManager;
    public volatile String mPackageName;

    public ModuleInfoProvider(Context context) {
        this.mContext = context;
        this.mApexManager = ApexManager.getInstance();
        this.mModuleInfo = new ArrayMap();
    }

    public ModuleInfoProvider(XmlResourceParser xmlResourceParser, Resources resources, ApexManager apexManager) {
        this.mContext = null;
        this.mApexManager = apexManager;
        this.mModuleInfo = new ArrayMap();
        loadModuleMetadata(xmlResourceParser, resources);
    }

    public final IPackageManager getPackageManager() {
        if (this.mPackageManager == null) {
            this.mPackageManager = IPackageManager.Stub.asInterface(ServiceManager.getService("package"));
        }
        return this.mPackageManager;
    }

    public void systemReady() {
        this.mPackageName = this.mContext.getResources().getString(R.string.face_acquired_insufficient);
        if (TextUtils.isEmpty(this.mPackageName)) {
            Slog.w("PackageManager.ModuleInfoProvider", "No configured module metadata provider.");
            return;
        }
        try {
            PackageInfo packageInfo = getPackageManager().getPackageInfo(this.mPackageName, 128L, 0);
            Resources resources = this.mContext.createPackageContext(this.mPackageName, 0).getResources();
            loadModuleMetadata(resources.getXml(packageInfo.applicationInfo.metaData.getInt("android.content.pm.MODULE_METADATA")), resources);
        } catch (PackageManager.NameNotFoundException | RemoteException e) {
            Slog.w("PackageManager.ModuleInfoProvider", "Unable to discover metadata package: " + this.mPackageName, e);
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:10:0x0020, code lost:
    
        android.util.Slog.w("PackageManager.ModuleInfoProvider", "Unexpected metadata element: " + r7.getName());
        r6.mModuleInfo.clear();
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final void loadModuleMetadata(android.content.res.XmlResourceParser r7, android.content.res.Resources r8) {
        /*
            r6 = this;
            java.lang.String r0 = "PackageManager.ModuleInfoProvider"
            r1 = 1
            java.lang.String r2 = "module-metadata"
            com.android.internal.util.XmlUtils.beginDocument(r7, r2)     // Catch: java.lang.Throwable -> L81 java.lang.Throwable -> L83
        L9:
            com.android.internal.util.XmlUtils.nextElement(r7)     // Catch: java.lang.Throwable -> L81 java.lang.Throwable -> L83
            int r2 = r7.getEventType()     // Catch: java.lang.Throwable -> L81 java.lang.Throwable -> L83
            if (r2 != r1) goto L13
            goto L3d
        L13:
            java.lang.String r2 = "module"
            java.lang.String r3 = r7.getName()     // Catch: java.lang.Throwable -> L81 java.lang.Throwable -> L83
            boolean r2 = r2.equals(r3)     // Catch: java.lang.Throwable -> L81 java.lang.Throwable -> L83
            if (r2 != 0) goto L43
            java.lang.StringBuilder r8 = new java.lang.StringBuilder     // Catch: java.lang.Throwable -> L81 java.lang.Throwable -> L83
            r8.<init>()     // Catch: java.lang.Throwable -> L81 java.lang.Throwable -> L83
            java.lang.String r2 = "Unexpected metadata element: "
            r8.append(r2)     // Catch: java.lang.Throwable -> L81 java.lang.Throwable -> L83
            java.lang.String r2 = r7.getName()     // Catch: java.lang.Throwable -> L81 java.lang.Throwable -> L83
            r8.append(r2)     // Catch: java.lang.Throwable -> L81 java.lang.Throwable -> L83
            java.lang.String r8 = r8.toString()     // Catch: java.lang.Throwable -> L81 java.lang.Throwable -> L83
            android.util.Slog.w(r0, r8)     // Catch: java.lang.Throwable -> L81 java.lang.Throwable -> L83
            java.util.Map r8 = r6.mModuleInfo     // Catch: java.lang.Throwable -> L81 java.lang.Throwable -> L83
            r8.clear()     // Catch: java.lang.Throwable -> L81 java.lang.Throwable -> L83
        L3d:
            r7.close()
            r6.mMetadataLoaded = r1
            goto L8f
        L43:
            java.lang.String r2 = "name"
            r3 = 0
            java.lang.String r2 = r7.getAttributeValue(r3, r2)     // Catch: java.lang.Throwable -> L81 java.lang.Throwable -> L83 java.lang.Throwable -> L83
            java.lang.String r2 = r2.substring(r1)     // Catch: java.lang.Throwable -> L81 java.lang.Throwable -> L83 java.lang.Throwable -> L83
            int r2 = java.lang.Integer.parseInt(r2)     // Catch: java.lang.Throwable -> L81 java.lang.Throwable -> L83 java.lang.Throwable -> L83
            java.lang.CharSequence r2 = r8.getText(r2)     // Catch: java.lang.Throwable -> L81 java.lang.Throwable -> L83 java.lang.Throwable -> L83
            java.lang.String r3 = "packageName"
            java.lang.String r3 = com.android.internal.util.XmlUtils.readStringAttribute(r7, r3)     // Catch: java.lang.Throwable -> L81 java.lang.Throwable -> L83 java.lang.Throwable -> L83
            java.lang.String r4 = "isHidden"
            boolean r4 = com.android.internal.util.XmlUtils.readBooleanAttribute(r7, r4)     // Catch: java.lang.Throwable -> L81 java.lang.Throwable -> L83 java.lang.Throwable -> L83
            android.content.pm.ModuleInfo r5 = new android.content.pm.ModuleInfo     // Catch: java.lang.Throwable -> L81 java.lang.Throwable -> L83 java.lang.Throwable -> L83
            r5.<init>()     // Catch: java.lang.Throwable -> L81 java.lang.Throwable -> L83 java.lang.Throwable -> L83
            r5.setHidden(r4)     // Catch: java.lang.Throwable -> L81 java.lang.Throwable -> L83 java.lang.Throwable -> L83
            r5.setPackageName(r3)     // Catch: java.lang.Throwable -> L81 java.lang.Throwable -> L83 java.lang.Throwable -> L83
            r5.setName(r2)     // Catch: java.lang.Throwable -> L81 java.lang.Throwable -> L83 java.lang.Throwable -> L83
            com.android.server.pm.ApexManager r2 = r6.mApexManager     // Catch: java.lang.Throwable -> L81 java.lang.Throwable -> L83 java.lang.Throwable -> L83
            java.lang.String r2 = r2.getApexModuleNameForPackageName(r3)     // Catch: java.lang.Throwable -> L81 java.lang.Throwable -> L83 java.lang.Throwable -> L83
            r5.setApexModuleName(r2)     // Catch: java.lang.Throwable -> L81 java.lang.Throwable -> L83 java.lang.Throwable -> L83
            java.util.Map r2 = r6.mModuleInfo     // Catch: java.lang.Throwable -> L81 java.lang.Throwable -> L83 java.lang.Throwable -> L83
            r2.put(r3, r5)     // Catch: java.lang.Throwable -> L81 java.lang.Throwable -> L83 java.lang.Throwable -> L83
            goto L9
        L81:
            r8 = move-exception
            goto L90
        L83:
            r8 = move-exception
            java.lang.String r2 = "Error parsing module metadata"
            android.util.Slog.w(r0, r2, r8)     // Catch: java.lang.Throwable -> L81
            java.util.Map r8 = r6.mModuleInfo     // Catch: java.lang.Throwable -> L81
            r8.clear()     // Catch: java.lang.Throwable -> L81
            goto L3d
        L8f:
            return
        L90:
            r7.close()
            r6.mMetadataLoaded = r1
            throw r8
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.server.pm.ModuleInfoProvider.loadModuleMetadata(android.content.res.XmlResourceParser, android.content.res.Resources):void");
    }

    public List getInstalledModules(int i) {
        if (!this.mMetadataLoaded) {
            throw new IllegalStateException("Call to getInstalledModules before metadata loaded");
        }
        if ((131072 & i) != 0) {
            return new ArrayList(this.mModuleInfo.values());
        }
        try {
            List list = getPackageManager().getInstalledPackages(i | 1073741824, UserHandle.getCallingUserId()).getList();
            ArrayList arrayList = new ArrayList(list.size());
            Iterator it = list.iterator();
            while (it.hasNext()) {
                ModuleInfo moduleInfo = (ModuleInfo) this.mModuleInfo.get(((PackageInfo) it.next()).packageName);
                if (moduleInfo != null) {
                    arrayList.add(moduleInfo);
                }
            }
            return arrayList;
        } catch (RemoteException e) {
            Slog.w("PackageManager.ModuleInfoProvider", "Unable to retrieve all package names", e);
            return Collections.emptyList();
        }
    }

    public ModuleInfo getModuleInfo(String str, int i) {
        if (!this.mMetadataLoaded) {
            throw new IllegalStateException("Call to getModuleInfo before metadata loaded");
        }
        if ((i & 1) != 0) {
            for (ModuleInfo moduleInfo : this.mModuleInfo.values()) {
                if (str.equals(moduleInfo.getApexModuleName())) {
                    return moduleInfo;
                }
            }
            return null;
        }
        return (ModuleInfo) this.mModuleInfo.get(str);
    }

    public String getPackageName() {
        if (!this.mMetadataLoaded) {
            throw new IllegalStateException("Call to getVersion before metadata loaded");
        }
        return this.mPackageName;
    }
}
