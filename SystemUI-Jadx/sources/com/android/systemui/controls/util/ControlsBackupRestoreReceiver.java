package com.android.systemui.controls.util;

import android.content.BroadcastReceiver;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.util.Log;
import com.android.systemui.Prefs;
import com.android.systemui.controls.controller.ComponentInfo;
import com.android.systemui.controls.controller.ControlsController;
import com.android.systemui.controls.controller.ControlsControllerImpl;
import com.android.systemui.controls.controller.CustomControlsController;
import com.android.systemui.controls.controller.Favorites;
import com.android.systemui.controls.controller.StructureInfo;
import com.android.systemui.controls.ui.CustomControlsUiController;
import com.android.systemui.controls.ui.CustomControlsUiControllerImpl;
import com.android.systemui.controls.ui.util.ControlsUtil;
import com.android.systemui.util.settings.SecureSettings;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import kotlin.jvm.internal.DefaultConstructorMarker;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public final class ControlsBackupRestoreReceiver extends BroadcastReceiver {
    public final ControlsController controlsController;
    public final ControlsFileLoader controlsFileLoader;
    public final ControlsLogger controlsLogger;
    public final ControlsRuneWrapper controlsRuneWrapper;
    public final ControlsUtil controlsUtil;
    public final CustomControlsController customControlsController;
    public final CustomControlsUiController customControlsUiController;
    public final EncryptDecryptWrapper encryptDecryptWrapper;
    public final SecureSettings secureSettings;

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes.dex */
    public final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }
    }

    static {
        new Companion(null);
    }

    public ControlsBackupRestoreReceiver(ControlsController controlsController, CustomControlsController customControlsController, CustomControlsUiController customControlsUiController, ControlsFileLoader controlsFileLoader, EncryptDecryptWrapper encryptDecryptWrapper, SecureSettings secureSettings, ControlsUtil controlsUtil, ControlsRuneWrapper controlsRuneWrapper, ControlsLogger controlsLogger) {
        this.controlsController = controlsController;
        this.customControlsController = customControlsController;
        this.customControlsUiController = customControlsUiController;
        this.controlsFileLoader = controlsFileLoader;
        this.encryptDecryptWrapper = encryptDecryptWrapper;
        this.secureSettings = secureSettings;
        this.controlsUtil = controlsUtil;
        this.controlsRuneWrapper = controlsRuneWrapper;
        this.controlsLogger = controlsLogger;
    }

    public final boolean isPackageInstalledAndEnabled(PackageManager packageManager, String str) {
        try {
            packageManager.getPackageInfo(str, 1);
            boolean z = packageManager.getApplicationInfo(str, 0).enabled;
            ControlsLogger.printLog$default(this.controlsLogger, "ControlsBackupRestoreManager", "Already Installed " + str + ", enabled=" + z);
            return z;
        } catch (PackageManager.NameNotFoundException unused) {
            ControlsLogger.printLog$default(this.controlsLogger, "ControlsBackupRestoreManager", "Not Installed " + str);
            return false;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:58:0x01cf  */
    /* JADX WARN: Removed duplicated region for block: B:62:0x01d8  */
    /* JADX WARN: Removed duplicated region for block: B:84:0x026e  */
    @Override // android.content.BroadcastReceiver
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final void onReceive(android.content.Context r27, android.content.Intent r28) {
        /*
            Method dump skipped, instructions count: 688
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.systemui.controls.util.ControlsBackupRestoreReceiver.onReceive(android.content.Context, android.content.Intent):void");
    }

    public final void restore(Context context, ControlsBackupFormat controlsBackupFormat) {
        ComponentName unflattenFromString;
        ControlsLogger.printLog$default(this.controlsLogger, "ControlsBackupRestoreManager", "restore=" + controlsBackupFormat);
        SecureSettings secureSettings = this.secureSettings;
        ControlsBackupSetting controlsBackupSetting = controlsBackupFormat.setting;
        secureSettings.putIntForUser(controlsBackupSetting.showDevice ? 1 : 0, -2, "lockscreen_show_controls");
        this.secureSettings.putIntForUser(controlsBackupSetting.controlDevice ? 1 : 0, -2, "lockscreen_allow_trivial_controls");
        if (controlsBackupSetting.isOOBECompleted) {
            this.controlsUtil.getClass();
            Prefs.putBoolean(context, "ControlsOOBEManageAppsCompleted", true);
        }
        String str = controlsBackupSetting.selectedComponent;
        if (str != null && (unflattenFromString = ComponentName.unflattenFromString(str)) != null) {
            ControlsLogger.printLog$default(this.controlsLogger, "ControlsBackupRestoreManager", "restore " + unflattenFromString + ", packageName = " + unflattenFromString.getPackageName());
            if (isPackageInstalledAndEnabled(context.getPackageManager(), unflattenFromString.getPackageName())) {
                ((CustomControlsUiControllerImpl) this.customControlsUiController).sharedPreferences.edit().putString("controls_custom_component", str).commit();
            }
        }
        List list = controlsBackupFormat.controls.structures;
        ArrayList arrayList = new ArrayList();
        for (Object obj : list) {
            if (isPackageInstalledAndEnabled(context.getPackageManager(), ((StructureInfo) obj).componentName.getPackageName())) {
                arrayList.add(obj);
            }
        }
        ControlsControllerImpl controlsControllerImpl = (ControlsControllerImpl) this.customControlsController;
        if (controlsControllerImpl.confirmAvailability()) {
            LinkedHashMap linkedHashMap = new LinkedHashMap();
            Iterator it = arrayList.iterator();
            while (it.hasNext()) {
                Object next = it.next();
                ComponentName componentName = ((StructureInfo) next).componentName;
                Object obj2 = linkedHashMap.get(componentName);
                if (obj2 == null) {
                    obj2 = new ArrayList();
                    linkedHashMap.put(componentName, obj2);
                }
                ((List) obj2).add(next);
            }
            for (Map.Entry entry : linkedHashMap.entrySet()) {
                controlsControllerImpl.replaceFavoritesForComponent(new ComponentInfo((ComponentName) entry.getKey(), (List) entry.getValue()), false);
            }
            Log.d("ControlsControllerImpl", "restore backupStructures=" + arrayList);
            Favorites.INSTANCE.getClass();
            Log.d("ControlsControllerImpl", "restore result=" + Favorites.getAllStructures());
        }
    }

    public final void sendResponse(Context context, ControlsBackUpRestore$BNRResponse controlsBackUpRestore$BNRResponse) {
        Intent intent = new Intent();
        intent.setAction(controlsBackUpRestore$BNRResponse.intentAction);
        intent.putExtra("RESULT", controlsBackUpRestore$BNRResponse.result.getValue());
        intent.putExtra("ERR_CODE", controlsBackUpRestore$BNRResponse.errCode.getValue());
        intent.putExtra("REQ_SIZE", controlsBackUpRestore$BNRResponse.reqSize);
        intent.putExtra("SOURCE", controlsBackUpRestore$BNRResponse.source);
        String str = controlsBackUpRestore$BNRResponse.exportSessionTime;
        if (str != null) {
            intent.putExtra("EXPORT_SESSION_TIME", str);
        }
        intent.putExtra("EXTRA_ERR_CODE", controlsBackUpRestore$BNRResponse.extraErrCode);
        context.sendBroadcast(intent, "com.wssnps.permission.COM_WSSNPS");
        ControlsLogger.printLog$default(this.controlsLogger, "ControlsBackupRestoreManager", "send response");
    }
}
