package com.sec.internal.ims.servicemodules.tapi.service.extension;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.SharedPreferences;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.res.Resources;
import android.os.Build;
import android.os.Bundle;
import android.util.Log;
import com.sec.internal.ims.servicemodules.tapi.service.extension.utils.ValidationHelper;
import com.sec.internal.ims.servicemodules.tapi.service.extension.validation.PackageInfoValidator;
import java.io.IOException;
import java.io.InputStream;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Hashtable;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Objects;
import java.util.Set;

/* loaded from: classes.dex */
public class ServiceExtensionManager {
    private static final String CLIENT_JOYN_NAME = "gsma.joyn.client";
    private static final String LOG_TAG = "ServiceExtensionManager";
    private static ServiceExtensionManager mInstance;
    private final Context mContext;
    private RcsClientsMonitor mRcsClientMonitor;
    private final Hashtable<String, ApplicationInfo> clientAppInfo = new Hashtable<>();
    private final Set<String> processedPackages = new HashSet();

    private static boolean isSystemApp(int i) {
        return ((i & 1) == 0 && (i & 128) == 0) ? false : true;
    }

    private ServiceExtensionManager(Context context) {
        this.mContext = context;
    }

    public static synchronized ServiceExtensionManager getInstance(Context context) {
        ServiceExtensionManager serviceExtensionManager;
        synchronized (ServiceExtensionManager.class) {
            if (mInstance == null) {
                mInstance = new ServiceExtensionManager(context);
            }
            serviceExtensionManager = mInstance;
        }
        return serviceExtensionManager;
    }

    public void start() {
        Log.d(LOG_TAG, "start");
        if (this.mRcsClientMonitor == null) {
            IntentFilter intentFilter = new IntentFilter("android.intent.action.PACKAGE_ADDED");
            intentFilter.addAction("android.intent.action.PACKAGE_CHANGED");
            intentFilter.addAction("android.intent.action.PACKAGE_REMOVED");
            intentFilter.addDataScheme("package");
            RcsClientsMonitor rcsClientsMonitor = new RcsClientsMonitor(this.mContext, this);
            this.mRcsClientMonitor = rcsClientsMonitor;
            this.mContext.registerReceiver(rcsClientsMonitor, intentFilter);
        }
        loadProcessesPackages();
        loadClients();
        authoriseAllClients();
    }

    public void stop() {
        this.clientAppInfo.clear();
        this.processedPackages.clear();
        RcsClientsMonitor rcsClientsMonitor = this.mRcsClientMonitor;
        if (rcsClientsMonitor != null) {
            this.mContext.unregisterReceiver(rcsClientsMonitor);
            this.mRcsClientMonitor = null;
        }
    }

    private void loadProcessesPackages() {
        Iterator<Map.Entry<String, ?>> it = this.mContext.getSharedPreferences("iari_app_association", 0).getAll().entrySet().iterator();
        while (it.hasNext()) {
            this.processedPackages.add(ValidationHelper.decrypt(it.next().getKey()));
        }
    }

    private void loadClients() {
        Bundle bundle;
        ArrayList<ApplicationInfo> arrayList = new ArrayList();
        List<PackageInfo> installedPackages = getPackageManager().getInstalledPackages(1);
        if (installedPackages == null) {
            return;
        }
        Iterator<PackageInfo> it = installedPackages.iterator();
        while (it.hasNext()) {
            try {
                arrayList.add(getPackageManager().getApplicationInfo(it.next().packageName, 128));
            } catch (PackageManager.NameNotFoundException e) {
                e.printStackTrace();
            }
        }
        for (ApplicationInfo applicationInfo : arrayList) {
            if (!isCurrentPackage(this.mContext, applicationInfo.packageName) && (bundle = applicationInfo.metaData) != null && bundle.getBoolean(CLIENT_JOYN_NAME, false)) {
                this.clientAppInfo.put(applicationInfo.packageName, applicationInfo);
            }
        }
    }

    private void authoriseInternal(String str, InputStream inputStream) {
        PackageInfoValidator packageInfoValidator = new PackageInfoValidator(this.mContext);
        packageInfoValidator.setPackageName(str);
        String processIARIauthorization = packageInfoValidator.processIARIauthorization(inputStream);
        if (processIARIauthorization != null && !processIARIauthorization.isEmpty()) {
            Log.d(LOG_TAG, "tag is authorised for the package: " + str);
        } else {
            String str2 = LOG_TAG;
            Log.d(str2, "unAuthorised tag or validation error for the package: " + str);
            if (Build.IS_DEBUGGABLE) {
                Log.e(str2, "debug binary, ignore" + str);
                processIARIauthorization = "default-tag";
            }
        }
        if (str != null) {
            persistIariTag(str, processIARIauthorization);
        }
        this.processedPackages.add(str);
        closeInputStream(inputStream);
    }

    private void persistIariTag(String str, String str2) {
        SharedPreferences.Editor edit = this.mContext.getSharedPreferences("iari_app_association", 0).edit();
        if (str2 != null) {
            edit.putString(ValidationHelper.encrypt(str), ValidationHelper.encrypt(str2));
        } else {
            edit.putString(ValidationHelper.encrypt(str), "");
        }
        edit.apply();
    }

    private void authoriseAllClients() {
        ApplicationInfo value;
        InputStream xmlResource;
        for (Map.Entry<String, ApplicationInfo> entry : this.clientAppInfo.entrySet()) {
            if (!isPackageProcessed(entry.getKey()) && (value = entry.getValue()) != null && !isSystemApp(value.flags) && (xmlResource = getXmlResource(value.metaData.getInt("auth"), value.packageName)) != null) {
                authoriseInternal(value.packageName, xmlResource);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void authorise(String str) {
        ApplicationInfo applicationInfo;
        try {
            applicationInfo = getPackageManager().getApplicationInfo(str, 128);
        } catch (PackageManager.NameNotFoundException e) {
            e.printStackTrace();
            applicationInfo = null;
        }
        if (applicationInfo == null || isCurrentPackage(this.mContext, applicationInfo.packageName)) {
            return;
        }
        authoriseInternal(applicationInfo.packageName, getXmlResource(applicationInfo.metaData.getInt("auth"), str));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void unAuthorise(String str) {
        Log.d(LOG_TAG, "unAuthorise" + str);
        SharedPreferences.Editor edit = this.mContext.getSharedPreferences("iari_app_association", 0).edit();
        edit.remove(ValidationHelper.encrypt(str));
        this.clientAppInfo.remove(str);
        this.processedPackages.remove(str);
        edit.apply();
    }

    private void closeInputStream(InputStream inputStream) {
        if (inputStream != null) {
            try {
                inputStream.close();
            } catch (IOException e) {
                e.printStackTrace();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean isPackageProcessed(String str) {
        return this.processedPackages.contains(str);
    }

    private InputStream getXmlResource(int i, String str) {
        try {
            Resources resourcesForApplication = this.mContext.getPackageManager().getResourcesForApplication(str);
            if (this.mContext.getResources().getIdentifier(String.valueOf(i), "raw", str) != 0) {
                return resourcesForApplication.openRawResource(i);
            }
        } catch (PackageManager.NameNotFoundException e) {
            e.printStackTrace();
        }
        Log.e(LOG_TAG, "no auth doc found in client application");
        return null;
    }

    private static boolean isCurrentPackage(Context context, String str) {
        PackageInfo packageInfo;
        if (context == null) {
            return false;
        }
        try {
            packageInfo = context.getPackageManager().getPackageInfo(context.getPackageName(), 128);
        } catch (PackageManager.NameNotFoundException unused) {
            Log.e(LOG_TAG, "error retrieving the package details ");
            packageInfo = null;
        }
        return (packageInfo == null || str == null || !str.equals(packageInfo.packageName)) ? false : true;
    }

    private PackageManager getPackageManager() {
        return this.mContext.getPackageManager();
    }

    public static boolean isAppAuthorised(Context context, String str) {
        ApplicationInfo applicationInfo;
        if (isCurrentPackage(context, str)) {
            Log.d(LOG_TAG, "current package: ignore");
            return true;
        }
        try {
            applicationInfo = context.getPackageManager().getApplicationInfo(str, 128);
        } catch (PackageManager.NameNotFoundException e) {
            e.printStackTrace();
            applicationInfo = null;
        }
        if (applicationInfo == null) {
            Log.e(LOG_TAG, "ApplicationInfo is Null");
            return false;
        }
        if (isSystemApp(applicationInfo.flags)) {
            Log.d(LOG_TAG, "system application: ignore");
            return true;
        }
        SharedPreferences sharedPreferences = context.getSharedPreferences("iari_app_association", 0);
        if (sharedPreferences == null || !sharedPreferences.contains(ValidationHelper.encrypt(str))) {
            return false;
        }
        String string = sharedPreferences.getString(ValidationHelper.encrypt(str), "");
        if (string.isEmpty()) {
            Log.e(LOG_TAG, "Package name not authorized");
            return false;
        }
        String decrypt = ValidationHelper.decrypt(string);
        Log.d(LOG_TAG, "Decrypted iari" + decrypt);
        return true;
    }

    public static class RcsClientsMonitor extends BroadcastReceiver {
        private final Context ctx;
        private final ServiceExtensionManager mgr;

        public RcsClientsMonitor(Context context, ServiceExtensionManager serviceExtensionManager) {
            this.mgr = serviceExtensionManager;
            this.ctx = context;
        }

        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            String action = intent.getAction();
            String dataString = intent.getDataString();
            Objects.requireNonNull(dataString);
            String replaceFirst = dataString.replaceFirst("package:", "");
            Objects.requireNonNull(action);
            if (!action.equals("android.intent.action.PACKAGE_REMOVED")) {
                if (action.equals("android.intent.action.PACKAGE_ADDED") && isJoynClient(replaceFirst) && !this.mgr.isPackageProcessed(replaceFirst)) {
                    this.mgr.authorise(replaceFirst);
                    return;
                }
                return;
            }
            if (this.mgr.isPackageProcessed(replaceFirst)) {
                this.mgr.unAuthorise(replaceFirst);
            }
        }

        private boolean isJoynClient(String str) {
            ApplicationInfo applicationInfo;
            Bundle bundle;
            try {
                applicationInfo = this.ctx.getPackageManager().getApplicationInfo(str, 128);
            } catch (PackageManager.NameNotFoundException e) {
                e.printStackTrace();
                applicationInfo = null;
            }
            return (applicationInfo == null || (bundle = applicationInfo.metaData) == null || !bundle.getBoolean(ServiceExtensionManager.CLIENT_JOYN_NAME, false)) ? false : true;
        }
    }
}
