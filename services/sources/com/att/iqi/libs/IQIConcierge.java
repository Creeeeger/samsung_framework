package com.att.iqi.libs;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageManager;
import android.telephony.SubscriptionInfo;
import android.telephony.SubscriptionManager;
import android.text.TextUtils;
import android.util.Pair;
import com.att.iqi.lib.IQIManager;
import com.att.iqi.libs.PreferenceStore;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.InputStream;
import java.nio.file.Files;
import java.nio.file.LinkOption;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.nio.file.StandardCopyOption;
import java.nio.file.attribute.PosixFilePermission;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;
import org.xmlpull.v1.XmlPullParserFactory;

/* loaded from: classes3.dex */
public final class IQIConcierge {
    private static final String ACTION_MCC_MNC_VALIDATION_STATE_CHANGED = "com.att.iqi.action.ACTION_MCC_MNC_VALIDATION_STATE_CHANGED";
    private static final String IQI_MCCMNC_RESOURCE = "/mccmnc.xml";
    private static final String PERMISSION_MODIFY_MNC_MCC_VALIDATION_STATE = "com.att.iqi.permission.MODIFY_MNC_MCC_VALIDATION_STATE";
    private static final String SYSTEM_EXT_NATIVE_LIBRARY_PATH = "/system_ext/lib64/";
    private static final String SYSTEM_NATIVE_LIBRARY_PATH = "/system/lib64/";
    private static final String VENDOR_NATIVE_LIBRARY_PATH = "/vendor/lib64/";
    private static final String VERSION = "10.12-oahu";
    private static IQIConcierge sInstance = null;
    private static boolean sMccMncValidationDisabled = false;
    private static boolean sSimDisabled = true;
    private static final String sXmlAttributeMccName = "mcc";
    private static final String sXmlAttributeMncName = "mnc";
    private static final String sXmlTagName = "carrier";
    private final BroadcastReceiver mMncMccValidationStateChangedReceiver;
    private static final String BRIDGE_LIBRARY_NAME = System.mapLibraryName("iqi_bridge");
    private static final ArrayList sMCCMNCs = createNetIdPairList();

    public static String getVersion() {
        return VERSION;
    }

    private IQIConcierge(Context context) {
        BroadcastReceiver broadcastReceiver = new BroadcastReceiver() { // from class: com.att.iqi.libs.IQIConcierge.1
            @Override // android.content.BroadcastReceiver
            public void onReceive(Context context2, Intent intent) {
                if (TextUtils.equals(intent.getAction(), IQIConcierge.ACTION_MCC_MNC_VALIDATION_STATE_CHANGED)) {
                    PreferenceStore.getInstance().setBoolean(PreferenceStore.PREF_DISABLE_MCC_MNC_VALIDATION, intent.getBooleanExtra("disabled", false));
                }
            }
        };
        this.mMncMccValidationStateChangedReceiver = broadcastReceiver;
        if (LogUtil.canLog()) {
            LogUtil.loge("IQI Concierge version: 10.12-oahu");
        }
        IQIManager.getInstance();
        context.registerReceiver(broadcastReceiver, new IntentFilter(ACTION_MCC_MNC_VALIDATION_STATE_CHANGED), PERMISSION_MODIFY_MNC_MCC_VALIDATION_STATE, WorkerThread.getHandler());
        PreferenceStore.getInstance().registerPreferenceChangeListener(new PreferenceStore.PreferenceChangeListener() { // from class: com.att.iqi.libs.IQIConcierge$$ExternalSyntheticLambda0
            @Override // com.att.iqi.libs.PreferenceStore.PreferenceChangeListener
            public final void onPreferenceChanged(String str) {
                IQIConcierge.this.lambda$new$0(str);
            }
        });
        updateMccMncValidationStateFromPrefStore();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$new$0(String str) {
        if (TextUtils.equals(str, PreferenceStore.PREF_DISABLE_MCC_MNC_VALIDATION)) {
            updateMccMncValidationStateFromPrefStore();
        }
    }

    private void updateMccMncValidationStateFromPrefStore() {
        sMccMncValidationDisabled = PreferenceStore.getInstance().getBoolean(PreferenceStore.PREF_DISABLE_MCC_MNC_VALIDATION, false);
    }

    public static void init(Context context) {
        if (sInstance == null) {
            sInstance = new IQIConcierge(context);
        }
    }

    public static boolean isServiceBindingAllowed() {
        int integer = PreferenceStore.getInstance().getInteger(PreferenceStore.PREF_SERVICE_STATE, 1);
        boolean z = (sMccMncValidationDisabled || !sSimDisabled) && integer == 1;
        if (LogUtil.canLog()) {
            StringBuilder sb = new StringBuilder();
            sb.append("isServiceBindingAllowed? ");
            sb.append(z ? "YES" : "NO");
            sb.append(" [sMccMncValidationDisabled = ");
            sb.append(sMccMncValidationDisabled);
            sb.append(" sSimDisabled = ");
            sb.append(sSimDisabled);
            sb.append(" serviceState = ");
            sb.append(integer);
            sb.append("]");
            LogUtil.logd(sb.toString());
        }
        return z;
    }

    public static boolean updateSubscriptions(SubscriptionManager subscriptionManager) {
        if (subscriptionManager != null) {
            List<SubscriptionInfo> activeSubscriptionInfoList = subscriptionManager.getActiveSubscriptionInfoList();
            boolean z = true;
            if (activeSubscriptionInfoList != null && !activeSubscriptionInfoList.isEmpty()) {
                Iterator<SubscriptionInfo> it = activeSubscriptionInfoList.iterator();
                while (true) {
                    if (!it.hasNext()) {
                        z = false;
                        break;
                    }
                    if (!matchesNetId(it.next())) {
                        if (LogUtil.canLog()) {
                            LogUtil.logd("Non-AT&T SIM found");
                        }
                    }
                }
            } else if (LogUtil.canLog()) {
                LogUtil.logd("updateSubscriptions - no active subscriptions");
            }
            sSimDisabled = z;
        }
        return isServiceBindingAllowed();
    }

    public static void loadBridgeLibrary(Context context, String str) {
        Path vendorLibraryDirPath = getVendorLibraryDirPath();
        if (vendorLibraryDirPath != null) {
            if (LogUtil.canLog()) {
                LogUtil.logd("storing packageLibrary [" + vendorLibraryDirPath + "]");
            }
            PreferenceStore.getInstance().setString(PreferenceStore.PREF_BRIDGE_LIBRARY_PATH, vendorLibraryDirPath.toString());
            return;
        }
        String nativeLibraryDirPath = getNativeLibraryDirPath(context, str);
        if (LogUtil.canLog()) {
            LogUtil.logd("Native library dir path: " + nativeLibraryDirPath);
        }
        if (nativeLibraryDirPath != null) {
            copyBridgeLibrary(nativeLibraryDirPath);
        }
    }

    private static Path getVendorLibraryDirPath() {
        String str = BRIDGE_LIBRARY_NAME;
        Path path = Paths.get(VENDOR_NATIVE_LIBRARY_PATH, str);
        Path path2 = Paths.get(SYSTEM_NATIVE_LIBRARY_PATH, str);
        Path path3 = Paths.get(SYSTEM_EXT_NATIVE_LIBRARY_PATH, str);
        if (Files.exists(path, new LinkOption[0])) {
            return path;
        }
        if (Files.exists(path2, new LinkOption[0])) {
            return path2;
        }
        if (Files.exists(path3, new LinkOption[0])) {
            return path3;
        }
        return null;
    }

    private static String getNativeLibraryDirPath(Context context, String str) {
        try {
            ApplicationInfo applicationInfo = context.getPackageManager().getPackageInfo(str, 1024).applicationInfo;
            if (applicationInfo != null) {
                return applicationInfo.nativeLibraryDir;
            }
            return null;
        } catch (PackageManager.NameNotFoundException unused) {
            return null;
        }
    }

    private static void copyBridgeLibrary(String str) {
        Path path = Paths.get(str, BRIDGE_LIBRARY_NAME);
        String string = PreferenceStore.getInstance().getString(PreferenceStore.PREF_BRIDGE_LIBRARY_PATH, "");
        if (string.isEmpty()) {
            if (Files.exists(path, new LinkOption[0])) {
                if (LogUtil.canLog()) {
                    LogUtil.logd("storing packageLibrary [" + path + "]");
                }
                PreferenceStore.getInstance().setString(PreferenceStore.PREF_BRIDGE_LIBRARY_PATH, path.toString());
            }
            if (LogUtil.canLog()) {
                LogUtil.logd("File not found in: " + path.toString());
                return;
            }
            return;
        }
        Path path2 = Paths.get(string, new String[0]);
        if (LogUtil.canLog()) {
            LogUtil.logd("packageLibrary [" + path + "] systemLibrary [" + path2 + "]");
        }
        if (shouldCopy(path, path2)) {
            if (LogUtil.canLog()) {
                LogUtil.logd("Performing copy...");
            }
            try {
                Files.copy(path2, path, StandardCopyOption.REPLACE_EXISTING, StandardCopyOption.COPY_ATTRIBUTES);
                Files.setPosixFilePermissions(path, new HashSet(Arrays.asList(PosixFilePermission.OTHERS_EXECUTE, PosixFilePermission.OTHERS_READ, PosixFilePermission.GROUP_EXECUTE, PosixFilePermission.GROUP_READ, PosixFilePermission.OWNER_EXECUTE, PosixFilePermission.OWNER_READ, PosixFilePermission.OWNER_WRITE)));
                if (LogUtil.canLog()) {
                    LogUtil.logd("Copy completed");
                    return;
                }
                return;
            } catch (Exception e) {
                LogUtil.loge(e.toString(), e);
                return;
            }
        }
        if (LogUtil.canLog()) {
            LogUtil.logd("No copy needed");
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:15:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:16:0x002d A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:7:0x004c  */
    /* JADX WARN: Removed duplicated region for block: B:9:0x007f  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private static boolean shouldCopy(java.nio.file.Path r8, java.nio.file.Path r9) {
        /*
            r0 = 0
            java.nio.file.LinkOption[] r1 = new java.nio.file.LinkOption[r0]
            boolean r1 = java.nio.file.Files.exists(r8, r1)
            java.nio.file.LinkOption[] r2 = new java.nio.file.LinkOption[r0]
            boolean r2 = java.nio.file.Files.exists(r9, r2)
            r3 = -1
            if (r1 == 0) goto L2a
            java.lang.Class<java.nio.file.attribute.BasicFileAttributes> r5 = java.nio.file.attribute.BasicFileAttributes.class
            java.nio.file.LinkOption[] r6 = new java.nio.file.LinkOption[r0]     // Catch: java.io.IOException -> L22
            java.nio.file.attribute.BasicFileAttributes r8 = java.nio.file.Files.readAttributes(r8, r5, r6)     // Catch: java.io.IOException -> L22
            java.nio.file.attribute.FileTime r8 = r8.creationTime()     // Catch: java.io.IOException -> L22
            long r5 = r8.toMillis()     // Catch: java.io.IOException -> L22
            goto L2b
        L22:
            r8 = move-exception
            java.lang.String r5 = r8.toString()
            com.att.iqi.libs.LogUtil.loge(r5, r8)
        L2a:
            r5 = r3
        L2b:
            if (r2 == 0) goto L46
            java.lang.Class<java.nio.file.attribute.BasicFileAttributes> r8 = java.nio.file.attribute.BasicFileAttributes.class
            java.nio.file.LinkOption[] r7 = new java.nio.file.LinkOption[r0]     // Catch: java.io.IOException -> L3e
            java.nio.file.attribute.BasicFileAttributes r8 = java.nio.file.Files.readAttributes(r9, r8, r7)     // Catch: java.io.IOException -> L3e
            java.nio.file.attribute.FileTime r8 = r8.creationTime()     // Catch: java.io.IOException -> L3e
            long r3 = r8.toMillis()     // Catch: java.io.IOException -> L3e
            goto L46
        L3e:
            r8 = move-exception
            java.lang.String r9 = r8.toString()
            com.att.iqi.libs.LogUtil.loge(r9, r8)
        L46:
            boolean r8 = com.att.iqi.libs.LogUtil.canLog()
            if (r8 == 0) goto L7d
            java.lang.StringBuilder r8 = new java.lang.StringBuilder
            r8.<init>()
            java.lang.String r9 = "appLibraryExists ["
            r8.append(r9)
            r8.append(r1)
            java.lang.String r9 = "] systemLibraryExists ["
            r8.append(r9)
            r8.append(r2)
            java.lang.String r9 = "] appLibraryCreationDate ["
            r8.append(r9)
            r8.append(r5)
            java.lang.String r9 = "] systemLibraryCreationDate ["
            r8.append(r9)
            r8.append(r3)
            java.lang.String r9 = "]"
            r8.append(r9)
            java.lang.String r8 = r8.toString()
            com.att.iqi.libs.LogUtil.logd(r8)
        L7d:
            if (r2 == 0) goto L86
            if (r1 == 0) goto L85
            int r8 = (r3 > r5 ? 1 : (r3 == r5 ? 0 : -1))
            if (r8 <= 0) goto L86
        L85:
            r0 = 1
        L86:
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.att.iqi.libs.IQIConcierge.shouldCopy(java.nio.file.Path, java.nio.file.Path):boolean");
    }

    private static ArrayList createNetIdPairList() {
        HashSet hashSet = new HashSet();
        try {
            XmlPullParser newPullParser = XmlPullParserFactory.newInstance().newPullParser();
            InputStream resourceAsStream = IQIConcierge.class.getResourceAsStream(IQI_MCCMNC_RESOURCE);
            newPullParser.setInput(resourceAsStream, null);
            parseXmlConfig(newPullParser, hashSet);
            resourceAsStream.close();
        } catch (FileNotFoundException unused) {
            if (LogUtil.canLog()) {
                LogUtil.loge("IQI XML resource not found");
            }
        } catch (IOException unused2) {
            if (LogUtil.canLog()) {
                LogUtil.loge("XML resource reader failure");
            }
        } catch (XmlPullParserException unused3) {
            if (LogUtil.canLog()) {
                LogUtil.loge("failed to start XML parser");
            }
        }
        return new ArrayList(hashSet);
    }

    private static void parseXmlConfig(XmlPullParser xmlPullParser, HashSet hashSet) {
        String name;
        int eventType = xmlPullParser.getEventType();
        while (eventType != 1) {
            if (eventType == 3 && (name = xmlPullParser.getName()) != null && name.equalsIgnoreCase(sXmlTagName)) {
                Pair pair = new Pair(xmlPullParser.getAttributeValue(null, sXmlAttributeMccName), xmlPullParser.getAttributeValue(null, sXmlAttributeMncName));
                if (LogUtil.canLog()) {
                    LogUtil.logd("read tag in XML: " + ((String) pair.first) + " " + ((String) pair.second));
                }
                hashSet.add(pair);
            }
            eventType = xmlPullParser.next();
        }
    }

    private static boolean matchesNetId(SubscriptionInfo subscriptionInfo) {
        String mccString = subscriptionInfo.getMccString();
        String mncString = subscriptionInfo.getMncString();
        if (LogUtil.canLog()) {
            LogUtil.logd("sub netId " + mccString + " " + mncString);
        }
        Iterator it = sMCCMNCs.iterator();
        while (it.hasNext()) {
            Pair pair = (Pair) it.next();
            if (LogUtil.canLog()) {
                LogUtil.logd("config netId " + ((String) pair.first) + " " + ((String) pair.second));
            }
            if (((String) pair.second).equals(mncString) && ((String) pair.first).equals(mccString)) {
                return true;
            }
        }
        return sMCCMNCs.isEmpty();
    }
}
