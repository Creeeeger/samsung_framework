package androidx.core.content;

import android.app.AppOpsManager;
import android.content.Context;
import android.os.Binder;
import android.os.Process;
import java.util.Objects;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public final class PermissionChecker {
    private PermissionChecker() {
    }

    public static int checkSelfPermission(Context context, String str) {
        boolean z;
        int noteProxyOpNoThrow;
        int myPid = Process.myPid();
        int myUid = Process.myUid();
        String packageName = context.getPackageName();
        if (context.checkPermission(str, myPid, myUid) == -1) {
            return -1;
        }
        String permissionToOp = AppOpsManager.permissionToOp(str);
        if (permissionToOp != null) {
            if (packageName == null) {
                String[] packagesForUid = context.getPackageManager().getPackagesForUid(myUid);
                if (packagesForUid == null || packagesForUid.length <= 0) {
                    return -1;
                }
                packageName = packagesForUid[0];
            }
            int myUid2 = Process.myUid();
            String packageName2 = context.getPackageName();
            int i = 1;
            if (myUid2 == myUid && Objects.equals(packageName2, packageName)) {
                z = true;
            } else {
                z = false;
            }
            if (z) {
                AppOpsManager appOpsManager = (AppOpsManager) context.getSystemService(AppOpsManager.class);
                int callingUid = Binder.getCallingUid();
                if (appOpsManager == null) {
                    noteProxyOpNoThrow = 1;
                } else {
                    noteProxyOpNoThrow = appOpsManager.checkOpNoThrow(permissionToOp, callingUid, packageName);
                }
                if (noteProxyOpNoThrow == 0) {
                    String opPackageName = context.getOpPackageName();
                    if (appOpsManager != null) {
                        i = appOpsManager.checkOpNoThrow(permissionToOp, myUid, opPackageName);
                    }
                    noteProxyOpNoThrow = i;
                }
            } else {
                noteProxyOpNoThrow = ((AppOpsManager) context.getSystemService(AppOpsManager.class)).noteProxyOpNoThrow(permissionToOp, packageName);
            }
            if (noteProxyOpNoThrow != 0) {
                return -2;
            }
        }
        return 0;
    }
}
