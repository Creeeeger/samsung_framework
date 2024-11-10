package com.android.server.enterprise.constrained;

import android.R;
import android.app.INotificationManager;
import android.app.Notification;
import android.app.NotificationChannel;
import android.app.NotificationManager;
import android.app.PendingIntent;
import android.content.BroadcastReceiver;
import android.content.ContentValues;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.os.Binder;
import android.os.ServiceManager;
import android.util.Log;
import com.android.server.LocalServices;
import com.android.server.enterprise.adapter.AdapterRegistry;
import com.android.server.enterprise.adapter.ISystemUIAdapter;
import com.android.server.enterprise.adapterlayer.PackageManagerAdapter;
import com.android.server.enterprise.storage.EdmStorageProvider;
import com.samsung.android.knox.EnrollData;
import com.samsung.android.knox.EnterpriseDeviceManager;
import com.samsung.android.knox.localservice.ConstrainedModeInternal;
import java.io.File;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;

/* loaded from: classes2.dex */
public class ConstrainedModeService extends ConstrainedModeInternal {
    public Context mContext;
    public EdmStorageProvider mEdmStorageProvider;
    public PackageManagerAdapter mPackageManagerAdapter;
    public static final byte[] CONSTRAINED_DELIMITER = {8, 14, 25, -1};
    public static ConstrainedModeService sConstrainedService = null;
    public static final Object lock = new Object();
    public EnterpriseDeviceManager mEDM = null;
    public HashMap mCachedConstrainedData = new HashMap();
    public BroadcastReceiver mReceiver = new BroadcastReceiver() { // from class: com.android.server.enterprise.constrained.ConstrainedModeService.1
        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            if (intent.getAction().equals("android.intent.action.LOCALE_CHANGED")) {
                ConstrainedModeService.this.updateNotification();
            }
        }
    };

    public ConstrainedModeService(Context context) {
        this.mEdmStorageProvider = null;
        this.mContext = context;
        this.mEdmStorageProvider = new EdmStorageProvider(context);
        IntentFilter intentFilter = new IntentFilter();
        intentFilter.addAction("android.intent.action.LOCALE_CHANGED");
        this.mContext.registerReceiver(this.mReceiver, intentFilter);
        this.mPackageManagerAdapter = PackageManagerAdapter.getInstance(context);
        updateConstrainedStateData(false);
        new Thread(new Runnable() { // from class: com.android.server.enterprise.constrained.ConstrainedModeService.2
            @Override // java.lang.Runnable
            public void run() {
                boolean z = false;
                while (!z) {
                    if (INotificationManager.Stub.asInterface(ServiceManager.getService("notification")) != null) {
                        ConstrainedModeService.this.updateConstrainedStateData(true);
                        z = true;
                    } else {
                        try {
                            Thread.sleep(1000L);
                        } catch (Exception e) {
                            e.printStackTrace();
                        }
                    }
                }
            }
        }).start();
    }

    public static void addService(Context context) {
        if (sConstrainedService == null) {
            synchronized (lock) {
                if (sConstrainedService == null) {
                    ConstrainedModeService constrainedModeService = new ConstrainedModeService(context);
                    sConstrainedService = constrainedModeService;
                    LocalServices.addService(ConstrainedModeInternal.class, constrainedModeService);
                }
            }
        }
    }

    public final EnterpriseDeviceManager getEDM() {
        if (this.mEDM == null) {
            this.mEDM = EnterpriseDeviceManager.getInstance(this.mContext);
        }
        return this.mEDM;
    }

    public boolean checkConstrainedState() {
        List constrainedStateAll = getConstrainedStateAll();
        if (constrainedStateAll != null) {
            Iterator it = constrainedStateAll.iterator();
            while (it.hasNext()) {
                if (((EnrollData) it.next()).getConstrainedState() == 0) {
                    return true;
                }
            }
        }
        return false;
    }

    public final void updateNotification() {
        List<EnrollData> constrainedStateAll = getConstrainedStateAll();
        if (constrainedStateAll != null) {
            for (EnrollData enrollData : constrainedStateAll) {
                showConstrainedStateNotification(enrollData.getPackageName(), null, null, null, false);
                if (enrollData.getConstrainedState() == 0) {
                    showConstrainedStateNotification(enrollData.getPackageName(), enrollData.getComment(), enrollData.getDownloadUrl(), enrollData.getTargetPkgName(), true);
                }
            }
        }
    }

    public void cleanUpConstrainedState(int i) {
        if (i != Binder.getCallingUid()) {
            this.mContext.enforceCallingOrSelfPermission("android.permission.BIND_DEVICE_ADMIN", "Only system or itself can remove an EDM admin");
        }
        ContentValues contentValues = new ContentValues();
        contentValues.put("status", (Integer) 1);
        contentValues.put("adminUid", Integer.valueOf(i));
        if (this.mEdmStorageProvider.getValue("ConstrainedStateTable", "adminUid", contentValues) != null) {
            String packageNameForUid = this.mEdmStorageProvider.getPackageNameForUid(i);
            if (packageNameForUid != null) {
                disableConstrainedStateInternal(i, packageNameForUid);
                return;
            }
            return;
        }
        Log.d("ConstrainedMode", "constrained state will go on");
    }

    public final void showConstrainedStateNotification(String str, String str2, String str3, String str4, boolean z) {
        String str5 = str + "_ConstrainedNoti";
        NotificationManager notificationManager = (NotificationManager) this.mContext.getSystemService("notification");
        if (notificationManager == null) {
            Log.d("ConstrainedMode", "Failed to get NotificationManager");
            return;
        }
        notificationManager.createNotificationChannel(new NotificationChannel("CONSTRAINED_MODE", str, 4));
        if (z) {
            Notification.Builder builder = new Notification.Builder(this.mContext, "CONSTRAINED_MODE");
            builder.setWhen(0L);
            builder.setSmallIcon(R.drawable.pointer_wait_28);
            builder.setContentTitle(this.mContext.getString(R.string.immersive_cling_positive));
            if (str2.equals("DEFAULT")) {
                builder.setContentText(this.mContext.getString(R.string.launch_warning_title));
                builder.setStyle(new Notification.BigTextStyle().bigText(this.mContext.getString(R.string.launch_warning_title)));
            } else {
                builder.setContentText(str2);
                builder.setStyle(new Notification.BigTextStyle().bigText(str2));
            }
            builder.setPriority(2);
            builder.setOngoing(true);
            if (str3 != null && str3.length() > 0) {
                Intent intent = new Intent("com.samsung.android.knox.intent.action.CHECK_REENROLLMENT_INTERNAL");
                intent.putExtra("pkg", str);
                intent.putExtra("url", str3);
                if (str4 != null && str4.length() > 0) {
                    intent.putExtra("targetPkgName", str4);
                }
                builder.setContentIntent(PendingIntent.getBroadcast(this.mContext, str5.hashCode(), intent, 67108864));
            }
            notificationManager.notify(4558, builder.build());
            return;
        }
        notificationManager.cancel(4558);
    }

    public final boolean isMatch(byte[] bArr, byte[] bArr2, int i) {
        for (int i2 = 0; i2 < bArr.length; i2++) {
            int i3 = i + i2;
            if (i3 >= bArr2.length || bArr[i2] != bArr2[i3]) {
                return false;
            }
        }
        return true;
    }

    public final List split(byte[] bArr, byte[] bArr2) {
        LinkedList linkedList = new LinkedList();
        int i = 0;
        int i2 = 0;
        while (i < bArr2.length) {
            if (isMatch(bArr, bArr2, i)) {
                linkedList.add(Arrays.copyOfRange(bArr2, i2, i));
                i += bArr.length;
                i2 = i;
            }
            i++;
        }
        linkedList.add(Arrays.copyOfRange(bArr2, i2, bArr2.length));
        return linkedList;
    }

    /* JADX WARN: Removed duplicated region for block: B:58:0x018d A[Catch: Exception -> 0x02d5, RuntimeException -> 0x02d7, all -> 0x02f2, TryCatch #0 {all -> 0x02f2, blocks: (B:14:0x0048, B:16:0x004e, B:19:0x0294, B:20:0x0061, B:22:0x006d, B:24:0x0085, B:26:0x0282, B:28:0x009b, B:31:0x00aa, B:33:0x00b0, B:36:0x00b7, B:37:0x00be, B:39:0x00c4, B:41:0x00cd, B:43:0x00f0, B:45:0x00f7, B:47:0x0117, B:49:0x013f, B:50:0x0151, B:52:0x0157, B:56:0x0187, B:58:0x018d, B:59:0x01a5, B:61:0x01b6, B:63:0x01bc, B:64:0x01c0, B:66:0x01c6, B:69:0x01f7, B:72:0x01fd, B:74:0x021d, B:77:0x0233, B:78:0x0254, B:79:0x0243, B:82:0x0205, B:85:0x020b, B:92:0x0162, B:94:0x0169, B:95:0x017e, B:98:0x025e, B:99:0x0270, B:107:0x02de, B:109:0x02e5, B:103:0x02ee, B:104:0x02f1, B:134:0x02b4, B:136:0x02ba, B:139:0x02c5), top: B:2:0x0008 }] */
    /* JADX WARN: Removed duplicated region for block: B:66:0x01c6 A[Catch: Exception -> 0x02d5, RuntimeException -> 0x02d7, all -> 0x02f2, TryCatch #0 {all -> 0x02f2, blocks: (B:14:0x0048, B:16:0x004e, B:19:0x0294, B:20:0x0061, B:22:0x006d, B:24:0x0085, B:26:0x0282, B:28:0x009b, B:31:0x00aa, B:33:0x00b0, B:36:0x00b7, B:37:0x00be, B:39:0x00c4, B:41:0x00cd, B:43:0x00f0, B:45:0x00f7, B:47:0x0117, B:49:0x013f, B:50:0x0151, B:52:0x0157, B:56:0x0187, B:58:0x018d, B:59:0x01a5, B:61:0x01b6, B:63:0x01bc, B:64:0x01c0, B:66:0x01c6, B:69:0x01f7, B:72:0x01fd, B:74:0x021d, B:77:0x0233, B:78:0x0254, B:79:0x0243, B:82:0x0205, B:85:0x020b, B:92:0x0162, B:94:0x0169, B:95:0x017e, B:98:0x025e, B:99:0x0270, B:107:0x02de, B:109:0x02e5, B:103:0x02ee, B:104:0x02f1, B:134:0x02b4, B:136:0x02ba, B:139:0x02c5), top: B:2:0x0008 }] */
    /* JADX WARN: Removed duplicated region for block: B:76:0x0231  */
    /* JADX WARN: Removed duplicated region for block: B:80:0x0251  */
    /* JADX WARN: Removed duplicated region for block: B:91:0x01a3  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final void updateConstrainedStateData(boolean r33) {
        /*
            Method dump skipped, instructions count: 761
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.server.enterprise.constrained.ConstrainedModeService.updateConstrainedStateData(boolean):void");
    }

    /* JADX WARN: Removed duplicated region for block: B:51:0x0164 A[Catch: all -> 0x00c8, Exception -> 0x00cd, RuntimeException -> 0x00d1, TryCatch #9 {RuntimeException -> 0x00d1, Exception -> 0x00cd, all -> 0x00c8, blocks: (B:103:0x00b7, B:105:0x00bd, B:34:0x00f2, B:36:0x0103, B:38:0x0109, B:39:0x011a, B:41:0x0122, B:43:0x0128, B:45:0x0134, B:48:0x013c, B:49:0x015a, B:51:0x0164, B:53:0x016a, B:57:0x016e, B:59:0x0179, B:55:0x0173, B:62:0x018e, B:100:0x0111, B:31:0x00d7, B:33:0x00dd, B:101:0x00e8), top: B:102:0x00b7 }] */
    /* JADX WARN: Removed duplicated region for block: B:59:0x0179 A[Catch: all -> 0x00c8, Exception -> 0x00cd, RuntimeException -> 0x00d1, TryCatch #9 {RuntimeException -> 0x00d1, Exception -> 0x00cd, all -> 0x00c8, blocks: (B:103:0x00b7, B:105:0x00bd, B:34:0x00f2, B:36:0x0103, B:38:0x0109, B:39:0x011a, B:41:0x0122, B:43:0x0128, B:45:0x0134, B:48:0x013c, B:49:0x015a, B:51:0x0164, B:53:0x016a, B:57:0x016e, B:59:0x0179, B:55:0x0173, B:62:0x018e, B:100:0x0111, B:31:0x00d7, B:33:0x00dd, B:101:0x00e8), top: B:102:0x00b7 }] */
    /* JADX WARN: Removed duplicated region for block: B:65:0x01a1 A[Catch: all -> 0x01af, Exception -> 0x01b2, RuntimeException -> 0x01c2, TRY_LEAVE, TryCatch #10 {all -> 0x01af, blocks: (B:23:0x0062, B:24:0x0087, B:26:0x008e, B:28:0x0099, B:63:0x0194, B:65:0x01a1, B:68:0x01a8, B:78:0x01b3, B:74:0x01c3, B:75:0x01c6), top: B:22:0x0062 }] */
    /* JADX WARN: Removed duplicated region for block: B:68:0x01a8 A[Catch: all -> 0x01af, Exception -> 0x01b2, RuntimeException -> 0x01c2, TRY_ENTER, TRY_LEAVE, TryCatch #10 {all -> 0x01af, blocks: (B:23:0x0062, B:24:0x0087, B:26:0x008e, B:28:0x0099, B:63:0x0194, B:65:0x01a1, B:68:0x01a8, B:78:0x01b3, B:74:0x01c3, B:75:0x01c6), top: B:22:0x0062 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public boolean enableConstrainedState(int r15, java.lang.String r16, java.lang.String r17, java.lang.String r18, java.lang.String r19, int r20) {
        /*
            Method dump skipped, instructions count: 486
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.server.enterprise.constrained.ConstrainedModeService.enableConstrainedState(int, java.lang.String, java.lang.String, java.lang.String, java.lang.String, int):boolean");
    }

    public final boolean disableConstrainedStateInternal(int i, String str) {
        boolean z;
        boolean z2;
        boolean isRestrictedByConstrainedState = getEDM().isRestrictedByConstrainedState(64);
        long clearCallingIdentity = Binder.clearCallingIdentity();
        boolean z3 = true;
        try {
            try {
                HashMap hashMap = this.mCachedConstrainedData;
                if (hashMap != null) {
                    for (Map.Entry entry : hashMap.entrySet()) {
                        if (((EnrollData) entry.getValue()).getPackageName().equals(str)) {
                            Log.i("ConstrainedMode", "remove! " + ((String) entry.getKey()));
                            new File("/efs/constrained", (String) entry.getKey()).delete();
                            this.mEdmStorageProvider.putInt(i, "ConstrainedStateTable", "status", 1);
                            showConstrainedStateNotification(str, null, null, null, false);
                            z2 = true;
                            break;
                        }
                    }
                }
                z2 = false;
                if (z2) {
                    updateConstrainedStateData(true);
                }
                Binder.restoreCallingIdentity(clearCallingIdentity);
                z = true;
            } finally {
            }
        } catch (Exception e) {
            e.printStackTrace();
            Binder.restoreCallingIdentity(clearCallingIdentity);
            z = false;
        }
        if (isRestrictedByConstrainedState && getEDM().getRestrictionPolicy() != null && getEDM().getRestrictionPolicy().isScreenCaptureEnabledInternal(false)) {
            getEDM().getRestrictionPolicy().setScreenCapture(true);
            Log.d("ConstrainedMode", "setScreenCapture enabled due to disableConstrainedState");
        }
        boolean z4 = !isRestrictedByConstrainedState(8);
        boolean isBluetoothAllowedOnDB = isBluetoothAllowedOnDB();
        clearCallingIdentity = Binder.clearCallingIdentity();
        try {
            ISystemUIAdapter iSystemUIAdapter = (ISystemUIAdapter) AdapterRegistry.getAdapter(ISystemUIAdapter.class);
            if (!isBluetoothAllowedOnDB || !z4) {
                z3 = false;
            }
            iSystemUIAdapter.setBluetoothAllowedAsUser(0, z3);
            Binder.restoreCallingIdentity(clearCallingIdentity);
            Log.i("ConstrainedMode", "No data");
            return z;
        } finally {
        }
    }

    public final boolean isBluetoothAllowedOnDB() {
        ArrayList booleanList = this.mEdmStorageProvider.getBooleanList("BLUETOOTH", "bluetoothEnabled");
        if (booleanList == null) {
            return true;
        }
        Iterator it = booleanList.iterator();
        while (it.hasNext()) {
            if (!((Boolean) it.next()).booleanValue()) {
                return false;
            }
        }
        return true;
    }

    public boolean disableConstrainedState(int i) {
        return disableConstrainedStateInternal(i, this.mEdmStorageProvider.getPackageNameForUid(i));
    }

    public final List getConstrainedStateAll() {
        long clearCallingIdentity = Binder.clearCallingIdentity();
        try {
            try {
                if (this.mCachedConstrainedData != null) {
                    ArrayList arrayList = new ArrayList();
                    Iterator it = this.mCachedConstrainedData.entrySet().iterator();
                    while (it.hasNext()) {
                        arrayList.add((EnrollData) ((Map.Entry) it.next()).getValue());
                    }
                    if (!arrayList.isEmpty()) {
                        return arrayList;
                    }
                }
            } catch (Exception e) {
                e.printStackTrace();
            }
            return null;
        } finally {
            Binder.restoreCallingIdentity(clearCallingIdentity);
        }
    }

    public boolean isRestrictedByConstrainedState(int i) {
        List<EnrollData> constrainedStateAll = getConstrainedStateAll();
        if (constrainedStateAll == null) {
            return false;
        }
        for (EnrollData enrollData : constrainedStateAll) {
            if (enrollData.getConstrainedState() == 0 && (enrollData.getPolicyBitMask() & i) > 0) {
                return true;
            }
        }
        return false;
    }

    public int getConstrainedState() {
        List constrainedStateAll = getConstrainedStateAll();
        if (constrainedStateAll == null) {
            return 0;
        }
        Iterator it = constrainedStateAll.iterator();
        while (it.hasNext()) {
            if (((EnrollData) it.next()).getConstrainedState() == 0) {
                return 2;
            }
        }
        return 1;
    }
}
