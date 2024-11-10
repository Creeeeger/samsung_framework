package com.android.server.wm;

import android.os.Environment;
import android.os.LocaleList;
import android.util.AtomicFile;
import android.util.Slog;
import android.util.SparseArray;
import android.util.Xml;
import com.android.modules.utils.TypedXmlSerializer;
import com.android.server.wm.ActivityTaskManagerInternal;
import com.android.server.wm.PackageConfigPersister;
import com.android.server.wm.PersisterQueue;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.HashMap;
import java.util.function.BiConsumer;
import java.util.function.Predicate;

/* loaded from: classes3.dex */
public class PackageConfigPersister {
    public static final String TAG = "PackageConfigPersister";
    public final ActivityTaskManagerService mAtm;
    public final PersisterQueue mPersisterQueue;
    public final Object mLock = new Object();
    public final SparseArray mPendingWrite = new SparseArray();
    public final SparseArray mModified = new SparseArray();

    public static File getUserConfigsDir(int i) {
        return new File(Environment.getDataSystemCeDirectory(i), "package_configs");
    }

    public PackageConfigPersister(PersisterQueue persisterQueue, ActivityTaskManagerService activityTaskManagerService) {
        this.mPersisterQueue = persisterQueue;
        this.mAtm = activityTaskManagerService;
    }

    /* JADX WARN: Removed duplicated region for block: B:41:0x00a8  */
    /* JADX WARN: Removed duplicated region for block: B:50:0x00bd  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public void loadUserPackages(int r17) {
        /*
            Method dump skipped, instructions count: 269
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.server.wm.PackageConfigPersister.loadUserPackages(int):void");
    }

    public void updateConfigIfNeeded(ConfigurationContainer configurationContainer, int i, String str) {
        synchronized (this.mLock) {
            PackageConfigRecord findRecord = findRecord(this.mModified, str, i);
            if (findRecord != null) {
                configurationContainer.applyAppSpecificConfig(findRecord.mNightMode, LocaleOverlayHelper.combineLocalesIfOverlayExists(findRecord.mLocales, this.mAtm.getGlobalConfiguration().getLocales()), findRecord.mGrammaticalGender);
            }
        }
    }

    public boolean updateFromImpl(String str, int i, PackageConfigurationUpdaterImpl packageConfigurationUpdaterImpl) {
        boolean z;
        LocaleList localeList;
        Integer num;
        synchronized (this.mLock) {
            PackageConfigRecord findRecord = findRecord(this.mModified, str, i);
            if (findRecord != null) {
                z = true;
            } else {
                findRecord = findRecordOrCreate(this.mModified, str, i);
                z = false;
            }
            boolean updateNightMode = updateNightMode(packageConfigurationUpdaterImpl.getNightMode(), findRecord);
            boolean updateLocales = updateLocales(packageConfigurationUpdaterImpl.getLocales(), findRecord);
            boolean updateGender = updateGender(packageConfigurationUpdaterImpl.getGrammaticalGender(), findRecord);
            if ((findRecord.mNightMode != null && !findRecord.isResetNightMode()) || (((localeList = findRecord.mLocales) != null && !localeList.isEmpty()) || ((num = findRecord.mGrammaticalGender) != null && num.intValue() != 0))) {
                if (!updateNightMode && !updateLocales && !updateGender) {
                    return false;
                }
                PackageConfigRecord findRecord2 = findRecord(this.mPendingWrite, findRecord.mName, findRecord.mUserId);
                if (findRecord2 == null) {
                    findRecord2 = findRecordOrCreate(this.mPendingWrite, findRecord.mName, findRecord.mUserId);
                }
                if (!updateNightMode(findRecord.mNightMode, findRecord2) && !updateLocales(findRecord.mLocales, findRecord2) && !updateGender(findRecord.mGrammaticalGender, findRecord2)) {
                    return false;
                }
                this.mPersisterQueue.addItem(new WriteProcessItem(findRecord2), false);
                return true;
            }
            removePackage(str, i);
            return z;
        }
    }

    public final boolean updateNightMode(Integer num, PackageConfigRecord packageConfigRecord) {
        if (num == null || num.equals(packageConfigRecord.mNightMode)) {
            return false;
        }
        packageConfigRecord.mNightMode = num;
        return true;
    }

    public final boolean updateLocales(LocaleList localeList, PackageConfigRecord packageConfigRecord) {
        if (localeList == null || localeList.equals(packageConfigRecord.mLocales)) {
            return false;
        }
        packageConfigRecord.mLocales = localeList;
        return true;
    }

    public final boolean updateGender(Integer num, PackageConfigRecord packageConfigRecord) {
        if (num == null || num.equals(packageConfigRecord.mGrammaticalGender)) {
            return false;
        }
        packageConfigRecord.mGrammaticalGender = num;
        return true;
    }

    public void removeUser(int i) {
        synchronized (this.mLock) {
            HashMap hashMap = (HashMap) this.mModified.get(i);
            HashMap hashMap2 = (HashMap) this.mPendingWrite.get(i);
            if ((hashMap != null && hashMap.size() != 0) || (hashMap2 != null && hashMap2.size() != 0)) {
                new HashMap(hashMap).forEach(new BiConsumer() { // from class: com.android.server.wm.PackageConfigPersister$$ExternalSyntheticLambda1
                    @Override // java.util.function.BiConsumer
                    public final void accept(Object obj, Object obj2) {
                        PackageConfigPersister.this.lambda$removeUser$0((String) obj, (PackageConfigPersister.PackageConfigRecord) obj2);
                    }
                });
            }
        }
    }

    public /* synthetic */ void lambda$removeUser$0(String str, PackageConfigRecord packageConfigRecord) {
        removePackage(packageConfigRecord.mName, packageConfigRecord.mUserId);
    }

    public void onPackageUninstall(String str, int i) {
        synchronized (this.mLock) {
            removePackage(str, i);
        }
    }

    public void onPackageDataCleared(String str, int i) {
        synchronized (this.mLock) {
            removePackage(str, i);
        }
    }

    public final void removePackage(String str, int i) {
        final PackageConfigRecord findRecord = findRecord(this.mPendingWrite, str, i);
        if (findRecord != null) {
            removeRecord(this.mPendingWrite, findRecord);
            this.mPersisterQueue.removeItems(new Predicate() { // from class: com.android.server.wm.PackageConfigPersister$$ExternalSyntheticLambda0
                @Override // java.util.function.Predicate
                public final boolean test(Object obj) {
                    boolean lambda$removePackage$1;
                    lambda$removePackage$1 = PackageConfigPersister.lambda$removePackage$1(PackageConfigPersister.PackageConfigRecord.this, (PackageConfigPersister.WriteProcessItem) obj);
                    return lambda$removePackage$1;
                }
            }, WriteProcessItem.class);
        }
        PackageConfigRecord findRecord2 = findRecord(this.mModified, str, i);
        if (findRecord2 != null) {
            removeRecord(this.mModified, findRecord2);
            this.mPersisterQueue.addItem(new DeletePackageItem(i, str), false);
        }
    }

    public static /* synthetic */ boolean lambda$removePackage$1(PackageConfigRecord packageConfigRecord, WriteProcessItem writeProcessItem) {
        PackageConfigRecord packageConfigRecord2 = writeProcessItem.mRecord;
        return packageConfigRecord2.mName == packageConfigRecord.mName && packageConfigRecord2.mUserId == packageConfigRecord.mUserId;
    }

    public ActivityTaskManagerInternal.PackageConfig findPackageConfiguration(String str, int i) {
        synchronized (this.mLock) {
            PackageConfigRecord findRecord = findRecord(this.mModified, str, i);
            if (findRecord == null) {
                Slog.w(TAG, "App-specific configuration not found for packageName: " + str + " and userId: " + i);
                return null;
            }
            return new ActivityTaskManagerInternal.PackageConfig(findRecord.mNightMode, findRecord.mLocales, findRecord.mGrammaticalGender);
        }
    }

    public void dump(PrintWriter printWriter, int i) {
        printWriter.println("INSTALLED PACKAGES HAVING APP-SPECIFIC CONFIGURATIONS");
        printWriter.println("Current user ID : " + i);
        synchronized (this.mLock) {
            HashMap hashMap = (HashMap) this.mModified.get(i);
            if (hashMap != null) {
                for (PackageConfigRecord packageConfigRecord : hashMap.values()) {
                    printWriter.println();
                    printWriter.println("    PackageName : " + packageConfigRecord.mName);
                    printWriter.println("        NightMode : " + packageConfigRecord.mNightMode);
                    printWriter.println("        Locales : " + packageConfigRecord.mLocales);
                }
            }
        }
    }

    /* loaded from: classes3.dex */
    public class PackageConfigRecord {
        public Integer mGrammaticalGender;
        public LocaleList mLocales;
        public final String mName;
        public Integer mNightMode;
        public final int mUserId;

        public PackageConfigRecord(String str, int i) {
            this.mName = str;
            this.mUserId = i;
        }

        public boolean isResetNightMode() {
            return this.mNightMode.intValue() == 0;
        }

        public String toString() {
            return "PackageConfigRecord package name: " + this.mName + " userId " + this.mUserId + " nightMode " + this.mNightMode + " locales " + this.mLocales;
        }
    }

    public final PackageConfigRecord findRecordOrCreate(SparseArray sparseArray, String str, int i) {
        HashMap hashMap = (HashMap) sparseArray.get(i);
        if (hashMap == null) {
            hashMap = new HashMap();
            sparseArray.put(i, hashMap);
        }
        PackageConfigRecord packageConfigRecord = (PackageConfigRecord) hashMap.get(str);
        if (packageConfigRecord != null) {
            return packageConfigRecord;
        }
        PackageConfigRecord packageConfigRecord2 = new PackageConfigRecord(str, i);
        hashMap.put(str, packageConfigRecord2);
        return packageConfigRecord2;
    }

    public final PackageConfigRecord findRecord(SparseArray sparseArray, String str, int i) {
        HashMap hashMap = (HashMap) sparseArray.get(i);
        if (hashMap == null) {
            return null;
        }
        return (PackageConfigRecord) hashMap.get(str);
    }

    public final void removeRecord(SparseArray sparseArray, PackageConfigRecord packageConfigRecord) {
        HashMap hashMap = (HashMap) sparseArray.get(packageConfigRecord.mUserId);
        if (hashMap != null) {
            hashMap.remove(packageConfigRecord.mName);
        }
    }

    /* loaded from: classes3.dex */
    public class DeletePackageItem implements PersisterQueue.WriteQueueItem {
        public final String mPackageName;
        public final int mUserId;

        public DeletePackageItem(int i, String str) {
            this.mUserId = i;
            this.mPackageName = str;
        }

        @Override // com.android.server.wm.PersisterQueue.WriteQueueItem
        public void process() {
            File userConfigsDir = PackageConfigPersister.getUserConfigsDir(this.mUserId);
            if (userConfigsDir.isDirectory()) {
                AtomicFile atomicFile = new AtomicFile(new File(userConfigsDir, this.mPackageName + "_config.xml"));
                if (atomicFile.exists()) {
                    atomicFile.delete();
                }
            }
        }
    }

    /* loaded from: classes3.dex */
    public class WriteProcessItem implements PersisterQueue.WriteQueueItem {
        public final PackageConfigRecord mRecord;

        public WriteProcessItem(PackageConfigRecord packageConfigRecord) {
            this.mRecord = packageConfigRecord;
        }

        @Override // com.android.server.wm.PersisterQueue.WriteQueueItem
        public void process() {
            FileOutputStream fileOutputStream;
            byte[] bArr;
            AtomicFile atomicFile;
            synchronized (PackageConfigPersister.this.mLock) {
                fileOutputStream = null;
                try {
                    bArr = saveToXml();
                } catch (Exception unused) {
                    bArr = null;
                }
                PackageConfigPersister packageConfigPersister = PackageConfigPersister.this;
                packageConfigPersister.removeRecord(packageConfigPersister.mPendingWrite, this.mRecord);
            }
            if (bArr == null) {
                return;
            }
            try {
                File userConfigsDir = PackageConfigPersister.getUserConfigsDir(this.mRecord.mUserId);
                if (!userConfigsDir.isDirectory() && !userConfigsDir.mkdirs()) {
                    Slog.e(PackageConfigPersister.TAG, "Failure creating tasks directory for user " + this.mRecord.mUserId + ": " + userConfigsDir);
                    return;
                }
                atomicFile = new AtomicFile(new File(userConfigsDir, this.mRecord.mName + "_config.xml"));
                try {
                    fileOutputStream = atomicFile.startWrite();
                    fileOutputStream.write(bArr);
                    atomicFile.finishWrite(fileOutputStream);
                } catch (IOException e) {
                    e = e;
                    if (fileOutputStream != null) {
                        atomicFile.failWrite(fileOutputStream);
                    }
                    Slog.e(PackageConfigPersister.TAG, "Unable to open " + atomicFile + " for persisting. " + e);
                }
            } catch (IOException e2) {
                e = e2;
                atomicFile = null;
            }
        }

        public final byte[] saveToXml() {
            ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
            TypedXmlSerializer resolveSerializer = Xml.resolveSerializer(byteArrayOutputStream);
            resolveSerializer.startDocument((String) null, Boolean.TRUE);
            resolveSerializer.startTag((String) null, "config");
            resolveSerializer.attribute((String) null, "package_name", this.mRecord.mName);
            Integer num = this.mRecord.mNightMode;
            if (num != null) {
                resolveSerializer.attributeInt((String) null, "night_mode", num.intValue());
            }
            LocaleList localeList = this.mRecord.mLocales;
            if (localeList != null) {
                resolveSerializer.attribute((String) null, "locale_list", localeList.toLanguageTags());
            }
            resolveSerializer.endTag((String) null, "config");
            resolveSerializer.endDocument();
            resolveSerializer.flush();
            return byteArrayOutputStream.toByteArray();
        }
    }
}
