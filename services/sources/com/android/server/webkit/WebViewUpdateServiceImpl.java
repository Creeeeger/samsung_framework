package com.android.server.webkit;

import android.content.Context;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.pm.Signature;
import android.os.AsyncTask;
import android.os.Trace;
import android.util.Slog;
import android.webkit.UserPackage;
import android.webkit.WebViewFactory;
import android.webkit.WebViewProviderInfo;
import android.webkit.WebViewProviderResponse;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* loaded from: classes3.dex */
public class WebViewUpdateServiceImpl {
    public static final String TAG = "WebViewUpdateServiceImpl";
    public final Context mContext;
    public final SystemInterface mSystemInterface;
    public long mMinimumVersionCode = -1;
    public int mNumRelroCreationsStarted = 0;
    public int mNumRelroCreationsFinished = 0;
    public boolean mWebViewPackageDirty = false;
    public boolean mAnyWebViewInstalled = false;
    public PackageInfo mCurrentWebViewPackage = null;
    public final Object mLock = new Object();

    public static String getInvalidityReason(int i) {
        return i != 1 ? i != 2 ? i != 3 ? i != 4 ? "Unexcepted validity-reason" : "No WebView-library manifest flag" : "Incorrect signature" : "Version code too low" : "SDK version too low";
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class WebViewPackageMissingException extends Exception {
        public WebViewPackageMissingException(String str) {
            super(str);
        }
    }

    public WebViewUpdateServiceImpl(Context context, SystemInterface systemInterface) {
        this.mContext = context;
        this.mSystemInterface = systemInterface;
    }

    /* JADX WARN: Can't wrap try/catch for region: R(9:9|(3:10|11|(1:13)(1:46))|(2:14|15)|(2:19|(5:21|22|23|(1:25)|27))|42|22|23|(0)|27) */
    /* JADX WARN: Code restructure failed: missing block: B:38:0x004b, code lost:
    
        r8 = e;
     */
    /* JADX WARN: Code restructure failed: missing block: B:39:0x004c, code lost:
    
        r5 = r1;
        r1 = r0;
        r0 = r5;
     */
    /* JADX WARN: Removed duplicated region for block: B:25:0x0047 A[Catch: WebViewPackageMissingException -> 0x004b, all -> 0x0052, TRY_LEAVE, TryCatch #0 {, blocks: (B:11:0x0019, B:13:0x0021, B:15:0x0025, B:17:0x002f, B:19:0x0037, B:23:0x003f, B:25:0x0047, B:27:0x0072, B:40:0x0057), top: B:10:0x0019 }] */
    /* JADX WARN: Removed duplicated region for block: B:29:0x0075 A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:36:? A[ADDED_TO_REGION, RETURN, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public void packageStateChanged(java.lang.String r7, int r8, int r9) {
        /*
            r6 = this;
            com.android.server.webkit.SystemInterface r8 = r6.mSystemInterface
            android.webkit.WebViewProviderInfo[] r8 = r8.getWebViewPackages()
            int r9 = r8.length
            r0 = 0
            r1 = r0
        L9:
            if (r1 >= r9) goto L84
            r2 = r8[r1]
            java.lang.String r3 = r2.packageName
            boolean r3 = r3.equals(r7)
            if (r3 == 0) goto L81
            java.lang.Object r3 = r6.mLock
            monitor-enter(r3)
            r7 = 0
            android.content.pm.PackageInfo r8 = r6.findPreferredWebViewPackage()     // Catch: java.lang.Throwable -> L52 com.android.server.webkit.WebViewUpdateServiceImpl.WebViewPackageMissingException -> L54
            android.content.pm.PackageInfo r9 = r6.mCurrentWebViewPackage     // Catch: java.lang.Throwable -> L52 com.android.server.webkit.WebViewUpdateServiceImpl.WebViewPackageMissingException -> L54
            if (r9 == 0) goto L24
            java.lang.String r9 = r9.packageName     // Catch: java.lang.Throwable -> L52 com.android.server.webkit.WebViewUpdateServiceImpl.WebViewPackageMissingException -> L54
            goto L25
        L24:
            r9 = r7
        L25:
            java.lang.String r1 = r2.packageName     // Catch: com.android.server.webkit.WebViewUpdateServiceImpl.WebViewPackageMissingException -> L50 java.lang.Throwable -> L52
            java.lang.String r4 = r8.packageName     // Catch: com.android.server.webkit.WebViewUpdateServiceImpl.WebViewPackageMissingException -> L50 java.lang.Throwable -> L52
            boolean r1 = r1.equals(r4)     // Catch: com.android.server.webkit.WebViewUpdateServiceImpl.WebViewPackageMissingException -> L50 java.lang.Throwable -> L52
            if (r1 != 0) goto L3e
            java.lang.String r1 = r2.packageName     // Catch: com.android.server.webkit.WebViewUpdateServiceImpl.WebViewPackageMissingException -> L50 java.lang.Throwable -> L52
            boolean r1 = r1.equals(r9)     // Catch: com.android.server.webkit.WebViewUpdateServiceImpl.WebViewPackageMissingException -> L50 java.lang.Throwable -> L52
            if (r1 != 0) goto L3e
            android.content.pm.PackageInfo r1 = r6.mCurrentWebViewPackage     // Catch: com.android.server.webkit.WebViewUpdateServiceImpl.WebViewPackageMissingException -> L50 java.lang.Throwable -> L52
            if (r1 != 0) goto L3c
            goto L3e
        L3c:
            r1 = r0
            goto L3f
        L3e:
            r1 = 1
        L3f:
            java.lang.String r2 = r2.packageName     // Catch: com.android.server.webkit.WebViewUpdateServiceImpl.WebViewPackageMissingException -> L4b java.lang.Throwable -> L52
            boolean r0 = r2.equals(r9)     // Catch: com.android.server.webkit.WebViewUpdateServiceImpl.WebViewPackageMissingException -> L4b java.lang.Throwable -> L52
            if (r1 == 0) goto L72
            r6.onWebViewProviderChanged(r8)     // Catch: com.android.server.webkit.WebViewUpdateServiceImpl.WebViewPackageMissingException -> L4b java.lang.Throwable -> L52
            goto L72
        L4b:
            r8 = move-exception
            r5 = r1
            r1 = r0
            r0 = r5
            goto L57
        L50:
            r8 = move-exception
            goto L56
        L52:
            r6 = move-exception
            goto L7f
        L54:
            r8 = move-exception
            r9 = r7
        L56:
            r1 = r0
        L57:
            r6.mCurrentWebViewPackage = r7     // Catch: java.lang.Throwable -> L52
            java.lang.String r7 = com.android.server.webkit.WebViewUpdateServiceImpl.TAG     // Catch: java.lang.Throwable -> L52
            java.lang.StringBuilder r2 = new java.lang.StringBuilder     // Catch: java.lang.Throwable -> L52
            r2.<init>()     // Catch: java.lang.Throwable -> L52
            java.lang.String r4 = "Could not find valid WebView package to create relro with "
            r2.append(r4)     // Catch: java.lang.Throwable -> L52
            r2.append(r8)     // Catch: java.lang.Throwable -> L52
            java.lang.String r8 = r2.toString()     // Catch: java.lang.Throwable -> L52
            android.util.Slog.e(r7, r8)     // Catch: java.lang.Throwable -> L52
            r5 = r1
            r1 = r0
            r0 = r5
        L72:
            monitor-exit(r3)     // Catch: java.lang.Throwable -> L52
            if (r1 == 0) goto L7e
            if (r0 != 0) goto L7e
            if (r9 == 0) goto L7e
            com.android.server.webkit.SystemInterface r6 = r6.mSystemInterface
            r6.killPackageDependents(r9)
        L7e:
            return
        L7f:
            monitor-exit(r3)     // Catch: java.lang.Throwable -> L52
            throw r6
        L81:
            int r1 = r1 + 1
            goto L9
        L84:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.server.webkit.WebViewUpdateServiceImpl.packageStateChanged(java.lang.String, int, int):void");
    }

    public void prepareWebViewInSystemServer() {
        this.mSystemInterface.notifyZygote(isMultiProcessEnabled());
        try {
            synchronized (this.mLock) {
                this.mCurrentWebViewPackage = findPreferredWebViewPackage();
                String userChosenWebViewProvider = this.mSystemInterface.getUserChosenWebViewProvider(this.mContext);
                if (userChosenWebViewProvider != null && !userChosenWebViewProvider.equals(this.mCurrentWebViewPackage.packageName)) {
                    this.mSystemInterface.updateUserSetting(this.mContext, this.mCurrentWebViewPackage.packageName);
                }
                onWebViewProviderChanged(this.mCurrentWebViewPackage);
            }
        } catch (Throwable th) {
            Slog.e(TAG, "error preparing webview provider from system server", th);
        }
        if (getCurrentWebViewPackage() == null) {
            WebViewProviderInfo fallbackProvider = getFallbackProvider(this.mSystemInterface.getWebViewPackages());
            if (fallbackProvider != null) {
                Slog.w(TAG, "No valid provider, trying to enable " + fallbackProvider.packageName);
                this.mSystemInterface.enablePackageForAllUsers(this.mContext, fallbackProvider.packageName, true);
                return;
            }
            Slog.e(TAG, "No valid provider and no fallback available.");
        }
    }

    public final void startZygoteWhenReady() {
        waitForAndGetProvider();
        this.mSystemInterface.ensureZygoteStarted();
    }

    public void handleNewUser(int i) {
        if (i == 0) {
            return;
        }
        handleUserChange();
    }

    public void handleUserRemoved(int i) {
        handleUserChange();
    }

    public final void handleUserChange() {
        updateCurrentWebViewPackage(null);
    }

    public void notifyRelroCreationCompleted() {
        synchronized (this.mLock) {
            this.mNumRelroCreationsFinished++;
            checkIfRelrosDoneLocked();
        }
    }

    public WebViewProviderResponse waitForAndGetProvider() {
        boolean webViewIsReadyLocked;
        PackageInfo packageInfo;
        int i;
        long nanoTime = (System.nanoTime() / 1000000) + 1000;
        synchronized (this.mLock) {
            webViewIsReadyLocked = webViewIsReadyLocked();
            while (!webViewIsReadyLocked) {
                long nanoTime2 = System.nanoTime() / 1000000;
                if (nanoTime2 >= nanoTime) {
                    break;
                }
                try {
                    this.mLock.wait(nanoTime - nanoTime2);
                } catch (InterruptedException unused) {
                }
                webViewIsReadyLocked = webViewIsReadyLocked();
            }
            packageInfo = this.mCurrentWebViewPackage;
            if (webViewIsReadyLocked) {
                i = 0;
            } else if (this.mAnyWebViewInstalled) {
                String str = "Timed out waiting for relro creation, relros started " + this.mNumRelroCreationsStarted + " relros finished " + this.mNumRelroCreationsFinished + " package dirty? " + this.mWebViewPackageDirty;
                Slog.e(TAG, str);
                Trace.instant(64L, str);
                i = 3;
            } else {
                i = 4;
            }
        }
        if (!webViewIsReadyLocked) {
            Slog.w(TAG, "creating relro file timed out");
        }
        return new WebViewProviderResponse(packageInfo, i);
    }

    public String changeProviderAndSetting(String str) {
        PackageInfo updateCurrentWebViewPackage = updateCurrentWebViewPackage(str);
        return updateCurrentWebViewPackage == null ? "" : updateCurrentWebViewPackage.packageName;
    }

    /* JADX WARN: Removed duplicated region for block: B:14:0x0024 A[Catch: all -> 0x0050, TRY_ENTER, TryCatch #0 {, blocks: (B:4:0x0003, B:6:0x0007, B:8:0x000e, B:10:0x0014, B:14:0x0024, B:15:0x0027, B:25:0x0036, B:26:0x004e), top: B:3:0x0003, inners: #1 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final android.content.pm.PackageInfo updateCurrentWebViewPackage(java.lang.String r5) {
        /*
            r4 = this;
            java.lang.Object r0 = r4.mLock
            monitor-enter(r0)
            android.content.pm.PackageInfo r1 = r4.mCurrentWebViewPackage     // Catch: java.lang.Throwable -> L50
            if (r5 == 0) goto Le
            com.android.server.webkit.SystemInterface r2 = r4.mSystemInterface     // Catch: java.lang.Throwable -> L50
            android.content.Context r3 = r4.mContext     // Catch: java.lang.Throwable -> L50
            r2.updateUserSetting(r3, r5)     // Catch: java.lang.Throwable -> L50
        Le:
            android.content.pm.PackageInfo r5 = r4.findPreferredWebViewPackage()     // Catch: com.android.server.webkit.WebViewUpdateServiceImpl.WebViewPackageMissingException -> L34 java.lang.Throwable -> L50
            if (r1 == 0) goto L21
            java.lang.String r2 = r5.packageName     // Catch: com.android.server.webkit.WebViewUpdateServiceImpl.WebViewPackageMissingException -> L34 java.lang.Throwable -> L50
            java.lang.String r3 = r1.packageName     // Catch: com.android.server.webkit.WebViewUpdateServiceImpl.WebViewPackageMissingException -> L34 java.lang.Throwable -> L50
            boolean r2 = r2.equals(r3)     // Catch: com.android.server.webkit.WebViewUpdateServiceImpl.WebViewPackageMissingException -> L34 java.lang.Throwable -> L50
            if (r2 != 0) goto L1f
            goto L21
        L1f:
            r2 = 0
            goto L22
        L21:
            r2 = 1
        L22:
            if (r2 == 0) goto L27
            r4.onWebViewProviderChanged(r5)     // Catch: java.lang.Throwable -> L50
        L27:
            monitor-exit(r0)     // Catch: java.lang.Throwable -> L50
            if (r2 == 0) goto L33
            if (r1 == 0) goto L33
            com.android.server.webkit.SystemInterface r4 = r4.mSystemInterface
            java.lang.String r0 = r1.packageName
            r4.killPackageDependents(r0)
        L33:
            return r5
        L34:
            r5 = move-exception
            r1 = 0
            r4.mCurrentWebViewPackage = r1     // Catch: java.lang.Throwable -> L50
            java.lang.String r4 = com.android.server.webkit.WebViewUpdateServiceImpl.TAG     // Catch: java.lang.Throwable -> L50
            java.lang.StringBuilder r2 = new java.lang.StringBuilder     // Catch: java.lang.Throwable -> L50
            r2.<init>()     // Catch: java.lang.Throwable -> L50
            java.lang.String r3 = "Couldn't find WebView package to use "
            r2.append(r3)     // Catch: java.lang.Throwable -> L50
            r2.append(r5)     // Catch: java.lang.Throwable -> L50
            java.lang.String r5 = r2.toString()     // Catch: java.lang.Throwable -> L50
            android.util.Slog.e(r4, r5)     // Catch: java.lang.Throwable -> L50
            monitor-exit(r0)     // Catch: java.lang.Throwable -> L50
            return r1
        L50:
            r4 = move-exception
            monitor-exit(r0)     // Catch: java.lang.Throwable -> L50
            throw r4
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.server.webkit.WebViewUpdateServiceImpl.updateCurrentWebViewPackage(java.lang.String):android.content.pm.PackageInfo");
    }

    public final void onWebViewProviderChanged(PackageInfo packageInfo) {
        synchronized (this.mLock) {
            this.mAnyWebViewInstalled = true;
            if (this.mNumRelroCreationsStarted == this.mNumRelroCreationsFinished) {
                this.mCurrentWebViewPackage = packageInfo;
                this.mNumRelroCreationsStarted = Integer.MAX_VALUE;
                this.mNumRelroCreationsFinished = 0;
                this.mNumRelroCreationsStarted = this.mSystemInterface.onWebViewProviderChanged(packageInfo);
                checkIfRelrosDoneLocked();
            } else {
                this.mWebViewPackageDirty = true;
            }
        }
        if (isMultiProcessEnabled()) {
            AsyncTask.THREAD_POOL_EXECUTOR.execute(new Runnable() { // from class: com.android.server.webkit.WebViewUpdateServiceImpl$$ExternalSyntheticLambda0
                @Override // java.lang.Runnable
                public final void run() {
                    WebViewUpdateServiceImpl.this.startZygoteWhenReady();
                }
            });
        }
    }

    public WebViewProviderInfo[] getValidWebViewPackages() {
        ProviderAndPackageInfo[] validWebViewPackagesAndInfos = getValidWebViewPackagesAndInfos();
        WebViewProviderInfo[] webViewProviderInfoArr = new WebViewProviderInfo[validWebViewPackagesAndInfos.length];
        for (int i = 0; i < validWebViewPackagesAndInfos.length; i++) {
            webViewProviderInfoArr[i] = validWebViewPackagesAndInfos[i].provider;
        }
        return webViewProviderInfoArr;
    }

    /* loaded from: classes3.dex */
    public class ProviderAndPackageInfo {
        public final PackageInfo packageInfo;
        public final WebViewProviderInfo provider;

        public ProviderAndPackageInfo(WebViewProviderInfo webViewProviderInfo, PackageInfo packageInfo) {
            this.provider = webViewProviderInfo;
            this.packageInfo = packageInfo;
        }
    }

    public final ProviderAndPackageInfo[] getValidWebViewPackagesAndInfos() {
        WebViewProviderInfo[] webViewPackages = this.mSystemInterface.getWebViewPackages();
        ArrayList arrayList = new ArrayList();
        for (int i = 0; i < webViewPackages.length; i++) {
            try {
                PackageInfo packageInfoForProvider = this.mSystemInterface.getPackageInfoForProvider(webViewPackages[i]);
                if (validityResult(webViewPackages[i], packageInfoForProvider) == 0) {
                    arrayList.add(new ProviderAndPackageInfo(webViewPackages[i], packageInfoForProvider));
                }
            } catch (PackageManager.NameNotFoundException unused) {
            }
        }
        return (ProviderAndPackageInfo[]) arrayList.toArray(new ProviderAndPackageInfo[arrayList.size()]);
    }

    public final PackageInfo findPreferredWebViewPackage() {
        ProviderAndPackageInfo[] validWebViewPackagesAndInfos = getValidWebViewPackagesAndInfos();
        String userChosenWebViewProvider = this.mSystemInterface.getUserChosenWebViewProvider(this.mContext);
        for (ProviderAndPackageInfo providerAndPackageInfo : validWebViewPackagesAndInfos) {
            if (providerAndPackageInfo.provider.packageName.equals(userChosenWebViewProvider) && isInstalledAndEnabledForAllUsers(this.mSystemInterface.getPackageInfoForProviderAllUsers(this.mContext, providerAndPackageInfo.provider))) {
                return providerAndPackageInfo.packageInfo;
            }
        }
        for (ProviderAndPackageInfo providerAndPackageInfo2 : validWebViewPackagesAndInfos) {
            WebViewProviderInfo webViewProviderInfo = providerAndPackageInfo2.provider;
            if (webViewProviderInfo.availableByDefault && isInstalledAndEnabledForAllUsers(this.mSystemInterface.getPackageInfoForProviderAllUsers(this.mContext, webViewProviderInfo))) {
                return providerAndPackageInfo2.packageInfo;
            }
        }
        this.mAnyWebViewInstalled = false;
        throw new WebViewPackageMissingException("Could not find a loadable WebView package");
    }

    public static boolean isInstalledAndEnabledForAllUsers(List list) {
        Iterator it = list.iterator();
        while (it.hasNext()) {
            UserPackage userPackage = (UserPackage) it.next();
            if (!userPackage.isInstalledPackage() || !userPackage.isEnabledPackage()) {
                return false;
            }
        }
        return true;
    }

    public WebViewProviderInfo[] getWebViewPackages() {
        return this.mSystemInterface.getWebViewPackages();
    }

    public PackageInfo getCurrentWebViewPackage() {
        PackageInfo packageInfo;
        synchronized (this.mLock) {
            packageInfo = this.mCurrentWebViewPackage;
        }
        return packageInfo;
    }

    public final boolean webViewIsReadyLocked() {
        return !this.mWebViewPackageDirty && this.mNumRelroCreationsStarted == this.mNumRelroCreationsFinished && this.mAnyWebViewInstalled;
    }

    public final void checkIfRelrosDoneLocked() {
        if (this.mNumRelroCreationsStarted == this.mNumRelroCreationsFinished) {
            if (this.mWebViewPackageDirty) {
                this.mWebViewPackageDirty = false;
                try {
                    onWebViewProviderChanged(findPreferredWebViewPackage());
                    return;
                } catch (WebViewPackageMissingException unused) {
                    this.mCurrentWebViewPackage = null;
                    return;
                }
            }
            this.mLock.notifyAll();
        }
    }

    public final int validityResult(WebViewProviderInfo webViewProviderInfo, PackageInfo packageInfo) {
        if (!UserPackage.hasCorrectTargetSdkVersion(packageInfo)) {
            return 1;
        }
        if (!versionCodeGE(packageInfo.getLongVersionCode(), getMinimumVersionCode()) && !this.mSystemInterface.systemIsDebuggable()) {
            return 2;
        }
        if (providerHasValidSignature(webViewProviderInfo, packageInfo, this.mSystemInterface)) {
            return WebViewFactory.getWebViewLibrary(packageInfo.applicationInfo) == null ? 4 : 0;
        }
        return 3;
    }

    public static boolean versionCodeGE(long j, long j2) {
        return j / 100000 >= j2 / 100000;
    }

    public final long getMinimumVersionCode() {
        long j = this.mMinimumVersionCode;
        if (j > 0) {
            return j;
        }
        long j2 = -1;
        for (WebViewProviderInfo webViewProviderInfo : this.mSystemInterface.getWebViewPackages()) {
            if (webViewProviderInfo.availableByDefault) {
                try {
                    long factoryPackageVersion = this.mSystemInterface.getFactoryPackageVersion(webViewProviderInfo.packageName);
                    if (j2 < 0 || factoryPackageVersion < j2) {
                        j2 = factoryPackageVersion;
                    }
                } catch (PackageManager.NameNotFoundException unused) {
                }
            }
        }
        this.mMinimumVersionCode = j2;
        return j2;
    }

    public static boolean providerHasValidSignature(WebViewProviderInfo webViewProviderInfo, PackageInfo packageInfo, SystemInterface systemInterface) {
        if (systemInterface.systemIsDebuggable() || packageInfo.applicationInfo.isSystemApp()) {
            return true;
        }
        if (packageInfo.signatures.length != 1) {
            return false;
        }
        for (Signature signature : webViewProviderInfo.signatures) {
            if (signature.equals(packageInfo.signatures[0])) {
                return true;
            }
        }
        return false;
    }

    public static WebViewProviderInfo getFallbackProvider(WebViewProviderInfo[] webViewProviderInfoArr) {
        for (WebViewProviderInfo webViewProviderInfo : webViewProviderInfoArr) {
            if (webViewProviderInfo.isFallback) {
                return webViewProviderInfo;
            }
        }
        return null;
    }

    public boolean isMultiProcessEnabled() {
        int multiProcessSetting = this.mSystemInterface.getMultiProcessSetting(this.mContext);
        return this.mSystemInterface.isMultiProcessDefaultEnabled() ? multiProcessSetting > Integer.MIN_VALUE : multiProcessSetting >= Integer.MAX_VALUE;
    }

    public void enableMultiProcess(boolean z) {
        PackageInfo currentWebViewPackage = getCurrentWebViewPackage();
        this.mSystemInterface.setMultiProcessSetting(this.mContext, z ? Integer.MAX_VALUE : Integer.MIN_VALUE);
        this.mSystemInterface.notifyZygote(z);
        if (currentWebViewPackage != null) {
            this.mSystemInterface.killPackageDependents(currentWebViewPackage.packageName);
        }
    }

    public void dumpState(PrintWriter printWriter) {
        printWriter.println("Current WebView Update Service state");
        printWriter.println(String.format("  Multiprocess enabled: %b", Boolean.valueOf(isMultiProcessEnabled())));
        synchronized (this.mLock) {
            PackageInfo packageInfo = this.mCurrentWebViewPackage;
            if (packageInfo == null) {
                printWriter.println("  Current WebView package is null");
            } else {
                printWriter.println(String.format("  Current WebView package (name, version): (%s, %s)", packageInfo.packageName, packageInfo.versionName));
            }
            printWriter.println(String.format("  Minimum targetSdkVersion: %d", 33));
            printWriter.println(String.format("  Minimum WebView version code: %d", Long.valueOf(this.mMinimumVersionCode)));
            printWriter.println(String.format("  Number of relros started: %d", Integer.valueOf(this.mNumRelroCreationsStarted)));
            printWriter.println(String.format("  Number of relros finished: %d", Integer.valueOf(this.mNumRelroCreationsFinished)));
            printWriter.println(String.format("  WebView package dirty: %b", Boolean.valueOf(this.mWebViewPackageDirty)));
            printWriter.println(String.format("  Any WebView package installed: %b", Boolean.valueOf(this.mAnyWebViewInstalled)));
            try {
                PackageInfo findPreferredWebViewPackage = findPreferredWebViewPackage();
                printWriter.println(String.format("  Preferred WebView package (name, version): (%s, %s)", findPreferredWebViewPackage.packageName, findPreferredWebViewPackage.versionName));
            } catch (WebViewPackageMissingException unused) {
                printWriter.println(String.format("  Preferred WebView package: none", new Object[0]));
            }
            dumpAllPackageInformationLocked(printWriter);
        }
    }

    public final void dumpAllPackageInformationLocked(PrintWriter printWriter) {
        WebViewProviderInfo[] webViewPackages = this.mSystemInterface.getWebViewPackages();
        printWriter.println("  WebView packages:");
        for (WebViewProviderInfo webViewProviderInfo : webViewPackages) {
            PackageInfo packageInfo = ((UserPackage) this.mSystemInterface.getPackageInfoForProviderAllUsers(this.mContext, webViewProviderInfo).get(0)).getPackageInfo();
            if (packageInfo == null) {
                printWriter.println(String.format("    %s is NOT installed.", webViewProviderInfo.packageName));
            } else {
                int validityResult = validityResult(webViewProviderInfo, packageInfo);
                String format = String.format("versionName: %s, versionCode: %d, targetSdkVersion: %d", packageInfo.versionName, Long.valueOf(packageInfo.getLongVersionCode()), Integer.valueOf(packageInfo.applicationInfo.targetSdkVersion));
                if (validityResult == 0) {
                    boolean isInstalledAndEnabledForAllUsers = isInstalledAndEnabledForAllUsers(this.mSystemInterface.getPackageInfoForProviderAllUsers(this.mContext, webViewProviderInfo));
                    Object[] objArr = new Object[3];
                    objArr[0] = packageInfo.packageName;
                    objArr[1] = format;
                    objArr[2] = isInstalledAndEnabledForAllUsers ? "" : "NOT";
                    printWriter.println(String.format("    Valid package %s (%s) is %s installed/enabled for all users", objArr));
                } else {
                    printWriter.println(String.format("    Invalid package %s (%s), reason: %s", packageInfo.packageName, format, getInvalidityReason(validityResult)));
                }
            }
        }
    }
}
