package com.sec.internal.ims.core.imslogger;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.pm.PackageManager;
import android.os.Bundle;
import android.util.Log;
import com.samsung.android.emergencymode.SemEmergencyManager;
import com.sec.internal.interfaces.ims.core.imslogger.ISignallingNotifier;

/* loaded from: classes.dex */
public class ExternalPackage implements ISignallingNotifier {
    private static final String LOG_TAG = "ExternalPackage";
    private Context mContext;
    private String mPackageName;
    private ISignallingNotifier.PackageStatus mPackageStatus;

    public ExternalPackage(Context context, String str) {
        this.mPackageStatus = ISignallingNotifier.PackageStatus.NOT_INSTALLED;
        this.mContext = context;
        this.mPackageName = str;
        this.mPackageStatus = checkPackageStatus();
        Log.i(LOG_TAG, "name: " + this.mPackageName + " status: " + this.mPackageStatus);
        registerPackageAction();
    }

    public ISignallingNotifier.PackageStatus checkPackageStatus() {
        ISignallingNotifier.PackageStatus packageStatus;
        ISignallingNotifier.PackageStatus packageStatus2 = ISignallingNotifier.PackageStatus.NOT_INSTALLED;
        try {
            int applicationEnabledSetting = this.mContext.getPackageManager().getApplicationEnabledSetting(this.mContext.getPackageManager().getPackageInfo(this.mPackageName, 1).packageName);
            if (!SemEmergencyManager.isEmergencyMode(this.mContext) && applicationEnabledSetting < 2) {
                packageStatus = ISignallingNotifier.PackageStatus.INSTALLED;
            } else {
                packageStatus = ISignallingNotifier.PackageStatus.EMERGENCY_MODE;
            }
        } catch (PackageManager.NameNotFoundException unused) {
            packageStatus = ISignallingNotifier.PackageStatus.NOT_INSTALLED;
        }
        Log.i(LOG_TAG, "checkPackageStatus(): " + packageStatus);
        return packageStatus;
    }

    private void registerPackageAction() {
        IntentFilter intentFilter = new IntentFilter();
        intentFilter.addAction("android.intent.action.PACKAGE_ADDED");
        intentFilter.addAction("android.intent.action.PACKAGE_REMOVED");
        intentFilter.addDataScheme("package");
        this.mContext.registerReceiver(new BroadcastReceiver() { // from class: com.sec.internal.ims.core.imslogger.ExternalPackage.1
            @Override // android.content.BroadcastReceiver
            public void onReceive(Context context, Intent intent) {
                if (("package:" + ExternalPackage.this.mPackageName).equalsIgnoreCase(intent.getData().toString())) {
                    ExternalPackage.this.mPackageStatus = "android.intent.action.PACKAGE_ADDED".equalsIgnoreCase(intent.getAction()) ? ISignallingNotifier.PackageStatus.INSTALLED : ISignallingNotifier.PackageStatus.NOT_INSTALLED;
                    Log.i(ExternalPackage.LOG_TAG, "name: " + ExternalPackage.this.mPackageName + " status: " + ExternalPackage.this.mPackageStatus);
                }
            }
        }, intentFilter);
    }

    private boolean isAllow() {
        return this.mPackageStatus == ISignallingNotifier.PackageStatus.INSTALLED;
    }

    @Override // com.sec.internal.interfaces.ims.core.imslogger.ISignallingNotifier
    public boolean send(Object obj) {
        if (!Bundle.class.getSimpleName().equals(obj.getClass().getSimpleName())) {
            return true;
        }
        Bundle bundle = (Bundle) obj;
        if (!isAllow() || bundle.getInt("notifyType") != 0) {
            return true;
        }
        Intent intent = new Intent(ISignallingNotifier.ACTION_SIP_MESSAGE);
        intent.setPackage(this.mPackageName);
        intent.putExtras(bundle);
        this.mContext.sendBroadcast(intent, ISignallingNotifier.PERMISSION);
        return true;
    }
}
