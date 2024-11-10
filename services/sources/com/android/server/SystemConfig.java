package com.android.server;

import android.content.pm.FeatureInfo;
import android.os.Build;
import android.os.Environment;
import android.os.FileUtils;
import android.os.Process;
import android.os.SemSystemProperties;
import android.os.SystemProperties;
import android.os.VintfRuntimeInfo;
import android.permission.PermissionManager;
import android.text.TextUtils;
import android.util.ArrayMap;
import android.util.ArraySet;
import android.util.Slog;
import android.util.SparseArray;
import android.util.TimingsTraceLog;
import android.util.Xml;
import com.android.internal.util.ArrayUtils;
import com.android.internal.util.XmlUtils;
import com.android.modules.utils.build.UnboundedSdkLevel;
import com.android.server.pm.permission.PermissionAllowlist;
import java.io.BufferedReader;
import java.io.File;
import java.io.FileReader;
import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.LinkOption;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Locale;
import java.util.Map;
import java.util.Set;
import libcore.util.EmptyArray;
import org.xmlpull.v1.XmlPullParser;

/* loaded from: classes.dex */
public class SystemConfig {
    public static final ArrayMap EMPTY_PERMISSIONS = new ArrayMap();
    public static SystemConfig sInstance;
    public String mModulesInstallerPackageName;
    public String mOverlayConfigSignaturePackage;
    public int[] mGlobalGids = EmptyArray.INT;
    public final SparseArray mSystemPermissions = new SparseArray();
    public final ArrayList mSplitPermissions = new ArrayList();
    public final ArrayMap mSharedLibraries = new ArrayMap();
    public final ArrayMap mAvailableFeatures = new ArrayMap();
    public final ArraySet mUnavailableFeatures = new ArraySet();
    public final ArrayMap mPermissions = new ArrayMap();
    public final ArraySet mAllowInPowerSaveExceptIdle = new ArraySet();
    public final ArraySet mAllowInPowerSave = new ArraySet();
    public final ArraySet mAllowInDataUsageSave = new ArraySet();
    public final ArraySet mAllowUnthrottledLocation = new ArraySet();
    public final ArrayMap mAllowAdasSettings = new ArrayMap();
    public final ArrayMap mAllowIgnoreLocationSettings = new ArrayMap();
    public final ArraySet mAllowImplicitBroadcasts = new ArraySet();
    public final ArraySet mBgRestrictionExemption = new ArraySet();
    public final ArraySet mLinkedApps = new ArraySet();
    public final ArraySet mDefaultVrComponents = new ArraySet();
    public final ArraySet mBackupTransportWhitelist = new ArraySet();
    public final ArrayMap mPackageComponentEnabledState = new ArrayMap();
    public final ArraySet mHiddenApiPackageWhitelist = new ArraySet();
    public final ArraySet mDisabledUntilUsedPreinstalledCarrierApps = new ArraySet();
    public final ArrayMap mDisabledUntilUsedPreinstalledCarrierAssociatedApps = new ArrayMap();
    public final PermissionAllowlist mPermissionAllowlist = new PermissionAllowlist();
    public final ArrayMap mAllowedAssociations = new ArrayMap();
    public final ArraySet mBugreportWhitelistedPackages = new ArraySet();
    public final ArraySet mAppDataIsolationWhitelistedApps = new ArraySet();
    public ArrayMap mPackageToUserTypeWhitelist = new ArrayMap();
    public ArrayMap mPackageToUserTypeBlacklist = new ArrayMap();
    public final ArraySet mRollbackWhitelistedPackages = new ArraySet();
    public final ArraySet mAutomaticRollbackDenylistedPackages = new ArraySet();
    public final ArraySet mWhitelistedStagedInstallers = new ArraySet();
    public final ArrayMap mAllowedVendorApexes = new ArrayMap();
    public final Set mInstallConstraintsAllowlist = new ArraySet();
    public final ArrayMap mUpdateOwnersForSystemApps = new ArrayMap();
    public final SparseArray mDataUsageSystemUidPackages = new SparseArray();
    public final Set mInitialNonStoppedSystemPackages = new ArraySet();
    public final Set mRequiredSystemPackages = new ArraySet();
    public final ArrayMap mAppMetadataFilePaths = new ArrayMap();
    public Map mNamedActors = null;
    public boolean mAerSupported = false;

    public static boolean isAtLeastSdkLevel(String str) {
        try {
            return UnboundedSdkLevel.isAtLeast(str);
        } catch (IllegalArgumentException unused) {
            return false;
        }
    }

    public static boolean isAtMostSdkLevel(String str) {
        try {
            return UnboundedSdkLevel.isAtMost(str);
        } catch (IllegalArgumentException unused) {
            return true;
        }
    }

    /* loaded from: classes.dex */
    public final class SharedLibraryEntry {
        public final boolean canBeSafelyIgnored;
        public final String[] dependencies;
        public final String filename;
        public final boolean isNative;
        public final String name;
        public final String onBootclasspathBefore;
        public final String onBootclasspathSince;

        public SharedLibraryEntry(String str, String str2, String[] strArr, boolean z) {
            this(str, str2, strArr, null, null, z);
        }

        public SharedLibraryEntry(String str, String str2, String[] strArr, String str3, String str4) {
            this(str, str2, strArr, str3, str4, false);
        }

        public SharedLibraryEntry(String str, String str2, String[] strArr, String str3, String str4, boolean z) {
            this.name = str;
            this.filename = str2;
            this.dependencies = strArr;
            this.onBootclasspathSince = str3;
            this.onBootclasspathBefore = str4;
            this.isNative = z;
            this.canBeSafelyIgnored = (str3 != null && SystemConfig.isAtLeastSdkLevel(str3)) || !(str4 == null || SystemConfig.isAtLeastSdkLevel(str4));
        }
    }

    /* loaded from: classes.dex */
    public final class PermissionEntry {
        public int[] gids;
        public final String name;
        public boolean perUser;

        public PermissionEntry(String str, boolean z) {
            this.name = str;
            this.perUser = z;
        }
    }

    public static SystemConfig getInstance() {
        SystemConfig systemConfig;
        if (!isSystemProcess()) {
            Slog.wtf("SystemConfig", "SystemConfig is being accessed by a process other than system_server.");
        }
        synchronized (SystemConfig.class) {
            if (sInstance == null) {
                sInstance = new SystemConfig();
            }
            systemConfig = sInstance;
        }
        return systemConfig;
    }

    public int[] getGlobalGids() {
        return this.mGlobalGids;
    }

    public SparseArray getSystemPermissions() {
        return this.mSystemPermissions;
    }

    public ArrayList getSplitPermissions() {
        return this.mSplitPermissions;
    }

    public ArrayMap getSharedLibraries() {
        return this.mSharedLibraries;
    }

    public ArrayMap getAvailableFeatures() {
        return this.mAvailableFeatures;
    }

    public ArrayMap getPermissions() {
        return this.mPermissions;
    }

    public ArraySet getAllowImplicitBroadcasts() {
        return this.mAllowImplicitBroadcasts;
    }

    public ArraySet getAllowInPowerSaveExceptIdle() {
        return this.mAllowInPowerSaveExceptIdle;
    }

    public ArraySet getAllowInPowerSave() {
        return this.mAllowInPowerSave;
    }

    public ArraySet getAllowInDataUsageSave() {
        return this.mAllowInDataUsageSave;
    }

    public ArraySet getAllowUnthrottledLocation() {
        return this.mAllowUnthrottledLocation;
    }

    public ArrayMap getAllowAdasLocationSettings() {
        return this.mAllowAdasSettings;
    }

    public ArrayMap getAllowIgnoreLocationSettings() {
        return this.mAllowIgnoreLocationSettings;
    }

    public ArraySet getBgRestrictionExemption() {
        return this.mBgRestrictionExemption;
    }

    public ArraySet getLinkedApps() {
        return this.mLinkedApps;
    }

    public ArraySet getHiddenApiWhitelistedApps() {
        return this.mHiddenApiPackageWhitelist;
    }

    public ArraySet getDefaultVrComponents() {
        return this.mDefaultVrComponents;
    }

    public ArraySet getBackupTransportWhitelist() {
        return this.mBackupTransportWhitelist;
    }

    public ArrayMap getComponentsEnabledStates(String str) {
        return (ArrayMap) this.mPackageComponentEnabledState.get(str);
    }

    public ArraySet getDisabledUntilUsedPreinstalledCarrierApps() {
        return this.mDisabledUntilUsedPreinstalledCarrierApps;
    }

    public ArrayMap getDisabledUntilUsedPreinstalledCarrierAssociatedApps() {
        return this.mDisabledUntilUsedPreinstalledCarrierAssociatedApps;
    }

    public PermissionAllowlist getPermissionAllowlist() {
        return this.mPermissionAllowlist;
    }

    public ArrayMap getAllowedAssociations() {
        return this.mAllowedAssociations;
    }

    public ArraySet getBugreportWhitelistedPackages() {
        return this.mBugreportWhitelistedPackages;
    }

    public Set getRollbackWhitelistedPackages() {
        return this.mRollbackWhitelistedPackages;
    }

    public Set getAutomaticRollbackDenylistedPackages() {
        return this.mAutomaticRollbackDenylistedPackages;
    }

    public Set getWhitelistedStagedInstallers() {
        return this.mWhitelistedStagedInstallers;
    }

    public Map getAllowedVendorApexes() {
        return this.mAllowedVendorApexes;
    }

    public Set getInstallConstraintsAllowlist() {
        return this.mInstallConstraintsAllowlist;
    }

    public String getModulesInstallerPackageName() {
        return this.mModulesInstallerPackageName;
    }

    public String getSystemAppUpdateOwnerPackageName(String str) {
        return (String) this.mUpdateOwnersForSystemApps.get(str);
    }

    public ArraySet getAppDataIsolationWhitelistedApps() {
        return this.mAppDataIsolationWhitelistedApps;
    }

    public ArrayMap getAndClearPackageToUserTypeWhitelist() {
        ArrayMap arrayMap = this.mPackageToUserTypeWhitelist;
        this.mPackageToUserTypeWhitelist = new ArrayMap(0);
        return arrayMap;
    }

    public ArrayMap getAndClearPackageToUserTypeBlacklist() {
        ArrayMap arrayMap = this.mPackageToUserTypeBlacklist;
        this.mPackageToUserTypeBlacklist = new ArrayMap(0);
        return arrayMap;
    }

    public Map getNamedActors() {
        Map map = this.mNamedActors;
        return map != null ? map : Collections.emptyMap();
    }

    public String getOverlayConfigSignaturePackage() {
        if (TextUtils.isEmpty(this.mOverlayConfigSignaturePackage)) {
            return null;
        }
        return this.mOverlayConfigSignaturePackage;
    }

    public Set getInitialNonStoppedSystemPackages() {
        return this.mInitialNonStoppedSystemPackages;
    }

    public Set getRequiredSystemPackages() {
        return this.mRequiredSystemPackages;
    }

    public ArrayMap getAppMetadataFilePaths() {
        return this.mAppMetadataFilePaths;
    }

    public SystemConfig(boolean z) {
        if (z) {
            Slog.w("SystemConfig", "Constructing a test SystemConfig");
            readAllPermissions();
        } else {
            Slog.w("SystemConfig", "Constructing an empty test SystemConfig");
        }
    }

    public SystemConfig() {
        TimingsTraceLog timingsTraceLog = new TimingsTraceLog("SystemConfig", 524288L);
        timingsTraceLog.traceBegin("readAllPermissions");
        try {
            readAllPermissions();
            readPublicNativeLibrariesList();
        } finally {
            timingsTraceLog.traceEnd();
        }
    }

    public final void readAllPermissions() {
        String str;
        XmlPullParser newPullParser = Xml.newPullParser();
        readPermissions(newPullParser, Environment.buildPath(Environment.getRootDirectory(), new String[]{"etc", "sysconfig"}), -1);
        readPermissions(newPullParser, Environment.buildPath(Environment.getRootDirectory(), new String[]{"etc", "permissions"}), -1);
        int i = Build.VERSION.DEVICE_INITIAL_SDK_INT <= 27 ? 1183 : 1171;
        readPermissions(newPullParser, Environment.buildPath(Environment.getVendorDirectory(), new String[]{"etc", "sysconfig"}), i);
        readPermissions(newPullParser, Environment.buildPath(Environment.getVendorDirectory(), new String[]{"etc", "permissions"}), i);
        String str2 = SystemProperties.get("ro.boot.product.vendor.sku", "");
        if (!str2.isEmpty()) {
            String str3 = "sku_" + str2;
            readPermissions(newPullParser, Environment.buildPath(Environment.getVendorDirectory(), new String[]{"etc", "sysconfig", str3}), i);
            readPermissions(newPullParser, Environment.buildPath(Environment.getVendorDirectory(), new String[]{"etc", "permissions", str3}), i);
        }
        readPermissions(newPullParser, Environment.buildPath(Environment.getOdmDirectory(), new String[]{"etc", "sysconfig"}), i);
        readPermissions(newPullParser, Environment.buildPath(Environment.getOdmDirectory(), new String[]{"etc", "permissions"}), i);
        String str4 = SystemProperties.get("ro.boot.product.hardware.sku", "");
        if (!str4.isEmpty()) {
            String str5 = "sku_" + str4;
            readPermissions(newPullParser, Environment.buildPath(Environment.getOdmDirectory(), new String[]{"etc", "sysconfig", str5}), i);
            readPermissions(newPullParser, Environment.buildPath(Environment.getOdmDirectory(), new String[]{"etc", "permissions", str5}), i);
        }
        readPermissions(newPullParser, Environment.buildPath(Environment.getOemDirectory(), new String[]{"etc", "sysconfig"}), 1185);
        readPermissions(newPullParser, Environment.buildPath(Environment.getOemDirectory(), new String[]{"etc", "permissions"}), 1185);
        int i2 = Build.VERSION.DEVICE_INITIAL_SDK_INT <= 30 ? -1 : 2015;
        readAerSupportedFromXml(-1);
        readPermissions(newPullParser, Environment.buildPath(Environment.getProductDirectory(), new String[]{"etc", "sysconfig"}), i2);
        readPermissions(newPullParser, Environment.buildPath(Environment.getProductDirectory(), new String[]{"etc", "permissions"}), i2);
        readPermissions(newPullParser, Environment.buildPath(Environment.getSystemExtDirectory(), new String[]{"etc", "sysconfig"}), -1);
        readPermissions(newPullParser, Environment.buildPath(Environment.getSystemExtDirectory(), new String[]{"etc", "permissions"}), -1);
        String str6 = SystemProperties.get("ro.csc.sales_code");
        if (!TextUtils.isEmpty(str6)) {
            readPermissions(newPullParser, Environment.buildPath(Environment.getVendorDirectory(), new String[]{"etc", "carrier", str6, "permissions"}), 1);
        }
        readPermissions(newPullParser, Environment.buildPath(Environment.getRootDirectory(), new String[]{"carrier", "sysconfig"}), -1);
        readPermissions(newPullParser, Environment.buildPath(Environment.getRootDirectory(), new String[]{"carrier", "permissions"}), -1);
        String str7 = SystemProperties.get("mdc.sys.omc_etcpath", "");
        if (!TextUtils.isEmpty(str7)) {
            File file = new File(str7);
            readPermissions(newPullParser, Environment.buildPath(file, new String[]{"sysconfig"}), -1);
            readPermissions(newPullParser, Environment.buildPath(file, new String[]{"permissions"}), -1);
        }
        String str8 = Build.PRODUCT;
        if (!TextUtils.isEmpty(str8) && str8.contains("eea")) {
            if (TextUtils.isEmpty(SystemProperties.get("ro.boot.carrierid"))) {
                str = SystemProperties.get("mdc.sys.omc_etcpath", "");
            } else {
                str = SystemProperties.get("mdc.sys.carrierid_etcpath", "");
            }
            Slog.i("SystemConfig", "omcEtcPathCid " + str);
            if (!TextUtils.isEmpty(str)) {
                File file2 = new File(str);
                readPermissions(newPullParser, Environment.buildPath(file2, new String[]{"cid/sysconfig"}), -1);
                readPermissions(newPullParser, Environment.buildPath(file2, new String[]{"cid/permissions"}), -1);
            } else {
                readPermissions(newPullParser, Environment.buildPath(Environment.getRootDirectory(), new String[]{"etc", "cid/sysconfig"}), -1);
                readPermissions(newPullParser, Environment.buildPath(Environment.getRootDirectory(), new String[]{"etc", "cid/permissions"}), -1);
            }
        }
        SEServiceFeature();
        if (isSystemProcess()) {
            for (File file3 : FileUtils.listFilesOrEmpty(Environment.getApexDirectory())) {
                if (!file3.isFile() && !file3.getPath().contains("@")) {
                    readPermissions(newPullParser, Environment.buildPath(file3, new String[]{"etc", "permissions"}), 19);
                }
            }
        }
    }

    public void readPermissions(XmlPullParser xmlPullParser, File file, int i) {
        if (!file.exists() || !file.isDirectory()) {
            if (i == -1) {
                Slog.w("SystemConfig", "No directory " + file + ", skipping");
                return;
            }
            return;
        }
        if (!file.canRead()) {
            Slog.w("SystemConfig", "Directory " + file + " cannot be read");
            return;
        }
        File file2 = null;
        for (File file3 : file.listFiles()) {
            if (file3.isFile()) {
                if (file3.getPath().endsWith("etc/permissions/platform.xml")) {
                    file2 = file3;
                } else if (!file3.getPath().endsWith(".xml")) {
                    Slog.i("SystemConfig", "Non-xml file " + file3 + " in " + file + " directory, ignoring");
                } else if (!file3.canRead()) {
                    Slog.w("SystemConfig", "Permissions library file " + file3 + " cannot be read");
                } else if (!this.mAerSupported && file3.getPath().contains("aer")) {
                    Slog.e("SystemConfig", "aer = " + this.mAerSupported + ", f.getPath().contains = " + file3.getPath().contains("aer"));
                } else {
                    readPermissionsFromXml(xmlPullParser, file3, i);
                }
            }
        }
        if (file2 != null) {
            readPermissionsFromXml(xmlPullParser, file2, i);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:30:0x00b1 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:45:0x0087 A[SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final void readAerSupportedFromXml(int r14) {
        /*
            Method dump skipped, instructions count: 357
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.server.SystemConfig.readAerSupportedFromXml(int):void");
    }

    public final void logNotAllowedInPartition(String str, File file, XmlPullParser xmlPullParser) {
        Slog.w("SystemConfig", "<" + str + "> not allowed in partition of " + file + " at " + xmlPullParser.getPositionDescription());
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Failed to find 'out' block for switch in B:59:0x010d. Please report as an issue. */
    /* JADX WARN: Failed to find 'out' block for switch in B:64:0x0319. Please report as an issue. */
    /* JADX WARN: Not initialized variable reg: 25, insn: 0x11fa: MOVE (r3 I:??[OBJECT, ARRAY]) = (r25 I:??[OBJECT, ARRAY]), block:B:676:0x11f9 */
    /* JADX WARN: Removed duplicated region for block: B:247:0x0a54 A[Catch: IOException -> 0x11f6, XmlPullParserException -> 0x11f8, all -> 0x12aa, TryCatch #8 {all -> 0x12aa, blocks: (B:66:0x11b0, B:70:0x0320, B:72:0x032a, B:74:0x034e, B:75:0x0355, B:77:0x0366, B:78:0x038c, B:80:0x0392, B:81:0x03b8, B:82:0x03bf, B:84:0x03d0, B:85:0x03f4, B:87:0x03fa, B:88:0x0420, B:90:0x0426, B:91:0x042d, B:93:0x043d, B:94:0x0492, B:95:0x0462, B:97:0x0468, B:98:0x048d, B:100:0x0499, B:102:0x049f, B:103:0x04cb, B:104:0x04c2, B:105:0x04c8, B:107:0x04d2, B:109:0x04d8, B:110:0x04ff, B:112:0x0508, B:113:0x0531, B:118:0x053e, B:120:0x0548, B:121:0x0552, B:122:0x058a, B:123:0x0556, B:124:0x0587, B:126:0x0591, B:128:0x059d, B:130:0x05c1, B:133:0x05e9, B:134:0x05f2, B:135:0x05ef, B:137:0x05f9, B:139:0x0606, B:141:0x0630, B:143:0x0634, B:145:0x0637, B:146:0x063e, B:148:0x0642, B:149:0x0629, B:150:0x063f, B:151:0x0647, B:153:0x064d, B:154:0x0675, B:155:0x0670, B:156:0x067a, B:158:0x0680, B:159:0x06a8, B:160:0x06a3, B:162:0x06af, B:164:0x06b5, B:165:0x070b, B:166:0x06d8, B:168:0x06e0, B:170:0x06e7, B:171:0x0707, B:172:0x0708, B:173:0x0710, B:175:0x072d, B:176:0x07da, B:177:0x0753, B:179:0x0759, B:180:0x077e, B:182:0x0784, B:183:0x07a9, B:185:0x07b1, B:187:0x07b5, B:188:0x07bc, B:190:0x07c6, B:191:0x07d7, B:192:0x07d1, B:195:0x07df, B:196:0x0811, B:198:0x0812, B:199:0x0835, B:200:0x0836, B:201:0x083f, B:203:0x0845, B:204:0x086d, B:205:0x0868, B:206:0x0872, B:208:0x0878, B:209:0x08a0, B:210:0x089b, B:212:0x08a7, B:214:0x08b0, B:215:0x08d9, B:217:0x08e1, B:218:0x090a, B:220:0x091c, B:221:0x0926, B:222:0x0949, B:223:0x0946, B:225:0x0950, B:227:0x0956, B:228:0x0982, B:229:0x0979, B:230:0x097f, B:232:0x0989, B:233:0x098e, B:235:0x0998, B:237:0x09b9, B:241:0x09de, B:243:0x0a3d, B:247:0x0a54, B:249:0x0a61, B:251:0x0a6e, B:253:0x0a7b, B:254:0x0a88, B:257:0x0a93, B:259:0x0a9d, B:261:0x0aa3, B:262:0x0acf, B:263:0x0ac6, B:264:0x0acc, B:266:0x0ad6, B:270:0x0ae5, B:279:0x0af1, B:273:0x0b20, B:275:0x0b2a, B:276:0x0b34, B:277:0x0b65, B:281:0x0af6, B:282:0x0b3d, B:283:0x0b62, B:285:0x0b6c, B:287:0x0b75, B:288:0x0bd6, B:289:0x0b9a, B:291:0x0ba0, B:292:0x0bcd, B:293:0x0bd3, B:294:0x0bda, B:296:0x0be3, B:298:0x0bef, B:299:0x0c47, B:301:0x0c14, B:302:0x0c39, B:303:0x0c44, B:305:0x0c4d, B:307:0x0c53, B:308:0x0c7f, B:309:0x0c76, B:310:0x0c7c, B:312:0x0c86, B:314:0x0c8c, B:315:0x0cb8, B:316:0x0caf, B:317:0x0cb5, B:319:0x0cbf, B:321:0x0cc7, B:322:0x0cf5, B:323:0x0cec, B:324:0x0cf2, B:326:0x0cfc, B:328:0x0d08, B:329:0x0d62, B:330:0x0d2b, B:332:0x0d35, B:335:0x0d3d, B:336:0x0d48, B:338:0x0d50, B:341:0x0d5b, B:343:0x0d5f, B:345:0x0d69, B:347:0x0d75, B:348:0x0dcf, B:349:0x0d98, B:351:0x0da2, B:354:0x0daa, B:355:0x0db5, B:357:0x0dbd, B:360:0x0dc8, B:362:0x0dcc, B:364:0x0dd6, B:366:0x0ddc, B:367:0x0e08, B:368:0x0dff, B:369:0x0e05, B:371:0x0e0f, B:373:0x0e15, B:374:0x0e41, B:375:0x0e38, B:376:0x0e3e, B:378:0x0e48, B:380:0x0e4e, B:381:0x0e7a, B:382:0x0e71, B:383:0x0e77, B:385:0x0e81, B:387:0x0e87, B:388:0x0eb3, B:389:0x0eaa, B:390:0x0eb0, B:392:0x0eba, B:394:0x0ec0, B:395:0x0eee, B:396:0x0ee5, B:397:0x0eeb, B:400:0x0ef7, B:404:0x0f1d, B:405:0x0f4a, B:407:0x0f42, B:408:0x0f09, B:409:0x0f46, B:412:0x0f54, B:414:0x0f76, B:415:0x1052, B:417:0x0f9c, B:419:0x0fc4, B:424:0x0fd0, B:428:0x0fda, B:432:0x0fe9, B:434:0x0ffb, B:435:0x1007, B:436:0x1000, B:437:0x1013, B:439:0x1024, B:441:0x102e, B:443:0x1038, B:444:0x1045, B:447:0x104d, B:450:0x105b, B:451:0x1060, B:454:0x106e, B:456:0x1074, B:457:0x109b, B:459:0x10a4, B:460:0x10cd, B:462:0x10d3, B:463:0x1104, B:465:0x1112, B:466:0x111c, B:467:0x1123, B:468:0x1120, B:471:0x112e, B:473:0x1134, B:474:0x115b, B:475:0x1164, B:478:0x116f, B:480:0x1177, B:481:0x11ac, B:482:0x1184, B:483:0x11a9, B:662:0x1211, B:666:0x121a, B:671:0x11ea, B:672:0x11f5), top: B:5:0x0029 }] */
    /* JADX WARN: Removed duplicated region for block: B:248:0x0a5f  */
    /* JADX WARN: Removed duplicated region for block: B:430:0x0fe5 A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:439:0x1024 A[Catch: IOException -> 0x11f6, XmlPullParserException -> 0x11f8, all -> 0x12aa, TryCatch #8 {all -> 0x12aa, blocks: (B:66:0x11b0, B:70:0x0320, B:72:0x032a, B:74:0x034e, B:75:0x0355, B:77:0x0366, B:78:0x038c, B:80:0x0392, B:81:0x03b8, B:82:0x03bf, B:84:0x03d0, B:85:0x03f4, B:87:0x03fa, B:88:0x0420, B:90:0x0426, B:91:0x042d, B:93:0x043d, B:94:0x0492, B:95:0x0462, B:97:0x0468, B:98:0x048d, B:100:0x0499, B:102:0x049f, B:103:0x04cb, B:104:0x04c2, B:105:0x04c8, B:107:0x04d2, B:109:0x04d8, B:110:0x04ff, B:112:0x0508, B:113:0x0531, B:118:0x053e, B:120:0x0548, B:121:0x0552, B:122:0x058a, B:123:0x0556, B:124:0x0587, B:126:0x0591, B:128:0x059d, B:130:0x05c1, B:133:0x05e9, B:134:0x05f2, B:135:0x05ef, B:137:0x05f9, B:139:0x0606, B:141:0x0630, B:143:0x0634, B:145:0x0637, B:146:0x063e, B:148:0x0642, B:149:0x0629, B:150:0x063f, B:151:0x0647, B:153:0x064d, B:154:0x0675, B:155:0x0670, B:156:0x067a, B:158:0x0680, B:159:0x06a8, B:160:0x06a3, B:162:0x06af, B:164:0x06b5, B:165:0x070b, B:166:0x06d8, B:168:0x06e0, B:170:0x06e7, B:171:0x0707, B:172:0x0708, B:173:0x0710, B:175:0x072d, B:176:0x07da, B:177:0x0753, B:179:0x0759, B:180:0x077e, B:182:0x0784, B:183:0x07a9, B:185:0x07b1, B:187:0x07b5, B:188:0x07bc, B:190:0x07c6, B:191:0x07d7, B:192:0x07d1, B:195:0x07df, B:196:0x0811, B:198:0x0812, B:199:0x0835, B:200:0x0836, B:201:0x083f, B:203:0x0845, B:204:0x086d, B:205:0x0868, B:206:0x0872, B:208:0x0878, B:209:0x08a0, B:210:0x089b, B:212:0x08a7, B:214:0x08b0, B:215:0x08d9, B:217:0x08e1, B:218:0x090a, B:220:0x091c, B:221:0x0926, B:222:0x0949, B:223:0x0946, B:225:0x0950, B:227:0x0956, B:228:0x0982, B:229:0x0979, B:230:0x097f, B:232:0x0989, B:233:0x098e, B:235:0x0998, B:237:0x09b9, B:241:0x09de, B:243:0x0a3d, B:247:0x0a54, B:249:0x0a61, B:251:0x0a6e, B:253:0x0a7b, B:254:0x0a88, B:257:0x0a93, B:259:0x0a9d, B:261:0x0aa3, B:262:0x0acf, B:263:0x0ac6, B:264:0x0acc, B:266:0x0ad6, B:270:0x0ae5, B:279:0x0af1, B:273:0x0b20, B:275:0x0b2a, B:276:0x0b34, B:277:0x0b65, B:281:0x0af6, B:282:0x0b3d, B:283:0x0b62, B:285:0x0b6c, B:287:0x0b75, B:288:0x0bd6, B:289:0x0b9a, B:291:0x0ba0, B:292:0x0bcd, B:293:0x0bd3, B:294:0x0bda, B:296:0x0be3, B:298:0x0bef, B:299:0x0c47, B:301:0x0c14, B:302:0x0c39, B:303:0x0c44, B:305:0x0c4d, B:307:0x0c53, B:308:0x0c7f, B:309:0x0c76, B:310:0x0c7c, B:312:0x0c86, B:314:0x0c8c, B:315:0x0cb8, B:316:0x0caf, B:317:0x0cb5, B:319:0x0cbf, B:321:0x0cc7, B:322:0x0cf5, B:323:0x0cec, B:324:0x0cf2, B:326:0x0cfc, B:328:0x0d08, B:329:0x0d62, B:330:0x0d2b, B:332:0x0d35, B:335:0x0d3d, B:336:0x0d48, B:338:0x0d50, B:341:0x0d5b, B:343:0x0d5f, B:345:0x0d69, B:347:0x0d75, B:348:0x0dcf, B:349:0x0d98, B:351:0x0da2, B:354:0x0daa, B:355:0x0db5, B:357:0x0dbd, B:360:0x0dc8, B:362:0x0dcc, B:364:0x0dd6, B:366:0x0ddc, B:367:0x0e08, B:368:0x0dff, B:369:0x0e05, B:371:0x0e0f, B:373:0x0e15, B:374:0x0e41, B:375:0x0e38, B:376:0x0e3e, B:378:0x0e48, B:380:0x0e4e, B:381:0x0e7a, B:382:0x0e71, B:383:0x0e77, B:385:0x0e81, B:387:0x0e87, B:388:0x0eb3, B:389:0x0eaa, B:390:0x0eb0, B:392:0x0eba, B:394:0x0ec0, B:395:0x0eee, B:396:0x0ee5, B:397:0x0eeb, B:400:0x0ef7, B:404:0x0f1d, B:405:0x0f4a, B:407:0x0f42, B:408:0x0f09, B:409:0x0f46, B:412:0x0f54, B:414:0x0f76, B:415:0x1052, B:417:0x0f9c, B:419:0x0fc4, B:424:0x0fd0, B:428:0x0fda, B:432:0x0fe9, B:434:0x0ffb, B:435:0x1007, B:436:0x1000, B:437:0x1013, B:439:0x1024, B:441:0x102e, B:443:0x1038, B:444:0x1045, B:447:0x104d, B:450:0x105b, B:451:0x1060, B:454:0x106e, B:456:0x1074, B:457:0x109b, B:459:0x10a4, B:460:0x10cd, B:462:0x10d3, B:463:0x1104, B:465:0x1112, B:466:0x111c, B:467:0x1123, B:468:0x1120, B:471:0x112e, B:473:0x1134, B:474:0x115b, B:475:0x1164, B:478:0x116f, B:480:0x1177, B:481:0x11ac, B:482:0x1184, B:483:0x11a9, B:662:0x1211, B:666:0x121a, B:671:0x11ea, B:672:0x11f5), top: B:5:0x0029 }] */
    /* JADX WARN: Removed duplicated region for block: B:441:0x102e A[Catch: IOException -> 0x11f6, XmlPullParserException -> 0x11f8, all -> 0x12aa, TryCatch #8 {all -> 0x12aa, blocks: (B:66:0x11b0, B:70:0x0320, B:72:0x032a, B:74:0x034e, B:75:0x0355, B:77:0x0366, B:78:0x038c, B:80:0x0392, B:81:0x03b8, B:82:0x03bf, B:84:0x03d0, B:85:0x03f4, B:87:0x03fa, B:88:0x0420, B:90:0x0426, B:91:0x042d, B:93:0x043d, B:94:0x0492, B:95:0x0462, B:97:0x0468, B:98:0x048d, B:100:0x0499, B:102:0x049f, B:103:0x04cb, B:104:0x04c2, B:105:0x04c8, B:107:0x04d2, B:109:0x04d8, B:110:0x04ff, B:112:0x0508, B:113:0x0531, B:118:0x053e, B:120:0x0548, B:121:0x0552, B:122:0x058a, B:123:0x0556, B:124:0x0587, B:126:0x0591, B:128:0x059d, B:130:0x05c1, B:133:0x05e9, B:134:0x05f2, B:135:0x05ef, B:137:0x05f9, B:139:0x0606, B:141:0x0630, B:143:0x0634, B:145:0x0637, B:146:0x063e, B:148:0x0642, B:149:0x0629, B:150:0x063f, B:151:0x0647, B:153:0x064d, B:154:0x0675, B:155:0x0670, B:156:0x067a, B:158:0x0680, B:159:0x06a8, B:160:0x06a3, B:162:0x06af, B:164:0x06b5, B:165:0x070b, B:166:0x06d8, B:168:0x06e0, B:170:0x06e7, B:171:0x0707, B:172:0x0708, B:173:0x0710, B:175:0x072d, B:176:0x07da, B:177:0x0753, B:179:0x0759, B:180:0x077e, B:182:0x0784, B:183:0x07a9, B:185:0x07b1, B:187:0x07b5, B:188:0x07bc, B:190:0x07c6, B:191:0x07d7, B:192:0x07d1, B:195:0x07df, B:196:0x0811, B:198:0x0812, B:199:0x0835, B:200:0x0836, B:201:0x083f, B:203:0x0845, B:204:0x086d, B:205:0x0868, B:206:0x0872, B:208:0x0878, B:209:0x08a0, B:210:0x089b, B:212:0x08a7, B:214:0x08b0, B:215:0x08d9, B:217:0x08e1, B:218:0x090a, B:220:0x091c, B:221:0x0926, B:222:0x0949, B:223:0x0946, B:225:0x0950, B:227:0x0956, B:228:0x0982, B:229:0x0979, B:230:0x097f, B:232:0x0989, B:233:0x098e, B:235:0x0998, B:237:0x09b9, B:241:0x09de, B:243:0x0a3d, B:247:0x0a54, B:249:0x0a61, B:251:0x0a6e, B:253:0x0a7b, B:254:0x0a88, B:257:0x0a93, B:259:0x0a9d, B:261:0x0aa3, B:262:0x0acf, B:263:0x0ac6, B:264:0x0acc, B:266:0x0ad6, B:270:0x0ae5, B:279:0x0af1, B:273:0x0b20, B:275:0x0b2a, B:276:0x0b34, B:277:0x0b65, B:281:0x0af6, B:282:0x0b3d, B:283:0x0b62, B:285:0x0b6c, B:287:0x0b75, B:288:0x0bd6, B:289:0x0b9a, B:291:0x0ba0, B:292:0x0bcd, B:293:0x0bd3, B:294:0x0bda, B:296:0x0be3, B:298:0x0bef, B:299:0x0c47, B:301:0x0c14, B:302:0x0c39, B:303:0x0c44, B:305:0x0c4d, B:307:0x0c53, B:308:0x0c7f, B:309:0x0c76, B:310:0x0c7c, B:312:0x0c86, B:314:0x0c8c, B:315:0x0cb8, B:316:0x0caf, B:317:0x0cb5, B:319:0x0cbf, B:321:0x0cc7, B:322:0x0cf5, B:323:0x0cec, B:324:0x0cf2, B:326:0x0cfc, B:328:0x0d08, B:329:0x0d62, B:330:0x0d2b, B:332:0x0d35, B:335:0x0d3d, B:336:0x0d48, B:338:0x0d50, B:341:0x0d5b, B:343:0x0d5f, B:345:0x0d69, B:347:0x0d75, B:348:0x0dcf, B:349:0x0d98, B:351:0x0da2, B:354:0x0daa, B:355:0x0db5, B:357:0x0dbd, B:360:0x0dc8, B:362:0x0dcc, B:364:0x0dd6, B:366:0x0ddc, B:367:0x0e08, B:368:0x0dff, B:369:0x0e05, B:371:0x0e0f, B:373:0x0e15, B:374:0x0e41, B:375:0x0e38, B:376:0x0e3e, B:378:0x0e48, B:380:0x0e4e, B:381:0x0e7a, B:382:0x0e71, B:383:0x0e77, B:385:0x0e81, B:387:0x0e87, B:388:0x0eb3, B:389:0x0eaa, B:390:0x0eb0, B:392:0x0eba, B:394:0x0ec0, B:395:0x0eee, B:396:0x0ee5, B:397:0x0eeb, B:400:0x0ef7, B:404:0x0f1d, B:405:0x0f4a, B:407:0x0f42, B:408:0x0f09, B:409:0x0f46, B:412:0x0f54, B:414:0x0f76, B:415:0x1052, B:417:0x0f9c, B:419:0x0fc4, B:424:0x0fd0, B:428:0x0fda, B:432:0x0fe9, B:434:0x0ffb, B:435:0x1007, B:436:0x1000, B:437:0x1013, B:439:0x1024, B:441:0x102e, B:443:0x1038, B:444:0x1045, B:447:0x104d, B:450:0x105b, B:451:0x1060, B:454:0x106e, B:456:0x1074, B:457:0x109b, B:459:0x10a4, B:460:0x10cd, B:462:0x10d3, B:463:0x1104, B:465:0x1112, B:466:0x111c, B:467:0x1123, B:468:0x1120, B:471:0x112e, B:473:0x1134, B:474:0x115b, B:475:0x1164, B:478:0x116f, B:480:0x1177, B:481:0x11ac, B:482:0x1184, B:483:0x11a9, B:662:0x1211, B:666:0x121a, B:671:0x11ea, B:672:0x11f5), top: B:5:0x0029 }] */
    /* JADX WARN: Removed duplicated region for block: B:443:0x1038 A[Catch: IOException -> 0x11f6, XmlPullParserException -> 0x11f8, all -> 0x12aa, TryCatch #8 {all -> 0x12aa, blocks: (B:66:0x11b0, B:70:0x0320, B:72:0x032a, B:74:0x034e, B:75:0x0355, B:77:0x0366, B:78:0x038c, B:80:0x0392, B:81:0x03b8, B:82:0x03bf, B:84:0x03d0, B:85:0x03f4, B:87:0x03fa, B:88:0x0420, B:90:0x0426, B:91:0x042d, B:93:0x043d, B:94:0x0492, B:95:0x0462, B:97:0x0468, B:98:0x048d, B:100:0x0499, B:102:0x049f, B:103:0x04cb, B:104:0x04c2, B:105:0x04c8, B:107:0x04d2, B:109:0x04d8, B:110:0x04ff, B:112:0x0508, B:113:0x0531, B:118:0x053e, B:120:0x0548, B:121:0x0552, B:122:0x058a, B:123:0x0556, B:124:0x0587, B:126:0x0591, B:128:0x059d, B:130:0x05c1, B:133:0x05e9, B:134:0x05f2, B:135:0x05ef, B:137:0x05f9, B:139:0x0606, B:141:0x0630, B:143:0x0634, B:145:0x0637, B:146:0x063e, B:148:0x0642, B:149:0x0629, B:150:0x063f, B:151:0x0647, B:153:0x064d, B:154:0x0675, B:155:0x0670, B:156:0x067a, B:158:0x0680, B:159:0x06a8, B:160:0x06a3, B:162:0x06af, B:164:0x06b5, B:165:0x070b, B:166:0x06d8, B:168:0x06e0, B:170:0x06e7, B:171:0x0707, B:172:0x0708, B:173:0x0710, B:175:0x072d, B:176:0x07da, B:177:0x0753, B:179:0x0759, B:180:0x077e, B:182:0x0784, B:183:0x07a9, B:185:0x07b1, B:187:0x07b5, B:188:0x07bc, B:190:0x07c6, B:191:0x07d7, B:192:0x07d1, B:195:0x07df, B:196:0x0811, B:198:0x0812, B:199:0x0835, B:200:0x0836, B:201:0x083f, B:203:0x0845, B:204:0x086d, B:205:0x0868, B:206:0x0872, B:208:0x0878, B:209:0x08a0, B:210:0x089b, B:212:0x08a7, B:214:0x08b0, B:215:0x08d9, B:217:0x08e1, B:218:0x090a, B:220:0x091c, B:221:0x0926, B:222:0x0949, B:223:0x0946, B:225:0x0950, B:227:0x0956, B:228:0x0982, B:229:0x0979, B:230:0x097f, B:232:0x0989, B:233:0x098e, B:235:0x0998, B:237:0x09b9, B:241:0x09de, B:243:0x0a3d, B:247:0x0a54, B:249:0x0a61, B:251:0x0a6e, B:253:0x0a7b, B:254:0x0a88, B:257:0x0a93, B:259:0x0a9d, B:261:0x0aa3, B:262:0x0acf, B:263:0x0ac6, B:264:0x0acc, B:266:0x0ad6, B:270:0x0ae5, B:279:0x0af1, B:273:0x0b20, B:275:0x0b2a, B:276:0x0b34, B:277:0x0b65, B:281:0x0af6, B:282:0x0b3d, B:283:0x0b62, B:285:0x0b6c, B:287:0x0b75, B:288:0x0bd6, B:289:0x0b9a, B:291:0x0ba0, B:292:0x0bcd, B:293:0x0bd3, B:294:0x0bda, B:296:0x0be3, B:298:0x0bef, B:299:0x0c47, B:301:0x0c14, B:302:0x0c39, B:303:0x0c44, B:305:0x0c4d, B:307:0x0c53, B:308:0x0c7f, B:309:0x0c76, B:310:0x0c7c, B:312:0x0c86, B:314:0x0c8c, B:315:0x0cb8, B:316:0x0caf, B:317:0x0cb5, B:319:0x0cbf, B:321:0x0cc7, B:322:0x0cf5, B:323:0x0cec, B:324:0x0cf2, B:326:0x0cfc, B:328:0x0d08, B:329:0x0d62, B:330:0x0d2b, B:332:0x0d35, B:335:0x0d3d, B:336:0x0d48, B:338:0x0d50, B:341:0x0d5b, B:343:0x0d5f, B:345:0x0d69, B:347:0x0d75, B:348:0x0dcf, B:349:0x0d98, B:351:0x0da2, B:354:0x0daa, B:355:0x0db5, B:357:0x0dbd, B:360:0x0dc8, B:362:0x0dcc, B:364:0x0dd6, B:366:0x0ddc, B:367:0x0e08, B:368:0x0dff, B:369:0x0e05, B:371:0x0e0f, B:373:0x0e15, B:374:0x0e41, B:375:0x0e38, B:376:0x0e3e, B:378:0x0e48, B:380:0x0e4e, B:381:0x0e7a, B:382:0x0e71, B:383:0x0e77, B:385:0x0e81, B:387:0x0e87, B:388:0x0eb3, B:389:0x0eaa, B:390:0x0eb0, B:392:0x0eba, B:394:0x0ec0, B:395:0x0eee, B:396:0x0ee5, B:397:0x0eeb, B:400:0x0ef7, B:404:0x0f1d, B:405:0x0f4a, B:407:0x0f42, B:408:0x0f09, B:409:0x0f46, B:412:0x0f54, B:414:0x0f76, B:415:0x1052, B:417:0x0f9c, B:419:0x0fc4, B:424:0x0fd0, B:428:0x0fda, B:432:0x0fe9, B:434:0x0ffb, B:435:0x1007, B:436:0x1000, B:437:0x1013, B:439:0x1024, B:441:0x102e, B:443:0x1038, B:444:0x1045, B:447:0x104d, B:450:0x105b, B:451:0x1060, B:454:0x106e, B:456:0x1074, B:457:0x109b, B:459:0x10a4, B:460:0x10cd, B:462:0x10d3, B:463:0x1104, B:465:0x1112, B:466:0x111c, B:467:0x1123, B:468:0x1120, B:471:0x112e, B:473:0x1134, B:474:0x115b, B:475:0x1164, B:478:0x116f, B:480:0x1177, B:481:0x11ac, B:482:0x1184, B:483:0x11a9, B:662:0x1211, B:666:0x121a, B:671:0x11ea, B:672:0x11f5), top: B:5:0x0029 }] */
    /* JADX WARN: Removed duplicated region for block: B:612:0x122c  */
    /* JADX WARN: Removed duplicated region for block: B:615:0x123c  */
    /* JADX WARN: Removed duplicated region for block: B:618:0x1247  */
    /* JADX WARN: Removed duplicated region for block: B:621:0x1258  */
    /* JADX WARN: Removed duplicated region for block: B:624:0x1268  */
    /* JADX WARN: Removed duplicated region for block: B:627:0x1276  */
    /* JADX WARN: Removed duplicated region for block: B:636:0x129f A[LOOP:2: B:634:0x1299->B:636:0x129f, LOOP_END] */
    /* JADX WARN: Removed duplicated region for block: B:639:0x124d  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final void readPermissionsFromXml(org.xmlpull.v1.XmlPullParser r31, java.io.File r32, int r33) {
        /*
            Method dump skipped, instructions count: 5058
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.server.SystemConfig.readPermissionsFromXml(org.xmlpull.v1.XmlPullParser, java.io.File, int):void");
    }

    public final void enableIpSecTunnelMigrationOnVsrUAndAbove() {
        if (SystemProperties.getInt("ro.vendor.api_level", Build.VERSION.DEVICE_INITIAL_SDK_INT) > 33) {
            addFeature("android.software.ipsec_tunnel_migration", 0);
        }
    }

    public final void addFeature(String str, int i) {
        FeatureInfo featureInfo = (FeatureInfo) this.mAvailableFeatures.get(str);
        if (featureInfo == null) {
            FeatureInfo featureInfo2 = new FeatureInfo();
            featureInfo2.name = str;
            featureInfo2.version = i;
            this.mAvailableFeatures.put(str, featureInfo2);
            return;
        }
        featureInfo.version = Math.max(featureInfo.version, i);
    }

    public final void removeFeature(String str) {
        if (this.mAvailableFeatures.remove(str) != null) {
            Slog.d("SystemConfig", "Removed unavailable feature " + str);
        }
    }

    public void readPermission(XmlPullParser xmlPullParser, String str) {
        if (this.mPermissions.containsKey(str)) {
            throw new IllegalStateException("Duplicate permission definition for " + str);
        }
        PermissionEntry permissionEntry = new PermissionEntry(str, XmlUtils.readBooleanAttribute(xmlPullParser, "perUser", false));
        this.mPermissions.put(str, permissionEntry);
        int depth = xmlPullParser.getDepth();
        while (true) {
            int next = xmlPullParser.next();
            if (next == 1) {
                return;
            }
            if (next == 3 && xmlPullParser.getDepth() <= depth) {
                return;
            }
            if (next != 3 && next != 4) {
                if ("group".equals(xmlPullParser.getName())) {
                    String attributeValue = xmlPullParser.getAttributeValue(null, "gid");
                    if (attributeValue != null) {
                        permissionEntry.gids = ArrayUtils.appendInt(permissionEntry.gids, Process.getGidForName(attributeValue));
                    } else {
                        Slog.w("SystemConfig", "<group> without gid at " + xmlPullParser.getPositionDescription());
                    }
                }
                XmlUtils.skipCurrentTag(xmlPullParser);
            }
        }
    }

    public final void readPrivAppPermissions(XmlPullParser xmlPullParser, ArrayMap arrayMap) {
        readPermissionAllowlist(xmlPullParser, arrayMap, "privapp-permissions");
    }

    public final void readInstallInUserType(XmlPullParser xmlPullParser, Map map, Map map2) {
        String attributeValue = xmlPullParser.getAttributeValue(null, "package");
        if (TextUtils.isEmpty(attributeValue)) {
            Slog.w("SystemConfig", "package is required for <install-in-user-type> in " + xmlPullParser.getPositionDescription());
            return;
        }
        Set set = (Set) map.get(attributeValue);
        Set set2 = (Set) map2.get(attributeValue);
        int depth = xmlPullParser.getDepth();
        while (XmlUtils.nextElementWithin(xmlPullParser, depth)) {
            String name = xmlPullParser.getName();
            if ("install-in".equals(name)) {
                String attributeValue2 = xmlPullParser.getAttributeValue(null, "user-type");
                if (TextUtils.isEmpty(attributeValue2)) {
                    Slog.w("SystemConfig", "user-type is required for <install-in-user-type> in " + xmlPullParser.getPositionDescription());
                } else {
                    if (set == null) {
                        set = new ArraySet();
                        map.put(attributeValue, set);
                    }
                    set.add(attributeValue2);
                }
            } else if ("do-not-install-in".equals(name)) {
                String attributeValue3 = xmlPullParser.getAttributeValue(null, "user-type");
                if (TextUtils.isEmpty(attributeValue3)) {
                    Slog.w("SystemConfig", "user-type is required for <install-in-user-type> in " + xmlPullParser.getPositionDescription());
                } else {
                    if (set2 == null) {
                        set2 = new ArraySet();
                        map2.put(attributeValue, set2);
                    }
                    set2.add(attributeValue3);
                }
            } else {
                Slog.w("SystemConfig", "unrecognized tag in <install-in-user-type> in " + xmlPullParser.getPositionDescription());
            }
        }
    }

    public void readOemPermissions(XmlPullParser xmlPullParser) {
        readPermissionAllowlist(xmlPullParser, this.mPermissionAllowlist.getOemAppAllowlist(), "oem-permissions");
    }

    public static void readPermissionAllowlist(XmlPullParser xmlPullParser, ArrayMap arrayMap, String str) {
        String attributeValue = xmlPullParser.getAttributeValue(null, "package");
        if (TextUtils.isEmpty(attributeValue)) {
            Slog.w("SystemConfig", "package is required for <" + str + "> in " + xmlPullParser.getPositionDescription());
            return;
        }
        ArrayMap arrayMap2 = (ArrayMap) arrayMap.get(attributeValue);
        if (arrayMap2 == null) {
            arrayMap2 = new ArrayMap();
        }
        int depth = xmlPullParser.getDepth();
        while (XmlUtils.nextElementWithin(xmlPullParser, depth)) {
            String name = xmlPullParser.getName();
            if ("permission".equals(name)) {
                String attributeValue2 = xmlPullParser.getAttributeValue(null, "name");
                if (TextUtils.isEmpty(attributeValue2)) {
                    Slog.w("SystemConfig", "name is required for <permission> in " + xmlPullParser.getPositionDescription());
                } else {
                    arrayMap2.put(attributeValue2, Boolean.TRUE);
                }
            } else if ("deny-permission".equals(name)) {
                String attributeValue3 = xmlPullParser.getAttributeValue(null, "name");
                if (TextUtils.isEmpty(attributeValue3)) {
                    Slog.w("SystemConfig", "name is required for <deny-permission> in " + xmlPullParser.getPositionDescription());
                } else {
                    arrayMap2.put(attributeValue3, Boolean.FALSE);
                }
            }
        }
        arrayMap.put(attributeValue, arrayMap2);
    }

    public final void readSplitPermission(XmlPullParser xmlPullParser, File file) {
        int parseInt;
        String attributeValue = xmlPullParser.getAttributeValue(null, "name");
        if (attributeValue == null) {
            Slog.w("SystemConfig", "<split-permission> without name in " + file + " at " + xmlPullParser.getPositionDescription());
            XmlUtils.skipCurrentTag(xmlPullParser);
            return;
        }
        String attributeValue2 = xmlPullParser.getAttributeValue(null, "targetSdk");
        if (TextUtils.isEmpty(attributeValue2)) {
            parseInt = 10001;
        } else {
            try {
                parseInt = Integer.parseInt(attributeValue2);
            } catch (NumberFormatException unused) {
                Slog.w("SystemConfig", "<split-permission> targetSdk not an integer in " + file + " at " + xmlPullParser.getPositionDescription());
                XmlUtils.skipCurrentTag(xmlPullParser);
                return;
            }
        }
        int depth = xmlPullParser.getDepth();
        ArrayList arrayList = new ArrayList();
        while (XmlUtils.nextElementWithin(xmlPullParser, depth)) {
            if ("new-permission".equals(xmlPullParser.getName())) {
                String attributeValue3 = xmlPullParser.getAttributeValue(null, "name");
                if (TextUtils.isEmpty(attributeValue3)) {
                    Slog.w("SystemConfig", "name is required for <new-permission> in " + xmlPullParser.getPositionDescription());
                } else {
                    arrayList.add(attributeValue3);
                }
            } else {
                XmlUtils.skipCurrentTag(xmlPullParser);
            }
        }
        if (arrayList.isEmpty()) {
            return;
        }
        this.mSplitPermissions.add(new PermissionManager.SplitPermissionInfo(attributeValue, arrayList, parseInt));
    }

    public final void readComponentOverrides(XmlPullParser xmlPullParser, File file) {
        String attributeValue = xmlPullParser.getAttributeValue(null, "package");
        if (attributeValue == null) {
            Slog.w("SystemConfig", "<component-override> without package in " + file + " at " + xmlPullParser.getPositionDescription());
            return;
        }
        String intern = attributeValue.intern();
        int depth = xmlPullParser.getDepth();
        while (XmlUtils.nextElementWithin(xmlPullParser, depth)) {
            if ("component".equals(xmlPullParser.getName())) {
                String attributeValue2 = xmlPullParser.getAttributeValue(null, "class");
                String attributeValue3 = xmlPullParser.getAttributeValue(null, "enabled");
                if (attributeValue2 == null) {
                    Slog.w("SystemConfig", "<component> without class in " + file + " at " + xmlPullParser.getPositionDescription());
                    return;
                }
                if (attributeValue3 == null) {
                    Slog.w("SystemConfig", "<component> without enabled in " + file + " at " + xmlPullParser.getPositionDescription());
                    return;
                }
                if (attributeValue2.startsWith(".")) {
                    attributeValue2 = intern + attributeValue2;
                }
                String intern2 = attributeValue2.intern();
                ArrayMap arrayMap = (ArrayMap) this.mPackageComponentEnabledState.get(intern);
                if (arrayMap == null) {
                    arrayMap = new ArrayMap();
                    this.mPackageComponentEnabledState.put(intern, arrayMap);
                }
                arrayMap.put(intern2, Boolean.valueOf(!"false".equals(attributeValue3)));
            }
        }
    }

    public final void readPublicNativeLibrariesList() {
        readPublicLibrariesListFile(new File("/vendor/etc/public.libraries.txt"));
        String[] strArr = {"/system/etc", "/system_ext/etc", "/product/etc"};
        for (int i = 0; i < 3; i++) {
            String str = strArr[i];
            File[] listFiles = new File(str).listFiles();
            if (listFiles == null) {
                Slog.w("SystemConfig", "Public libraries file folder missing: " + str);
            } else {
                for (File file : listFiles) {
                    String name = file.getName();
                    if (name.startsWith("public.libraries-") && name.endsWith(".txt")) {
                        readPublicLibrariesListFile(file);
                    }
                }
            }
        }
    }

    public final void readPublicLibrariesListFile(File file) {
        try {
            BufferedReader bufferedReader = new BufferedReader(new FileReader(file));
            while (true) {
                try {
                    String readLine = bufferedReader.readLine();
                    if (readLine != null) {
                        if (!readLine.isEmpty() && !readLine.startsWith("#")) {
                            String str = readLine.trim().split(" ")[0];
                            SharedLibraryEntry sharedLibraryEntry = new SharedLibraryEntry(str, str, new String[0], true);
                            this.mSharedLibraries.put(sharedLibraryEntry.name, sharedLibraryEntry);
                        }
                    } else {
                        bufferedReader.close();
                        return;
                    }
                } finally {
                }
            }
        } catch (IOException e) {
            Slog.w("SystemConfig", "Failed to read public libraries file " + file, e);
        }
    }

    public final String getApexModuleNameFromFilePath(Path path, Path path2) {
        if (!path.startsWith(path2)) {
            throw new IllegalArgumentException("File " + path + " is not part of an APEX.");
        }
        if (path.getNameCount() <= path2.getNameCount() + 1) {
            throw new IllegalArgumentException("File " + path + " is in the APEX partition, but not inside a module.");
        }
        return path.getName(path2.getNameCount()).toString();
    }

    public void readApexPrivAppPermissions(XmlPullParser xmlPullParser, File file, Path path) {
        String apexModuleNameFromFilePath = getApexModuleNameFromFilePath(file.toPath(), path);
        ArrayMap apexPrivilegedAppAllowlists = this.mPermissionAllowlist.getApexPrivilegedAppAllowlists();
        ArrayMap arrayMap = (ArrayMap) apexPrivilegedAppAllowlists.get(apexModuleNameFromFilePath);
        if (arrayMap == null) {
            arrayMap = new ArrayMap();
            apexPrivilegedAppAllowlists.put(apexModuleNameFromFilePath, arrayMap);
        }
        readPrivAppPermissions(xmlPullParser, arrayMap);
    }

    public static boolean isSystemProcess() {
        return Process.myUid() == 1000;
    }

    public static boolean isErofsSupported() {
        try {
            return Files.exists(Paths.get("/sys/fs/erofs", new String[0]), new LinkOption[0]);
        } catch (Exception unused) {
            return false;
        }
    }

    public static boolean isKernelVersionAtLeast(int i, int i2) {
        String[] split = VintfRuntimeInfo.getKernelVersion().split("\\.");
        if (split.length < 2) {
            return false;
        }
        try {
            int parseInt = Integer.parseInt(split[0]);
            return parseInt > i || (parseInt == i && Integer.parseInt(split[1]) >= i2);
        } catch (NumberFormatException unused) {
            return false;
        }
    }

    public final void SEServiceFeature() {
        boolean z;
        Slog.i("SystemConfig", "SEServiceFeature running");
        String trim = SystemProperties.get("ro.boot.product.hardware.sku", "").trim();
        String upperCase = SemSystemProperties.getCountryCode().toUpperCase(Locale.getDefault());
        Slog.d("SystemConfig", "NFC SKU: " + trim);
        Slog.d("SystemConfig", "eSE_COS: ");
        boolean z2 = true;
        boolean z3 = trim.startsWith("hce") && trim.contains("ese");
        if (((FeatureInfo) this.mAvailableFeatures.get("com.samsung.android.nfc.gpfelica")) != null) {
            Slog.d("SystemConfig", "support GP Felica");
            z = true;
        } else {
            z = false;
        }
        boolean z4 = "JAPAN".equals(upperCase) || "JP".equals(upperCase);
        Slog.d("SystemConfig", "countryCode: " + upperCase);
        Slog.d("SystemConfig", "isJapan: " + z4);
        if ((!z3 || z4) && !z) {
            z2 = false;
        }
        Slog.d("SystemConfig", "support eSE: " + z2);
        if (z2) {
            addFeature("android.hardware.se.omapi.ese", 0);
            Slog.i("SystemConfig", "add eSE secure element feature");
        } else {
            removeFeature("android.hardware.se.omapi.ese");
            Slog.i("SystemConfig", "removed eSE secure element feature: not support se");
        }
    }
}
