package com.android.server.pm.dex;

import android.content.pm.IPackageManager;
import android.content.pm.PackageInfo;
import android.os.FileUtils;
import android.os.RemoteException;
import android.os.ServiceManager;
import android.os.UserHandle;
import android.util.EventLog;
import com.android.server.pm.Installer;
import com.android.server.pm.dex.PackageDynamicCodeLoading;
import java.io.File;
import java.io.IOException;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.function.Function;

/* loaded from: classes3.dex */
public class DynamicCodeLogger {
    public final Installer mInstaller;
    public final PackageDynamicCodeLoading mPackageDynamicCodeLoading;
    public IPackageManager mPackageManager;

    public DynamicCodeLogger(Installer installer) {
        this.mInstaller = installer;
        this.mPackageDynamicCodeLoading = new PackageDynamicCodeLoading();
    }

    public DynamicCodeLogger(IPackageManager iPackageManager, Installer installer, PackageDynamicCodeLoading packageDynamicCodeLoading) {
        this.mPackageManager = iPackageManager;
        this.mInstaller = installer;
        this.mPackageDynamicCodeLoading = packageDynamicCodeLoading;
    }

    public final IPackageManager getPackageManager() {
        if (this.mPackageManager == null) {
            this.mPackageManager = IPackageManager.Stub.asInterface(ServiceManager.getService("package"));
        }
        return this.mPackageManager;
    }

    public Set getAllPackagesWithDynamicCodeLoading() {
        return this.mPackageDynamicCodeLoading.getAllPackagesWithDynamicCodeLoading();
    }

    /* JADX WARN: Removed duplicated region for block: B:31:0x00e0  */
    /* JADX WARN: Removed duplicated region for block: B:40:0x013e  */
    /* JADX WARN: Removed duplicated region for block: B:44:0x0160 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:48:0x0138 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:61:0x00e3  */
    /* JADX WARN: Removed duplicated region for block: B:80:0x0062  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public void logDynamicCodeLoading(java.lang.String r20) {
        /*
            Method dump skipped, instructions count: 395
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.server.pm.dex.DynamicCodeLogger.logDynamicCodeLoading(java.lang.String):void");
    }

    public final boolean fileIsUnder(String str, String str2) {
        if (str2 == null) {
            return false;
        }
        try {
            return FileUtils.contains(new File(str2).getCanonicalPath(), new File(str).getCanonicalPath());
        } catch (IOException unused) {
            return false;
        }
    }

    public PackageDynamicCodeLoading.PackageDynamicCode getPackageDynamicCodeInfo(String str) {
        return this.mPackageDynamicCodeLoading.getPackageDynamicCodeInfo(str);
    }

    public void writeDclEvent(String str, int i, String str2) {
        EventLog.writeEvent(1397638484, str, Integer.valueOf(i), str2);
    }

    public void recordDex(int i, String str, String str2, String str3) {
        if (this.mPackageDynamicCodeLoading.record(str2, str, 68, i, str3)) {
            this.mPackageDynamicCodeLoading.maybeWriteAsync();
        }
    }

    public void recordNative(int i, String str) {
        try {
            String[] packagesForUid = getPackageManager().getPackagesForUid(i);
            if (packagesForUid != null) {
                if (packagesForUid.length == 0) {
                    return;
                }
                String str2 = packagesForUid[0];
                if (this.mPackageDynamicCodeLoading.record(str2, str, 78, UserHandle.getUserId(i), str2)) {
                    this.mPackageDynamicCodeLoading.maybeWriteAsync();
                }
            }
        } catch (RemoteException unused) {
        }
    }

    public void removePackage(String str) {
        if (this.mPackageDynamicCodeLoading.removePackage(str)) {
            this.mPackageDynamicCodeLoading.maybeWriteAsync();
        }
    }

    public void removeUserPackage(String str, int i) {
        if (this.mPackageDynamicCodeLoading.removeUserPackage(str, i)) {
            this.mPackageDynamicCodeLoading.maybeWriteAsync();
        }
    }

    public void readAndSync(Map map) {
        this.mPackageDynamicCodeLoading.read();
        this.mPackageDynamicCodeLoading.syncData(map);
    }

    public void writeNow() {
        this.mPackageDynamicCodeLoading.writeNow();
    }

    public void load(Map map) {
        HashMap hashMap = new HashMap();
        for (Map.Entry entry : map.entrySet()) {
            List list = (List) entry.getValue();
            int intValue = ((Integer) entry.getKey()).intValue();
            Iterator it = list.iterator();
            while (it.hasNext()) {
                ((Set) hashMap.computeIfAbsent(((PackageInfo) it.next()).packageName, new Function() { // from class: com.android.server.pm.dex.DynamicCodeLogger$$ExternalSyntheticLambda0
                    @Override // java.util.function.Function
                    public final Object apply(Object obj) {
                        Set lambda$load$0;
                        lambda$load$0 = DynamicCodeLogger.lambda$load$0((String) obj);
                        return lambda$load$0;
                    }
                })).add(Integer.valueOf(intValue));
            }
        }
        readAndSync(hashMap);
    }

    public static /* synthetic */ Set lambda$load$0(String str) {
        return new HashSet();
    }

    public void notifyPackageDataDestroyed(String str, int i) {
        if (i == -1) {
            removePackage(str);
        } else {
            removeUserPackage(str, i);
        }
    }
}
