package com.samsung.android.server.pm.install;

import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.os.SystemClock;
import android.os.SystemProperties;
import android.text.TextUtils;
import android.util.Xml;
import com.android.server.pm.PackageInstallerService;
import com.samsung.android.server.pm.install.PrePackageInstallerBase;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;
import java.util.function.Consumer;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;

/* loaded from: classes2.dex */
public class ChnPrePackageInstaller extends PrePackageInstallerBase {
    public List mCscAddedAPKList;
    public List mCscInstallOnceAPKList;
    public List mCscUninstallPKGList;
    public List mCscUpdateAPKList;
    public HashSet mInstalledAppListDeviceInfo;
    public boolean mLoaded;
    public boolean mStorePreloadAppList;

    public ChnPrePackageInstaller(Context context, PackageInstallerService packageInstallerService, boolean z, boolean z2) {
        super(context, packageInstallerService, z, z2);
        this.mInstalledAppListDeviceInfo = new HashSet();
        this.mLoaded = false;
        this.mStorePreloadAppList = false;
        this.mCscAddedAPKList = new ArrayList();
        this.mCscUpdateAPKList = new ArrayList();
        this.mCscInstallOnceAPKList = new ArrayList();
        this.mCscUninstallPKGList = new ArrayList();
    }

    @Override // com.samsung.android.server.pm.install.PrePackageInstallerBase
    public void prepareInstall() {
        prepareSettings();
        checkNeedPreloadAppList();
        if (this.mIsUpgrade) {
            if (this.mStorePreloadAppList) {
                loadInstallAppListHashSet();
            }
            loadChinaCSCConfig();
            if (!this.mLoaded) {
                this.mLogMsg.out("CHN - loadChinaCSCConfig - no items to load -> setDisabled");
                setDisabled();
            } else {
                this.mLogMsg.out("fota - mount hidden area using persist values.");
                SystemProperties.set("persist.sys.storage_preload", "1");
                SystemClock.sleep(1000L);
                scanUninstallPkgChinaCSC();
            }
        }
    }

    @Override // com.samsung.android.server.pm.install.PrePackageInstallerBase
    public void uninstallPackage() {
        super.uninstallPackage();
        this.mUninstallPackageList.forEach(new Consumer() { // from class: com.samsung.android.server.pm.install.ChnPrePackageInstaller$$ExternalSyntheticLambda0
            @Override // java.util.function.Consumer
            public final void accept(Object obj) {
                ChnPrePackageInstaller.this.lambda$uninstallPackage$0((String) obj);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$uninstallPackage$0(String str) {
        if (this.mStorePreloadAppList) {
            this.mInstalledAppListDeviceInfo.remove(str);
        }
    }

    @Override // com.samsung.android.server.pm.install.PrePackageInstallerBase
    public void putInstallHistory(String str) {
        super.putInstallHistory(str);
        if (this.mStorePreloadAppList) {
            this.mInstalledAppListDeviceInfo.add(str);
        }
    }

    @Override // com.samsung.android.server.pm.install.PrePackageInstallerBase
    public void setDisabled() {
        storeInstallAppListHashSet();
        super.setDisabled();
    }

    @Override // com.samsung.android.server.pm.install.PrePackageInstallerBase
    public void addInstallPackageList(File[] fileArr) {
        if (this.mLoaded) {
            for (File file : fileArr) {
                PrePackageInstallerBase.ApkFile apkFile = new PrePackageInstallerBase.ApkFile(file);
                if (needInstall(apkFile)) {
                    this.mInstallPackageList.add(apkFile);
                } else {
                    apkFile.removeCacheFile();
                }
            }
        }
    }

    public void storeInstallAppListHashSet() {
        if (this.mStorePreloadAppList) {
            this.mLogMsg.out("storeInstallAppListHashSet");
            if (this.mInstalledAppListDeviceInfo.isEmpty()) {
                return;
            }
            try {
                FileOutputStream fileOutputStream = new FileOutputStream("/efs/sec_efs/preloadinstalled.lst");
                try {
                    ObjectOutputStream objectOutputStream = new ObjectOutputStream(fileOutputStream);
                    try {
                        objectOutputStream.writeObject(this.mInstalledAppListDeviceInfo);
                        this.mLogMsg.out("SUCCESS : Stored INSTALLED_APPLIST file");
                        objectOutputStream.close();
                        fileOutputStream.close();
                    } finally {
                    }
                } finally {
                }
            } catch (Exception unused) {
                this.mLogMsg.out("FAIL : Error ocurred during storeInstallApplistHashSet for INSTALLED_APPLIST");
            }
        }
    }

    public final void checkNeedPreloadAppList() {
        this.mStorePreloadAppList = false;
    }

    public final void loadInstallAppListHashSet() {
        FileInputStream fileInputStream;
        this.mLogMsg.out("loadInstallApplistHashSet");
        try {
            fileInputStream = new FileInputStream("/efs/sec_efs/preloadinstalled.lst");
        } catch (Exception unused) {
            this.mLogMsg.out("FAIL : Error occurred during loadInstallApplistHashSet for INSTALLED_APPLIST");
        }
        try {
            ObjectInputStream objectInputStream = new ObjectInputStream(fileInputStream);
            try {
                Object readObject = objectInputStream.readObject();
                if (readObject instanceof HashSet) {
                    this.mInstalledAppListDeviceInfo = (HashSet) readObject;
                    this.mLogMsg.out("SUCCESS : Load INSTALLED_APPLIST file from previous one");
                }
                objectInputStream.close();
                fileInputStream.close();
                if (this.mInstalledAppListDeviceInfo == null) {
                    this.mLogMsg.out("Failed to load INSTALLED_APPLIST, Create new INSTALLED_APPLIST HashSet");
                    this.mInstalledAppListDeviceInfo = new HashSet();
                }
            } finally {
            }
        } finally {
        }
    }

    public final boolean needInstall(PrePackageInstallerBase.ApkFile apkFile) {
        String apkFileName = apkFile.getApkFileName();
        if (apkFileName == null) {
            return false;
        }
        return (this.mCscAddedAPKList.contains(apkFileName) && !isInstalled(apkFile.getFile())) || (this.mCscUpdateAPKList.contains(apkFileName) && isInstalled(apkFile.getFile())) || !(!this.mCscInstallOnceAPKList.contains(apkFileName) || isInstalled(apkFile.getFile()) || isInstalledInHistory(apkFile.getFile()));
    }

    public boolean isInstalled(File file) {
        if (file != null && file.exists()) {
            PackageInfo packageArchiveInfo = this.mPackageManager.getPackageArchiveInfo(file.getAbsolutePath(), 0);
            if (packageArchiveInfo == null) {
                this.mLogMsg.out("pkgInfo is null");
                return false;
            }
            try {
                this.mPackageManager.getApplicationInfo(packageArchiveInfo.packageName, 0);
                return true;
            } catch (PackageManager.NameNotFoundException unused) {
                this.mLogMsg.out("PackageManager can't search - " + packageArchiveInfo.packageName);
            }
        }
        return false;
    }

    public final boolean isInstalledInHistory(File file) {
        if (file == null || !file.exists()) {
            return false;
        }
        PackageInfo packageArchiveInfo = this.mPackageManager.getPackageArchiveInfo(file.getAbsolutePath(), 0);
        if (packageArchiveInfo == null) {
            this.mLogMsg.out("pkgInfo is null on isInstalledInHistory()");
            return false;
        }
        return this.mInstallHistory.contains(packageArchiveInfo.packageName);
    }

    public void loadChinaCSCConfig() {
        loadConfigApkListInCsc();
        this.mLogMsg.out("mCscAddedAPKList = " + this.mCscAddedAPKList.toString());
        this.mLogMsg.out("mCscUninstallPKGList = " + this.mCscUninstallPKGList.toString());
        this.mLogMsg.out("mCscInstallOnceAPKList = " + this.mCscInstallOnceAPKList.toString());
        this.mLogMsg.out("mCscUpdateAPKList = " + this.mCscUpdateAPKList.toString());
        if (this.mCscAddedAPKList.size() > 0 || this.mCscUpdateAPKList.size() > 0 || this.mCscInstallOnceAPKList.size() > 0 || this.mCscUninstallPKGList.size() > 0) {
            this.mLogMsg.out("items are loaded.");
            this.mLoaded = true;
        } else {
            this.mLogMsg.out("empty apk list, call setDisabled");
        }
    }

    public void loadConfigApkListInCsc() {
        parsePreloadPackages(getApkListPath());
    }

    public String getApkListPath() {
        String str = SystemProperties.get("mdc.sys.omc_etcpath", (String) null);
        if (str == null || TextUtils.isEmpty(str)) {
            this.mLogMsg.out("No file is existed for ChnPreloadApkList");
            return "";
        }
        String str2 = str + "/sysconfig/chn_preload_package_list.xml";
        this.mLogMsg.out("omcPath = " + str);
        return str2;
    }

    public void parsePreloadPackages(String str) {
        this.mLogMsg.out("Parsing the packages at " + str);
        File file = new File(str);
        if (!file.exists()) {
            this.mLogMsg.out("No XML file exists");
            return;
        }
        XmlPullParser newPullParser = Xml.newPullParser();
        try {
            FileInputStream fileInputStream = new FileInputStream(file);
            try {
                newPullParser.setInput(fileInputStream, null);
                parsePreloadPackagesInternal(newPullParser);
                fileInputStream.close();
            } catch (Throwable th) {
                try {
                    fileInputStream.close();
                } catch (Throwable th2) {
                    th.addSuppressed(th2);
                }
                throw th;
            }
        } catch (FileNotFoundException e) {
            this.mLogMsg.out("Failed to parse PreloadApkList. FileNotFoundException" + e);
        } catch (IOException e2) {
            this.mLogMsg.out("Failed to parse PreloadApkList. IOException " + e2);
        } catch (XmlPullParserException e3) {
            this.mLogMsg.out("Failed to parse PreloadApkList. XmlPullParserException " + e3);
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:43:0x004b, code lost:
    
        if (r1.equals("add-apk") == false) goto L15;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final void parsePreloadPackagesInternal(org.xmlpull.v1.XmlPullParser r7) {
        /*
            r6 = this;
            r7.next()
            int r0 = r7.getDepth()
        L7:
            int r1 = r7.next()
            r2 = 1
            if (r1 == r2) goto L9d
            r3 = 3
            if (r1 != r3) goto L17
            int r4 = r7.getDepth()
            if (r4 <= r0) goto L9d
        L17:
            if (r1 == r3) goto L7
            r4 = 4
            if (r1 != r4) goto L1d
            goto L7
        L1d:
            java.lang.String r1 = r7.getName()
            r1.hashCode()
            int r4 = r1.hashCode()
            r5 = -1
            switch(r4) {
                case -1349104643: goto L4e;
                case -1149751568: goto L45;
                case -297100520: goto L39;
                case -116432702: goto L2e;
                default: goto L2c;
            }
        L2c:
            r2 = r5
            goto L59
        L2e:
            java.lang.String r2 = "install-once-apk"
            boolean r2 = r1.equals(r2)
            if (r2 != 0) goto L37
            goto L2c
        L37:
            r2 = r3
            goto L59
        L39:
            java.lang.String r2 = "update-apk"
            boolean r2 = r1.equals(r2)
            if (r2 != 0) goto L43
            goto L2c
        L43:
            r2 = 2
            goto L59
        L45:
            java.lang.String r3 = "add-apk"
            boolean r3 = r1.equals(r3)
            if (r3 != 0) goto L59
            goto L2c
        L4e:
            java.lang.String r2 = "remove-package"
            boolean r2 = r1.equals(r2)
            if (r2 != 0) goto L58
            goto L2c
        L58:
            r2 = 0
        L59:
            switch(r2) {
                case 0: goto L92;
                case 1: goto L87;
                case 2: goto L7d;
                case 3: goto L73;
                default: goto L5c;
            }
        L5c:
            com.samsung.android.server.pm.install.PrePackageInstallerBase$PrePackageInstallLogMsg r2 = r6.mLogMsg
            java.lang.StringBuilder r3 = new java.lang.StringBuilder
            r3.<init>()
            java.lang.String r4 = "Invalid element name: "
            r3.append(r4)
            r3.append(r1)
            java.lang.String r1 = r3.toString()
            r2.out(r1)
            goto L7
        L73:
            java.util.List r1 = r6.parsePackagesOrApks(r7)
            java.util.List r2 = r6.mCscInstallOnceAPKList
            r2.addAll(r1)
            goto L7
        L7d:
            java.util.List r1 = r6.parsePackagesOrApks(r7)
            java.util.List r2 = r6.mCscUpdateAPKList
            r2.addAll(r1)
            goto L7
        L87:
            java.util.List r1 = r6.parsePackagesOrApks(r7)
            java.util.List r2 = r6.mCscAddedAPKList
            r2.addAll(r1)
            goto L7
        L92:
            java.util.List r1 = r6.parsePackagesOrApks(r7)
            java.util.List r2 = r6.mCscUninstallPKGList
            r2.addAll(r1)
            goto L7
        L9d:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.samsung.android.server.pm.install.ChnPrePackageInstaller.parsePreloadPackagesInternal(org.xmlpull.v1.XmlPullParser):void");
    }

    public final List parsePackagesOrApks(XmlPullParser xmlPullParser) {
        int depth = xmlPullParser.getDepth();
        ArrayList arrayList = new ArrayList();
        while (true) {
            int next = xmlPullParser.next();
            if (next == 1 || (next == 3 && xmlPullParser.getDepth() <= depth)) {
                break;
            }
            if (next != 3 && next != 4) {
                String name = xmlPullParser.getName();
                if ("apk".equals(name) || "package".equals(name)) {
                    String attributeValue = xmlPullParser.getAttributeValue(null, "name");
                    if (!TextUtils.isEmpty(attributeValue) && !arrayList.contains(attributeValue)) {
                        arrayList.add(attributeValue);
                    }
                }
            }
        }
        return arrayList;
    }

    public final void scanUninstallPkgChinaCSC() {
        ApplicationInfo applicationInfo;
        if (this.mCscUninstallPKGList.size() == 0) {
            return;
        }
        for (String str : this.mCscUninstallPKGList) {
            try {
                str = str.replaceAll("\\r\\n|\\r|\\n", "");
                applicationInfo = this.mPackageManager.getApplicationInfo(str, 0);
            } catch (PackageManager.NameNotFoundException unused) {
                this.mLogMsg.out("Failed to getApplicationInfo :" + str);
                applicationInfo = null;
            }
            if (applicationInfo != null && !this.mUninstallPackageList.contains(str)) {
                this.mLogMsg.out("add to unInstallPackageList from csc xml pkg:" + str);
                this.mUninstallPackageList.add(str);
            }
        }
    }
}
