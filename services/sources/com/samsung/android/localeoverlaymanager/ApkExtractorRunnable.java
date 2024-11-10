package com.samsung.android.localeoverlaymanager;

import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageManager;
import android.content.res.ApkAssets;
import android.content.res.AssetManager;
import android.os.FileUtils;
import android.util.Log;
import java.io.File;
import java.io.IOException;

/* loaded from: classes2.dex */
public class ApkExtractorRunnable implements Runnable {
    public static final String TAG = ApkExtractorRunnable.class.getSimpleName();
    public CompressedAssetCopier mAssetCopier;
    public final ApkExtractionTask mExtractionTask;

    public ApkExtractorRunnable(ApkExtractionTask apkExtractionTask, CompressedAssetCopier compressedAssetCopier) {
        this.mExtractionTask = apkExtractionTask;
        this.mAssetCopier = compressedAssetCopier;
    }

    public ApkExtractionTask getApkExtractionTask() {
        return this.mExtractionTask;
    }

    @Override // java.lang.Runnable
    public void run() {
        String str = TAG;
        Log.i(str, "run() called.  mExtractionTask: " + this.mExtractionTask);
        Context context = this.mExtractionTask.getContextRef() != null ? (Context) this.mExtractionTask.getContextRef().get() : null;
        if (context != null) {
            try {
                String targetPackage = this.mExtractionTask.getTargetPackage();
                ApplicationInfo applicationInfo = context.getPackageManager().getApplicationInfo(targetPackage, PackageManager.ApplicationInfoFlags.of(0L));
                if (applicationInfo == null) {
                    Log.d(str, "aInfo is null : " + targetPackage);
                    this.mExtractionTask.onTaskFailed();
                    return;
                }
                String str2 = applicationInfo.sourceDir;
                Log.i(str, "run() called.  Path : " + str2);
                ApkAssets loadFromPath = ApkAssets.loadFromPath(str2);
                AssetManager.Builder builder = new AssetManager.Builder();
                builder.addApkAssets(loadFromPath);
                doCopy(builder.build(), this.mExtractionTask.getLocaleLanguages(), this.mExtractionTask.shouldReplace());
            } catch (PackageManager.NameNotFoundException | IOException e) {
                Log.e(TAG, "Package not found " + e.getMessage());
                this.mExtractionTask.onTaskFailed();
                return;
            }
        }
        this.mExtractionTask.onTaskComplete();
    }

    public final void createLocaleOverlayDir() {
        File file = new File("/data/overlays/current_locale_apks/files/");
        if (file.exists()) {
            return;
        }
        if (!file.mkdirs()) {
            Log.e(TAG, "createLocaleOverlayDir: Unable to create Dir - " + file);
            return;
        }
        FileUtils.setPermissions(file, 509, -1, 1000);
    }

    /* JADX WARN: Removed duplicated region for block: B:19:0x0085  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final void doCopy(android.content.res.AssetManager r16, java.util.Set r17, boolean r18) {
        /*
            Method dump skipped, instructions count: 419
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.samsung.android.localeoverlaymanager.ApkExtractorRunnable.doCopy(android.content.res.AssetManager, java.util.Set, boolean):void");
    }
}
