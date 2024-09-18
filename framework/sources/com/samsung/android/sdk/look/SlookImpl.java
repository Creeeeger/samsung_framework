package com.samsung.android.sdk.look;

import android.app.ActivityThread;
import android.content.Intent;
import android.content.pm.ActivityInfo;
import android.content.pm.ApplicationInfo;
import android.content.pm.IPackageManager;
import android.content.pm.PackageManager;
import android.content.pm.ResolveInfo;
import android.os.Bundle;
import android.os.RemoteException;
import android.os.SystemProperties;
import android.os.UserHandle;
import com.samsung.android.cocktailbar.CocktailBarManager;
import java.util.List;

/* loaded from: classes5.dex */
public class SlookImpl {
    private static final int AIRBUTTON = 1;
    private static final int COCKTAIL_BAR = 6;
    private static final int COCKTAIL_PANEL = 7;
    public static final boolean DEBUG = true;
    private static final int SMARTCLIP = 2;
    private static final int SPEN_HOVER_ICON = 4;
    private static final int WRITINGBUDDY = 3;
    private static final int SDK_INT = SystemProperties.getInt("ro.slook.ver", 0);
    private static int sCocktailLevel = -1;
    private static int sUspLevel = -1;
    private static int sHasMetaEdgeSingle = -1;

    /* loaded from: classes5.dex */
    public static class VERSION_CODES {
        public static final int L1 = 1;
        public static final int L2 = 2;
    }

    public static int getVersionCode() {
        return SDK_INT;
    }

    public static boolean isFeatureEnabled(int type) {
        switch (type) {
            case 1:
            case 3:
                if (sUspLevel == -1) {
                    ActivityThread.getPackageManager();
                }
                if (type == 1) {
                    int i = sUspLevel;
                    return i >= 2 && i <= 3;
                }
                if (type != 3) {
                    return sUspLevel >= 2;
                }
                int i2 = sUspLevel;
                return i2 >= 2 && i2 <= 9;
            case 2:
            case 4:
                return false;
            case 5:
            default:
                return false;
            case 6:
                checkCocktailLevel();
                int i3 = sCocktailLevel;
                if (i3 > 0 && i3 <= type) {
                    return true;
                }
                if (i3 <= 0) {
                    return false;
                }
                checkValidCocktailMetaData();
                return sHasMetaEdgeSingle == 1;
            case 7:
                checkCocktailLevel();
                int i4 = sCocktailLevel;
                return i4 > 0 && i4 <= type;
        }
    }

    private static void checkCocktailLevel() {
        IPackageManager pm;
        if (sCocktailLevel == -1 && (pm = ActivityThread.getPackageManager()) != null) {
            try {
                int i = pm.hasSystemFeature("com.sec.feature.cocktailbar", 0) ? 6 : 0;
                sCocktailLevel = i;
                if (i == 0) {
                    sCocktailLevel = pm.hasSystemFeature(PackageManager.SEM_FEATURE_COCKTAIL_PANEL, 0) ? 7 : 0;
                }
            } catch (RemoteException e) {
                throw new RuntimeException("Package manager has died", e);
            }
        }
    }

    private static void checkValidCocktailMetaData() {
        String value;
        String value2;
        if (sHasMetaEdgeSingle == -1) {
            int N = 0;
            sHasMetaEdgeSingle = 0;
            IPackageManager pm = ActivityThread.getPackageManager();
            String packageName = ActivityThread.currentOpPackageName();
            if (pm == null || packageName == null) {
                return;
            }
            try {
                ApplicationInfo ai = pm.getApplicationInfo(packageName, 128L, UserHandle.myUserId());
                if (ai != null) {
                    Bundle metaData = ai.metaData;
                    if (metaData != null && (value2 = metaData.getString("com.samsung.android.cocktail.mode", "")) != null && value2.equals("edge_single")) {
                        sHasMetaEdgeSingle = 1;
                    }
                    if (sHasMetaEdgeSingle == 0) {
                        Intent intent = new Intent(CocktailBarManager.ACTION_COCKTAIL_UPDATE);
                        intent.setPackage(packageName);
                        intent.resolveTypeIfNeeded(ActivityThread.currentApplication().getContentResolver());
                        List<ResolveInfo> broadcastReceivers = pm.queryIntentReceivers(intent, intent.resolveTypeIfNeeded(ActivityThread.currentApplication().getContentResolver()), 128L, UserHandle.myUserId()).getList();
                        if (broadcastReceivers != null) {
                            N = broadcastReceivers.size();
                        }
                        for (int i = 0; i < N; i++) {
                            ResolveInfo ri = broadcastReceivers.get(i);
                            ActivityInfo activityInfo = ri.activityInfo;
                            if ((activityInfo.applicationInfo.flags & 262144) == 0 && packageName.equals(activityInfo.packageName)) {
                                Bundle metaData2 = activityInfo.metaData;
                                if (metaData2 != null && (value = metaData2.getString("com.samsung.android.cocktail.mode", "")) != null && value.equals("edge_single")) {
                                    sHasMetaEdgeSingle = 1;
                                    return;
                                }
                            }
                        }
                    }
                }
            } catch (RemoteException e) {
                e.printStackTrace();
            }
        }
    }
}
