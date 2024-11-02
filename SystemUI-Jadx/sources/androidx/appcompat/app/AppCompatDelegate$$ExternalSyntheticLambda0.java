package androidx.appcompat.app;

import android.content.Context;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public final /* synthetic */ class AppCompatDelegate$$ExternalSyntheticLambda0 implements Runnable {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ Context f$0;

    public /* synthetic */ AppCompatDelegate$$ExternalSyntheticLambda0(Context context, int i) {
        this.$r8$classId = i;
        this.f$0 = context;
    }

    /* JADX WARN: Code restructure failed: missing block: B:23:0x0077, code lost:
    
        if (r5 != null) goto L61;
     */
    /* JADX WARN: Code restructure failed: missing block: B:32:0x0083, code lost:
    
        r5.close();
     */
    /* JADX WARN: Code restructure failed: missing block: B:53:0x0081, code lost:
    
        if (r5 == null) goto L36;
     */
    /* JADX WARN: Removed duplicated region for block: B:29:0x00b2  */
    @Override // java.lang.Runnable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final void run() {
        /*
            r11 = this;
            int r0 = r11.$r8$classId
            switch(r0) {
                case 0: goto L7;
                default: goto L5;
            }
        L5:
            goto Lcb
        L7:
            android.content.Context r11 = r11.f$0
            android.content.ComponentName r0 = new android.content.ComponentName
            java.lang.String r1 = "androidx.appcompat.app.AppLocalesMetadataHolderService"
            r0.<init>(r11, r1)
            android.content.pm.PackageManager r1 = r11.getPackageManager()
            int r1 = r1.getComponentEnabledSetting(r0)
            r2 = 1
            if (r1 == r2) goto Lc8
            androidx.appcompat.app.AppCompatDelegate.sAppContext = r11
            java.lang.Object r1 = androidx.appcompat.app.AppCompatDelegate.getLocaleManagerForApplication()
            if (r1 == 0) goto L2e
            android.app.LocaleManager r1 = (android.app.LocaleManager) r1
            android.os.LocaleList r1 = r1.getApplicationLocales()
            androidx.core.os.LocaleListCompat r1 = androidx.core.os.LocaleListCompat.wrap(r1)
            goto L30
        L2e:
            androidx.core.os.LocaleListCompat r1 = androidx.core.os.LocaleListCompat.sEmptyLocaleList
        L30:
            androidx.core.os.LocaleListInterface r1 = r1.mImpl
            boolean r1 = r1.isEmpty()
            if (r1 == 0) goto Lc1
            java.lang.String r1 = "androidx.appcompat.app.AppCompatDelegate.application_locales_record_file"
            java.lang.String r3 = "AppLocalesStorageHelper"
            java.lang.String r4 = ""
            java.io.FileInputStream r5 = r11.openFileInput(r1)     // Catch: java.io.FileNotFoundException -> La0
            org.xmlpull.v1.XmlPullParser r6 = android.util.Xml.newPullParser()     // Catch: java.lang.Throwable -> L7a java.lang.Throwable -> L7c
            java.lang.String r7 = "UTF-8"
            r6.setInput(r5, r7)     // Catch: java.lang.Throwable -> L7a java.lang.Throwable -> L7c
            int r7 = r6.getDepth()     // Catch: java.lang.Throwable -> L7a java.lang.Throwable -> L7c
        L4f:
            int r8 = r6.next()     // Catch: java.lang.Throwable -> L7a java.lang.Throwable -> L7c
            if (r8 == r2) goto L77
            r9 = 3
            if (r8 != r9) goto L5e
            int r10 = r6.getDepth()     // Catch: java.lang.Throwable -> L7a java.lang.Throwable -> L7c
            if (r10 <= r7) goto L77
        L5e:
            if (r8 == r9) goto L4f
            r9 = 4
            if (r8 != r9) goto L64
            goto L4f
        L64:
            java.lang.String r8 = r6.getName()     // Catch: java.lang.Throwable -> L7a java.lang.Throwable -> L7c
            java.lang.String r9 = "locales"
            boolean r8 = r8.equals(r9)     // Catch: java.lang.Throwable -> L7a java.lang.Throwable -> L7c
            if (r8 == 0) goto L4f
            java.lang.String r7 = "application_locales"
            r8 = 0
            java.lang.String r4 = r6.getAttributeValue(r8, r7)     // Catch: java.lang.Throwable -> L7a java.lang.Throwable -> L7c
        L77:
            if (r5 == 0) goto L86
            goto L83
        L7a:
            r11 = move-exception
            goto L9a
        L7c:
            java.lang.String r6 = "Reading app Locales : Unable to parse through file :androidx.appcompat.app.AppCompatDelegate.application_locales_record_file"
            android.util.Log.w(r3, r6)     // Catch: java.lang.Throwable -> L7a
            if (r5 == 0) goto L86
        L83:
            r5.close()     // Catch: java.io.IOException -> L86
        L86:
            boolean r5 = r4.isEmpty()
            if (r5 != 0) goto L96
            java.lang.String r1 = "Reading app Locales : Locales read from file: androidx.appcompat.app.AppCompatDelegate.application_locales_record_file , appLocales: "
            java.lang.String r1 = r1.concat(r4)
            android.util.Log.d(r3, r1)
            goto La5
        L96:
            r11.deleteFile(r1)
            goto La5
        L9a:
            if (r5 == 0) goto L9f
            r5.close()     // Catch: java.io.IOException -> L9f
        L9f:
            throw r11
        La0:
            java.lang.String r1 = "Reading app Locales : Locales record file not found: androidx.appcompat.app.AppCompatDelegate.application_locales_record_file"
            android.util.Log.w(r3, r1)
        La5:
            androidx.core.os.LocaleListCompat r1 = androidx.core.os.LocaleListCompat.forLanguageTags(r4)
            java.util.Objects.requireNonNull(r1)
            java.lang.Object r3 = androidx.appcompat.app.AppCompatDelegate.getLocaleManagerForApplication()
            if (r3 == 0) goto Lc1
            androidx.core.os.LocaleListInterface r1 = r1.mImpl
            java.lang.String r1 = r1.toLanguageTags()
            android.os.LocaleList r1 = android.os.LocaleList.forLanguageTags(r1)
            android.app.LocaleManager r3 = (android.app.LocaleManager) r3
            r3.setApplicationLocales(r1)
        Lc1:
            android.content.pm.PackageManager r11 = r11.getPackageManager()
            r11.setComponentEnabledSetting(r0, r2, r2)
        Lc8:
            androidx.appcompat.app.AppCompatDelegate.sIsFrameworkSyncChecked = r2
            return
        Lcb:
            android.content.Context r11 = r11.f$0
            boolean r0 = androidx.appcompat.app.AppCompatDelegate.isAutoStorageOptedIn(r11)
            if (r0 != 0) goto Ld4
            goto Le3
        Ld4:
            boolean r0 = androidx.appcompat.app.AppCompatDelegate.sIsFrameworkSyncChecked
            if (r0 != 0) goto Le3
            androidx.appcompat.app.AppLocalesStorageHelper$SerialExecutor r0 = androidx.appcompat.app.AppCompatDelegate.sSerialExecutorForLocalesStorage
            androidx.appcompat.app.AppCompatDelegate$$ExternalSyntheticLambda0 r1 = new androidx.appcompat.app.AppCompatDelegate$$ExternalSyntheticLambda0
            r2 = 0
            r1.<init>(r11, r2)
            r0.execute(r1)
        Le3:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.appcompat.app.AppCompatDelegate$$ExternalSyntheticLambda0.run():void");
    }
}
