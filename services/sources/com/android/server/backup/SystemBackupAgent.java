package com.android.server.backup;

import android.app.backup.BackupAgentHelper;
import android.app.backup.BackupDataInput;
import android.app.backup.BackupHelper;
import android.app.backup.FullBackupDataOutput;
import android.app.backup.WallpaperBackupHelper;
import android.os.Environment;
import android.os.ParcelFileDescriptor;
import android.os.UserHandle;
import android.os.UserManager;
import android.util.ArraySet;
import com.google.android.collect.Sets;
import java.io.File;
import java.util.Set;

/* loaded from: classes.dex */
public class SystemBackupAgent extends BackupAgentHelper {
    public static final Set sEligibleHelpersForNonSystemUser;
    public static final Set sEligibleHelpersForProfileUser;
    public static final String WALLPAPER_IMAGE_DIR = Environment.getUserSystemDirectory(0).getAbsolutePath();
    public static final String WALLPAPER_IMAGE = new File(Environment.getUserSystemDirectory(0), "wallpaper").getAbsolutePath();
    public static final String WALLPAPER_INFO_DIR = Environment.getUserSystemDirectory(0).getAbsolutePath();
    public static final String WALLPAPER_INFO = new File(Environment.getUserSystemDirectory(0), "wallpaper_info.xml").getAbsolutePath();
    public int mUserId = 0;
    public boolean mIsProfileUser = false;

    @Override // android.app.backup.BackupAgent
    public void onFullBackup(FullBackupDataOutput fullBackupDataOutput) {
    }

    static {
        ArraySet newArraySet = Sets.newArraySet(new String[]{"permissions", "notifications", "account_sync_settings", "app_locales"});
        sEligibleHelpersForProfileUser = newArraySet;
        sEligibleHelpersForNonSystemUser = SetUtils.union(newArraySet, Sets.newArraySet(new String[]{"account_manager", "usage_stats", "preferred_activities", "shortcut_manager"}));
    }

    public void onCreate(UserHandle userHandle, int i) {
        super.onCreate(userHandle, i);
        int identifier = userHandle.getIdentifier();
        this.mUserId = identifier;
        if (identifier != 0) {
            this.mIsProfileUser = ((UserManager) createContextAsUser(userHandle, 0).getSystemService(UserManager.class)).isProfile();
        }
        addHelperIfEligibleForUser("account_sync_settings", new AccountSyncSettingsBackupHelper(this, this.mUserId));
        addHelperIfEligibleForUser("preferred_activities", new PreferredActivityBackupHelper(this.mUserId));
        addHelperIfEligibleForUser("notifications", new NotificationBackupHelper(this.mUserId));
        addHelperIfEligibleForUser("permissions", new PermissionBackupHelper(this.mUserId));
        addHelperIfEligibleForUser("usage_stats", new UsageStatsBackupHelper(this.mUserId));
        addHelperIfEligibleForUser("shortcut_manager", new ShortcutBackupHelper(this.mUserId));
        addHelperIfEligibleForUser("account_manager", new AccountManagerBackupHelper(this.mUserId));
        addHelperIfEligibleForUser("slices", new SliceBackupHelper(this));
        addHelperIfEligibleForUser("people", new PeopleBackupHelper(this.mUserId));
        addHelperIfEligibleForUser("app_locales", new AppSpecificLocalesBackupHelper(this.mUserId));
        addHelperIfEligibleForUser("app_gender", new AppGrammaticalGenderBackupHelper(this.mUserId));
    }

    @Override // android.app.backup.BackupAgentHelper, android.app.backup.BackupAgent
    public void onRestore(BackupDataInput backupDataInput, int i, ParcelFileDescriptor parcelFileDescriptor) {
        addHelper("wallpaper", new WallpaperBackupHelper(this, new String[]{"/data/data/com.android.settings/files/wallpaper"}));
        addHelper("system_files", new WallpaperBackupHelper(this, new String[]{"/data/data/com.android.settings/files/wallpaper"}));
        super.onRestore(backupDataInput, i, parcelFileDescriptor);
    }

    /* JADX WARN: Removed duplicated region for block: B:27:0x0053 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public void onRestoreFile(android.os.ParcelFileDescriptor r16, long r17, int r19, java.lang.String r20, java.lang.String r21, long r22, long r24) {
        /*
            r15 = this;
            r0 = r20
            r1 = r21
            java.lang.StringBuilder r2 = new java.lang.StringBuilder
            r2.<init>()
            java.lang.String r3 = "Restoring file domain="
            r2.append(r3)
            r2.append(r0)
            java.lang.String r3 = " path="
            r2.append(r3)
            r2.append(r1)
            java.lang.String r2 = r2.toString()
            java.lang.String r3 = "SystemBackupAgent"
            android.util.Slog.i(r3, r2)
            java.lang.String r2 = "r"
            boolean r2 = r0.equals(r2)
            java.lang.String r4 = "wallpaper"
            if (r2 == 0) goto L4e
            java.lang.String r2 = "wallpaper_info.xml"
            boolean r2 = r1.equals(r2)
            r5 = 1
            if (r2 == 0) goto L40
            java.io.File r2 = new java.io.File
            java.lang.String r6 = com.android.server.backup.SystemBackupAgent.WALLPAPER_INFO
            r2.<init>(r6)
            goto L50
        L40:
            boolean r2 = r1.equals(r4)
            if (r2 == 0) goto L4e
            java.io.File r2 = new java.io.File
            java.lang.String r6 = com.android.server.backup.SystemBackupAgent.WALLPAPER_IMAGE
            r2.<init>(r6)
            goto L50
        L4e:
            r5 = 0
            r2 = 0
        L50:
            r14 = r2
            if (r14 != 0) goto L74
            java.lang.StringBuilder r2 = new java.lang.StringBuilder     // Catch: java.io.IOException -> La6
            r2.<init>()     // Catch: java.io.IOException -> La6
            java.lang.String r6 = "Skipping unrecognized system file: [ "
            r2.append(r6)     // Catch: java.io.IOException -> La6
            r2.append(r0)     // Catch: java.io.IOException -> La6
            java.lang.String r0 = " : "
            r2.append(r0)     // Catch: java.io.IOException -> La6
            r2.append(r1)     // Catch: java.io.IOException -> La6
            java.lang.String r0 = " ]"
            r2.append(r0)     // Catch: java.io.IOException -> La6
            java.lang.String r0 = r2.toString()     // Catch: java.io.IOException -> La6
            android.util.Slog.w(r3, r0)     // Catch: java.io.IOException -> La6
        L74:
            r6 = r16
            r7 = r17
            r9 = r19
            r10 = r22
            r12 = r24
            android.app.backup.FullBackup.restoreFile(r6, r7, r9, r10, r12, r14)     // Catch: java.io.IOException -> La6
            if (r5 == 0) goto Lbc
            android.os.IBinder r0 = android.os.ServiceManager.getService(r4)     // Catch: java.io.IOException -> La6
            android.app.IWallpaperManager r0 = (android.app.IWallpaperManager) r0     // Catch: java.io.IOException -> La6
            if (r0 == 0) goto Lbc
            r0.settingsRestored()     // Catch: android.os.RemoteException -> L8f java.io.IOException -> La6
            goto Lbc
        L8f:
            r0 = move-exception
            r1 = r0
            java.lang.StringBuilder r0 = new java.lang.StringBuilder     // Catch: java.io.IOException -> La6
            r0.<init>()     // Catch: java.io.IOException -> La6
            java.lang.String r2 = "Couldn't restore settings\n"
            r0.append(r2)     // Catch: java.io.IOException -> La6
            r0.append(r1)     // Catch: java.io.IOException -> La6
            java.lang.String r0 = r0.toString()     // Catch: java.io.IOException -> La6
            android.util.Slog.e(r3, r0)     // Catch: java.io.IOException -> La6
            goto Lbc
        La6:
            if (r5 == 0) goto Lbc
            java.io.File r0 = new java.io.File
            java.lang.String r1 = com.android.server.backup.SystemBackupAgent.WALLPAPER_IMAGE
            r0.<init>(r1)
            r0.delete()
            java.io.File r0 = new java.io.File
            java.lang.String r1 = com.android.server.backup.SystemBackupAgent.WALLPAPER_INFO
            r0.<init>(r1)
            r0.delete()
        Lbc:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.server.backup.SystemBackupAgent.onRestoreFile(android.os.ParcelFileDescriptor, long, int, java.lang.String, java.lang.String, long, long):void");
    }

    public final void addHelperIfEligibleForUser(String str, BackupHelper backupHelper) {
        if (isHelperEligibleForUser(str)) {
            addHelper(str, backupHelper);
        }
    }

    public final boolean isHelperEligibleForUser(String str) {
        if (this.mUserId == 0) {
            return true;
        }
        if (this.mIsProfileUser) {
            return sEligibleHelpersForProfileUser.contains(str);
        }
        return sEligibleHelpersForNonSystemUser.contains(str);
    }
}
