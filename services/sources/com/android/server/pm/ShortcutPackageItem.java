package com.android.server.pm;

import android.content.pm.PackageInfo;
import android.content.pm.ShortcutInfo;
import android.graphics.Bitmap;
import com.android.internal.util.Preconditions;
import com.android.modules.utils.TypedXmlSerializer;
import java.io.File;
import java.util.Objects;
import org.json.JSONObject;

/* loaded from: classes3.dex */
public abstract class ShortcutPackageItem {
    public final ShortcutPackageInfo mPackageInfo;
    public final String mPackageName;
    public final int mPackageUserId;
    public ShortcutBitmapSaver mShortcutBitmapSaver;
    public ShortcutUser mShortcutUser;
    public final Object mLock = new Object();
    public final Runnable mSaveShortcutPackageRunner = new Runnable() { // from class: com.android.server.pm.ShortcutPackageItem$$ExternalSyntheticLambda0
        @Override // java.lang.Runnable
        public final void run() {
            ShortcutPackageItem.this.saveShortcutPackageItem();
        }
    };

    public abstract boolean canRestoreAnyVersion();

    public abstract int getOwnerUserId();

    public abstract File getShortcutPackageItemFile();

    public abstract void onRestored(int i);

    public abstract void saveToXml(TypedXmlSerializer typedXmlSerializer, boolean z);

    public void scheduleSaveToAppSearchLocked() {
    }

    public void verifyStates() {
    }

    public ShortcutPackageItem(ShortcutUser shortcutUser, int i, String str, ShortcutPackageInfo shortcutPackageInfo) {
        this.mShortcutUser = shortcutUser;
        this.mPackageUserId = i;
        this.mPackageName = (String) Preconditions.checkStringNotEmpty(str);
        Objects.requireNonNull(shortcutPackageInfo);
        this.mPackageInfo = shortcutPackageInfo;
        this.mShortcutBitmapSaver = new ShortcutBitmapSaver(shortcutUser.mService);
    }

    public void replaceUser(ShortcutUser shortcutUser) {
        this.mShortcutUser = shortcutUser;
    }

    public ShortcutUser getUser() {
        return this.mShortcutUser;
    }

    public int getPackageUserId() {
        return this.mPackageUserId;
    }

    public String getPackageName() {
        return this.mPackageName;
    }

    public ShortcutPackageInfo getPackageInfo() {
        return this.mPackageInfo;
    }

    public void refreshPackageSignatureAndSave() {
        if (this.mPackageInfo.isShadow()) {
            return;
        }
        this.mPackageInfo.refreshSignature(this.mShortcutUser.mService, this);
        scheduleSave();
    }

    public void attemptToRestoreIfNeededAndSave() {
        int canRestoreTo;
        if (this.mPackageInfo.isShadow()) {
            ShortcutService shortcutService = this.mShortcutUser.mService;
            if (shortcutService.isPackageInstalled(this.mPackageName, this.mPackageUserId)) {
                if (!this.mPackageInfo.hasSignatures()) {
                    shortcutService.wtf("Attempted to restore package " + this.mPackageName + "/u" + this.mPackageUserId + " but signatures not found in the restore data.");
                    canRestoreTo = 102;
                } else {
                    PackageInfo packageInfoWithSignatures = shortcutService.getPackageInfoWithSignatures(this.mPackageName, this.mPackageUserId);
                    packageInfoWithSignatures.getLongVersionCode();
                    canRestoreTo = this.mPackageInfo.canRestoreTo(shortcutService, packageInfoWithSignatures, canRestoreAnyVersion());
                }
                onRestored(canRestoreTo);
                this.mPackageInfo.setShadow(false);
                scheduleSave();
            }
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0074  */
    /* JADX WARN: Removed duplicated region for block: B:13:? A[RETURN, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public void saveToFileLocked(java.io.File r5, boolean r6) {
        /*
            r4 = this;
            com.android.server.pm.ResilientAtomicFile r5 = getResilientFile(r5)
            r0 = 0
            java.io.FileOutputStream r1 = r5.startWrite()     // Catch: java.lang.Throwable -> L32 java.lang.Throwable -> L34
            if (r6 == 0) goto L19
            com.android.modules.utils.TypedXmlSerializer r2 = android.util.Xml.newFastSerializer()     // Catch: java.lang.Throwable -> L2f java.lang.Throwable -> L32
            java.nio.charset.Charset r3 = java.nio.charset.StandardCharsets.UTF_8     // Catch: java.lang.Throwable -> L2f java.lang.Throwable -> L32
            java.lang.String r3 = r3.name()     // Catch: java.lang.Throwable -> L2f java.lang.Throwable -> L32
            r2.setOutput(r1, r3)     // Catch: java.lang.Throwable -> L2f java.lang.Throwable -> L32
            goto L1d
        L19:
            com.android.modules.utils.TypedXmlSerializer r2 = android.util.Xml.resolveSerializer(r1)     // Catch: java.lang.Throwable -> L2f java.lang.Throwable -> L32
        L1d:
            java.lang.Boolean r3 = java.lang.Boolean.TRUE     // Catch: java.lang.Throwable -> L2f java.lang.Throwable -> L32
            r2.startDocument(r0, r3)     // Catch: java.lang.Throwable -> L2f java.lang.Throwable -> L32
            r4.saveToXml(r2, r6)     // Catch: java.lang.Throwable -> L2f java.lang.Throwable -> L32
            r2.endDocument()     // Catch: java.lang.Throwable -> L2f java.lang.Throwable -> L32
            r1.flush()     // Catch: java.lang.Throwable -> L2f java.lang.Throwable -> L32
            r5.finishWrite(r1)     // Catch: java.lang.Throwable -> L2f java.lang.Throwable -> L32
            goto L72
        L2f:
            r4 = move-exception
            r0 = r1
            goto L35
        L32:
            r4 = move-exception
            goto L78
        L34:
            r4 = move-exception
        L35:
            java.lang.String r6 = "ShortcutService"
            java.lang.StringBuilder r1 = new java.lang.StringBuilder     // Catch: java.lang.Throwable -> L32
            r1.<init>()     // Catch: java.lang.Throwable -> L32
            java.lang.String r2 = "Failed to write to file "
            r1.append(r2)     // Catch: java.lang.Throwable -> L32
            java.io.File r2 = r5.getBaseFile()     // Catch: java.lang.Throwable -> L32
            r1.append(r2)     // Catch: java.lang.Throwable -> L32
            java.lang.String r1 = r1.toString()     // Catch: java.lang.Throwable -> L32
            android.util.Slog.e(r6, r1, r4)     // Catch: java.lang.Throwable -> L32
            java.lang.StringBuilder r6 = new java.lang.StringBuilder     // Catch: java.lang.Throwable -> L32
            r6.<init>()     // Catch: java.lang.Throwable -> L32
            java.lang.String r1 = "Failed to write to shortcut file "
            r6.append(r1)     // Catch: java.lang.Throwable -> L32
            java.io.File r1 = r5.getBaseFile()     // Catch: java.lang.Throwable -> L32
            r6.append(r1)     // Catch: java.lang.Throwable -> L32
            java.lang.String r1 = ", Error : "
            r6.append(r1)     // Catch: java.lang.Throwable -> L32
            r6.append(r4)     // Catch: java.lang.Throwable -> L32
            java.lang.String r4 = r6.toString()     // Catch: java.lang.Throwable -> L32
            com.samsung.android.server.pm.PmLog.logDebugInfo(r4)     // Catch: java.lang.Throwable -> L32
            r5.failWrite(r0)     // Catch: java.lang.Throwable -> L32
        L72:
            if (r5 == 0) goto L77
            r5.close()
        L77:
            return
        L78:
            if (r5 == 0) goto L82
            r5.close()     // Catch: java.lang.Throwable -> L7e
            goto L82
        L7e:
            r5 = move-exception
            r4.addSuppressed(r5)
        L82:
            throw r4
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.server.pm.ShortcutPackageItem.saveToFileLocked(java.io.File, boolean):void");
    }

    public JSONObject dumpCheckin(boolean z) {
        JSONObject jSONObject = new JSONObject();
        jSONObject.put("name", this.mPackageName);
        return jSONObject;
    }

    public void scheduleSave() {
        ShortcutService shortcutService = this.mShortcutUser.mService;
        Runnable runnable = this.mSaveShortcutPackageRunner;
        shortcutService.injectPostToHandlerDebounced(runnable, runnable);
    }

    public void saveShortcutPackageItem() {
        waitForBitmapSaves();
        File shortcutPackageItemFile = getShortcutPackageItemFile();
        synchronized (this.mLock) {
            shortcutPackageItemFile.getParentFile().mkdirs();
            saveToFileLocked(shortcutPackageItemFile, false);
            scheduleSaveToAppSearchLocked();
        }
    }

    public boolean waitForBitmapSaves() {
        boolean waitForAllSavesLocked;
        synchronized (this.mLock) {
            waitForAllSavesLocked = this.mShortcutBitmapSaver.waitForAllSavesLocked();
        }
        return waitForAllSavesLocked;
    }

    public void saveBitmap(ShortcutInfo shortcutInfo, int i, Bitmap.CompressFormat compressFormat, int i2) {
        synchronized (this.mLock) {
            this.mShortcutBitmapSaver.saveBitmapLocked(shortcutInfo, i, compressFormat, i2);
        }
    }

    public String getBitmapPathMayWait(ShortcutInfo shortcutInfo) {
        String bitmapPathMayWaitLocked;
        synchronized (this.mLock) {
            bitmapPathMayWaitLocked = this.mShortcutBitmapSaver.getBitmapPathMayWaitLocked(shortcutInfo);
        }
        return bitmapPathMayWaitLocked;
    }

    public void removeIcon(ShortcutInfo shortcutInfo) {
        synchronized (this.mLock) {
            this.mShortcutBitmapSaver.removeIcon(shortcutInfo);
        }
    }

    public void removeShortcutPackageItem() {
        synchronized (this.mLock) {
            getResilientFile(getShortcutPackageItemFile()).delete();
        }
    }

    public static ResilientAtomicFile getResilientFile(File file) {
        String path = file.getPath();
        return new ResilientAtomicFile(file, new File(path + ".backup"), new File(path + ".reservecopy"), 505, "shortcut package item", null);
    }
}
