package androidx.appcompat.app;

import android.app.LocaleManager;
import android.content.ComponentName;
import android.content.Context;
import android.content.pm.PackageManager;
import android.content.res.Configuration;
import android.os.Bundle;
import android.util.Log;
import android.view.MenuInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.collection.ArraySet;
import androidx.collection.IndexBasedArrayIterator;
import androidx.core.os.LocaleListCompat;
import java.lang.ref.WeakReference;
import java.util.Iterator;

/* loaded from: classes.dex */
public abstract class AppCompatDelegate {
    static AppLocalesStorageHelper$SerialExecutor sSerialExecutorForLocalesStorage = new AppLocalesStorageHelper$SerialExecutor(new AppLocalesStorageHelper$ThreadPerTaskExecutor());
    private static int sDefaultNightMode = -100;
    private static Boolean sIsAutoStoreLocalesOptedIn = null;
    private static boolean sIsFrameworkSyncChecked = false;
    private static final ArraySet<WeakReference<AppCompatDelegate>> sActivityDelegates = new ArraySet<>();
    private static final Object sActivityDelegatesLock = new Object();
    private static final Object sAppLocalesStorageSyncLock = new Object();

    /* JADX WARN: Code restructure failed: missing block: B:17:0x0059, code lost:
    
        if (r4 != null) goto L47;
     */
    /* JADX WARN: Code restructure failed: missing block: B:25:0x0067, code lost:
    
        r4.close();
     */
    /* JADX WARN: Code restructure failed: missing block: B:36:0x0052, code lost:
    
        r3 = r5.getAttributeValue(null, "application_locales");
     */
    /* JADX WARN: Code restructure failed: missing block: B:54:0x0065, code lost:
    
        if (r4 == null) goto L29;
     */
    /* JADX WARN: Removed duplicated region for block: B:23:0x0083  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static void $r8$lambda$F36VbET_i_Y_e98J3kKLOS37EAQ(android.content.Context r10) {
        /*
            android.content.ComponentName r0 = new android.content.ComponentName
            java.lang.String r1 = "androidx.appcompat.app.AppLocalesMetadataHolderService"
            r0.<init>(r10, r1)
            android.content.pm.PackageManager r1 = r10.getPackageManager()
            int r1 = r1.getComponentEnabledSetting(r0)
            r2 = 1
            if (r1 == r2) goto L93
            androidx.core.os.LocaleListCompat r1 = getApplicationLocales()
            boolean r1 = r1.isEmpty()
            if (r1 == 0) goto L8c
            java.lang.String r1 = "androidx.appcompat.app.AppCompatDelegate.application_locales_record_file"
            java.lang.String r3 = ""
            java.io.FileInputStream r4 = r10.openFileInput(r1)     // Catch: java.io.FileNotFoundException -> L7b
            org.xmlpull.v1.XmlPullParser r5 = android.util.Xml.newPullParser()     // Catch: java.lang.Throwable -> L5c java.lang.Throwable -> L5e
            java.lang.String r6 = "UTF-8"
            r5.setInput(r4, r6)     // Catch: java.lang.Throwable -> L5c java.lang.Throwable -> L5e
            int r6 = r5.getDepth()     // Catch: java.lang.Throwable -> L5c java.lang.Throwable -> L5e
        L31:
            int r7 = r5.next()     // Catch: java.lang.Throwable -> L5c java.lang.Throwable -> L5e
            if (r7 == r2) goto L59
            r8 = 3
            if (r7 != r8) goto L40
            int r9 = r5.getDepth()     // Catch: java.lang.Throwable -> L5c java.lang.Throwable -> L5e
            if (r9 <= r6) goto L59
        L40:
            if (r7 == r8) goto L31
            r8 = 4
            if (r7 != r8) goto L46
            goto L31
        L46:
            java.lang.String r7 = r5.getName()     // Catch: java.lang.Throwable -> L5c java.lang.Throwable -> L5e
            java.lang.String r8 = "locales"
            boolean r7 = r7.equals(r8)     // Catch: java.lang.Throwable -> L5c java.lang.Throwable -> L5e
            if (r7 == 0) goto L31
            java.lang.String r6 = "application_locales"
            r7 = 0
            java.lang.String r3 = r5.getAttributeValue(r7, r6)     // Catch: java.lang.Throwable -> L5c java.lang.Throwable -> L5e
        L59:
            if (r4 == 0) goto L6a
            goto L67
        L5c:
            r10 = move-exception
            goto L75
        L5e:
            java.lang.String r5 = "AppLocalesStorageHelper"
            java.lang.String r6 = "Reading app Locales : Unable to parse through file :androidx.appcompat.app.AppCompatDelegate.application_locales_record_file"
            android.util.Log.w(r5, r6)     // Catch: java.lang.Throwable -> L5c
            if (r4 == 0) goto L6a
        L67:
            r4.close()     // Catch: java.io.IOException -> L6a
        L6a:
            boolean r4 = r3.isEmpty()
            if (r4 != 0) goto L71
            goto L7b
        L71:
            r10.deleteFile(r1)
            goto L7b
        L75:
            if (r4 == 0) goto L7a
            r4.close()     // Catch: java.io.IOException -> L7a
        L7a:
            throw r10
        L7b:
            java.lang.String r1 = "locale"
            java.lang.Object r1 = r10.getSystemService(r1)
            if (r1 == 0) goto L8c
            android.os.LocaleList r3 = android.os.LocaleList.forLanguageTags(r3)
            android.app.LocaleManager r1 = (android.app.LocaleManager) r1
            r1.setApplicationLocales(r3)
        L8c:
            android.content.pm.PackageManager r10 = r10.getPackageManager()
            r10.setComponentEnabledSetting(r0, r2, r2)
        L93:
            androidx.appcompat.app.AppCompatDelegate.sIsFrameworkSyncChecked = r2
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.appcompat.app.AppCompatDelegate.$r8$lambda$F36VbET_i_Y_e98J3kKLOS37EAQ(android.content.Context):void");
    }

    AppCompatDelegate() {
    }

    static void addActiveDelegate(AppCompatDelegate appCompatDelegate) {
        synchronized (sActivityDelegatesLock) {
            removeDelegateFromActives(appCompatDelegate);
            sActivityDelegates.add(new WeakReference<>(appCompatDelegate));
        }
    }

    public static LocaleListCompat getApplicationLocales() {
        Object obj;
        Context contextForDelegate;
        Iterator<WeakReference<AppCompatDelegate>> it = sActivityDelegates.iterator();
        while (true) {
            IndexBasedArrayIterator indexBasedArrayIterator = (IndexBasedArrayIterator) it;
            if (!indexBasedArrayIterator.hasNext()) {
                obj = null;
                break;
            }
            AppCompatDelegate appCompatDelegate = (AppCompatDelegate) ((WeakReference) indexBasedArrayIterator.next()).get();
            if (appCompatDelegate != null && (contextForDelegate = appCompatDelegate.getContextForDelegate()) != null) {
                obj = contextForDelegate.getSystemService("locale");
                break;
            }
        }
        return obj != null ? LocaleListCompat.wrap(((LocaleManager) obj).getApplicationLocales()) : LocaleListCompat.getEmptyLocaleList();
    }

    public static int getDefaultNightMode() {
        return sDefaultNightMode;
    }

    static boolean isAutoStorageOptedIn(Context context) {
        if (sIsAutoStoreLocalesOptedIn == null) {
            try {
                int i = AppLocalesMetadataHolderService.$r8$clinit;
                Bundle bundle = context.getPackageManager().getServiceInfo(new ComponentName(context, (Class<?>) AppLocalesMetadataHolderService.class), 640).metaData;
                if (bundle != null) {
                    sIsAutoStoreLocalesOptedIn = Boolean.valueOf(bundle.getBoolean("autoStoreLocales"));
                }
            } catch (PackageManager.NameNotFoundException unused) {
                Log.d("AppCompatDelegate", "Checking for metadata for AppLocalesMetadataHolderService : Service not found");
                sIsAutoStoreLocalesOptedIn = Boolean.FALSE;
            }
        }
        return sIsAutoStoreLocalesOptedIn.booleanValue();
    }

    static void removeActivityDelegate(AppCompatDelegate appCompatDelegate) {
        synchronized (sActivityDelegatesLock) {
            removeDelegateFromActives(appCompatDelegate);
        }
    }

    private static void removeDelegateFromActives(AppCompatDelegate appCompatDelegate) {
        synchronized (sActivityDelegatesLock) {
            Iterator<WeakReference<AppCompatDelegate>> it = sActivityDelegates.iterator();
            while (true) {
                IndexBasedArrayIterator indexBasedArrayIterator = (IndexBasedArrayIterator) it;
                if (indexBasedArrayIterator.hasNext()) {
                    AppCompatDelegate appCompatDelegate2 = (AppCompatDelegate) ((WeakReference) indexBasedArrayIterator.next()).get();
                    if (appCompatDelegate2 == appCompatDelegate || appCompatDelegate2 == null) {
                        indexBasedArrayIterator.remove();
                    }
                }
            }
        }
    }

    static void syncRequestedAndStoredLocales(final Context context) {
        if (isAutoStorageOptedIn(context) && !sIsFrameworkSyncChecked) {
            sSerialExecutorForLocalesStorage.execute(new Runnable() { // from class: androidx.appcompat.app.AppCompatDelegate$$ExternalSyntheticLambda0
                @Override // java.lang.Runnable
                public final void run() {
                    AppCompatDelegate.$r8$lambda$F36VbET_i_Y_e98J3kKLOS37EAQ(context);
                }
            });
        }
    }

    public abstract void addContentView(View view, ViewGroup.LayoutParams layoutParams);

    public abstract <T extends View> T findViewById(int i);

    public Context getContextForDelegate() {
        return null;
    }

    public int getLocalNightMode() {
        return -100;
    }

    public abstract MenuInflater getMenuInflater();

    public abstract WindowDecorActionBar getSupportActionBar();

    public abstract void installViewFactory();

    public abstract void invalidateOptionsMenu();

    public abstract void onConfigurationChanged(Configuration configuration);

    public abstract void onCreate();

    public abstract void onDestroy();

    public abstract void onPostCreate();

    public abstract void onPostResume();

    public abstract void onSaveInstanceState();

    public abstract void onStart();

    public abstract void onStop();

    public abstract boolean requestWindowFeature(int i);

    public abstract void setContentView(int i);

    public abstract void setContentView(View view);

    public abstract void setContentView(View view, ViewGroup.LayoutParams layoutParams);

    public abstract void setTitle(CharSequence charSequence);

    public Context attachBaseContext2(Context context) {
        return context;
    }

    public void setTheme(int i) {
    }
}
