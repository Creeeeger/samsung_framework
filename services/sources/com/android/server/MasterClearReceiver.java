package com.android.server;

import android.R;
import android.app.ActivityManager;
import android.app.Notification;
import android.app.NotificationManager;
import android.app.ProgressDialog;
import android.app.admin.DevicePolicyManager;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.os.AsyncTask;
import android.os.Binder;
import android.os.RecoverySystem;
import android.os.RemoteException;
import android.os.UserHandle;
import android.os.UserManager;
import android.os.storage.StorageManager;
import android.text.TextUtils;
import android.util.Slog;
import com.android.internal.notification.SystemNotificationChannels;
import com.android.internal.util.FunctionalUtils;
import com.android.server.utils.Slogf;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Locale;
import java.util.function.Supplier;

/* loaded from: classes.dex */
public class MasterClearReceiver extends BroadcastReceiver {
    public boolean mWipeEsims;
    public boolean mWipeExternalStorage;
    public String requestedTimeArg = null;
    public String extraCmd = null;

    @Override // android.content.BroadcastReceiver
    public void onReceive(final Context context, final Intent intent) {
        Slog.w("MasterClear", "!@[MasterClearReceiver] onReceive: intent:" + intent);
        if (intent.getAction().equals("com.google.android.c2dm.intent.RECEIVE") && !"google.com".equals(intent.getStringExtra("from"))) {
            Slog.w("MasterClear", "Ignoring master clear request -- not from trusted server.");
            return;
        }
        if ("android.intent.action.MASTER_CLEAR".equals(intent.getAction())) {
            Slog.w("MasterClear", "The request uses the deprecated Intent#ACTION_MASTER_CLEAR, Intent#ACTION_FACTORY_RESET should be used instead.");
        }
        if (intent.hasExtra("android.intent.extra.FORCE_MASTER_CLEAR")) {
            Slog.w("MasterClear", "The request uses the deprecated Intent#EXTRA_FORCE_MASTER_CLEAR, Intent#EXTRA_FORCE_FACTORY_RESET should be used instead.");
        }
        String string = context.getString(R.string.fcComplete);
        if ("android.intent.action.FACTORY_RESET".equals(intent.getAction()) && !TextUtils.isEmpty(string)) {
            Slog.i("MasterClear", "Re-directing intent to " + string);
            intent.setPackage(string).setComponent(null);
            context.sendBroadcastAsUser(intent, UserHandle.SYSTEM);
            return;
        }
        final boolean booleanExtra = intent.getBooleanExtra("shutdown", false);
        final String stringExtra = intent.getStringExtra("android.intent.extra.REASON");
        this.mWipeExternalStorage = intent.getBooleanExtra("android.intent.extra.WIPE_EXTERNAL_STORAGE", false);
        this.mWipeEsims = intent.getBooleanExtra("com.android.internal.intent.extra.WIPE_ESIMS", false);
        final boolean z = intent.getBooleanExtra("android.intent.extra.FORCE_MASTER_CLEAR", false) || intent.getBooleanExtra("android.intent.extra.FORCE_FACTORY_RESET", false);
        if (stringExtra == null) {
            Slog.w("MasterClear", "!@[MasterClearReceiver] onReceive: Ignoring FACTORY_RESET request -- reason cannot be null.");
            return;
        }
        Slog.d("MasterClear", "!@[MasterClearReceiver] onReceive: shutdown: " + booleanExtra);
        Slog.d("MasterClear", "!@[MasterClearReceiver] onReceive: reason: " + stringExtra);
        Slog.d("MasterClear", "!@[MasterClearReceiver] onReceive: mWipeExternalStorage: " + this.mWipeExternalStorage);
        Slog.d("MasterClear", "!@[MasterClearReceiver] onReceive: mWipeEsims: " + this.mWipeEsims);
        Slog.d("MasterClear", "!@[MasterClearReceiver] onReceive: forceWipe: " + z);
        this.extraCmd = intent.getStringExtra("EXTRA_COMMAND");
        Slog.d("MasterClear", "!@[MasterClearReceiver] onReceive: extraCmd is [" + this.extraCmd + "]");
        if (this.extraCmd == null) {
            Slog.d("MasterClear", "!@[MasterClearReceiver] onReceive: extraCmd is null");
        }
        this.requestedTimeArg = intent.getStringExtra("com.android.internal.intent.extra.FDR_REQUEST_TIME");
        Slog.d("MasterClear", "!@[MasterClearReceiver] onReceive: requestedTimeArg is [" + this.requestedTimeArg + "]");
        if (this.requestedTimeArg == null) {
            long currentTimeMillis = System.currentTimeMillis();
            this.requestedTimeArg = "requested_time=" + new SimpleDateFormat("yyyy/MM/dd HH:mm:ss.SSS").format(new Date(currentTimeMillis));
        }
        String str = this.requestedTimeArg;
        if (str != null) {
            if (this.extraCmd != null) {
                this.extraCmd += "\n--" + this.requestedTimeArg;
            } else {
                this.extraCmd = str;
            }
            Slog.d("MasterClear", "!@[MasterClearReceiver] onReceive: requested time is added to extraCmd, extraCmd is [" + this.extraCmd + "]");
        }
        final int sendingUserId = getSendingUserId();
        if (sendingUserId != 0 && !UserManager.isHeadlessSystemUserMode()) {
            Slogf.w("MasterClear", "ACTION_FACTORY_RESET received on a non-system user %d, WIPING THE USER!!", Integer.valueOf(sendingUserId));
            if (((Boolean) Binder.withCleanCallingIdentity(new FunctionalUtils.ThrowingSupplier() { // from class: com.android.server.MasterClearReceiver$$ExternalSyntheticLambda0
                public final Object getOrThrow() {
                    Boolean lambda$onReceive$0;
                    lambda$onReceive$0 = MasterClearReceiver.this.lambda$onReceive$0(context, sendingUserId, stringExtra);
                    return lambda$onReceive$0;
                }
            })).booleanValue()) {
                return;
            }
            Slogf.e("MasterClear", "Failed to wipe user %d", Integer.valueOf(sendingUserId));
            return;
        }
        Slog.w("MasterClear", "!@[MasterClearReceiver] onReceive: !!! FACTORY RESET !!!");
        Thread thread = new Thread("Reboot") { // from class: com.android.server.MasterClearReceiver.1
            @Override // java.lang.Thread, java.lang.Runnable
            public void run() {
                try {
                    if (intent.hasExtra("FactoryResetByCommand")) {
                        Slog.w("MasterClear", "!@[MasterClearReceiver] thr.run: FactoryResetByATCommand");
                        MasterClearReceiver.this.removeVZWResetDate();
                    } else if (!stringExtra.equals("HIDDEN_MENU") && stringExtra.contains("SIMBasedChangeCSC")) {
                        MasterClearReceiver.setSalesCodeChanged();
                    }
                    if (!stringExtra.contains("SIMBasedChangeCSC")) {
                        MasterClearReceiver.deleteOmrDir("/omr/carrier");
                    }
                    MasterClearReceiver.deleteOmrDir("/omr/update");
                    MasterClearReceiver.deleteOmrDir("/omr/res");
                    MasterClearReceiver.deleteOmrDir("/omr/temp");
                    MasterClearReceiver.this.removeFirstUseDate();
                    if (intent.hasExtra("CustomWipe")) {
                        Slog.w("MasterClear", "!@[MasterClearReceiver] thr.run: !!!call wipe customer!!!");
                        String str2 = new String("");
                        if (intent.hasExtra("args")) {
                            str2 = str2 + intent.getExtras().get("args").toString();
                        }
                        RecoverySystem.rebootWipeCustomerPartition(context, str2 + "--locale=" + Locale.getDefault().toString(), stringExtra);
                    } else if (intent.hasExtra("WipeCustomerPartiotion")) {
                        Slog.w("MasterClear", "!@[MasterClearReceiver] thr.run: !!!WipeData and WipeCustomerPartiotion!!!");
                        RecoverySystem.rebootWipeCustomerPartition(context, "--wipe_data\n--wipe_carrier\n--locale=" + Locale.getDefault().toString(), stringExtra);
                    } else if (intent.hasExtra("WipeCache")) {
                        Slog.w("MasterClear", "!@[MasterClearReceiver] thr.run: !!!Just Exit (For Bypass Factory Reset)!!!");
                        RecoverySystem.rebootWipeCustomerPartition(context, "--just_exit\n--locale=" + Locale.ROOT.toString(), stringExtra);
                    } else if (intent.hasExtra("Download")) {
                        Slog.w("MasterClear", "!@[MasterClearReceiver] thr.run: !!!Enter the Download Mode for Factory Routine!!!");
                        RecoverySystem.rebootWipeCustomerPartition(context, "", stringExtra);
                    } else {
                        Slog.w("MasterClear", "!@[MasterClearReceiver] thr.run: !!!No hasExtra, just call rebootWipeUserData!!!");
                        RecoverySystem.rebootWipeUserData(context, booleanExtra, stringExtra, z, false, MasterClearReceiver.this.extraCmd);
                    }
                    Slog.wtf("MasterClear", "!@[MasterClearReceiver] thr.run: Still running after master clear?!");
                } catch (FileNotFoundException e) {
                    Slog.e("MasterClear", "!@[MasterClearReceiver] thr.run: Can't perform master clear/factory reset", e);
                } catch (IOException e2) {
                    Slog.e("MasterClear", "!@[MasterClearReceiver] thr.run: Can't perform master clear/factory reset", e2);
                } catch (SecurityException e3) {
                    Slog.e("MasterClear", "!@[MasterClearReceiver] thr.run: Can't perform master clear/factory reset", e3);
                }
            }
        };
        if (this.mWipeExternalStorage) {
            Slog.i("MasterClear", "Wiping external storage on async task");
            new WipeDataTask(context, thread).execute(new Void[0]);
            return;
        }
        Slog.i("MasterClear", "NOT wiping external storage; starting thread " + thread.getName());
        thread.start();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ Boolean lambda$onReceive$0(Context context, int i, String str) {
        return Boolean.valueOf(wipeUser(context, i, str));
    }

    public final boolean wipeUser(Context context, int i, String str) {
        UserManager userManager = (UserManager) context.getSystemService(UserManager.class);
        if (!UserManager.isRemoveResultSuccessful(userManager.removeUserWhenPossible(UserHandle.of(i), false))) {
            Slogf.e("MasterClear", "Can't remove user %d", Integer.valueOf(i));
            return false;
        }
        if (getCurrentForegroundUserId() == i) {
            try {
                if (!ActivityManager.getService().switchUser(0)) {
                    Slogf.w("MasterClear", "Can't switch from current user %d, user will get removed when it is stopped.", Integer.valueOf(i));
                }
            } catch (RemoteException unused) {
                Slogf.w("MasterClear", "Can't switch from current user %d, user will get removed when it is stopped.", Integer.valueOf(i));
            }
        }
        if (userManager.isManagedProfile(i)) {
            sendWipeProfileNotification(context, str);
        }
        return true;
    }

    public final void sendWipeProfileNotification(Context context, String str) {
        ((NotificationManager) context.getSystemService(NotificationManager.class)).notify(1001, new Notification.Builder(context, SystemNotificationChannels.DEVICE_ADMIN).setSmallIcon(R.drawable.stat_sys_warning).setContentTitle(getWorkProfileDeletedTitle(context)).setContentText(str).setColor(context.getColor(R.color.system_notification_accent_color)).setStyle(new Notification.BigTextStyle().bigText(str)).build());
    }

    public final String getWorkProfileDeletedTitle(final Context context) {
        return ((DevicePolicyManager) context.getSystemService(DevicePolicyManager.class)).getResources().getString("Core.WORK_PROFILE_DELETED_TITLE", new Supplier() { // from class: com.android.server.MasterClearReceiver$$ExternalSyntheticLambda1
            @Override // java.util.function.Supplier
            public final Object get() {
                String string;
                string = context.getString(17043407);
                return string;
            }
        });
    }

    public final int getCurrentForegroundUserId() {
        try {
            return ActivityManager.getCurrentUser();
        } catch (Exception e) {
            Slogf.e("MasterClear", "Can't get current user", e);
            return -10000;
        }
    }

    /* loaded from: classes.dex */
    public class WipeDataTask extends AsyncTask {
        public final Thread mChainedTask;
        public final Context mContext;
        public final ProgressDialog mProgressDialog;

        public WipeDataTask(Context context, Thread thread) {
            this.mContext = context;
            this.mChainedTask = thread;
            Slog.d("MasterClear", "!@[MasterClearReceiver] WipeDataTask: mProgressDialog object will create");
            this.mProgressDialog = new ProgressDialog(context, R.style.Theme.Material.SearchBar);
            Slog.d("MasterClear", "!@[MasterClearReceiver] WipeDataTask: mProgressDialog object created");
        }

        @Override // android.os.AsyncTask
        public void onPreExecute() {
            this.mProgressDialog.setIndeterminate(true);
            this.mProgressDialog.getWindow().setType(2003);
            this.mProgressDialog.setMessage(this.mContext.getText(17042351));
            Slog.d("MasterClear", "!@[MasterClearReceiver] WipeDataTask onPreExecute: mProgressDialog will show");
            this.mProgressDialog.show();
            Slog.d("MasterClear", "!@[MasterClearReceiver] WipeDataTask onPreExecute: mProgressDialog showed");
        }

        @Override // android.os.AsyncTask
        public Void doInBackground(Void... voidArr) {
            Slog.w("MasterClear", "Wiping adoptable disks");
            if (!MasterClearReceiver.this.mWipeExternalStorage) {
                return null;
            }
            ((StorageManager) this.mContext.getSystemService("storage")).wipeAdoptableDisks();
            return null;
        }

        @Override // android.os.AsyncTask
        public void onPostExecute(Void r2) {
            Slog.d("MasterClear", "!@[MasterClearReceiver] WipeDataTask onPostExecute: mProgressDialog object will dismiss");
            this.mProgressDialog.dismiss();
            Slog.d("MasterClear", "!@[MasterClearReceiver] WipeDataTask onPostExecute: mProgressDialog object dismissed");
            this.mChainedTask.start();
        }
    }

    public final void removeVZWResetDate() {
        try {
            File file = new File("/efs/sec_efs/LastResetDate.txt");
            if (file.exists()) {
                Slog.d("MasterClear", "!@[MasterClearReceiver] removeVZWResetDate: Try to delete VZW Reset Date file");
                file.delete();
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:11:0x0083  */
    /* JADX WARN: Removed duplicated region for block: B:14:0x0089 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final void removeFirstUseDate() {
        /*
            r9 = this;
            java.lang.String r9 = "!@[MasterClearReceiver]removeFirstUseDate)"
            java.lang.String r0 = "MasterClear"
            android.util.Slog.d(r0, r9)
            java.util.ArrayList r9 = new java.util.ArrayList
            r9.<init>()
            java.lang.String r1 = "/sys/class/power_supply/sec_auth/fai_expired"
            r9.add(r1)
            java.lang.String r1 = "/sys/class/power_supply/sec_auth_2nd/fai_expired"
            r9.add(r1)
            java.util.ArrayList r1 = new java.util.ArrayList
            r1.<init>()
            java.lang.String r2 = "/sys/class/power_supply/sec_auth/first_use_date"
            r1.add(r2)
            java.lang.String r2 = "/sys/class/power_supply/sec_auth_2nd/first_use_date"
            r1.add(r2)
            java.util.ArrayList r2 = new java.util.ArrayList
            r2.<init>()
            java.lang.String r3 = "/efs/FactoryApp/batt_beginning_date"
            r2.add(r3)
            java.lang.String r3 = "/efs/FactoryApp/batt_beginning_date_2nd"
            r2.add(r3)
            r3 = 0
            r4 = r3
        L36:
            r5 = 2
            if (r4 >= r5) goto Lca
            java.io.BufferedReader r5 = new java.io.BufferedReader     // Catch: java.lang.Exception -> L77
            java.io.FileReader r6 = new java.io.FileReader     // Catch: java.lang.Exception -> L77
            java.lang.Object r7 = r9.get(r4)     // Catch: java.lang.Exception -> L77
            java.lang.String r7 = (java.lang.String) r7     // Catch: java.lang.Exception -> L77
            r6.<init>(r7)     // Catch: java.lang.Exception -> L77
            r5.<init>(r6)     // Catch: java.lang.Exception -> L77
            java.lang.String r6 = r5.readLine()     // Catch: java.lang.Throwable -> L6d
            java.lang.StringBuilder r7 = new java.lang.StringBuilder     // Catch: java.lang.Throwable -> L6d
            r7.<init>()     // Catch: java.lang.Throwable -> L6d
            java.lang.String r8 = "!@[MasterClearReceiver]removeFirstUseDate)faiExpiredStr:"
            r7.append(r8)     // Catch: java.lang.Throwable -> L6d
            r7.append(r6)     // Catch: java.lang.Throwable -> L6d
            java.lang.String r7 = r7.toString()     // Catch: java.lang.Throwable -> L6d
            android.util.Slog.i(r0, r7)     // Catch: java.lang.Throwable -> L6d
            java.lang.String r7 = "0"
            boolean r6 = r7.equals(r6)     // Catch: java.lang.Throwable -> L6d
            r5.close()     // Catch: java.lang.Exception -> L6b
            goto L81
        L6b:
            r5 = move-exception
            goto L79
        L6d:
            r6 = move-exception
            r5.close()     // Catch: java.lang.Throwable -> L72
            goto L76
        L72:
            r5 = move-exception
            r6.addSuppressed(r5)     // Catch: java.lang.Exception -> L77
        L76:
            throw r6     // Catch: java.lang.Exception -> L77
        L77:
            r5 = move-exception
            r6 = r3
        L79:
            java.lang.String r7 = "!@[MasterClearReceiver]removeFirstUseDate)read or parse Exception"
            android.util.Slog.w(r0, r7)
            r5.printStackTrace()
        L81:
            if (r6 != 0) goto L89
            java.lang.String r5 = "!@[MasterClearReceiver]removeFirstUseDate)skip remove FirstUseDate"
            android.util.Slog.d(r0, r5)
            goto Lc6
        L89:
            java.io.FileWriter r5 = new java.io.FileWriter     // Catch: java.lang.Exception -> Lbd
            java.lang.Object r6 = r1.get(r4)     // Catch: java.lang.Exception -> Lbd
            java.lang.String r6 = (java.lang.String) r6     // Catch: java.lang.Exception -> Lbd
            r5.<init>(r6)     // Catch: java.lang.Exception -> Lbd
            java.lang.String r6 = "FF"
            r5.write(r6)     // Catch: java.lang.Throwable -> Lb3
            java.io.File r6 = new java.io.File     // Catch: java.lang.Throwable -> Lb3
            java.lang.Object r7 = r2.get(r4)     // Catch: java.lang.Throwable -> Lb3
            java.lang.String r7 = (java.lang.String) r7     // Catch: java.lang.Throwable -> Lb3
            r6.<init>(r7)     // Catch: java.lang.Throwable -> Lb3
            boolean r6 = r6.delete()     // Catch: java.lang.Throwable -> Lb3
            if (r6 == 0) goto Laf
            java.lang.String r6 = "!@[MasterClearReceiver]removeFirstUseDate)erase FirstUseDate Success"
            android.util.Slog.i(r0, r6)     // Catch: java.lang.Throwable -> Lb3
        Laf:
            r5.close()     // Catch: java.lang.Exception -> Lbd
            goto Lc6
        Lb3:
            r6 = move-exception
            r5.close()     // Catch: java.lang.Throwable -> Lb8
            goto Lbc
        Lb8:
            r5 = move-exception
            r6.addSuppressed(r5)     // Catch: java.lang.Exception -> Lbd
        Lbc:
            throw r6     // Catch: java.lang.Exception -> Lbd
        Lbd:
            r5 = move-exception
            java.lang.String r6 = "!@[MasterClearReceiver]removeFirstUseDate)write Exception"
            android.util.Slog.w(r0, r6)
            r5.printStackTrace()
        Lc6:
            int r4 = r4 + 1
            goto L36
        Lca:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.server.MasterClearReceiver.removeFirstUseDate():void");
    }

    public static boolean deleteDir(File file) {
        Slog.d("MasterClear", "!@[MasterClearReceiver] Remove File : " + file);
        if (file.isDirectory() && file.listFiles() != null) {
            for (File file2 : file.listFiles()) {
                deleteDir(file2);
            }
        }
        return file.delete();
    }

    public static void deleteOmrDir(String str) {
        File file = new File(str);
        if (file.exists()) {
            Slog.d("MasterClear", "!@[MasterClearReceiver] Delete OMR path !!! : " + str);
            if (deleteDir(file)) {
                return;
            }
            Slog.d("MasterClear", "!@[MasterClearReceiver] Fail to delete OMR path !!! : " + str);
        }
    }

    public static void setSalesCodeChanged() {
        try {
            new FileOutputStream("/efs/imei/salesCodeChanged").close();
            Slog.d("MasterClear", "!@[MasterClearReceiver] salesCodeChanged flag file created");
        } catch (IOException e) {
            Slog.e("MasterClear", "!@[MasterClearReceiver] can not create salesCodeChanged");
            e.printStackTrace();
        }
    }
}
