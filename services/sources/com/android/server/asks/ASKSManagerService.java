package com.android.server.asks;

import android.R;
import android.app.AppGlobals;
import android.app.Notification;
import android.app.NotificationManager;
import android.content.Context;
import android.content.pm.ASKSManager;
import android.content.pm.IASKSManager;
import android.content.pm.IPackageDeleteObserver;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.pm.PackageManagerInternal;
import android.content.pm.Signature;
import android.content.pm.SigningInfo;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.os.Binder;
import android.os.IBinder;
import android.os.IInstalld;
import android.os.Parcel;
import android.os.Process;
import android.os.RemoteException;
import android.os.ServiceManager;
import android.os.SystemClock;
import android.os.SystemProperties;
import android.os.UserHandle;
import android.provider.Settings;
import android.telephony.TelephonyManager;
import android.text.TextUtils;
import android.util.ArrayMap;
import android.util.AtomicFile;
import android.util.Log;
import android.util.Slog;
import android.util.Xml;
import android.util.jar.StrictJarFile;
import com.android.internal.notification.SystemNotificationChannels;
import com.android.internal.util.FastPrintWriter;
import com.android.internal.util.FastXmlSerializer;
import com.android.internal.util.jobs.XmlUtils;
import com.android.server.LocalServices;
import com.android.server.pm.PackageManagerServiceUtils;
import com.android.server.pm.parsing.pkg.AndroidPackageUtils;
import com.android.server.pm.pkg.AndroidPackage;
import com.android.server.pm.pkg.PackageStateInternal;
import com.samsung.android.feature.SemCscFeature;
import com.samsung.android.server.pm.install.UnknownSourceAppManager;
import com.samsung.android.service.EngineeringMode.EngineeringModeManager;
import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.FileReader;
import java.io.FilenameFilter;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.PrintWriter;
import java.io.UnsupportedEncodingException;
import java.net.URI;
import java.net.URISyntaxException;
import java.nio.charset.Charset;
import java.nio.charset.StandardCharsets;
import java.nio.file.Files;
import java.nio.file.Paths;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.security.cert.Certificate;
import java.security.cert.CertificateFactory;
import java.security.cert.X509Certificate;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Date;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.zip.ZipEntry;
import javax.xml.parsers.DocumentBuilder;
import javax.xml.parsers.DocumentBuilderFactory;
import javax.xml.transform.Transformer;
import javax.xml.transform.TransformerFactory;
import javax.xml.transform.dom.DOMSource;
import javax.xml.transform.stream.StreamResult;
import org.w3c.dom.Document;
import org.w3c.dom.Element;
import org.w3c.dom.Node;
import org.w3c.dom.NodeList;
import org.xml.sax.InputSource;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;
import org.xmlpull.v1.XmlPullParserFactory;
import org.xmlpull.v1.XmlSerializer;

/* loaded from: classes.dex */
public class ASKSManagerService extends IASKSManager.Stub {
    public static String mASKSPolicyVersion = "00000000";
    public boolean ASKS_UNKNOWN_LIMIT_CALLPEM;
    public InstalledAppInfo installedAppInfoToStore;
    public final Context mContext;
    public AtomicFile mFile;
    public PackageManagerInternal mPackageManagerInternal;
    public volatile boolean mSystemReady;
    public final String ADP_VERSION = "3.1";
    public final String ADP_POLICY_VERSION = "20230510";
    public final HashMap mASKSStates = new HashMap();
    public final HashMap mSessions = new HashMap();
    public boolean isFirstTime = true;
    public final String TAG_AASA = "AASA_ASKSManager";
    public final String TAG_ADP = "AASA_ASKSManager_ADP";
    public final String TAG_DELETABLE = "AASA_ASKSManager_DELETABLE";
    public final String TAG_EM = "AASA_ASKSManager_EM";
    public final String TAG_RESTRICTED = "AASA_ASKSManager_RESTRICTED";
    public final String TAG_RUFS = "AASA_ASKSManager_RUFS";
    public final String TAG_SECURETIME = "AASA_ASKSManager_SECURETIME";
    public final String TAG_UNKNOWN = "PackageInformation";
    public final String mUserVaultName = "AASA";
    public final int ASKS_UNKNOWN_TRUSTEDSTORE = 35;
    public final String ASKS_UNKNOWN_INSTALLER = "/data/system/.aasa/AASApolicy/ASKS_UNKNOWN_INSTALLER_NEW.xml";
    public final String ASKS_UNKNOWN_INSTALLER_ZIP = "/data/system/.aasa/AASApolicy/ASKS_UNKNOWN_INSTALLER_ZIP_NEW.xml";
    public final String ASKS_UNKNOWN_SA_REPORTED = "/data/system/.aasa/AASApolicy/ASKS_UNKNOWN_SA_REPORTED_NEW.xml";
    public final int AASA_CASE = 0;
    public final int ASKS_CASE = 1;
    public final int ADP_CASE = 2;
    public String ROOT_CERT_FILE = "/system/etc/ASKS_ROOT_1.crt";
    public String CA_CERT_PATH = "/data/system/.aasa/AASApolicy/ASKS_INTER_";
    public String CA_CERT_SYSTEM_PATH = "/system/etc/ASKS_INTER_";
    public String EE_CERT_FILE = "/system/etc/ASKS_EDGE_1.crt";
    public int TYPE_WIFI = 1;
    public int TYPE_MOBILE = 2;
    public int TYPE_NOT_CONNECTED = 0;
    public final String RESTRICTED_FROM_TOKEN = "Token";
    public final String RESTRICTED_FROM_POLICY = "Policy";
    public final int PROPERTY_ASKS_VERSION_ID = 1;
    public final boolean DEBUG_MODE = false;
    public boolean DEBUG_MODE_FOR_DEVELOPMENT = false;

    public int checkSecurityEnabled() {
        return 128;
    }

    public final String convertItoS(int i) {
        if (i == 0) {
            return "except";
        }
        if (i != 1) {
            if (i == 100) {
                return "warning";
            }
            if (i == 101) {
                return "warning_dev";
            }
            switch (i) {
                case 110:
                    return "warning0";
                case 111:
                    return "warning1";
                case 112:
                    return "warning2";
                case 113:
                    return "warning3";
                case 114:
                    return "warning4";
                default:
                    switch (i) {
                        case 120:
                            break;
                        case 121:
                            return "block1";
                        case 122:
                            return "block2";
                        case 123:
                            return "block3";
                        case 124:
                            return "block4";
                        default:
                            return "except";
                    }
            }
        }
        return "block";
    }

    /* JADX WARN: Type inference failed for: r0v1, types: [com.android.server.asks.ASKSManagerService, android.os.IBinder] */
    public static ASKSManagerService main(Context context) {
        Slog.i("ASKSManager", "main starts");
        ?? aSKSManagerService = new ASKSManagerService(context);
        ServiceManager.addService("asks", (IBinder) aSKSManagerService);
        Slog.i("ASKSManager", "main ends");
        return aSKSManagerService;
    }

    /* JADX WARN: Can't wrap try/catch for region: R(11:1|(5:27|28|(1:32)|33|(9:35|36|4|(1:6)|(1:8)|9|10|11|(1:22)(2:15|(2:17|18)(2:20|21))))|3|4|(0)|(0)|9|10|11|(2:13|22)(1:23)|(1:(0))) */
    /* JADX WARN: Code restructure failed: missing block: B:25:0x0115, code lost:
    
        r8 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:26:0x0116, code lost:
    
        r8.printStackTrace();
     */
    /* JADX WARN: Removed duplicated region for block: B:6:0x0107  */
    /* JADX WARN: Removed duplicated region for block: B:8:0x010e  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public ASKSManagerService(android.content.Context r8) {
        /*
            Method dump skipped, instructions count: 329
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.server.asks.ASKSManagerService.<init>(android.content.Context):void");
    }

    public final boolean isSubSystemUid(int i) {
        return i % 10000 == 1000;
    }

    public final void enforceSystemOrRoot(String str) {
        int callingUid = Binder.getCallingUid();
        if (Binder.getCallingPid() == Process.myPid() || callingUid == 0 || callingUid == 1000 || isSubSystemUid(callingUid)) {
            return;
        }
        throw new SecurityException(callingUid + " : " + str);
    }

    public final boolean enforceSystemOrRoot() {
        int callingUid = Binder.getCallingUid();
        return Binder.getCallingPid() == Process.myPid() || callingUid == 0 || callingUid == 1000 || isSubSystemUid(callingUid);
    }

    public final PackageManagerInternal getPackageManagerInternal() {
        if (this.mPackageManagerInternal == null) {
            this.mPackageManagerInternal = (PackageManagerInternal) LocalServices.getService(PackageManagerInternal.class);
        }
        return this.mPackageManagerInternal;
    }

    public void systemReady() {
        enforceSystemOrRoot("Only the system can claim the system is ready");
        this.mSystemReady = true;
        checkDeletableListForASKS();
        SystemProperties.set("security.ASKS.rufs_enable", String.valueOf(true));
        SystemProperties.set("security.ASKS.smsfilter_enable", String.valueOf(checkSmsFilterEnabled()));
        SystemProperties.set("security.ASKS.smsfilter_target", String.valueOf(checkIfSmsFilterTarget()));
        setExpirationDate();
    }

    public boolean onTransact(int i, Parcel parcel, Parcel parcel2, int i2) {
        try {
            return super.onTransact(i, parcel, parcel2, i2);
        } catch (RuntimeException e) {
            if (!(e instanceof SecurityException) && !(e instanceof IllegalArgumentException)) {
                Slog.wtf("ASKSManager", "ASKS Manager Crash", e);
            }
            throw e;
        }
    }

    public int verifyASKStokenForPackage(String str, String str2, long j, Signature[] signatureArr, String str3, String str4, boolean z) {
        enforceSystemOrRoot("Only the system can claim verifyASKStokenForPackage");
        if (this.isFirstTime) {
            this.isFirstTime = false;
            readyForBooting(this.mContext);
        }
        Slog.i("AASA_ASKSManager", "ASKS_VERSION: 8.3  ::" + mASKSPolicyVersion);
        Slog.i("AASA_ASKSManager", "initiating = " + str4 + ", installer = " + str3);
        String str5 = null;
        if (checkListForASKS(19, str, null) != -1) {
            try {
                str5 = getAdvancedHash(str2);
            } catch (IOException unused) {
            }
            if (checkListForASKS(19, str, str5) != -1) {
                return -7;
            }
        }
        ASKSSession openSession = openSession(str);
        if (str5 != null) {
            openSession.setPkgDigest(str5);
        }
        openSession.setSignature(signatureArr);
        int isSignatureMatched = isSignatureMatched(str, signatureArr);
        if (isSignatureMatched == -1) {
            return -1;
        }
        openSession.setASKSTarget(true);
        int parsePackageForASKS = parsePackageForASKS(openSession, str, str2, j, str3, str4, isSignatureMatched, z);
        if (parsePackageForASKS != -1) {
            closeSession(openSession, str);
        }
        return parsePackageForASKS;
    }

    /* JADX WARN: Removed duplicated region for block: B:35:0x018f  */
    /* JADX WARN: Removed duplicated region for block: B:38:0x019c  */
    /* JADX WARN: Removed duplicated region for block: B:49:0x01dd  */
    /* JADX WARN: Removed duplicated region for block: B:53:0x020f  */
    /* JADX WARN: Removed duplicated region for block: B:56:0x0228  */
    /* JADX WARN: Removed duplicated region for block: B:59:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:60:0x01e5  */
    /* JADX WARN: Removed duplicated region for block: B:63:0x01cc  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public void postASKSsetup(java.lang.String r11, java.lang.String r12, int r13) {
        /*
            Method dump skipped, instructions count: 556
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.server.asks.ASKSManagerService.postASKSsetup(java.lang.String, java.lang.String, int):void");
    }

    public final void ComparisonBeforeSetData(InstalledAppInfo installedAppInfo, String str) {
        if (installedAppInfo != null && str != null) {
            if (str.equals(installedAppInfo.name)) {
                ArrayList installedAppsDataFromXML = getInstalledAppsDataFromXML("isInstalledList", null);
                if (installedAppsDataFromXML == null || !installedAppsDataFromXML.contains(str)) {
                    Slog.i("PackageInformation", str + " is registered to info_list");
                    setDataToDeviceForModifyUnknownApp(1, installedAppInfo);
                    clearInstalledAppInfoToStore();
                    return;
                }
                return;
            }
            Slog.w("PackageInformation", str + " are different in info_list");
            return;
        }
        Slog.w("PackageInformation", "PackageInfo in info_list");
    }

    public final void clearPackageFromFile(String str, String str2) {
        HashMap hashMap = new HashMap();
        getDataByDevice(str, hashMap);
        if (hashMap.containsKey(str2)) {
            hashMap.remove(str2);
            int size = hashMap.size();
            Slog.i("PackageInformation", "clearPackageFromFile() : count:" + size);
            if (size > 100 || (r9 = hashMap.entrySet().iterator()) == null) {
                return;
            }
            try {
                File file = new File(str);
                if (file.exists()) {
                    if (file.delete()) {
                        Slog.i("ASKSManager", "File is deleted");
                    } else {
                        Slog.e("ASKSManager", "File is not deleted");
                    }
                }
                FastPrintWriter fastPrintWriter = new FastPrintWriter(new FileOutputStream(file, false));
                for (Map.Entry entry : hashMap.entrySet()) {
                    String str3 = (String) entry.getKey();
                    ArrayList arrayList = (ArrayList) entry.getValue();
                    if (arrayList != null && arrayList.size() == 1) {
                        if ("noCert".equals(arrayList.get(0))) {
                            fastPrintWriter.println(str3);
                            Slog.i("PackageInformation", "clearPackageFromFile() : adding  :: pkg =" + str3);
                        } else {
                            fastPrintWriter.println(str3 + "," + ((String) arrayList.get(0)));
                            StringBuilder sb = new StringBuilder();
                            sb.append("clearPackageFromFile() : adding  :: pkg =");
                            sb.append(str3);
                            Slog.i("PackageInformation", sb.toString());
                        }
                    }
                    size--;
                    if (size == 0) {
                        break;
                    }
                }
                fastPrintWriter.flush();
                fastPrintWriter.close();
            } catch (IOException e) {
                e.printStackTrace();
            }
        }
    }

    public void clearASKSruleForRemovedPackage(String str) {
        boolean z;
        enforceSystemOrRoot("Only the system can claim clearASKSruleForRemovedPackage");
        if (((ASKSState) this.mASKSStates.get(str)) != null) {
            this.mASKSStates.remove(str);
            z = true;
        } else {
            z = false;
        }
        if (z) {
            writeState();
        }
        InstalledAppInfo installedAppInfo = new InstalledAppInfo();
        installedAppInfo.set(str, null, null, null, null, null, null, null);
        setDataToDeviceForModifyUnknownApp(3, installedAppInfo);
        clearPackageFromFile("/data/system/.aasa/AASApolicy/ASKS_UNKNOWN_SA_REPORTED_NEW.xml", str);
    }

    public int checkRestrictedPermission(String str, String str2) {
        Restrict restrict;
        ASKSState aSKSState = (ASKSState) this.mASKSStates.get(str);
        if (aSKSState == null || (restrict = aSKSState.getRestrict()) == null) {
            return 0;
        }
        String dateLimit = restrict.getDateLimit();
        String trustedToday = getTrustedToday();
        return (trustedToday == null || dateLimit == null || Integer.parseInt(trustedToday) <= Integer.parseInt(dateLimit) || restrict.getPermissionList() == null || !restrict.getPermissionList().contains(str2)) ? 0 : 4;
    }

    public byte[] getSEInfo(String str) {
        enforceSystemOrRoot("Only the system can claim getSEInfo");
        byte[] bytes = "aasa_blocked".getBytes();
        ASKSState aSKSState = (ASKSState) this.mASKSStates.get(str);
        if (str != null && aSKSState != null) {
            Restrict restrict = aSKSState.getRestrict();
            int eMMode = aSKSState.getEMMode();
            if (restrict != null && "DENY".equals(restrict.getType())) {
                String dateLimit = restrict.getDateLimit();
                String trustedToday = getTrustedToday();
                if (trustedToday != null && dateLimit != null && Integer.parseInt(trustedToday) > Integer.parseInt(dateLimit)) {
                    return bytes;
                }
            }
            if (eMMode != -1) {
                EngineeringModeManager engineeringModeManager = new EngineeringModeManager(this.mContext);
                if (engineeringModeManager.isConnected() && engineeringModeManager.getStatus(eMMode) == 1) {
                    return null;
                }
                return bytes;
            }
        }
        return null;
    }

    public List getIMEIList() {
        TelephonyManager telephonyManager = (TelephonyManager) this.mContext.getSystemService("phone");
        ArrayList arrayList = new ArrayList();
        if (telephonyManager != null) {
            int phoneCount = telephonyManager.getPhoneCount();
            if (phoneCount > 0) {
                for (int i = 0; i < phoneCount; i++) {
                    if (telephonyManager.getImei(i) != null) {
                        arrayList.add(getSHA256ForPkgName(telephonyManager.getImei(i)));
                        Slog.d("ASKSManager", "ASKSI added list");
                    }
                }
            } else {
                String imei = telephonyManager.getImei();
                if (imei == null && (imei = telephonyManager.getDeviceId()) == null) {
                    imei = "INVALID_IMEI";
                }
                Slog.d("ASKSManager", "ASKSI added list 2");
                arrayList.add(getSHA256ForPkgName(imei));
            }
        }
        return arrayList;
    }

    public boolean checkFollowingLegitimateWay(String str, int i) {
        enforceSystemOrRoot("Only the system can claim checkFollowingLegitimateWay");
        if (this.mSessions.containsKey(str)) {
            return true;
        }
        Slog.i("ASKSManager", str + " has not followed legitimate way");
        return false;
    }

    public void checkDeletableListForASKS() {
        if (enforceSystemOrRoot()) {
            String trustedToday = getTrustedToday();
            HashMap hashMap = (HashMap) this.mASKSStates.clone();
            for (Map.Entry entry : hashMap.entrySet()) {
                ASKSState aSKSState = (ASKSState) hashMap.get(entry.getKey());
                if (aSKSState.getDeletable() != null) {
                    String dateLimit = aSKSState.getDeletable().getDateLimit();
                    if (trustedToday != null && dateLimit != null) {
                        try {
                            if (Integer.parseInt(trustedToday) > Integer.parseInt(dateLimit)) {
                                AndroidPackage androidPackage = getPackageManagerInternal().getPackage((String) entry.getKey());
                                aSKSState.setDeletable(null);
                                if (androidPackage != null && androidPackage.getBaseApkPath().startsWith("/data")) {
                                    try {
                                        PackageManagerServiceUtils.logCriticalInfo(4, "a app deleted by the restricted policy. the date is expired [" + ((String) entry.getKey()) + "]");
                                        AppGlobals.getPackageManager().deletePackageAsUser((String) entry.getKey(), -1, (IPackageDeleteObserver) null, this.mContext.getUserId(), 0);
                                    } catch (RemoteException unused) {
                                    }
                                } else {
                                    Slog.i("AASA_ASKSManager_DELETABLE", "does not found delete target - " + ((String) entry.getKey()));
                                }
                                writeState();
                            }
                        } catch (NumberFormatException unused2) {
                            Slog.d("AASA_ASKSManager_DELETABLE", "NumberFormatException ::");
                        }
                    }
                }
            }
            return;
        }
        Slog.e("AASA_ASKSManager_DELETABLE", "ERROR::: Unknown caller");
    }

    public String getUNvalueForASKS() {
        enforceSystemOrRoot("Only the system can claim getUNvalueForASKS");
        if (!this.DEBUG_MODE_FOR_DEVELOPMENT && "0x1".equals(SystemProperties.get("ro.boot.em.status"))) {
            return SystemProperties.get("ro.serialno", "none");
        }
        return null;
    }

    public String[] checkASKSTarget(int i) {
        int i2;
        if (enforceSystemOrRoot()) {
            Slog.i("AASA_ASKSManager", " checkASKSTarget type:" + i);
            ArrayList arrayList = new ArrayList();
            HashMap hashMap = new HashMap();
            ArrayMap packageStates = getPackageManagerInternal().getPackageStates();
            getASKSDataFromXML(9, hashMap);
            if (hashMap.size() != 0 && packageStates != null) {
                Iterator it = packageStates.values().iterator();
                while (true) {
                    if (!it.hasNext()) {
                        break;
                    }
                    AndroidPackage androidPackage = ((PackageStateInternal) it.next()).getAndroidPackage();
                    if (androidPackage != null) {
                        int i3 = 1;
                        i2 = (AndroidPackageUtils.generateAppInfoWithoutState(androidPackage).privateFlags & 8) == 0 ? (AndroidPackageUtils.generateAppInfoWithoutState(androidPackage).flags & 1) != 0 ? 0 : 1 : 0;
                        if (AndroidPackageUtils.generateAppInfoWithoutState(androidPackage).isUpdatedSystemApp()) {
                            Slog.i("AASA_ASKSManager", "isUpdatedSystemApp:" + androidPackage.getPackageName());
                        } else {
                            i3 = i2;
                        }
                        if (i3 != 0 && isSignatureMatched(androidPackage.getPackageName(), androidPackage.getSigningDetails().getSignatures()) != -1) {
                            String sHA256ForPkgName = getSHA256ForPkgName(androidPackage.getPackageName());
                            if (hashMap.containsKey(sHA256ForPkgName)) {
                                Slog.e("AASA_ASKSManager", "checkDevice Target app :" + androidPackage.getPackageName() + " ::" + sHA256ForPkgName);
                                if (((ArrayList) hashMap.get(sHA256ForPkgName)).contains(getApkFileHash(androidPackage.getBaseApkPath())) && !arrayList.contains(androidPackage.getPackageName())) {
                                    Slog.e("AASA_ASKSManager", androidPackage.getPackageName() + " is in Blist");
                                    arrayList.add(androidPackage.getPackageName());
                                }
                            }
                        }
                    }
                }
                if (arrayList.size() != 0) {
                    String[] strArr = new String[arrayList.size()];
                    while (i2 < arrayList.size()) {
                        strArr[i2] = (String) arrayList.get(i2);
                        Slog.e("AASA_ASKSManager", "return value[" + i2 + "]:" + strArr[i2]);
                        i2++;
                    }
                    return strArr;
                }
            }
        }
        return null;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:61:0x00c7 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Type inference failed for: r9v0, types: [java.lang.String] */
    /* JADX WARN: Type inference failed for: r9v2 */
    /* JADX WARN: Type inference failed for: r9v5, types: [java.io.BufferedReader] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final void getDataByDevice(java.lang.String r9, java.util.HashMap r10) {
        /*
            r8 = this;
            r8 = 0
            java.io.File r0 = new java.io.File     // Catch: java.lang.Throwable -> Lb2 java.io.IOException -> Lb7
            r0.<init>(r9)     // Catch: java.lang.Throwable -> Lb2 java.io.IOException -> Lb7
            boolean r1 = r0.exists()     // Catch: java.lang.Throwable -> Lb2 java.io.IOException -> Lb7
            java.lang.String r2 = "APKFromUnknownSource"
            if (r1 == 0) goto L98
            long r3 = r0.length()     // Catch: java.lang.Throwable -> Lb2 java.io.IOException -> Lb7
            r5 = 10000(0x2710, double:4.9407E-320)
            int r1 = (r3 > r5 ? 1 : (r3 == r5 ? 0 : -1))
            if (r1 >= 0) goto L84
            java.io.FileReader r1 = new java.io.FileReader     // Catch: java.lang.Throwable -> Lb2 java.io.IOException -> Lb7
            r1.<init>(r9)     // Catch: java.lang.Throwable -> Lb2 java.io.IOException -> Lb7
            java.lang.StringBuilder r3 = new java.lang.StringBuilder     // Catch: java.lang.Throwable -> Lb2 java.io.IOException -> Lb7
            r3.<init>()     // Catch: java.lang.Throwable -> Lb2 java.io.IOException -> Lb7
            java.lang.String r4 = "size = "
            r3.append(r4)     // Catch: java.lang.Throwable -> Lb2 java.io.IOException -> Lb7
            long r4 = r0.length()     // Catch: java.lang.Throwable -> Lb2 java.io.IOException -> Lb7
            r3.append(r4)     // Catch: java.lang.Throwable -> Lb2 java.io.IOException -> Lb7
            java.lang.String r0 = " :"
            r3.append(r0)     // Catch: java.lang.Throwable -> Lb2 java.io.IOException -> Lb7
            r3.append(r9)     // Catch: java.lang.Throwable -> Lb2 java.io.IOException -> Lb7
            java.lang.String r9 = r3.toString()     // Catch: java.lang.Throwable -> Lb2 java.io.IOException -> Lb7
            android.util.Slog.i(r2, r9)     // Catch: java.lang.Throwable -> Lb2 java.io.IOException -> Lb7
            java.io.BufferedReader r9 = new java.io.BufferedReader     // Catch: java.lang.Throwable -> Lb2 java.io.IOException -> Lb7
            r9.<init>(r1)     // Catch: java.lang.Throwable -> Lb2 java.io.IOException -> Lb7
        L43:
            java.lang.String r8 = r9.readLine()     // Catch: java.io.IOException -> L82 java.lang.Throwable -> Lc4
            if (r8 == 0) goto L7d
            java.lang.String r0 = ","
            java.lang.String[] r8 = r8.split(r0)     // Catch: java.io.IOException -> L82 java.lang.Throwable -> Lc4
            if (r8 == 0) goto L43
            int r0 = r8.length     // Catch: java.io.IOException -> L82 java.lang.Throwable -> Lc4
            r2 = 1
            if (r0 != r2) goto L59
            java.lang.String r0 = "noCert"
            goto L5f
        L59:
            int r0 = r8.length     // Catch: java.io.IOException -> L82 java.lang.Throwable -> Lc4
            r3 = 2
            if (r0 != r3) goto L78
            r0 = r8[r2]     // Catch: java.io.IOException -> L82 java.lang.Throwable -> Lc4
        L5f:
            if (r10 == 0) goto L43
            r2 = 0
            r3 = r8[r2]     // Catch: java.io.IOException -> L82 java.lang.Throwable -> Lc4
            boolean r3 = r10.containsKey(r3)     // Catch: java.io.IOException -> L82 java.lang.Throwable -> Lc4
            if (r3 != 0) goto L43
            java.util.ArrayList r3 = new java.util.ArrayList     // Catch: java.io.IOException -> L82 java.lang.Throwable -> Lc4
            r3.<init>()     // Catch: java.io.IOException -> L82 java.lang.Throwable -> Lc4
            r3.add(r0)     // Catch: java.io.IOException -> L82 java.lang.Throwable -> Lc4
            r8 = r8[r2]     // Catch: java.io.IOException -> L82 java.lang.Throwable -> Lc4
            r10.put(r8, r3)     // Catch: java.io.IOException -> L82 java.lang.Throwable -> Lc4
            goto L43
        L78:
            if (r10 == 0) goto L7d
            r10.clear()     // Catch: java.io.IOException -> L82 java.lang.Throwable -> Lc4
        L7d:
            r1.close()     // Catch: java.io.IOException -> L82 java.lang.Throwable -> Lc4
            r8 = r9
            goto Lac
        L82:
            r8 = move-exception
            goto Lbb
        L84:
            boolean r9 = r0.delete()     // Catch: java.lang.Throwable -> Lb2 java.io.IOException -> Lb7
            java.lang.String r10 = "ASKSManager"
            if (r9 == 0) goto L92
            java.lang.String r9 = "BigSize File is deleted"
            android.util.Slog.i(r10, r9)     // Catch: java.lang.Throwable -> Lb2 java.io.IOException -> Lb7
            goto Lac
        L92:
            java.lang.String r9 = "BigSize file is not deleted"
            android.util.Slog.e(r10, r9)     // Catch: java.lang.Throwable -> Lb2 java.io.IOException -> Lb7
            goto Lac
        L98:
            java.lang.StringBuilder r10 = new java.lang.StringBuilder     // Catch: java.lang.Throwable -> Lb2 java.io.IOException -> Lb7
            r10.<init>()     // Catch: java.lang.Throwable -> Lb2 java.io.IOException -> Lb7
            r10.append(r9)     // Catch: java.lang.Throwable -> Lb2 java.io.IOException -> Lb7
            java.lang.String r9 = " does not exist."
            r10.append(r9)     // Catch: java.lang.Throwable -> Lb2 java.io.IOException -> Lb7
            java.lang.String r9 = r10.toString()     // Catch: java.lang.Throwable -> Lb2 java.io.IOException -> Lb7
            android.util.Slog.i(r2, r9)     // Catch: java.lang.Throwable -> Lb2 java.io.IOException -> Lb7
        Lac:
            if (r8 == 0) goto Lc3
            r8.close()     // Catch: java.io.IOException -> Lc3
            goto Lc3
        Lb2:
            r9 = move-exception
            r7 = r9
            r9 = r8
            r8 = r7
            goto Lc5
        Lb7:
            r9 = move-exception
            r7 = r9
            r9 = r8
            r8 = r7
        Lbb:
            r8.printStackTrace()     // Catch: java.lang.Throwable -> Lc4
            if (r9 == 0) goto Lc3
            r9.close()     // Catch: java.io.IOException -> Lc3
        Lc3:
            return
        Lc4:
            r8 = move-exception
        Lc5:
            if (r9 == 0) goto Lca
            r9.close()     // Catch: java.io.IOException -> Lca
        Lca:
            throw r8
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.server.asks.ASKSManagerService.getDataByDevice(java.lang.String, java.util.HashMap):void");
    }

    public final void setDataToDevice(String str, String str2, Signature[] signatureArr) {
        try {
            File file = new File(str);
            if (file.length() < 10000) {
                Slog.i("APKFromUnknownSource", str + " adding.");
                FastPrintWriter fastPrintWriter = new FastPrintWriter(new FileOutputStream(file, true));
                if (signatureArr != null && signatureArr.length >= 1) {
                    String sigHash = getSigHash(signatureArr[0]);
                    if (sigHash != null) {
                        fastPrintWriter.println(str2 + "," + sigHash);
                    }
                } else {
                    fastPrintWriter.println(str2);
                }
                fastPrintWriter.flush();
                fastPrintWriter.close();
                return;
            }
            Slog.i("APKFromUnknownSource", str + " init..");
            FastPrintWriter fastPrintWriter2 = new FastPrintWriter(new FileOutputStream(file, false));
            if (signatureArr != null && signatureArr.length >= 1) {
                String sigHash2 = getSigHash(signatureArr[0]);
                if (sigHash2 != null) {
                    fastPrintWriter2.println(str2 + "," + sigHash2);
                }
            } else {
                fastPrintWriter2.println(str2);
            }
            fastPrintWriter2.flush();
            fastPrintWriter2.close();
        } catch (IOException e) {
            e.printStackTrace();
        } catch (NoSuchAlgorithmException e2) {
            e2.printStackTrace();
        }
    }

    public final String getSigHash(Signature signature) {
        MessageDigest messageDigest = MessageDigest.getInstance("SHA-256");
        messageDigest.update(signature.toByteArray());
        return convertToHex(messageDigest.digest());
    }

    /* JADX WARN: Removed duplicated region for block: B:48:0x0099 A[Catch: IOException -> 0x0095, TRY_LEAVE, TryCatch #1 {IOException -> 0x0095, blocks: (B:55:0x0091, B:48:0x0099), top: B:54:0x0091 }] */
    /* JADX WARN: Removed duplicated region for block: B:54:0x0091 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final java.lang.String getScpmPolicyVersion(java.lang.String r6) {
        /*
            r5 = this;
            java.lang.String r5 = "00000000"
            r0 = 0
            java.io.FileInputStream r1 = new java.io.FileInputStream     // Catch: java.lang.Throwable -> L6f java.io.IOException -> L72
            r1.<init>(r6)     // Catch: java.lang.Throwable -> L6f java.io.IOException -> L72
            java.util.zip.ZipInputStream r6 = new java.util.zip.ZipInputStream     // Catch: java.lang.Throwable -> L66 java.io.IOException -> L69
            r6.<init>(r1)     // Catch: java.lang.Throwable -> L66 java.io.IOException -> L69
        Ld:
            java.util.zip.ZipEntry r0 = r6.getNextEntry()     // Catch: java.io.IOException -> L61 java.lang.Throwable -> L8d
            if (r0 == 0) goto L55
            java.io.PrintStream r2 = java.lang.System.out     // Catch: java.io.IOException -> L61 java.lang.Throwable -> L8d
            java.lang.String r3 = r0.getName()     // Catch: java.io.IOException -> L61 java.lang.Throwable -> L8d
            r2.println(r3)     // Catch: java.io.IOException -> L61 java.lang.Throwable -> L8d
            java.lang.String r2 = "version.txt"
            java.lang.String r0 = r0.getName()     // Catch: java.io.IOException -> L61 java.lang.Throwable -> L8d
            boolean r0 = r2.equals(r0)     // Catch: java.io.IOException -> L61 java.lang.Throwable -> L8d
            if (r0 == 0) goto L51
            r0 = 8
            byte[] r2 = new byte[r0]     // Catch: java.io.IOException -> L61 java.lang.Throwable -> L8d
            r3 = 0
            r6.read(r2, r3, r0)     // Catch: java.io.IOException -> L61 java.lang.Throwable -> L8d
            java.lang.String r0 = new java.lang.String     // Catch: java.io.IOException -> L61 java.lang.Throwable -> L8d
            r0.<init>(r2)     // Catch: java.io.IOException -> L61 java.lang.Throwable -> L8d
            java.lang.String r5 = "AASA_ASKSManager_RUFS"
            java.lang.StringBuilder r2 = new java.lang.StringBuilder     // Catch: java.io.IOException -> L4f java.lang.Throwable -> L8d
            r2.<init>()     // Catch: java.io.IOException -> L4f java.lang.Throwable -> L8d
            java.lang.String r3 = "scpm policy version : "
            r2.append(r3)     // Catch: java.io.IOException -> L4f java.lang.Throwable -> L8d
            r2.append(r0)     // Catch: java.io.IOException -> L4f java.lang.Throwable -> L8d
            java.lang.String r2 = r2.toString()     // Catch: java.io.IOException -> L4f java.lang.Throwable -> L8d
            android.util.Slog.i(r5, r2)     // Catch: java.io.IOException -> L4f java.lang.Throwable -> L8d
            r5 = r0
            goto L51
        L4f:
            r5 = move-exception
            goto L77
        L51:
            r6.closeEntry()     // Catch: java.io.IOException -> L61 java.lang.Throwable -> L8d
            goto Ld
        L55:
            r1.close()     // Catch: java.io.IOException -> L5c
            r6.close()     // Catch: java.io.IOException -> L5c
            goto L8c
        L5c:
            r6 = move-exception
            r6.printStackTrace()
            goto L8c
        L61:
            r0 = move-exception
            r4 = r0
            r0 = r5
            r5 = r4
            goto L77
        L66:
            r5 = move-exception
            r6 = r0
            goto L8e
        L69:
            r6 = move-exception
            r4 = r0
            r0 = r5
            r5 = r6
            r6 = r4
            goto L77
        L6f:
            r5 = move-exception
            r6 = r0
            goto L8f
        L72:
            r6 = move-exception
            r1 = r0
            r0 = r5
            r5 = r6
            r6 = r1
        L77:
            r5.printStackTrace()     // Catch: java.lang.Throwable -> L8d
            if (r1 == 0) goto L82
            r1.close()     // Catch: java.io.IOException -> L80
            goto L82
        L80:
            r5 = move-exception
            goto L88
        L82:
            if (r6 == 0) goto L8b
            r6.close()     // Catch: java.io.IOException -> L80
            goto L8b
        L88:
            r5.printStackTrace()
        L8b:
            r5 = r0
        L8c:
            return r5
        L8d:
            r5 = move-exception
        L8e:
            r0 = r1
        L8f:
            if (r0 == 0) goto L97
            r0.close()     // Catch: java.io.IOException -> L95
            goto L97
        L95:
            r6 = move-exception
            goto L9d
        L97:
            if (r6 == 0) goto La0
            r6.close()     // Catch: java.io.IOException -> L95
            goto La0
        L9d:
            r6.printStackTrace()
        La0:
            throw r5
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.server.asks.ASKSManagerService.getScpmPolicyVersion(java.lang.String):java.lang.String");
    }

    public final void deleteFile(String str) {
        File file = new File(str);
        if (file.exists()) {
            if (file.delete()) {
                Slog.i("PackageInformation", "delete File : " + file.getName() + " success");
                return;
            }
            Slog.e("PackageInformation", "delete File : " + file.getName() + " fail");
            return;
        }
        Slog.w("PackageInformation", file.getName() + " is does not exist");
    }

    public final void applyExecutePolicy() {
        if (this.mContext != null) {
            ArrayList installedAppsDataFromXML = getInstalledAppsDataFromXML("blockExecute", null);
            ArrayList installedAppsDataFromXML2 = getInstalledAppsDataFromXML("allowExecute", null);
            if (installedAppsDataFromXML != null && !installedAppsDataFromXML.isEmpty()) {
                UnknownSourceAppManager.Helper helper = new UnknownSourceAppManager.Helper();
                int size = installedAppsDataFromXML.size();
                String[] strArr = new String[size];
                for (int i = 0; i < size; i++) {
                    strArr[i] = (String) installedAppsDataFromXML.get(i);
                    if (isDevDevice()) {
                        Slog.d("PackageInformation", "B::" + strArr[i]);
                    }
                }
                helper.suspendUnknownSourceAppsForAllUsers(this.mContext, strArr, true);
            }
            if (installedAppsDataFromXML2 == null || installedAppsDataFromXML2.isEmpty()) {
                return;
            }
            UnknownSourceAppManager.Helper helper2 = new UnknownSourceAppManager.Helper();
            int size2 = installedAppsDataFromXML2.size();
            String[] strArr2 = new String[size2];
            for (int i2 = 0; i2 < size2; i2++) {
                strArr2[i2] = (String) installedAppsDataFromXML2.get(i2);
                if (isDevDevice()) {
                    Slog.d("PackageInformation", "A::" + strArr2[i2]);
                }
            }
            helper2.suspendUnknownSourceAppsForAllUsers(this.mContext, strArr2, false);
        }
    }

    public String checkIfSuspiciousValue(String str, String str2, boolean z, Map map) {
        FileInputStream fileInputStream;
        enforceSystemOrRoot("Only the system and sub system can claim checkIfTargetFromManager()");
        String str3 = null;
        if (!new File(str2).exists()) {
            return null;
        }
        try {
            fileInputStream = new FileInputStream(new File(str2));
        } catch (Exception e) {
            e.printStackTrace();
        }
        try {
            XmlPullParser newPullParser = Xml.newPullParser();
            newPullParser.setFeature("http://xmlpull.org/v1/doc/features.html#process-namespaces", false);
            newPullParser.setInput(fileInputStream, null);
            String str4 = "";
            String str5 = "";
            for (int eventType = newPullParser.getEventType(); eventType != 1; eventType = newPullParser.next()) {
                String name = newPullParser.getName();
                if (eventType == 2) {
                    if (name != null && name.equalsIgnoreCase("contents")) {
                        str4 = newPullParser.getAttributeValue(null, "value");
                        String attributeValue = newPullParser.getAttributeValue(null, "type");
                        if (attributeValue == null) {
                            attributeValue = "block";
                        }
                        str5 = attributeValue;
                    } else if (name != null && name.equalsIgnoreCase("pId") && str4 != null) {
                        try {
                            if (z) {
                                if (str.contains(str4)) {
                                    str = newPullParser.getAttributeValue(null, "value");
                                    map.put("type", str5);
                                    map.put("contents", str4);
                                    str3 = str;
                                    break;
                                }
                            } else if (str4.equals(str)) {
                                str = newPullParser.getAttributeValue(null, "value");
                                map.put("type", str5);
                                map.put("contents", str4);
                                str3 = str;
                                break;
                            }
                        } catch (Throwable th) {
                            str3 = str;
                            th = th;
                            try {
                                fileInputStream.close();
                            } catch (Throwable th2) {
                                th.addSuppressed(th2);
                            }
                            throw th;
                        }
                    }
                }
            }
            fileInputStream.close();
            return str3;
        } catch (Throwable th3) {
            th = th3;
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:17:0x0043, code lost:
    
        r0 = r6.getAttributeValue(null, "value");
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public java.lang.String getPolicyVersion(java.lang.String r6) {
        /*
            r5 = this;
            java.lang.String r0 = "Only the system and sub system can claim getPolicyVersion()"
            r5.enforceSystemOrRoot(r0)
            java.io.File r5 = new java.io.File
            r5.<init>(r6)
            boolean r5 = r5.exists()
            java.lang.String r0 = "00000000"
            if (r5 != 0) goto L13
            return r0
        L13:
            java.io.FileInputStream r5 = new java.io.FileInputStream     // Catch: java.lang.Exception -> L5f
            java.io.File r1 = new java.io.File     // Catch: java.lang.Exception -> L5f
            r1.<init>(r6)     // Catch: java.lang.Exception -> L5f
            r5.<init>(r1)     // Catch: java.lang.Exception -> L5f
            org.xmlpull.v1.XmlPullParser r6 = android.util.Xml.newPullParser()     // Catch: java.lang.Throwable -> L55
            java.lang.String r1 = "http://xmlpull.org/v1/doc/features.html#process-namespaces"
            r2 = 0
            r6.setFeature(r1, r2)     // Catch: java.lang.Throwable -> L55
            r1 = 0
            r6.setInput(r5, r1)     // Catch: java.lang.Throwable -> L55
            int r2 = r6.getEventType()     // Catch: java.lang.Throwable -> L55
        L2f:
            r3 = 1
            if (r2 == r3) goto L51
            java.lang.String r3 = r6.getName()     // Catch: java.lang.Throwable -> L55
            r4 = 2
            if (r2 != r4) goto L4c
            if (r3 == 0) goto L4c
            java.lang.String r2 = "VERSION"
            boolean r2 = r3.equalsIgnoreCase(r2)     // Catch: java.lang.Throwable -> L55
            if (r2 == 0) goto L4c
            java.lang.String r2 = "value"
            java.lang.String r6 = r6.getAttributeValue(r1, r2)     // Catch: java.lang.Throwable -> L55
            r0 = r6
            goto L51
        L4c:
            int r2 = r6.next()     // Catch: java.lang.Throwable -> L55
            goto L2f
        L51:
            r5.close()     // Catch: java.lang.Exception -> L5f
            goto L63
        L55:
            r6 = move-exception
            r5.close()     // Catch: java.lang.Throwable -> L5a
            goto L5e
        L5a:
            r5 = move-exception
            r6.addSuppressed(r5)     // Catch: java.lang.Exception -> L5f
        L5e:
            throw r6     // Catch: java.lang.Exception -> L5f
        L5f:
            r5 = move-exception
            r5.printStackTrace()
        L63:
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.server.asks.ASKSManagerService.getPolicyVersion(java.lang.String):java.lang.String");
    }

    public boolean isSuspiciousMsgTarget(String str) {
        enforceSystemOrRoot("Only the system and sub system can claim isTargetDevice()");
        boolean z = false;
        if (!new File("/data/system/.aasa/AASApolicy/ASKS_SPAM_CONFIG.xml").exists()) {
            Slog.i("ASKSManager", "setConfig does not exist.");
            return false;
        }
        try {
            FileInputStream fileInputStream = new FileInputStream(new File("/data/system/.aasa/AASApolicy/ASKS_SPAM_CONFIG.xml"));
            try {
                XmlPullParser newPullParser = Xml.newPullParser();
                newPullParser.setFeature("http://xmlpull.org/v1/doc/features.html#process-namespaces", false);
                newPullParser.setInput(fileInputStream, null);
                String str2 = null;
                for (int eventType = newPullParser.getEventType(); eventType != 1; eventType = newPullParser.next()) {
                    String name = newPullParser.getName();
                    if (eventType == 2) {
                        if (name != null && name.equalsIgnoreCase("config")) {
                            str2 = newPullParser.getAttributeValue(null, "name");
                        } else if (name != null && name.equalsIgnoreCase("value") && str2 != null && str2.equals("target_model") && (newPullParser.getAttributeValue(null, "name").equals(str) || newPullParser.getAttributeValue(null, "name").equals("ALL"))) {
                            z = true;
                            break;
                        }
                    }
                }
                fileInputStream.close();
            } finally {
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return z;
    }

    public void applyScpmPolicyFromApp() {
        applyScpmPolicyFromService("old");
    }

    public void applyScpmPolicyFromService(String str) {
        enforceSystemOrRoot("Only the system can claim applyScpmPolicyFromApp");
        if (applyScpmPolicy("/data/system/.aasa/ASKS.zip")) {
            Slog.i("PackageInformation", "success to apply Scpm Policy.");
            setSamsungAnalyticsLog("9014", str, mASKSPolicyVersion);
            refreshInstalledUnknownList_NEW();
            applyExecutePolicy();
        }
        SystemProperties.set("security.ASKS.smsfilter_enable", String.valueOf(checkSmsFilterEnabled()));
        SystemProperties.set("security.ASKS.smsfilter_target", String.valueOf(checkIfSmsFilterTarget()));
    }

    public String readASKSFiles(String str, String str2) {
        enforceSystemOrRoot("Only the system can claim readASKSFiles");
        File file = new File(str, str2);
        if (!file.exists()) {
            return "No file exists";
        }
        try {
            FileInputStream fileInputStream = new FileInputStream(file);
            try {
                ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
                try {
                    for (int read = fileInputStream.read(); read != -1; read = fileInputStream.read()) {
                        byteArrayOutputStream.write(read);
                    }
                    String byteArrayOutputStream2 = byteArrayOutputStream.toString(Charset.defaultCharset());
                    byteArrayOutputStream.close();
                    fileInputStream.close();
                    return byteArrayOutputStream2;
                } finally {
                }
            } finally {
            }
        } catch (IOException e) {
            e.printStackTrace();
            return "";
        }
    }

    public void setASKSPolicyVersion(String str) {
        enforceSystemOrRoot("Only the system can claim setASKSPolicyVersion");
        try {
            if (Integer.parseInt(str) > Integer.parseInt(SystemProperties.get("security.ASKS.policy_version"))) {
                SystemProperties.set("security.ASKS.policy_version", str);
            }
        } catch (NumberFormatException e) {
            Slog.d("AASA_ASKSManager", "setASKSPolicyVersion() : Numberformat exception " + e);
        }
    }

    public final boolean applyScpmPolicy(String str) {
        if (new File(str).exists()) {
            RUFSContainer rUFSContainer = new RUFSContainer();
            RuleUpdateForSecurity ruleUpdateForSecurity = new RuleUpdateForSecurity(rUFSContainer);
            rUFSContainer.setPolicyVersion(getScpmPolicyVersion(str));
            rUFSContainer.setHasRUFSToken(true);
            if (!ruleUpdateForSecurity.isUpdatePolicy(SystemProperties.get("security.ASKS.policy_version")) || !ruleUpdateForSecurity.updatePolicy(str, false)) {
                return false;
            }
            Slog.i("AASA_ASKSManager_RUFS", "policy update from " + SystemProperties.get("security.ASKS.policy_version"));
            String policyVersion = rUFSContainer.getPolicyVersion();
            mASKSPolicyVersion = policyVersion;
            SystemProperties.set("security.ASKS.policy_version", policyVersion);
            Slog.i("AASA_ASKSManager_RUFS", "policy update to   " + SystemProperties.get("security.ASKS.policy_version"));
            return true;
        }
        Slog.i("PackageInformation", "SCPM file does not exist");
        return false;
    }

    public final boolean isIPaddress(String str) {
        boolean z = false;
        if (str != null) {
            try {
                z = str.matches("(\\d{1,2}|1\\d\\d|2[0-4]\\d|25[0-5])\\.(\\d{1,2}|1\\d\\d|2[0-4]\\d|25[0-5])\\.(\\d{1,2}|1\\d\\d|2[0-4]\\d|25[0-5])\\.(\\d{1,2}|1\\d\\d|2[0-4]\\d|25[0-5])");
            } catch (Exception unused) {
            }
            if (z) {
                Slog.i("PackageInformation", "IP:" + str);
            } else {
                Slog.i("PackageInformation", "Not IP:" + str);
            }
        }
        return z;
    }

    public final String getDomainName(String str) {
        URI uri;
        String host;
        if (str == null) {
            return null;
        }
        if (str.startsWith("HTTPS")) {
            str = "http" + str.substring(5);
        } else if (str.startsWith("HTTP")) {
            str = "http" + str.substring(4);
        } else if (str.startsWith("http://www")) {
            str = "http://" + str.substring(11);
        } else if (!str.startsWith("http") && !str.startsWith("https")) {
            if (str.startsWith("www")) {
                str = str.substring(4);
            }
            str = "http://" + str;
        }
        try {
            uri = new URI(str);
        } catch (URISyntaxException e) {
            e.printStackTrace();
            uri = null;
        }
        if (uri == null || (host = uri.getHost()) == null) {
            return null;
        }
        return host.startsWith("www") ? host.substring(4) : host;
    }

    public final int convertStoI(String str) {
        if (str == null) {
            return 0;
        }
        char c = 65535;
        switch (str.hashCode()) {
            case -1386164924:
                if (str.equals("block1")) {
                    c = 0;
                    break;
                }
                break;
            case -1386164923:
                if (str.equals("block2")) {
                    c = 1;
                    break;
                }
                break;
            case -1386164922:
                if (str.equals("block3")) {
                    c = 2;
                    break;
                }
                break;
            case -1386164921:
                if (str.equals("block4")) {
                    c = 3;
                    break;
                }
                break;
            case -1289550567:
                if (str.equals("except")) {
                    c = 4;
                    break;
                }
                break;
            case -480693006:
                if (str.equals("warning_dev")) {
                    c = 5;
                    break;
                }
                break;
            case 93832333:
                if (str.equals("block")) {
                    c = 6;
                    break;
                }
                break;
            case 498091028:
                if (str.equals("warning0")) {
                    c = 7;
                    break;
                }
                break;
            case 498091029:
                if (str.equals("warning1")) {
                    c = '\b';
                    break;
                }
                break;
            case 498091030:
                if (str.equals("warning2")) {
                    c = '\t';
                    break;
                }
                break;
            case 498091031:
                if (str.equals("warning3")) {
                    c = '\n';
                    break;
                }
                break;
            case 498091032:
                if (str.equals("warning4")) {
                    c = 11;
                    break;
                }
                break;
            case 1124446108:
                if (str.equals("warning")) {
                    c = '\f';
                    break;
                }
                break;
        }
        switch (c) {
            case 0:
                return 121;
            case 1:
                return 122;
            case 2:
                return 123;
            case 3:
                return 124;
            case 4:
            default:
                return 0;
            case 5:
                return 101;
            case 6:
                return 120;
            case 7:
                return 110;
            case '\b':
                return 111;
            case '\t':
                return 112;
            case '\n':
                return 113;
            case 11:
                return 114;
            case '\f':
                return 100;
        }
    }

    public final String get3rdTargetNodeName(String str) {
        File file = new File("/data/system/.aasa/AASApolicy/ASKS_UNKNOWN_3RDPARTY_INSTALLER.xml");
        if (file.getParentFile() != null && !file.getParentFile().exists()) {
            if (!file.getParentFile().mkdir()) {
                Slog.e("PackageInformation", "failed to created folder related 3RDPARTY");
                return null;
            }
            file.getParentFile().setReadable(true, false);
        }
        if (!file.exists()) {
            return null;
        }
        try {
            FileReader fileReader = new FileReader(file, Charset.defaultCharset());
            try {
                XmlPullParser newPullParser = XmlPullParserFactory.newInstance().newPullParser();
                newPullParser.setInput(fileReader);
                String str2 = null;
                for (int eventType = newPullParser.getEventType(); eventType != 1; eventType = newPullParser.next()) {
                    if (eventType == 2) {
                        String name = newPullParser.getName();
                        if (name != null && name.equals("package")) {
                            str2 = newPullParser.getAttributeValue(null, "name");
                        } else if (name != null && name.equals("policy")) {
                            if (str2 != null && str2.equals(str)) {
                                String attributeValue = newPullParser.getAttributeValue(null, "name");
                                Slog.i("PackageInformation", "3rdtargetPolicy:: : " + attributeValue);
                                fileReader.close();
                                return attributeValue;
                            }
                            str2 = null;
                        }
                    }
                }
                fileReader.close();
                return null;
            } catch (IOException e) {
                try {
                    fileReader.close();
                } catch (IOException unused) {
                }
                e.printStackTrace();
                return null;
            } catch (XmlPullParserException e2) {
                try {
                    fileReader.close();
                } catch (IOException unused2) {
                }
                e2.printStackTrace();
                return null;
            }
        } catch (FileNotFoundException e3) {
            e3.printStackTrace();
            return null;
        } catch (IOException e4) {
            e4.printStackTrace();
            return null;
        }
    }

    public final ArrayList getTargetNodeName(String str) {
        String attributeValue;
        ArrayList arrayList = new ArrayList();
        File file = new File("/data/system/.aasa/AASApolicy/ASKS_UNKNOWN_TARGETDEVICE.xml");
        if (file.getParentFile() != null && !file.getParentFile().exists()) {
            if (!file.getParentFile().mkdir()) {
                Slog.e("PackageInformation", "failed to created folder related TAGETDEVICE");
                return null;
            }
            file.getParentFile().setReadable(true, false);
        }
        if (!file.exists()) {
            return null;
        }
        try {
            FileReader fileReader = new FileReader(file, Charset.defaultCharset());
            try {
                XmlPullParser newPullParser = XmlPullParserFactory.newInstance().newPullParser();
                newPullParser.setInput(fileReader);
                for (int eventType = newPullParser.getEventType(); eventType != 1; eventType = newPullParser.next()) {
                    if (eventType == 2) {
                        String name = newPullParser.getName();
                        if (!name.equals("DEVICE") && !name.equals("LIST") && !name.equals("TARGET") && !name.equals("CERTTARGET") && !name.equals("ZIPTARGET") && !name.equals("ZIPCERTTARGET") && (attributeValue = newPullParser.getAttributeValue(null, "value")) != null && ((attributeValue.equals(str) || "ALL".equals(attributeValue)) && !arrayList.contains(name))) {
                            arrayList.add(name);
                        }
                    }
                }
                fileReader.close();
                return arrayList;
            } catch (IOException e) {
                try {
                    fileReader.close();
                } catch (IOException unused) {
                }
                e.printStackTrace();
                return null;
            } catch (XmlPullParserException e2) {
                try {
                    fileReader.close();
                } catch (IOException unused2) {
                }
                e2.printStackTrace();
                return null;
            }
        } catch (FileNotFoundException e3) {
            e3.printStackTrace();
            return null;
        } catch (IOException e4) {
            e4.printStackTrace();
            return null;
        }
    }

    /* JADX WARN: Can't wrap try/catch for region: R(14:105|(13:107|(1:109)(2:242|(1:244)(2:245|(1:247)))|(10:111|(1:113)(2:235|(1:237)(2:238|(1:240)))|(1:234)(5:117|118|119|(2:121|(1:123)(1:229))(1:230)|124)|(2:126|(8:128|(3:130|(6:135|136|137|138|139|140)|225)|226|227|137|138|139|140))|228|136|137|138|139|140)|241|(1:115)|234|(0)|228|136|137|138|139|140)|248|(0)|241|(0)|234|(0)|228|136|137|138|139|140) */
    /* JADX WARN: Code restructure failed: missing block: B:222:0x0279, code lost:
    
        r0 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:223:0x027a, code lost:
    
        android.util.Slog.d("PackageInformation", "numberformat exception" + r0);
     */
    /* JADX WARN: Code restructure failed: missing block: B:224:0x028f, code lost:
    
        r33 = r4;
        r31 = r14;
        r32 = r15;
        r35 = true;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:111:0x01d6 A[Catch: IOException -> 0x0421, XmlPullParserException -> 0x0423, TryCatch #7 {IOException -> 0x0421, blocks: (B:46:0x0408, B:86:0x014c, B:91:0x015a, B:93:0x0160, B:95:0x0166, B:98:0x0178, B:101:0x017e, B:105:0x0198, B:107:0x01b7, B:111:0x01d6, B:115:0x01f5, B:119:0x01fe, B:121:0x0204, B:123:0x020a, B:126:0x0222, B:128:0x0232, B:130:0x023b, B:132:0x0245, B:138:0x0261, B:145:0x02c1, B:149:0x02c8, B:151:0x02f1, B:155:0x0310, B:159:0x032d, B:163:0x0345, B:191:0x034b, B:168:0x036c, B:170:0x0372, B:177:0x03a3, B:180:0x03ad, B:182:0x03b7, B:185:0x03c3, B:187:0x03df, B:195:0x0352, B:196:0x0336, B:200:0x0317, B:203:0x0320, B:207:0x02fa, B:210:0x0303, B:223:0x027a, B:226:0x0256, B:229:0x0210, B:230:0x0215, B:235:0x01df, B:238:0x01e8, B:242:0x01c0, B:245:0x01c9, B:253:0x016d, B:261:0x0419), top: B:45:0x0408 }] */
    /* JADX WARN: Removed duplicated region for block: B:115:0x01f5 A[Catch: IOException -> 0x0421, XmlPullParserException -> 0x0423, TRY_LEAVE, TryCatch #7 {IOException -> 0x0421, blocks: (B:46:0x0408, B:86:0x014c, B:91:0x015a, B:93:0x0160, B:95:0x0166, B:98:0x0178, B:101:0x017e, B:105:0x0198, B:107:0x01b7, B:111:0x01d6, B:115:0x01f5, B:119:0x01fe, B:121:0x0204, B:123:0x020a, B:126:0x0222, B:128:0x0232, B:130:0x023b, B:132:0x0245, B:138:0x0261, B:145:0x02c1, B:149:0x02c8, B:151:0x02f1, B:155:0x0310, B:159:0x032d, B:163:0x0345, B:191:0x034b, B:168:0x036c, B:170:0x0372, B:177:0x03a3, B:180:0x03ad, B:182:0x03b7, B:185:0x03c3, B:187:0x03df, B:195:0x0352, B:196:0x0336, B:200:0x0317, B:203:0x0320, B:207:0x02fa, B:210:0x0303, B:223:0x027a, B:226:0x0256, B:229:0x0210, B:230:0x0215, B:235:0x01df, B:238:0x01e8, B:242:0x01c0, B:245:0x01c9, B:253:0x016d, B:261:0x0419), top: B:45:0x0408 }] */
    /* JADX WARN: Removed duplicated region for block: B:126:0x0222 A[Catch: IOException -> 0x0421, XmlPullParserException -> 0x0423, TryCatch #7 {IOException -> 0x0421, blocks: (B:46:0x0408, B:86:0x014c, B:91:0x015a, B:93:0x0160, B:95:0x0166, B:98:0x0178, B:101:0x017e, B:105:0x0198, B:107:0x01b7, B:111:0x01d6, B:115:0x01f5, B:119:0x01fe, B:121:0x0204, B:123:0x020a, B:126:0x0222, B:128:0x0232, B:130:0x023b, B:132:0x0245, B:138:0x0261, B:145:0x02c1, B:149:0x02c8, B:151:0x02f1, B:155:0x0310, B:159:0x032d, B:163:0x0345, B:191:0x034b, B:168:0x036c, B:170:0x0372, B:177:0x03a3, B:180:0x03ad, B:182:0x03b7, B:185:0x03c3, B:187:0x03df, B:195:0x0352, B:196:0x0336, B:200:0x0317, B:203:0x0320, B:207:0x02fa, B:210:0x0303, B:223:0x027a, B:226:0x0256, B:229:0x0210, B:230:0x0215, B:235:0x01df, B:238:0x01e8, B:242:0x01c0, B:245:0x01c9, B:253:0x016d, B:261:0x0419), top: B:45:0x0408 }] */
    /* JADX WARN: Removed duplicated region for block: B:155:0x0310 A[Catch: IOException -> 0x0421, XmlPullParserException -> 0x0423, TryCatch #7 {IOException -> 0x0421, blocks: (B:46:0x0408, B:86:0x014c, B:91:0x015a, B:93:0x0160, B:95:0x0166, B:98:0x0178, B:101:0x017e, B:105:0x0198, B:107:0x01b7, B:111:0x01d6, B:115:0x01f5, B:119:0x01fe, B:121:0x0204, B:123:0x020a, B:126:0x0222, B:128:0x0232, B:130:0x023b, B:132:0x0245, B:138:0x0261, B:145:0x02c1, B:149:0x02c8, B:151:0x02f1, B:155:0x0310, B:159:0x032d, B:163:0x0345, B:191:0x034b, B:168:0x036c, B:170:0x0372, B:177:0x03a3, B:180:0x03ad, B:182:0x03b7, B:185:0x03c3, B:187:0x03df, B:195:0x0352, B:196:0x0336, B:200:0x0317, B:203:0x0320, B:207:0x02fa, B:210:0x0303, B:223:0x027a, B:226:0x0256, B:229:0x0210, B:230:0x0215, B:235:0x01df, B:238:0x01e8, B:242:0x01c0, B:245:0x01c9, B:253:0x016d, B:261:0x0419), top: B:45:0x0408 }] */
    /* JADX WARN: Removed duplicated region for block: B:159:0x032d A[Catch: IOException -> 0x0421, XmlPullParserException -> 0x0423, TryCatch #7 {IOException -> 0x0421, blocks: (B:46:0x0408, B:86:0x014c, B:91:0x015a, B:93:0x0160, B:95:0x0166, B:98:0x0178, B:101:0x017e, B:105:0x0198, B:107:0x01b7, B:111:0x01d6, B:115:0x01f5, B:119:0x01fe, B:121:0x0204, B:123:0x020a, B:126:0x0222, B:128:0x0232, B:130:0x023b, B:132:0x0245, B:138:0x0261, B:145:0x02c1, B:149:0x02c8, B:151:0x02f1, B:155:0x0310, B:159:0x032d, B:163:0x0345, B:191:0x034b, B:168:0x036c, B:170:0x0372, B:177:0x03a3, B:180:0x03ad, B:182:0x03b7, B:185:0x03c3, B:187:0x03df, B:195:0x0352, B:196:0x0336, B:200:0x0317, B:203:0x0320, B:207:0x02fa, B:210:0x0303, B:223:0x027a, B:226:0x0256, B:229:0x0210, B:230:0x0215, B:235:0x01df, B:238:0x01e8, B:242:0x01c0, B:245:0x01c9, B:253:0x016d, B:261:0x0419), top: B:45:0x0408 }] */
    /* JADX WARN: Removed duplicated region for block: B:163:0x0345 A[Catch: IOException -> 0x0421, XmlPullParserException -> 0x0423, TRY_LEAVE, TryCatch #7 {IOException -> 0x0421, blocks: (B:46:0x0408, B:86:0x014c, B:91:0x015a, B:93:0x0160, B:95:0x0166, B:98:0x0178, B:101:0x017e, B:105:0x0198, B:107:0x01b7, B:111:0x01d6, B:115:0x01f5, B:119:0x01fe, B:121:0x0204, B:123:0x020a, B:126:0x0222, B:128:0x0232, B:130:0x023b, B:132:0x0245, B:138:0x0261, B:145:0x02c1, B:149:0x02c8, B:151:0x02f1, B:155:0x0310, B:159:0x032d, B:163:0x0345, B:191:0x034b, B:168:0x036c, B:170:0x0372, B:177:0x03a3, B:180:0x03ad, B:182:0x03b7, B:185:0x03c3, B:187:0x03df, B:195:0x0352, B:196:0x0336, B:200:0x0317, B:203:0x0320, B:207:0x02fa, B:210:0x0303, B:223:0x027a, B:226:0x0256, B:229:0x0210, B:230:0x0215, B:235:0x01df, B:238:0x01e8, B:242:0x01c0, B:245:0x01c9, B:253:0x016d, B:261:0x0419), top: B:45:0x0408 }] */
    /* JADX WARN: Removed duplicated region for block: B:165:0x0367  */
    /* JADX WARN: Removed duplicated region for block: B:170:0x0372 A[Catch: IOException -> 0x0421, XmlPullParserException -> 0x0423, TRY_ENTER, TryCatch #7 {IOException -> 0x0421, blocks: (B:46:0x0408, B:86:0x014c, B:91:0x015a, B:93:0x0160, B:95:0x0166, B:98:0x0178, B:101:0x017e, B:105:0x0198, B:107:0x01b7, B:111:0x01d6, B:115:0x01f5, B:119:0x01fe, B:121:0x0204, B:123:0x020a, B:126:0x0222, B:128:0x0232, B:130:0x023b, B:132:0x0245, B:138:0x0261, B:145:0x02c1, B:149:0x02c8, B:151:0x02f1, B:155:0x0310, B:159:0x032d, B:163:0x0345, B:191:0x034b, B:168:0x036c, B:170:0x0372, B:177:0x03a3, B:180:0x03ad, B:182:0x03b7, B:185:0x03c3, B:187:0x03df, B:195:0x0352, B:196:0x0336, B:200:0x0317, B:203:0x0320, B:207:0x02fa, B:210:0x0303, B:223:0x027a, B:226:0x0256, B:229:0x0210, B:230:0x0215, B:235:0x01df, B:238:0x01e8, B:242:0x01c0, B:245:0x01c9, B:253:0x016d, B:261:0x0419), top: B:45:0x0408 }] */
    /* JADX WARN: Removed duplicated region for block: B:176:0x03a1 A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:190:0x034b A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Type inference failed for: r14v6, types: [java.lang.Object, java.lang.String] */
    /* JADX WARN: Type inference failed for: r2v4 */
    /* JADX WARN: Type inference failed for: r2v5, types: [com.android.server.asks.UnknownStore] */
    /* JADX WARN: Type inference failed for: r2v6 */
    /* JADX WARN: Type inference failed for: r3v1, types: [java.util.HashMap] */
    /* JADX WARN: Type inference failed for: r3v10 */
    /* JADX WARN: Type inference failed for: r3v9 */
    /* JADX WARN: Type inference failed for: r7v24 */
    /* JADX WARN: Type inference failed for: r7v25 */
    /* JADX WARN: Type inference failed for: r7v28 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final java.util.HashMap getUnknownAppsDataFromXML(int r60, java.util.ArrayList r61) {
        /*
            Method dump skipped, instructions count: 1100
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.server.asks.ASKSManagerService.getUnknownAppsDataFromXML(int, java.util.ArrayList):java.util.HashMap");
    }

    /* JADX WARN: Removed duplicated region for block: B:24:0x00d4  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public com.android.server.asks.RETVALUE checkTarget(com.android.server.asks.ASKSManagerService.CURPARAM r17, android.content.pm.Signature[] r18, java.util.HashMap r19, java.lang.String r20, int r21, com.android.server.asks.ASKSManagerService.CURSTATUS r22, java.lang.String[] r23, boolean r24) {
        /*
            Method dump skipped, instructions count: 286
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.server.asks.ASKSManagerService.checkTarget(com.android.server.asks.ASKSManagerService$CURPARAM, android.content.pm.Signature[], java.util.HashMap, java.lang.String, int, com.android.server.asks.ASKSManagerService$CURSTATUS, java.lang.String[], boolean):com.android.server.asks.RETVALUE");
    }

    /* JADX WARN: Code restructure failed: missing block: B:40:0x0093, code lost:
    
        if (r4 == null) goto L148;
     */
    /* JADX WARN: Code restructure failed: missing block: B:41:0x0095, code lost:
    
        r4.close();
     */
    /* JADX WARN: Code restructure failed: missing block: B:44:0x0099, code lost:
    
        return r2;
     */
    /* JADX WARN: Code restructure failed: missing block: B:54:0x0083, code lost:
    
        if (r4 == null) goto L148;
     */
    /* JADX WARN: Removed duplicated region for block: B:62:0x00a4 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:68:? A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:69:0x009f A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final boolean isValidZipFormat(java.lang.String r7) {
        /*
            r6 = this;
            java.lang.String r0 = "AASA_ASKSManager"
            r1 = 1
            if (r7 == 0) goto La8
            boolean r6 = r6.isDevDevice()
            if (r6 == 0) goto L10
            java.lang.String r6 = "PackageInformation"
            android.util.Slog.d(r6, r7)
        L10:
            int r6 = r7.length()
            int r6 = r6 + (-4)
            java.lang.String r6 = r7.substring(r6)
            java.lang.String r6 = r6.toLowerCase()
            java.lang.String r2 = ".apk"
            boolean r6 = r2.equals(r6)
            if (r6 != 0) goto L27
            return r1
        L27:
            r6 = 0
            r2 = 0
            java.util.zip.ZipFile r3 = new java.util.zip.ZipFile     // Catch: java.lang.Throwable -> L71 java.io.IOException -> L76 java.util.zip.ZipException -> L86
            r3.<init>(r7)     // Catch: java.lang.Throwable -> L71 java.io.IOException -> L76 java.util.zip.ZipException -> L86
            java.util.zip.ZipInputStream r4 = new java.util.zip.ZipInputStream     // Catch: java.lang.Throwable -> L68 java.io.IOException -> L6b java.util.zip.ZipException -> L6e
            java.io.FileInputStream r5 = new java.io.FileInputStream     // Catch: java.lang.Throwable -> L68 java.io.IOException -> L6b java.util.zip.ZipException -> L6e
            r5.<init>(r7)     // Catch: java.lang.Throwable -> L68 java.io.IOException -> L6b java.util.zip.ZipException -> L6e
            r4.<init>(r5)     // Catch: java.lang.Throwable -> L68 java.io.IOException -> L6b java.util.zip.ZipException -> L6e
            java.util.zip.ZipEntry r6 = r4.getNextEntry()     // Catch: java.lang.Throwable -> L66 java.io.IOException -> L6c java.util.zip.ZipException -> L6f
            if (r6 != 0) goto L40
            r7 = r2
            goto L41
        L40:
            r7 = r1
        L41:
            r5 = 15
        L43:
            if (r7 == 0) goto L5c
            if (r6 == 0) goto L5c
            if (r5 == 0) goto L5c
            r3.getInputStream(r6)     // Catch: java.lang.Throwable -> L66 java.io.IOException -> L6c java.util.zip.ZipException -> L6f
            r6.getCrc()     // Catch: java.lang.Throwable -> L66 java.io.IOException -> L6c java.util.zip.ZipException -> L6f
            r6.getCompressedSize()     // Catch: java.lang.Throwable -> L66 java.io.IOException -> L6c java.util.zip.ZipException -> L6f
            r6.getName()     // Catch: java.lang.Throwable -> L66 java.io.IOException -> L6c java.util.zip.ZipException -> L6f
            java.util.zip.ZipEntry r6 = r4.getNextEntry()     // Catch: java.lang.Throwable -> L66 java.io.IOException -> L6c java.util.zip.ZipException -> L6f
            int r5 = r5 + (-1)
            goto L43
        L5c:
            r3.close()     // Catch: java.io.IOException -> L60
            goto L61
        L60:
            r7 = r1
        L61:
            r4.close()     // Catch: java.io.IOException -> L99
            r1 = r7
            goto L99
        L66:
            r6 = move-exception
            goto L9d
        L68:
            r7 = move-exception
            r4 = r6
            goto L74
        L6b:
            r4 = r6
        L6c:
            r6 = r3
            goto L77
        L6e:
            r4 = r6
        L6f:
            r6 = r3
            goto L87
        L71:
            r7 = move-exception
            r3 = r6
            r4 = r3
        L74:
            r6 = r7
            goto L9d
        L76:
            r4 = r6
        L77:
            java.lang.String r7 = "Non-Valid Format[2]"
            android.util.Log.e(r0, r7)     // Catch: java.lang.Throwable -> L9a
            if (r6 == 0) goto L83
            r6.close()     // Catch: java.io.IOException -> L82
            goto L83
        L82:
            r2 = r1
        L83:
            if (r4 == 0) goto L98
            goto L95
        L86:
            r4 = r6
        L87:
            java.lang.String r7 = "Non-Valid Format[1]"
            android.util.Log.e(r0, r7)     // Catch: java.lang.Throwable -> L9a
            if (r6 == 0) goto L93
            r6.close()     // Catch: java.io.IOException -> L92
            goto L93
        L92:
            r2 = r1
        L93:
            if (r4 == 0) goto L98
        L95:
            r4.close()     // Catch: java.io.IOException -> L99
        L98:
            r1 = r2
        L99:
            return r1
        L9a:
            r7 = move-exception
            r3 = r6
            goto L74
        L9d:
            if (r3 == 0) goto La2
            r3.close()     // Catch: java.io.IOException -> La2
        La2:
            if (r4 == 0) goto La7
            r4.close()     // Catch: java.io.IOException -> La7
        La7:
            throw r6
        La8:
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.server.asks.ASKSManagerService.isValidZipFormat(java.lang.String):boolean");
    }

    public final String getSigByPackage(String str, int i) {
        PackageInfo packageInfoAsUser;
        SigningInfo signingInfo;
        Signature[] apkContentsSigners;
        try {
            if (this.mContext.getPackageManager() == null || (packageInfoAsUser = this.mContext.getPackageManager().getPackageInfoAsUser(str, 134217728, i)) == null || (signingInfo = packageInfoAsUser.signingInfo) == null || (apkContentsSigners = signingInfo.getApkContentsSigners()) == null || apkContentsSigners.length < 1) {
                return null;
            }
            return getSigHash(apkContentsSigners[0]);
        } catch (PackageManager.NameNotFoundException e) {
            Slog.e("PackageInformation", " Abnormal case : initiatingPackageName can not be modified " + e);
            return null;
        } catch (NoSuchAlgorithmException e2) {
            Slog.e("PackageInformation", " Abnormal case : NoSuchAlgorithmException " + e2);
            return null;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:25:0x0093  */
    /* JADX WARN: Removed duplicated region for block: B:7:0x0029  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final boolean isTrustedStoreCheck(java.lang.String r8, java.util.HashMap r9, java.lang.String r10, int r11) {
        /*
            Method dump skipped, instructions count: 447
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.server.asks.ASKSManagerService.isTrustedStoreCheck(java.lang.String, java.util.HashMap, java.lang.String, int):boolean");
    }

    public final boolean checkRampartFreePass(HashMap hashMap) {
        getASKSDataFromXML(45, hashMap);
        if (hashMap != null && hashMap.size() >= 1) {
            return true;
        }
        Slog.i("RAMPARTPackageInformation", "rampart: no superpass rule");
        return false;
    }

    public final boolean isRampartFreePass(String str, String str2, int i, HashMap hashMap) {
        boolean isTrustedStoreCheck = isTrustedStoreCheck("RAMPARTPackageInformation", hashMap, str2, i);
        Slog.i("RAMPARTPackageInformation", "rampart: superpass:" + isTrustedStoreCheck + " " + str2);
        if (isTrustedStoreCheck) {
            return isTrustedStoreCheck;
        }
        boolean isTrustedStoreCheck2 = isTrustedStoreCheck("RAMPARTPackageInformation", hashMap, str, i);
        Slog.i("RAMPARTPackageInformation", "rampart: superpass:" + isTrustedStoreCheck2 + " " + str);
        return isTrustedStoreCheck2;
    }

    public final boolean isSimpleTrustore(String str, int i, boolean z) {
        HashMap hashMap = new HashMap();
        if (z) {
            Slog.i("RAMPARTPackageInformation", "Simple TS : " + str + XmlUtils.STRING_ARRAY_SEPARATOR + i);
            if ("CN".equalsIgnoreCase(SemCscFeature.getInstance().getString("CountryISO"))) {
                getASKSDataFromXML(44, hashMap);
            } else {
                getASKSDataFromXML(43, hashMap);
            }
            if (hashMap.size() == 0) {
                Slog.e("RAMPARTPackageInformation", "Simple TS list does not exist");
                return false;
            }
        } else {
            String sigByPackage = getSigByPackage(str, i);
            if (sigByPackage == null) {
                sigByPackage = "null";
            }
            StringBuilder sb = new StringBuilder();
            sb.append("Simple TS : ");
            sb.append(str);
            sb.append(XmlUtils.STRING_ARRAY_SEPARATOR);
            sb.append(i);
            sb.append(XmlUtils.STRING_ARRAY_SEPARATOR);
            if (!isDevDevice()) {
                sigByPackage = "";
            }
            sb.append(sigByPackage);
            Slog.i("PackageInformation", sb.toString());
            ArrayList targetNodeName = getTargetNodeName(SystemProperties.get("ro.product.model", "Unknown"));
            if (targetNodeName != null && targetNodeName.contains("SIMPLETRUSTEDSTORE")) {
                getASKSDataFromXML(41, hashMap);
            } else {
                Slog.e("PackageInformation", "no target of simple TS.");
                return false;
            }
        }
        return isTrustedStoreCheck("PackageInformation", hashMap, str, i);
    }

    public boolean isTrustedStore(String str, int i) {
        HashMap hashMap = new HashMap();
        String str2 = "PackageInformation";
        Slog.i("PackageInformation", "userId :" + i);
        if (Settings.Secure.getInt(this.mContext.getContentResolver(), "rampart_blocked_unknown_apps", 0) == 1) {
            if ("CN".equalsIgnoreCase(SemCscFeature.getInstance().getString("CountryISO"))) {
                getASKSDataFromXML(44, hashMap);
            } else {
                getASKSDataFromXML(43, hashMap);
            }
            str2 = "RAMPARTPackageInformation";
        } else {
            ArrayList targetNodeName = getTargetNodeName(SystemProperties.get("ro.product.model", "Unknown"));
            if (targetNodeName != null && targetNodeName.contains("TRUSTEDSTORE")) {
                getASKSDataFromXML(35, hashMap);
            } else {
                Slog.e("PackageInformation", "skip TS..");
                return true;
            }
        }
        if (hashMap.size() < 1) {
            Slog.i(str2, "skip TS due to non policy");
            return true;
        }
        return isTrustedStoreCheck(str2, hashMap, str, i);
    }

    public final boolean isDevDevice() {
        return "0x1".equals(SystemProperties.get("ro.boot.em.status"));
    }

    /* loaded from: classes.dex */
    public final class CURSTATUS {
        public String target_model;
        public int totalList;
        public String totalListString;
        public boolean isLocUrlCase = false;
        public boolean isLocZipCase = false;
        public boolean isLocWebCase = false;
        public boolean isLocAccessibilityCase = false;
        public boolean isIP = false;
        public boolean isDevDevice = false;
        public boolean isTablet = false;
        public boolean isValidZip = true;
        public boolean isCheckZipFormat = false;
        public boolean isAllowSelfUpdate = false;
        public boolean isBlockSelfUpdateWithPEM = false;
        public boolean isLimitOnlyKorMCC = false;
        public boolean isTabletExcepted = false;
        public boolean isHitTargetDomain = false;
        public boolean isCheckRequestInstallPEM = false;
        public boolean hasReqInstallPEM = false;

        public CURSTATUS(String str) {
            this.target_model = str;
        }
    }

    /* loaded from: classes.dex */
    public final class CURPARAM {
        public String baseCodePath;
        public String domain;
        public String downloadUrl;
        public String hashDomain;
        public String initiatingPackageName;
        public String originatingPackageName;
        public String packageName;
        public String[] permList;
        public String pkgNameHash;
        public String pkgSigHash;
        public String referralUrl;
        public String saReportValue;
        public int sdkVersion;
        public String[] servicePermList;
        public String sigHashValue;
        public Signature[] signatures;
        public int userId;

        public CURPARAM(String str, String[] strArr, String[] strArr2, String str2, Signature[] signatureArr, String str3, String str4, int i, String str5, String str6, int i2) {
            this.packageName = str;
            this.permList = strArr;
            this.servicePermList = strArr2;
            this.baseCodePath = str2;
            this.signatures = signatureArr;
            this.initiatingPackageName = str3;
            this.originatingPackageName = str4;
            this.sdkVersion = i;
            this.referralUrl = str5;
            this.downloadUrl = str6;
            this.userId = i2;
        }
    }

    public final void checkCurStatus(CURSTATUS curstatus, CURPARAM curparam, ArrayList arrayList, boolean z) {
        ArrayList installedAppsDataFromXML;
        String str;
        String str2;
        ArrayList installedAppsDataFromXML2;
        String str3;
        String str4;
        ArrayList installedAppsDataFromXML3;
        String str5;
        String str6;
        String str7;
        curstatus.isDevDevice = isDevDevice();
        curparam.pkgNameHash = getSHA256ForPkgName(curparam.packageName);
        if (arrayList.contains("ALLOWSELFUPDATE") && z) {
            curstatus.isAllowSelfUpdate = true;
        }
        if (arrayList.contains("BLOCKSELFUPDATEwithPEM") && z) {
            curstatus.isBlockSelfUpdateWithPEM = true;
        }
        if (arrayList.contains("MALFORMED")) {
            curstatus.isCheckZipFormat = true;
        }
        boolean z2 = false;
        if (arrayList.contains("CALLPEMLIMIT")) {
            this.ASKS_UNKNOWN_LIMIT_CALLPEM = true;
        } else {
            this.ASKS_UNKNOWN_LIMIT_CALLPEM = false;
        }
        if (arrayList.contains("MCCKORONLY")) {
            curstatus.isLimitOnlyKorMCC = true;
        }
        if (arrayList.contains("TABLETEXCEPT")) {
            curstatus.isTabletExcepted = true;
        }
        if (arrayList.contains("REQUEST_INSTALL")) {
            curstatus.isCheckRequestInstallPEM = true;
        }
        if (z) {
            curstatus.isLocZipCase = true;
            Slog.i("PackageInformation", "zip case:" + curstatus.isLocZipCase + " by self update");
        }
        String str8 = curparam.referralUrl;
        if (str8 != null && str8.contains("WEB")) {
            curstatus.isLocWebCase = true;
            Slog.i("PackageInformation", "This is Web case:" + curstatus.isLocWebCase);
        }
        String str9 = curparam.referralUrl;
        if (str9 != null && "ZIP".equals(str9)) {
            curstatus.isLocZipCase = true;
            Slog.i("PackageInformation", "This is zip case:" + curstatus.isLocZipCase);
        }
        String str10 = curparam.downloadUrl;
        if (str10 != null) {
            curstatus.isLocUrlCase = true;
            String domainName = getDomainName(str10);
            curparam.domain = domainName;
            curstatus.isIP = isIPaddress(domainName);
            curparam.hashDomain = getSHA256ForPkgName(curparam.domain);
            curparam.saReportValue = curparam.downloadUrl;
        }
        Signature[] signatureArr = curparam.signatures;
        if (signatureArr != null && signatureArr.length > 0) {
            try {
                curparam.sigHashValue = getSigHash(signatureArr[0]);
            } catch (NoSuchAlgorithmException e) {
                curparam.sigHashValue = null;
                e.printStackTrace();
            }
        }
        if (curparam.sigHashValue != null) {
            curparam.pkgSigHash = getSHA256ForPkgName(curparam.pkgNameHash + curparam.sigHashValue);
            if (isDevDevice()) {
                Slog.d("PackageInformation", "pkgSigHash::" + curparam.pkgSigHash);
            }
        } else {
            curparam.pkgSigHash = null;
        }
        Slog.i("PackageInformation", "This is tablet device.");
        curstatus.isTablet = true;
        if (curparam.permList != null) {
            curstatus.hasReqInstallPEM = false;
            int i = 0;
            while (true) {
                String[] strArr = curparam.permList;
                if (i >= strArr.length) {
                    break;
                }
                if (strArr[i].equals("android.permission.REQUEST_INSTALL_PACKAGES")) {
                    curstatus.hasReqInstallPEM = true;
                    break;
                }
                i++;
            }
        }
        if (curparam.servicePermList != null) {
            int i2 = 0;
            while (true) {
                String[] strArr2 = curparam.servicePermList;
                if (i2 >= strArr2.length) {
                    break;
                }
                if (strArr2[i2].equals("android.permission.BIND_ACCESSIBILITY_SERVICE")) {
                    curstatus.isLocAccessibilityCase = true;
                    break;
                }
                i2++;
            }
        }
        ArrayList installedAppsDataFromXML4 = getInstalledAppsDataFromXML("initType", null);
        if (installedAppsDataFromXML4 != null) {
            for (int i3 = 0; i3 < installedAppsDataFromXML4.size(); i3++) {
                String[] split = ((String) installedAppsDataFromXML4.get(i3)).split(",");
                String str11 = curparam.initiatingPackageName;
                if ((str11 != null && split[0].equals(str11)) || ((str7 = curparam.originatingPackageName) != null && split[0].equals(str7))) {
                    if (!split[1].equals("except")) {
                        Slog.i("PackageInformation", "installer:" + curparam.initiatingPackageName + " :: " + curparam.originatingPackageName);
                        z2 = true;
                    }
                }
            }
        }
        if (!curstatus.isLocZipCase && z2 && (((installedAppsDataFromXML3 = getInstalledAppsDataFromXML("requestInstallerZip", null)) != null && (str6 = curparam.initiatingPackageName) != null && installedAppsDataFromXML3.contains(str6)) || ((str5 = curparam.originatingPackageName) != null && installedAppsDataFromXML3.contains(str5)))) {
            curstatus.isLocZipCase = true;
        }
        if (!curstatus.isLocZipCase && z2 && (installedAppsDataFromXML2 = getInstalledAppsDataFromXML("accessibility", null)) != null && (((str3 = curparam.initiatingPackageName) != null && installedAppsDataFromXML2.contains(str3)) || ((str4 = curparam.originatingPackageName) != null && installedAppsDataFromXML2.contains(str4)))) {
            curstatus.isLocZipCase = true;
        }
        if (!curstatus.isLocAccessibilityCase && curstatus.isCheckRequestInstallPEM && z2 && (((installedAppsDataFromXML = getInstalledAppsDataFromXML("hasReqInstallPEM", null)) != null && (str2 = curparam.initiatingPackageName) != null && installedAppsDataFromXML.contains(str2)) || ((str = curparam.originatingPackageName) != null && installedAppsDataFromXML.contains(str)))) {
            curstatus.isLocAccessibilityCase = true;
        }
        curstatus.totalList = 27;
        if (curstatus.isLocZipCase) {
            HashMap hashMap = new HashMap();
            getASKSDataFromXML(26, hashMap);
            Slog.i("PackageInformation", "changed By zip");
            if (hashMap.containsKey("ALL") || hashMap.containsKey(curstatus.target_model)) {
                curstatus.totalList = 28;
            }
        } else if (curstatus.isLocAccessibilityCase) {
            HashMap hashMap2 = new HashMap();
            getASKSDataFromXML(26, hashMap2);
            if (hashMap2.containsKey("ALL") || hashMap2.containsKey(curstatus.target_model)) {
                curstatus.totalList = 33;
            }
        } else if (curstatus.isIP) {
            Slog.i("PackageInformation", "changed By IP");
            HashMap hashMap3 = new HashMap();
            getASKSDataFromXML(26, hashMap3);
            if (hashMap3.containsKey("ALL") || hashMap3.containsKey(curstatus.target_model)) {
                curstatus.totalList = 34;
            }
        }
        int i4 = curstatus.totalList;
        if (27 == i4) {
            curstatus.totalListString = "TOTALLIST";
            return;
        }
        if (28 == i4) {
            curstatus.totalListString = "TOTALLIST_ZIP";
        } else if (33 == i4) {
            curstatus.totalListString = "TOTALLIST_A11Y";
        } else {
            curstatus.totalListString = "TOTALLIST_WEB";
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:31:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:9:0x0032  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final void SAreport(com.android.server.asks.RETVALUE r6, com.android.server.asks.ASKSManagerService.CURSTATUS r7, com.android.server.asks.ASKSManagerService.CURPARAM r8) {
        /*
            r5 = this;
            int r0 = r6.SA
            if (r0 == 0) goto Ld6
            java.lang.String r0 = "isInstalledList"
            r1 = 0
            java.util.ArrayList r0 = r5.getInstalledAppsDataFromXML(r0, r1)
            r2 = 1
            if (r0 == 0) goto L16
            java.lang.String r3 = r8.packageName
            boolean r0 = r0.contains(r3)
            if (r0 != 0) goto L2f
        L16:
            java.util.HashMap r0 = new java.util.HashMap
            r0.<init>()
            java.lang.String r3 = "/data/system/.aasa/AASApolicy/ASKS_UNKNOWN_SA_REPORTED_NEW.xml"
            r5.getDataByDevice(r3, r0)
            java.lang.String r4 = r8.packageName
            boolean r0 = r0.containsKey(r4)
            if (r0 != 0) goto L2f
            java.lang.String r0 = r8.packageName
            r5.setDataToDevice(r3, r0, r1)
            r0 = r2
            goto L30
        L2f:
            r0 = 0
        L30:
            if (r0 == 0) goto Ld6
            int r0 = r6.SA
            java.lang.String r0 = java.lang.Integer.toString(r0)
            boolean r1 = r7.isValidZip
            if (r1 == r2) goto L40
            r6.policy = r2
            java.lang.String r0 = "3050"
        L40:
            boolean r6 = r7.isLocWebCase
            if (r6 == 0) goto L64
            java.lang.String r6 = r8.referralUrl
            if (r6 == 0) goto L64
            java.lang.String r7 = "_"
            java.lang.String[] r6 = r6.split(r7)
            if (r6 == 0) goto L64
            int r7 = r6.length
            if (r7 <= r2) goto L64
            java.lang.StringBuilder r7 = new java.lang.StringBuilder
            r7.<init>()
            r6 = r6[r2]
            r7.append(r6)
            r7.append(r0)
            java.lang.String r0 = r7.toString()
        L64:
            java.lang.String r6 = r8.initiatingPackageName
            java.lang.String r7 = r8.originatingPackageName
            java.lang.String r1 = "^"
            if (r7 == 0) goto L81
            java.lang.StringBuilder r7 = new java.lang.StringBuilder
            r7.<init>()
            r7.append(r6)
            r7.append(r1)
            java.lang.String r6 = r8.originatingPackageName
            r7.append(r6)
            java.lang.String r6 = r7.toString()
            goto L92
        L81:
            java.lang.StringBuilder r7 = new java.lang.StringBuilder
            r7.<init>()
            r7.append(r6)
            java.lang.String r6 = "^NA"
            r7.append(r6)
            java.lang.String r6 = r7.toString()
        L92:
            java.lang.StringBuilder r7 = new java.lang.StringBuilder
            r7.<init>()
            java.lang.String r2 = r8.packageName
            r7.append(r2)
            r7.append(r1)
            java.lang.String r2 = r8.sigHashValue
            r7.append(r2)
            r7.append(r1)
            r7.append(r6)
            java.lang.String r6 = r7.toString()
            int r7 = r6.length()
            r2 = 200(0xc8, float:2.8E-43)
            if (r7 < r2) goto Ld1
            java.lang.StringBuilder r6 = new java.lang.StringBuilder
            r6.<init>()
            java.lang.String r7 = r8.packageName
            r6.append(r7)
            r6.append(r1)
            java.lang.String r7 = r8.sigHashValue
            r6.append(r7)
            java.lang.String r7 = "^NA^NA"
            r6.append(r7)
            java.lang.String r6 = r6.toString()
        Ld1:
            java.lang.String r7 = r8.saReportValue
            r5.setSamsungAnalyticsLog(r0, r6, r7)
        Ld6:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.server.asks.ASKSManagerService.SAreport(com.android.server.asks.RETVALUE, com.android.server.asks.ASKSManagerService$CURSTATUS, com.android.server.asks.ASKSManagerService$CURPARAM):void");
    }

    public final void printCurInfo(CURSTATUS curstatus, CURPARAM curparam) {
        Slog.i("PackageInformation", "pkg:" + curparam.packageName);
        Slog.i("PackageInformation", "-- initiating :" + curparam.initiatingPackageName);
        Slog.i("PackageInformation", "-- originating :" + curparam.originatingPackageName);
        Slog.i("PackageInformation", "-- sdkVersion :" + curparam.sdkVersion);
        Slog.i("PackageInformation", "-- ASKS Version : " + mASKSPolicyVersion);
        Slog.i("PackageInformation", "-- device " + curstatus.target_model);
        if (curstatus.isDevDevice) {
            if (curstatus.isCheckZipFormat) {
                Slog.d("PackageInformation", "enable CheckZipFormat");
            } else {
                Slog.d("PackageInformation", "disable CheckZipFormat");
            }
            if (this.ASKS_UNKNOWN_LIMIT_CALLPEM) {
                Slog.d("PackageInformation", "enable limitCallPem");
            } else {
                Slog.d("PackageInformation", "disable limitCallPem");
            }
            if (curstatus.isLimitOnlyKorMCC) {
                Slog.d("PackageInformation", "enable isOnlyKorMCC");
            } else {
                Slog.d("PackageInformation", "disable isOnlyKorMCC");
            }
            if (curstatus.isTabletExcepted) {
                Slog.d("PackageInformation", "enable Mobile Option");
            } else {
                Slog.d("PackageInformation", "disable Mobile Option");
            }
            if (curstatus.isLocUrlCase) {
                Slog.d("PackageInformation", "-- download Url :" + curparam.downloadUrl);
                Slog.d("PackageInformation", "-- Domain :" + curparam.domain);
                Slog.d("PackageInformation", "-- IP :" + curstatus.isIP);
                Slog.d("PackageInformation", "-- DH :" + curparam.hashDomain);
            }
            Slog.d("PackageInformation", "-- referral Url : " + curparam.referralUrl);
            int i = 0;
            while (true) {
                Signature[] signatureArr = curparam.signatures;
                String str = null;
                if (i >= signatureArr.length) {
                    break;
                }
                try {
                    str = getSigHash(signatureArr[i]);
                } catch (NoSuchAlgorithmException e) {
                    e.printStackTrace();
                }
                Slog.d("PackageInformation", "DEBUG pkg:" + curparam.packageName + " sig [" + i + "]::" + str);
                i++;
            }
            Slog.d("PackageInformation", "DEBUG pkg:" + curparam.packageName + " pkgNameHash::" + curparam.pkgNameHash);
            try {
                String convertToHex = convertToHex(getApkFileHashBytes(curparam.baseCodePath));
                if (!convertToHex.equals("null")) {
                    Slog.d("PackageInformation", "DEBUG pkg:" + curparam.packageName + " apkFileHash::" + convertToHex);
                }
            } catch (IOException e2) {
                e2.printStackTrace();
            }
            Slog.d("PackageInformation", "DEBUG pkg:" + curparam.packageName + " api::" + curparam.sdkVersion);
            for (int i2 = 0; i2 < curparam.permList.length; i2++) {
                Slog.d("PackageInformation", "DEBUG pem:" + curparam.permList[i2]);
            }
            if (curparam.servicePermList != null) {
                for (int i3 = 0; i3 < curparam.servicePermList.length; i3++) {
                    Slog.d("PackageInformation", "DEBUG servicePem:" + curparam.servicePermList[i3]);
                }
            }
            ArrayList installedAppsDataFromXML = getInstalledAppsDataFromXML("isInstalledList", null);
            if (installedAppsDataFromXML != null) {
                Slog.d("PackageInformation", "DEBUG isInstalledList " + installedAppsDataFromXML.toString());
            }
            ArrayList installedAppsDataFromXML2 = getInstalledAppsDataFromXML("requestInstallerZip", null);
            if (installedAppsDataFromXML2 != null) {
                Slog.d("PackageInformation", "DEBUG requestInstallerZip " + installedAppsDataFromXML2.toString());
            }
            ArrayList installedAppsDataFromXML3 = getInstalledAppsDataFromXML("overlay", null);
            if (installedAppsDataFromXML3 != null) {
                Slog.d("PackageInformation", "DEBUG overlay " + installedAppsDataFromXML3.toString());
            }
            ArrayList installedAppsDataFromXML4 = getInstalledAppsDataFromXML("blockExecute", null);
            if (installedAppsDataFromXML4 != null) {
                Slog.d("PackageInformation", "DEBUG blockExecute " + installedAppsDataFromXML4.toString());
            }
            ArrayList installedAppsDataFromXML5 = getInstalledAppsDataFromXML("allowExecute", null);
            if (installedAppsDataFromXML5 != null) {
                Slog.d("PackageInformation", "DEBUG allowExecute " + installedAppsDataFromXML5.toString());
            }
            ArrayList installedAppsDataFromXML6 = getInstalledAppsDataFromXML("initType", null);
            if (installedAppsDataFromXML6 != null) {
                Slog.d("PackageInformation", "DEBUG initType " + installedAppsDataFromXML6.toString());
            }
            ArrayList installedAppsDataFromXML7 = getInstalledAppsDataFromXML("accessibility", null);
            if (installedAppsDataFromXML7 != null) {
                Slog.d("PackageInformation", "DEBUG accessibility " + installedAppsDataFromXML7.toString());
            }
            ArrayList installedAppsDataFromXML8 = getInstalledAppsDataFromXML("hasReqInstallPEM", null);
            if (installedAppsDataFromXML8 != null) {
                Slog.d("PackageInformation", "DEBUG hasReqInstallPEM " + installedAppsDataFromXML8.toString());
            }
        }
    }

    public boolean isTrustedSelfUpdate(String str, String[] strArr) {
        PackageInfo packageInfo;
        ArrayList arrayList;
        Slog.i("PackageInformation", "check selfupdate..");
        HashMap hashMap = new HashMap();
        ArrayList arrayList2 = new ArrayList();
        getASKSDataFromXML(30, hashMap);
        if (hashMap.containsKey("CHECK") && (arrayList = (ArrayList) hashMap.get("CHECK")) != null) {
            for (int i = 0; i < strArr.length; i++) {
                if (arrayList.contains(strArr[i])) {
                    arrayList2.add(strArr[i]);
                    if (isDevDevice()) {
                        Slog.i("PackageInformation", "adding pem:" + strArr[i]);
                    }
                }
            }
        }
        if (arrayList2.size() <= 0) {
            return true;
        }
        Slog.i("PackageInformation", "check change of pem");
        try {
            Context context = this.mContext;
            if (context == null || context.getPackageManager() == null || (packageInfo = this.mContext.getPackageManager().getPackageInfo(str, IInstalld.FLAG_USE_QUOTA)) == null) {
                return true;
            }
            if (packageInfo.requestedPermissions != null) {
                for (int i2 = 0; i2 < arrayList2.size(); i2++) {
                    String str2 = (String) arrayList2.get(i2);
                    int i3 = 0;
                    int i4 = 0;
                    while (true) {
                        if (i3 >= packageInfo.requestedPermissions.length) {
                            break;
                        }
                        if (isDevDevice()) {
                            Slog.i("PackageInformation", "permission:" + packageInfo.requestedPermissions[i3]);
                        }
                        if (!str2.equals(packageInfo.requestedPermissions[i3])) {
                            i4++;
                            i3++;
                        } else if (isDevDevice()) {
                            Slog.i("PackageInformation", "installed app already has " + str2);
                        } else {
                            Slog.i("PackageInformation", "The target perm is included in the installed app.");
                        }
                    }
                    if (i4 == packageInfo.requestedPermissions.length) {
                        if (isDevDevice()) {
                            Slog.i("PackageInformation", "installed app does not have " + str2 + " :" + i4);
                        } else {
                            Slog.i("PackageInformation", "The installed app doesn't have target permission.");
                        }
                        return false;
                    }
                }
                return true;
            }
            Slog.i("PackageInformation", "self requestedPermissions is null");
            return true;
        } catch (PackageManager.NameNotFoundException e) {
            Slog.i("PackageInformation", "self :" + e);
            return true;
        }
    }

    public final void changeStatusForDev(CURPARAM curparam, CURSTATUS curstatus) {
        ArrayList arrayList;
        ArrayList arrayList2;
        ArrayList arrayList3;
        ArrayList arrayList4;
        ArrayList arrayList5;
        ArrayList arrayList6;
        if (!isDevDevice()) {
            Slog.i("PackageInformation", "disable DevParm option.");
            return;
        }
        HashMap hashMap = new HashMap();
        getASKSDataFromXML(47, hashMap);
        Slog.d("PackageInformation", "changeStatusForDev");
        if (hashMap.containsKey("initiatingPackageName") && (arrayList6 = (ArrayList) hashMap.get("initiatingPackageName")) != null) {
            Slog.d("PackageInformation", "changeStatus[init]:" + curparam.initiatingPackageName + " is changed to " + ((String) arrayList6.get(0)));
            curparam.initiatingPackageName = (String) arrayList6.get(0);
        }
        if (hashMap.containsKey("originatingPackageName") && (arrayList5 = (ArrayList) hashMap.get("originatingPackageName")) != null) {
            Slog.d("PackageInformation", "changeStatus[orig]:" + curparam.originatingPackageName + " is changed to " + ((String) arrayList5.get(0)));
            curparam.originatingPackageName = (String) arrayList5.get(0);
        }
        if (hashMap.containsKey("downloadUrl") && (arrayList4 = (ArrayList) hashMap.get("downloadUrl")) != null) {
            Slog.d("PackageInformation", "changeStatus[downUrl]:" + curparam.downloadUrl + " is changed to " + ((String) arrayList4.get(0)));
            curparam.downloadUrl = (String) arrayList4.get(0);
        }
        if (hashMap.containsKey("packageName") && (arrayList3 = (ArrayList) hashMap.get("packageName")) != null) {
            Slog.d("PackageInformation", "changeStatus[PkgName]:" + curparam.packageName + " is changed to " + ((String) arrayList3.get(0)));
            curparam.packageName = (String) arrayList3.get(0);
        }
        if (hashMap.containsKey("permList") && (arrayList2 = (ArrayList) hashMap.get("permList")) != null) {
            String[] strArr = new String[arrayList2.size()];
            for (int i = 0; i < arrayList2.size(); i++) {
                Slog.d("PackageInformation", "changeStatus[Pem]:" + strArr[i] + " is changed to " + ((String) arrayList2.get(i)));
                strArr[i] = (String) arrayList2.get(i);
            }
            curparam.permList = strArr;
        }
        if (!hashMap.containsKey("servicePermList") || (arrayList = (ArrayList) hashMap.get("servicePermList")) == null) {
            return;
        }
        String[] strArr2 = new String[arrayList.size()];
        for (int i2 = 0; i2 < arrayList.size(); i2++) {
            Slog.d("PackageInformation", "changeStatus[ServicePem]:" + strArr2[i2] + " is changed to " + ((String) arrayList.get(i2)));
            strArr2[i2] = (String) arrayList.get(i2);
        }
        curparam.servicePermList = strArr2;
    }

    /* JADX WARN: Removed duplicated region for block: B:193:0x0578  */
    /* JADX WARN: Removed duplicated region for block: B:196:0x05b4  */
    /* JADX WARN: Removed duplicated region for block: B:250:0x058e  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public int checkUnknownSourcePackage(java.lang.String r33, java.lang.String[] r34, java.lang.String[] r35, java.lang.String r36, android.content.pm.Signature[] r37, java.lang.String r38, java.lang.String r39, java.lang.String r40, int r41, java.lang.String r42, java.lang.String r43, int r44) {
        /*
            Method dump skipped, instructions count: 1827
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.server.asks.ASKSManagerService.checkUnknownSourcePackage(java.lang.String, java.lang.String[], java.lang.String[], java.lang.String, android.content.pm.Signature[], java.lang.String, java.lang.String, java.lang.String, int, java.lang.String, java.lang.String, int):int");
    }

    public List getUnknownAppList() {
        enforceSystemOrRoot("Only the system can claim isUnknownApps");
        if (!this.ASKS_UNKNOWN_LIMIT_CALLPEM) {
            return null;
        }
        Slog.i("PackageInformation", "checking limitCallPem..");
        ArrayList installedAppsDataFromXML = getInstalledAppsDataFromXML("overlay", null);
        if (installedAppsDataFromXML == null || installedAppsDataFromXML.isEmpty()) {
            Slog.e("PackageInformation", "getUnknownAppList : installedUnknownList is null");
            return null;
        }
        if (isDevDevice()) {
            Slog.i("PackageInformation", "getUnknownAppList : " + installedAppsDataFromXML.toString());
        }
        return installedAppsDataFromXML;
    }

    public boolean isUnknownApps(String str, Signature[] signatureArr) {
        enforceSystemOrRoot("Only the system can claim isUnknownApps");
        if (!this.ASKS_UNKNOWN_LIMIT_CALLPEM) {
            return false;
        }
        Slog.i("PackageInformation", "checking limitCallPem....(endCalling)");
        Slog.i("PackageInformation", "isUnknownApp " + str);
        if (str == null || str.isEmpty() || signatureArr == null) {
            Slog.e("PackageInformation", "packageName or hashedSignature is null!!");
            return false;
        }
        HashMap hashMap = new HashMap();
        getInstalledAppsDataFromXML(null, hashMap);
        if (hashMap.isEmpty()) {
            Slog.e("PackageInformation", "installedList is null");
            return false;
        }
        ArrayList installedAppsDataFromXML = getInstalledAppsDataFromXML("overlay", null);
        if (installedAppsDataFromXML == null || installedAppsDataFromXML.isEmpty()) {
            Slog.e("PackageInformation", "overlayList is null");
            return false;
        }
        if (installedAppsDataFromXML.contains(str)) {
            if (hashMap.containsKey(str)) {
                try {
                    String sigHash = getSigHash(signatureArr[0]);
                    if (hashMap.size() > 0 && sigHash.equals(((InstalledAppInfo) hashMap.get(str)).signature)) {
                        Slog.i("PackageInformation", "isUnknownApp is true");
                        return true;
                    }
                } catch (NoSuchAlgorithmException e) {
                    e.printStackTrace();
                }
            } else {
                Slog.e("PackageInformation", "packageName is not exist in installedUnknownList");
            }
        } else {
            Slog.e("PackageInformation", "packageName is not exist in overlayList");
        }
        return false;
    }

    public void compareAttributeValue(UnknownStore unknownStore, InstalledAppInfo installedAppInfo) {
        ArrayList installedAppsDataFromXML;
        String str;
        HashMap hashMap;
        if (installedAppInfo != null) {
            ArrayList exceptList = unknownStore.getExceptList();
            String sHA256ForPkgName = getSHA256ForPkgName(installedAppInfo.name);
            String str2 = installedAppInfo.signature;
            if (sHA256ForPkgName != null && !sHA256ForPkgName.isEmpty() && str2 != null && !str2.isEmpty()) {
                if (exceptList != null && (exceptList.contains(sHA256ForPkgName) || exceptList.contains(str2))) {
                    if ("block".equals(installedAppInfo.overlay)) {
                        installedAppInfo.overlay = "allow";
                        setDataToDeviceForModifyUnknownApp(2, installedAppInfo);
                    }
                } else if ("allow".equals(installedAppInfo.overlay)) {
                    installedAppInfo.overlay = "block";
                    setDataToDeviceForModifyUnknownApp(2, installedAppInfo);
                }
                ArrayList excuteBlockList = unknownStore.getExcuteBlockList();
                if (excuteBlockList != null && (excuteBlockList.contains(sHA256ForPkgName) || excuteBlockList.contains(str2))) {
                    if ("allow".equals(installedAppInfo.execute)) {
                        installedAppInfo.execute = "block";
                        setDataToDeviceForModifyUnknownApp(2, installedAppInfo);
                        HashMap hashMap2 = unknownStore.certPolicies;
                        if (((hashMap2 != null && !hashMap2.containsKey(sHA256ForPkgName)) || unknownStore.certPolicies == null) && (hashMap = unknownStore.certPolicies) != null && hashMap.containsKey(sHA256ForPkgName) && ((HashMap) unknownStore.certPolicies.get(sHA256ForPkgName)).containsKey("ALL")) {
                            setSamsungAnalyticsLog(Integer.toString(((PKGINFO) ((HashMap) unknownStore.certPolicies.get(sHA256ForPkgName)).get("ALL")).getSA()), installedAppInfo.name + "^" + installedAppInfo.signature, "NA");
                        }
                    }
                } else if ("block".equals(installedAppInfo.execute)) {
                    installedAppInfo.execute = "allow";
                    setDataToDeviceForModifyUnknownApp(2, installedAppInfo);
                }
                HashMap unknownAppsList = unknownStore.getUnknownAppsList();
                if (unknownAppsList == null || !unknownAppsList.containsKey(str2) || (installedAppsDataFromXML = getInstalledAppsDataFromXML("initType", null)) == null) {
                    return;
                }
                for (int i = 0; i < installedAppsDataFromXML.size(); i++) {
                    String[] split = ((String) installedAppsDataFromXML.get(i)).split(",");
                    String str3 = split[0];
                    if (str3 != null && split[1] != null) {
                        String sHA256ForPkgName2 = getSHA256ForPkgName(str3);
                        String str4 = split[1];
                        if (sHA256ForPkgName.equals(sHA256ForPkgName2) && (str = (String) unknownAppsList.get(str2)) != null && !str.equals(str4)) {
                            if (isDevDevice()) {
                                Slog.w("PackageInformation", split[0] + "'s policy was changed from " + installedAppInfo.initType + " to " + str);
                            }
                            installedAppInfo.initType = str;
                            setDataToDeviceForModifyUnknownApp(2, installedAppInfo);
                        }
                    }
                }
                return;
            }
            Slog.e("PackageInformation", "pkgNameHash is NULL!!");
            return;
        }
        Slog.e("PackageInformation", "appInfo is NULL!!");
    }

    public final void refreshInstalledUnknownList_NEW() {
        HashMap unknownAppsDataFromXML;
        HashMap hashMap = new HashMap();
        getInstalledAppsDataFromXML(null, hashMap);
        if (hashMap.isEmpty()) {
            Slog.w("PackageInformation", "installedUnknownList is null");
            return;
        }
        ArrayList targetNodeName = getTargetNodeName(SystemProperties.get("ro.product.model", "Unknown"));
        if (targetNodeName != null && targetNodeName.size() > 0 && (unknownAppsDataFromXML = getUnknownAppsDataFromXML(38, targetNodeName)) != null) {
            for (Map.Entry entry : hashMap.entrySet()) {
                InstalledAppInfo installedAppInfo = (InstalledAppInfo) entry.getValue();
                String str = (String) entry.getKey();
                if (installedAppInfo != null && str != null) {
                    String sHA256ForPkgName = getSHA256ForPkgName(str);
                    if (unknownAppsDataFromXML.containsKey(installedAppInfo.signature)) {
                        StringBuilder sb = new StringBuilder();
                        sb.append("try to check ");
                        sb.append(str);
                        sb.append(isDevDevice() ? " hash:" + sHA256ForPkgName : "");
                        Slog.i("PackageInformation", sb.toString());
                        UnknownStore unknownStore = (UnknownStore) unknownAppsDataFromXML.get(installedAppInfo.signature);
                        if (unknownStore != null) {
                            compareAttributeValue(unknownStore, installedAppInfo);
                        }
                    } else if (unknownAppsDataFromXML.containsKey("ALL")) {
                        StringBuilder sb2 = new StringBuilder();
                        sb2.append("try to check(ALL) ");
                        sb2.append(str);
                        sb2.append(isDevDevice() ? " hash:" + sHA256ForPkgName : "");
                        Slog.i("PackageInformation", sb2.toString());
                        UnknownStore unknownStore2 = (UnknownStore) unknownAppsDataFromXML.get("ALL");
                        if (unknownStore2 != null) {
                            compareAttributeValue(unknownStore2, installedAppInfo);
                        }
                    }
                }
            }
        }
        if (isDevDevice()) {
            Slog.d("PackageInformation", "ASKS Unknown List  NEW: " + hashMap.keySet().toString());
        }
        if ("true".equals(SystemProperties.get("ro.build.official.release", "false"))) {
            RemovedAbnormalApps();
        }
    }

    public final void RemovedAbnormalApps() {
        ArrayList installedAppsDataFromXML = getInstalledAppsDataFromXML("isInstalledList", null);
        InstalledAppInfo installedAppInfo = new InstalledAppInfo();
        if (installedAppsDataFromXML == null || installedAppsDataFromXML.isEmpty()) {
            return;
        }
        for (int i = 0; i < installedAppsDataFromXML.size(); i++) {
            String str = (String) installedAppsDataFromXML.get(i);
            installedAppInfo.set(str, null, null, null, null, null, null, null);
            try {
                this.mContext.getPackageManager().getPackageInfo(str, 134217728);
            } catch (PackageManager.NameNotFoundException e) {
                Slog.e("PackageInformation", "ERROR:: Abnormal App : " + e);
                setDataToDeviceForModifyUnknownApp(3, installedAppInfo);
            }
        }
    }

    public final void addUnknownAppList(String str, Signature[] signatureArr, RETVALUE retvalue, String str2, boolean z, boolean z2, boolean z3) {
        try {
            InstalledAppInfo installedAppInfo = new InstalledAppInfo();
            installedAppInfo.set(str, getSigHash(signatureArr[0]), retvalue.isExecute == 505 ? "allow" : "block", str2.equals("except") ? "allow" : "block", z ? "true" : "false", str2, z2 ? "true" : "false", z3 ? "true" : "false");
            setInstalledAppInfoToStore(installedAppInfo);
        } catch (NoSuchAlgorithmException e) {
            e.printStackTrace();
        }
    }

    public final void setInstalledAppInfoToStore(InstalledAppInfo installedAppInfo) {
        this.installedAppInfoToStore = installedAppInfo;
    }

    public final InstalledAppInfo getInstalledAppInfoToStore() {
        return this.installedAppInfoToStore;
    }

    public final void clearInstalledAppInfoToStore() {
        this.installedAppInfoToStore = null;
    }

    /* JADX WARN: Removed duplicated region for block: B:36:0x00fd  */
    /* JADX WARN: Removed duplicated region for block: B:59:0x0183  */
    /* JADX WARN: Removed duplicated region for block: B:71:0x0191 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:78:? A[SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final void checkExistUnknownAppList() {
        /*
            Method dump skipped, instructions count: 420
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.server.asks.ASKSManagerService.checkExistUnknownAppList():void");
    }

    public final ArrayList getInstalledAppsDataFromXML(String str, HashMap hashMap) {
        FileReader fileReader;
        HashMap hashMap2 = new HashMap();
        ArrayList arrayList = new ArrayList();
        File file = new File("/data/system/.aasa/AASApolicy/ASKS_UNKNOWN_INSTALLED_INFO_LIST.xml");
        if (file.getParentFile() != null && !file.getParentFile().exists()) {
            if (!file.getParentFile().mkdir()) {
                Slog.e("PackageInformation", "failed to created folder related INFOLIST");
                return null;
            }
            file.getParentFile().setReadable(true, false);
        }
        if (!file.exists()) {
            return null;
        }
        try {
            fileReader = new FileReader(file, Charset.defaultCharset());
        } catch (IOException | XmlPullParserException e) {
            e = e;
            fileReader = null;
        }
        try {
            XmlPullParser newPullParser = XmlPullParserFactory.newInstance().newPullParser();
            newPullParser.setInput(fileReader);
            int eventType = newPullParser.getEventType();
            for (int i = 1; eventType != i; i = 1) {
                if (eventType == 2) {
                    String name = newPullParser.getName();
                    if (str != null) {
                        if (name != null && name.equals("package")) {
                            checkAttributeValue(newPullParser, hashMap2);
                            eventType = newPullParser.next();
                        }
                    } else {
                        InstalledAppInfo installedAppInfo = new InstalledAppInfo();
                        installedAppInfo.set(newPullParser.getAttributeValue(null, "name"), newPullParser.getAttributeValue(null, "signature"), newPullParser.getAttributeValue(null, "execute"), newPullParser.getAttributeValue(null, "overlay"), newPullParser.getAttributeValue(null, "requestInstallerZip"), newPullParser.getAttributeValue(null, "initType"), newPullParser.getAttributeValue(null, "accessibility"), newPullParser.getAttributeValue(null, "hasReqInstallPEM"));
                        hashMap.put(newPullParser.getAttributeValue(null, "name"), installedAppInfo);
                        eventType = newPullParser.next();
                    }
                }
                eventType = newPullParser.next();
            }
            fileReader.close();
            return hashMap2.containsKey(str) ? (ArrayList) hashMap2.get(str) : arrayList;
        } catch (IOException | XmlPullParserException e2) {
            e = e2;
            e.printStackTrace();
            if (fileReader != null) {
                try {
                    fileReader.close();
                } catch (IOException e3) {
                    e3.printStackTrace();
                }
            }
            return null;
        }
    }

    public final void putInstalledList(String str, String str2, HashMap hashMap) {
        ArrayList arrayList = (ArrayList) hashMap.get(str);
        if (arrayList != null && !arrayList.isEmpty()) {
            arrayList.add(str2);
        } else {
            arrayList = new ArrayList();
            arrayList.add(str2);
        }
        hashMap.put(str, arrayList);
    }

    public final void checkAttributeValue(XmlPullParser xmlPullParser, HashMap hashMap) {
        if (xmlPullParser.getAttributeValue(null, "name") == null || xmlPullParser.getAttributeValue(null, "execute") == null || xmlPullParser.getAttributeValue(null, "overlay") == null || xmlPullParser.getAttributeValue(null, "requestInstallerZip") == null || xmlPullParser.getAttributeValue(null, "initType") == null) {
            return;
        }
        String attributeValue = xmlPullParser.getAttributeValue(null, "name");
        if ("block".equals(xmlPullParser.getAttributeValue(null, "execute"))) {
            putInstalledList("blockExecute", attributeValue, hashMap);
        } else if ("allow".equals(xmlPullParser.getAttributeValue(null, "execute"))) {
            putInstalledList("allowExecute", attributeValue, hashMap);
        }
        if ("block".equals(xmlPullParser.getAttributeValue(null, "overlay"))) {
            putInstalledList("overlay", attributeValue, hashMap);
        }
        if ("true".equals(xmlPullParser.getAttributeValue(null, "requestInstallerZip"))) {
            putInstalledList("requestInstallerZip", attributeValue, hashMap);
        }
        if (!attributeValue.isEmpty()) {
            putInstalledList("isInstalledList", attributeValue, hashMap);
        }
        if (!xmlPullParser.getAttributeValue(null, "initType").isEmpty()) {
            putInstalledList("initType", attributeValue + "," + xmlPullParser.getAttributeValue(null, "initType"), hashMap);
        }
        if ("true".equals(xmlPullParser.getAttributeValue(null, "accessibility"))) {
            putInstalledList("accessibility", attributeValue, hashMap);
        }
        if ("true".equals(xmlPullParser.getAttributeValue(null, "hasReqInstallPEM"))) {
            putInstalledList("hasReqInstallPEM", attributeValue, hashMap);
        }
    }

    public final void setDataToDeviceForInstalledUnknownList(List list) {
        File file;
        XmlSerializer newSerializer = Xml.newSerializer();
        FileOutputStream fileOutputStream = null;
        try {
            try {
                try {
                    file = new File("/data/system/.aasa/AASApolicy/ASKS_UNKNOWN_INSTALLED_INFO_LIST.xml");
                } catch (Exception e) {
                    e = e;
                }
                if (!file.createNewFile()) {
                    Slog.e("PackageInformation", "failed to created file related INFOLIST");
                    return;
                }
                FileOutputStream fileOutputStream2 = new FileOutputStream(file);
                try {
                    newSerializer.setOutput(fileOutputStream2, "UTF-8");
                    newSerializer.startDocument(null, Boolean.TRUE);
                    newSerializer.setFeature("http://xmlpull.org/v1/doc/features.html#indent-output", true);
                    newSerializer.startTag(null, "LIST");
                    if (list != null) {
                        for (int i = 0; i < list.size(); i++) {
                            newSerializer.startTag(null, "package");
                            newSerializer.attribute(null, "name", ((InstalledAppInfo) list.get(i)).name);
                            newSerializer.attribute(null, "signature", ((InstalledAppInfo) list.get(i)).signature);
                            newSerializer.attribute(null, "execute", ((InstalledAppInfo) list.get(i)).execute);
                            newSerializer.attribute(null, "overlay", ((InstalledAppInfo) list.get(i)).overlay);
                            newSerializer.attribute(null, "requestInstallerZip", ((InstalledAppInfo) list.get(i)).requestInstallerZip);
                            newSerializer.attribute(null, "initType", ((InstalledAppInfo) list.get(i)).initType);
                            newSerializer.attribute(null, "accessibility", ((InstalledAppInfo) list.get(i)).accessibility);
                            newSerializer.attribute(null, "hasReqInstallPEM", ((InstalledAppInfo) list.get(i)).hasReqInstallPEM);
                            newSerializer.endTag(null, "package");
                        }
                    }
                    newSerializer.endTag(null, "LIST");
                    newSerializer.endDocument();
                    newSerializer.flush();
                    fileOutputStream2.close();
                    fileOutputStream2.close();
                } catch (Exception e2) {
                    e = e2;
                    fileOutputStream = fileOutputStream2;
                    e.printStackTrace();
                    if (fileOutputStream != null) {
                        fileOutputStream.close();
                    }
                } catch (Throwable th) {
                    th = th;
                    fileOutputStream = fileOutputStream2;
                    if (fileOutputStream != null) {
                        try {
                            fileOutputStream.close();
                        } catch (IOException e3) {
                            e3.printStackTrace();
                        }
                    }
                    throw th;
                }
            } catch (IOException e4) {
                e4.printStackTrace();
            }
        } catch (Throwable th2) {
            th = th2;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:79:0x01a3 -> B:15:0x01a7). Please report as a decompilation issue!!! */
    public final void setDataToDeviceForModifyUnknownApp(int i, InstalledAppInfo installedAppInfo) {
        FileInputStream fileInputStream;
        Document parse;
        Element documentElement;
        String str;
        String str2;
        NodeList nodeList;
        String str3 = "UTF-8";
        FileInputStream fileInputStream2 = null;
        FileInputStream fileInputStream3 = null;
        fileInputStream2 = null;
        try {
        } catch (IOException e) {
            e.printStackTrace();
            fileInputStream2 = fileInputStream2;
        }
        try {
            try {
                DocumentBuilder newDocumentBuilder = DocumentBuilderFactory.newInstance().newDocumentBuilder();
                FileInputStream fileInputStream4 = new FileInputStream(new File("/data/system/.aasa/AASApolicy/ASKS_UNKNOWN_INSTALLED_INFO_LIST.xml"));
                try {
                    InputSource inputSource = new InputSource(new InputStreamReader(fileInputStream4, "UTF-8"));
                    inputSource.setEncoding("UTF-8");
                    parse = newDocumentBuilder.parse(inputSource);
                    documentElement = parse.getDocumentElement();
                    fileInputStream = fileInputStream4;
                    try {
                    } catch (Exception e2) {
                        e = e2;
                        fileInputStream3 = fileInputStream;
                        e.printStackTrace();
                        fileInputStream2 = fileInputStream3;
                        if (fileInputStream3 != null) {
                            fileInputStream3.close();
                            fileInputStream2 = fileInputStream3;
                        }
                    } catch (Throwable th) {
                        th = th;
                        fileInputStream2 = fileInputStream;
                        Throwable th2 = th;
                        if (fileInputStream2 != null) {
                            try {
                                fileInputStream2.close();
                                throw th2;
                            } catch (IOException e3) {
                                e3.printStackTrace();
                                throw th2;
                            }
                        }
                        throw th2;
                    }
                } catch (Exception e4) {
                    e = e4;
                    fileInputStream = fileInputStream4;
                } catch (Throwable th3) {
                    th = th3;
                    fileInputStream = fileInputStream4;
                }
            } catch (Exception e5) {
                e = e5;
            }
            if (i == 1) {
                Element createElement = parse.createElement("package");
                createElement.setAttribute("name", installedAppInfo.name);
                createElement.setAttribute("signature", installedAppInfo.signature);
                createElement.setAttribute("execute", installedAppInfo.execute);
                createElement.setAttribute("overlay", installedAppInfo.overlay);
                createElement.setAttribute("requestInstallerZip", installedAppInfo.requestInstallerZip);
                createElement.setAttribute("initType", installedAppInfo.initType);
                createElement.setAttribute("accessibility", installedAppInfo.accessibility);
                createElement.setAttribute("hasReqInstallPEM", installedAppInfo.hasReqInstallPEM);
                documentElement.appendChild(createElement);
                str = "/data/system/.aasa/AASApolicy/ASKS_UNKNOWN_INSTALLED_INFO_LIST.xml";
            } else {
                if (i == 2) {
                    NodeList childNodes = documentElement.getChildNodes();
                    str = "/data/system/.aasa/AASApolicy/ASKS_UNKNOWN_INSTALLED_INFO_LIST.xml";
                    int i2 = 0;
                    while (i2 < childNodes.getLength()) {
                        str2 = str3;
                        if (childNodes.item(i2).getNodeType() == 1) {
                            Element element = (Element) childNodes.item(i2);
                            nodeList = childNodes;
                            if (element.getAttribute("name").equals(installedAppInfo.name) && element.getAttribute("signature").equals(installedAppInfo.signature)) {
                                Element createElement2 = parse.createElement("package");
                                createElement2.setAttribute("name", installedAppInfo.name);
                                createElement2.setAttribute("signature", installedAppInfo.signature);
                                createElement2.setAttribute("execute", installedAppInfo.execute);
                                createElement2.setAttribute("overlay", installedAppInfo.overlay);
                                createElement2.setAttribute("requestInstallerZip", installedAppInfo.requestInstallerZip);
                                createElement2.setAttribute("initType", installedAppInfo.initType);
                                createElement2.setAttribute("accessibility", installedAppInfo.accessibility);
                                createElement2.setAttribute("hasReqInstallPEM", installedAppInfo.hasReqInstallPEM);
                                documentElement.replaceChild(createElement2, element);
                                break;
                            }
                        } else {
                            nodeList = childNodes;
                        }
                        i2++;
                        childNodes = nodeList;
                        str3 = str2;
                    }
                } else {
                    str = "/data/system/.aasa/AASApolicy/ASKS_UNKNOWN_INSTALLED_INFO_LIST.xml";
                    str2 = "UTF-8";
                    if (i == 3) {
                        NodeList childNodes2 = documentElement.getChildNodes();
                        int i3 = 0;
                        while (true) {
                            if (i3 >= childNodes2.getLength()) {
                                break;
                            }
                            if (childNodes2.item(i3).getNodeType() == 1) {
                                Element element2 = (Element) childNodes2.item(i3);
                                if (element2.getAttribute("name").equals(installedAppInfo.name)) {
                                    Node previousSibling = element2.getPreviousSibling();
                                    if (previousSibling != null && previousSibling.getNodeType() == 3 && previousSibling.getNodeValue().trim().length() == 0) {
                                        documentElement.removeChild(previousSibling);
                                    }
                                    documentElement.removeChild(element2);
                                }
                            }
                            i3++;
                        }
                    }
                }
                documentElement.normalize();
                Transformer newTransformer = TransformerFactory.newInstance().newTransformer();
                newTransformer.setOutputProperty("{http://xml.apache.org/xslt}indent-amount", "4");
                newTransformer.setOutputProperty("indent", "yes");
                newTransformer.setOutputProperty("encoding", str2);
                newTransformer.transform(new DOMSource(parse), new StreamResult(str));
                fileInputStream.close();
                fileInputStream2 = documentElement;
            }
            str2 = str3;
            documentElement.normalize();
            Transformer newTransformer2 = TransformerFactory.newInstance().newTransformer();
            newTransformer2.setOutputProperty("{http://xml.apache.org/xslt}indent-amount", "4");
            newTransformer2.setOutputProperty("indent", "yes");
            newTransformer2.setOutputProperty("encoding", str2);
            newTransformer2.transform(new DOMSource(parse), new StreamResult(str));
            fileInputStream.close();
            fileInputStream2 = documentElement;
        } catch (Throwable th4) {
            th = th4;
        }
    }

    public final List parsePackages(XmlPullParser xmlPullParser) {
        int depth = xmlPullParser.getDepth();
        ArrayList arrayList = new ArrayList();
        while (true) {
            int next = xmlPullParser.next();
            if (next == 1 || (next == 3 && xmlPullParser.getDepth() <= depth)) {
                break;
            }
            if (next != 3 && next != 4 && xmlPullParser.getName().equals("package")) {
                String attributeValue = xmlPullParser.getAttributeValue(null, "name");
                if (!TextUtils.isEmpty(attributeValue) && !arrayList.contains(attributeValue)) {
                    arrayList.add(attributeValue);
                }
            }
        }
        return arrayList;
    }

    public final String getASKSPolicyVersion(String str, String str2) {
        HashMap hashMap = new HashMap();
        hashMap.put("ASKS_FILE", new String[]{"<asks version=\"", "\""});
        hashMap.put("ASKS_RULE_FILE", new String[]{"<VERSION value=\"", "\"/>"});
        try {
            String[] split = new String(Files.readAllBytes(Paths.get(str2, new String[0]))).split(((String[]) hashMap.get(str))[0]);
            return split.length > 1 ? split[1].split(((String[]) hashMap.get(str))[1])[0] : "00000000";
        } catch (IOException e) {
            e.printStackTrace();
            return "00000000";
        }
    }

    /* renamed from: com.android.server.asks.ASKSManagerService$1 */
    /* loaded from: classes.dex */
    public class AnonymousClass1 implements FilenameFilter {
        public AnonymousClass1() {
        }

        @Override // java.io.FilenameFilter
        public boolean accept(File file, String str) {
            return (str.startsWith("ASKS") && !str.contains("ROOT")) || str.startsWith("RPAB") || "ADP.xml".equals(str) || "protection_list.xml".equals(str);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:47:0x01a1  */
    /* JADX WARN: Removed duplicated region for block: B:61:0x018c A[Catch: IOException -> 0x0190, TRY_ENTER, TryCatch #7 {IOException -> 0x0190, blocks: (B:44:0x0138, B:69:0x0172, B:71:0x0177, B:61:0x018c, B:63:0x0194), top: B:43:0x0138 }] */
    /* JADX WARN: Removed duplicated region for block: B:63:0x0194 A[Catch: IOException -> 0x0190, TRY_LEAVE, TryCatch #7 {IOException -> 0x0190, blocks: (B:44:0x0138, B:69:0x0172, B:71:0x0177, B:61:0x018c, B:63:0x0194), top: B:43:0x0138 }] */
    /* JADX WARN: Removed duplicated region for block: B:69:0x0172 A[Catch: IOException -> 0x0190, TRY_ENTER, TryCatch #7 {IOException -> 0x0190, blocks: (B:44:0x0138, B:69:0x0172, B:71:0x0177, B:61:0x018c, B:63:0x0194), top: B:43:0x0138 }] */
    /* JADX WARN: Removed duplicated region for block: B:71:0x0177 A[Catch: IOException -> 0x0190, TRY_LEAVE, TryCatch #7 {IOException -> 0x0190, blocks: (B:44:0x0138, B:69:0x0172, B:71:0x0177, B:61:0x018c, B:63:0x0194), top: B:43:0x0138 }] */
    /* JADX WARN: Removed duplicated region for block: B:77:0x01ce A[Catch: IOException -> 0x01ca, TRY_LEAVE, TryCatch #1 {IOException -> 0x01ca, blocks: (B:86:0x01c6, B:77:0x01ce), top: B:85:0x01c6 }] */
    /* JADX WARN: Removed duplicated region for block: B:84:? A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:85:0x01c6 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final boolean copyASKSpolicyFromSystem() {
        /*
            Method dump skipped, instructions count: 640
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.server.asks.ASKSManagerService.copyASKSpolicyFromSystem():boolean");
    }

    public final boolean isTargetPackage(String str, ArrayList arrayList, ASKSSession aSKSSession) {
        Signature[] signatures;
        AndroidPackage androidPackage = getPackageManagerInternal().getPackage(str);
        if (androidPackage == null) {
            if (aSKSSession == null || str == null || !str.equals(aSKSSession.getPackageName())) {
                return false;
            }
            Slog.d("AASA_ASKSManager_RESTRICTED", "isTargetPackage() : There is no information of " + str + ", check current session.");
            signatures = aSKSSession.getSignature();
        } else {
            signatures = androidPackage.getSigningDetails().getSignatures();
        }
        if (signatures != null && signatures.length > 0) {
            for (Signature signature : signatures) {
                String charsString = signature.toCharsString();
                for (int i = 0; i < arrayList.size(); i++) {
                    if (charsString.equalsIgnoreCase((String) arrayList.get(i))) {
                        return true;
                    }
                }
            }
        }
        return false;
    }

    public final boolean isPlatformSigned(Signature[] signatureArr) {
        AndroidPackage androidPackage = getPackageManagerInternal().getPackage("android");
        if (androidPackage != null) {
            return PackageManagerServiceUtils.compareSignatures(androidPackage.getSigningDetails().getSignatures(), signatureArr) == 0;
        }
        Slog.e("AASA_ASKSManager", "cannot find android pkg");
        return false;
    }

    public final int isSignatureMatched(String str, Signature[] signatureArr) {
        boolean z = this.DEBUG_MODE_FOR_DEVELOPMENT;
        int i = z ? 11 : 10;
        String[] strArr = new String[i];
        strArr[0] = "308204d4308203bca003020102020900d20995a79c0daad6300d06092a864886f70d01010505003081a2310b3009060355040613024b52311430120603550408130b536f757468204b6f726561311330110603550407130a5375776f6e2043697479311c301a060355040a131353616d73756e6720436f72706f726174696f6e310c300a060355040b1303444d43311530130603550403130c53616d73756e6720436572743125302306092a864886f70d0109011616616e64726f69642e6f734073616d73756e672e636f6d301e170d3131303632323132323531325a170d3338313130373132323531325a3081a2310b3009060355040613024b52311430120603550408130b536f757468204b6f726561311330110603550407130a5375776f6e2043697479311c301a060355040a131353616d73756e6720436f72706f726174696f6e310c300a060355040b1303444d43311530130603550403130c53616d73756e6720436572743125302306092a864886f70d0109011616616e64726f69642e6f734073616d73756e672e636f6d30820120300d06092a864886f70d01010105000382010d00308201080282010100c986384a3e1f2fb206670e78ef232215c0d26f45a22728db99a44da11c35ac33a71fe071c4a2d6825a9b4c88b333ed96f3c5e6c666d60f3ee94c490885abcf8dc660f707aabc77ead3e2d0d8aee8108c15cd260f2e85042c28d2f292daa3c6da0c7bf2391db7841aade8fdf0c9d0defcf77124e6d2de0a9e0d2da746c3670e4ffcdc85b701bb4744861b96ff7311da3603c5a10336e55ffa34b4353eedc85f51015e1518c67e309e39f87639ff178107f109cd18411a6077f26964b6e63f8a70b9619db04306a323c1a1d23af867e19f14f570ffe573d0e3a0c2b30632aaec3173380994be1e341e3a90bd2e4b615481f46db39ea83816448ec35feb1735c1f3020103a382010b30820107301d0603551d0e04160414932c3af70b627a0c7610b5a0e7427d6cfaea3f1e3081d70603551d230481cf3081cc8014932c3af70b627a0c7610b5a0e7427d6cfaea3f1ea181a8a481a53081a2310b3009060355040613024b52311430120603550408130b536f757468204b6f726561311330110603550407130a5375776f6e2043697479311c301a060355040a131353616d73756e6720436f72706f726174696f6e310c300a060355040b1303444d43311530130603550403130c53616d73756e6720436572743125302306092a864886f70d0109011616616e64726f69642e6f734073616d73756e672e636f6d820900d20995a79c0daad6300c0603551d13040530030101ff300d06092a864886f70d01010505000382010100329601fe40e036a4a86cc5d49dd8c1b5415998e72637538b0d430369ac51530f63aace8c019a1a66616a2f1bb2c5fabd6f313261f380e3471623f053d9e3c53f5fd6d1965d7b000e4dc244c1b27e2fe9a323ff077f52c4675e86247aa801187137e30c9bbf01c567a4299db4bf0b25b7d7107a7b81ee102f72ff47950164e26752e114c42f8b9d2a42e7308897ec640ea1924ed13abbe9d120912b62f4926493a86db94c0b46f44c6161d58c2f648164890c512dfb28d42c855bf470dbee2dab6960cad04e81f71525ded46cdd0f359f99c460db9f007d96ce83b4b218ac2d82c48f12608d469733f05a3375594669ccbf8a495544d6c5701e9369c08c810158";
        strArr[1] = "308204d4308203bca003020102020900e5eff0a8f66d92b3300d06092a864886f70d01010505003081a2310b3009060355040613024b52311430120603550408130b536f757468204b6f726561311330110603550407130a5375776f6e2043697479311c301a060355040a131353616d73756e6720436f72706f726174696f6e310c300a060355040b1303444d43311530130603550403130c53616d73756e6720436572743125302306092a864886f70d0109011616616e64726f69642e6f734073616d73756e672e636f6d301e170d3131303632323132323531335a170d3338313130373132323531335a3081a2310b3009060355040613024b52311430120603550408130b536f757468204b6f726561311330110603550407130a5375776f6e2043697479311c301a060355040a131353616d73756e6720436f72706f726174696f6e310c300a060355040b1303444d43311530130603550403130c53616d73756e6720436572743125302306092a864886f70d0109011616616e64726f69642e6f734073616d73756e672e636f6d30820120300d06092a864886f70d01010105000382010d00308201080282010100e9f1edb42423201dce62e68f2159ed8ea766b43a43d348754841b72e9678ce6b03d06d31532d88f2ef2d5ba39a028de0857983cd321f5b7786c2d3699df4c0b40c8d856f147c5dc54b9d1d671d1a51b5c5364da36fc5b0fe825afb513ec7a2db862c48a6046c43c3b71a1e275155f6c30aed2a68326ac327f60160d427cf55b617230907a84edbff21cc256c628a16f15d55d49138cdf2606504e1591196ed0bdc25b7cc4f67b33fb29ec4dbb13dbe6f3467a0871a49e620067755e6f095c3bd84f8b7d1e66a8c6d1e5150f7fa9d95475dc7061a321aaf9c686b09be23ccc59b35011c6823ffd5874d8fa2a1e5d276ee5aa381187e26112c7d5562703b36210b020103a382010b30820107301d0603551d0e041604145b115b23db35655f9f77f78756961006eebe3a9e3081d70603551d230481cf3081cc80145b115b23db35655f9f77f78756961006eebe3a9ea181a8a481a53081a2310b3009060355040613024b52311430120603550408130b536f757468204b6f726561311330110603550407130a5375776f6e2043697479311c301a060355040a131353616d73756e6720436f72706f726174696f6e310c300a060355040b1303444d43311530130603550403130c53616d73756e6720436572743125302306092a864886f70d0109011616616e64726f69642e6f734073616d73756e672e636f6d820900e5eff0a8f66d92b3300c0603551d13040530030101ff300d06092a864886f70d0101050500038201010039c91877eb09c2c84445443673c77a1219c5c02e6552fa2fbad0d736bc5ab6ebaf0375e520fe9799403ecb71659b23afda1475a34ef4b2e1ffcba8d7ff385c21cb6482540bce3837e6234fd4f7dd576d7fcfe9cfa925509f772c494e1569fe44e6fcd4122e483c2caa2c639566dbcfe85ed7818d5431e73154ad453289fb56b607643919cf534fbeefbdc2009c7fcb5f9b1fa97490462363fa4bedc5e0b9d157e448e6d0e7cfa31f1a2faa9378d03c8d1163d3803bc69bf24ec77ce7d559abcaf8d345494abf0e3276f0ebd2aa08e4f4f6f5aaea4bc523d8cc8e2c9200ba551dd3d4e15d5921303ca9333f42f992ddb70c2958e776c12d7e3b7bd74222eb5c7a";
        strArr[2] = "308204d4308203bca003020102020900f3a752a8cbb7ac6a300d06092a864886f70d01010505003081a2310b3009060355040613024b52311430120603550408130b536f757468204b6f726561311330110603550407130a5375776f6e2043697479311c301a060355040a131353616d73756e6720436f72706f726174696f6e310c300a060355040b1303444d43311530130603550403130c53616d73756e6720436572743125302306092a864886f70d0109011616616e64726f69642e6f734073616d73756e672e636f6d301e170d3131303732373132323632335a170d3338313231323132323632335a3081a2310b3009060355040613024b52311430120603550408130b536f757468204b6f726561311330110603550407130a5375776f6e2043697479311c301a060355040a131353616d73756e6720436f72706f726174696f6e310c300a060355040b1303444d43311530130603550403130c53616d73756e6720436572743125302306092a864886f70d0109011616616e64726f69642e6f734073616d73756e672e636f6d30820120300d06092a864886f70d01010105000382010d00308201080282010100bd20d27f5127981cf0855e43e64d8018b92401ff0b4b241eeb54c4fb0e84dcf94cf8da888e34c1c370bc437f77880819f3a9894019f05d5514bc3d20d17e968167d85990fa1a44b9e79aa1da9681dc8d2c39b98b3b257918748c6f5bb9126330d72fdc26065e717f1a5c27c8b075f1a8d7325f7eb2d57ee34d93d76a5c529d2e0789392793c68c8f5090c4d2d093190b3279943550e2f5c864118e84d6c6c6bc67815148db8752e4bf69a9ca729ca4704d966e8dd591506dfc9dd9c8c33bdc7bf58660df6be3b45753983a092c3a4ae899d1f2253017ba606a5b1dda2f5511fcf530ea43c7dc05ff1621d305f12a37148e72078aaf644dadc98f3b6789cb6655020103a382010b30820107301d0603551d0e041604142fa3167aab7de1f13b4edef062fa715c0609f0bf3081d70603551d230481cf3081cc80142fa3167aab7de1f13b4edef062fa715c0609f0bfa181a8a481a53081a2310b3009060355040613024b52311430120603550408130b536f757468204b6f726561311330110603550407130a5375776f6e2043697479311c301a060355040a131353616d73756e6720436f72706f726174696f6e310c300a060355040b1303444d43311530130603550403130c53616d73756e6720436572743125302306092a864886f70d0109011616616e64726f69642e6f734073616d73756e672e636f6d820900f3a752a8cbb7ac6a300c0603551d13040530030101ff300d06092a864886f70d01010505000382010100498ed96cbc503fb1b72402dcb8ba364d8aa11dc5b9a7e191d200af4051272519b3099eba16e538044f086a1e36710abf2980efb437b6a9bebfab93417c068ea18cbfdeb8570fca73951684c674eb33c4240e236928ba1197d6b385c40454c3980f6f764131149dbba80756b7b18c5951a8630a6692fdb30227b431175f793a6e39479e8ad8b4b4beca6faabf9fc243b9be47447229524487f5f04cf6661ec818a3756221360bfeee3ccaec9a6dc67694b791a80957b28f11f15fd81eaeb361e4c9f907d3ceb4176f9947b513f8cd89d77044adae7c7f631f27a2e40a8d655a9c73515c796b17a39d0e9de675d62bf785c1e0d65a937c65aadacf788b2dfc14e2";
        strArr[3] = "308204d4308203bca003020102020900b830e7f5ede090a8300d06092a864886f70d01010505003081a2310b3009060355040613024b52311430120603550408130b536f757468204b6f726561311330110603550407130a5375776f6e2043697479311c301a060355040a131353616d73756e6720436f72706f726174696f6e310c300a060355040b1303444d43311530130603550403130c53616d73756e6720436572743125302306092a864886f70d0109011616616e64726f69642e6f734073616d73756e672e636f6d301e170d3131303632323132323531325a170d3338313130373132323531325a3081a2310b3009060355040613024b52311430120603550408130b536f757468204b6f726561311330110603550407130a5375776f6e2043697479311c301a060355040a131353616d73756e6720436f72706f726174696f6e310c300a060355040b1303444d43311530130603550403130c53616d73756e6720436572743125302306092a864886f70d0109011616616e64726f69642e6f734073616d73756e672e636f6d30820120300d06092a864886f70d01010105000382010d003082010802820101009a280ff8cebd5954fbac141d450be91a980a6597b379cb64a19bc4ab39aecb5f06fe2599d3767bb0c27e3e8ac3846cf0b80c09817f8d22be8a55418a068c6983958ffc233a99cd793bc468b0bda139b87ff1550e5ce184647214a1fa4fe2121a0ecdbb1cd33c644c06e7b70455ff097a4f8c51eca2ebefb4602b5d8bb6ed811ec959c1e99e8f353667703563c3c3277bbbd872fe7fa84bd8041efa98d32bb35c44d9c55aa8e766da065176722103fdb63677392c94bd20f5a5ac5c780046bc729a2eec3575a05ddb39836235c8c939f95493aa8f32dd7e7016392716219f0c5fe48874f283af0c217b4c08536b5df7bc302c9e2af08db61ecb49a198c7c4bd2b020103a382010b30820107301d0603551d0e041604144d2270829d5cf4a65bf55a756224bea659c2dfda3081d70603551d230481cf3081cc80144d2270829d5cf4a65bf55a756224bea659c2dfdaa181a8a481a53081a2310b3009060355040613024b52311430120603550408130b536f757468204b6f726561311330110603550407130a5375776f6e2043697479311c301a060355040a131353616d73756e6720436f72706f726174696f6e310c300a060355040b1303444d43311530130603550403130c53616d73756e6720436572743125302306092a864886f70d0109011616616e64726f69642e6f734073616d73756e672e636f6d820900b830e7f5ede090a8300c0603551d13040530030101ff300d06092a864886f70d01010505000382010100751ea54edeb751de01436db8009352bee64209020fe40641ac09d0016c807fd89258aca374299520e30bc79e77a161c98ddb8ccfc9c8184969114e4478d1b1b374a97e52e07e056dd6b6de5b063c12203e55e284d1de58af2fc6e43c198857b87ac9a472633b8a1cd7e6ebc4e2d675b680d1844d86ab7569129d24e2bcf10cddb2e66c85c1335a3d6479749152058a27135440b795bf509d78009fbda18a6c0cb31b741f79a4ac189d44fd04f65887bb9d950cc2b6f43275e71900fba03b06a9ab9ecd58af0f8c2e0b3569197b043da0601563b0af26a0f52c4b7e834c7ccf5dec4d330d8fd0a049360cd3d9ef0bff09b9812c9ba406c8a6650688b0919a040b";
        strArr[4] = "30820411308202f9a003020102020900fd222d6fc87acde0300d06092a864886f70d010105050030819e310b3009060355040613024b523113301106035504080c0a536f7574684b6f7265613112301006035504070c095375776f6e43697479311b3019060355040a0c1253616d73756e67436f72706f726174696f6e310c300a060355040b0c03444d433114301206035504030c0b53616d73756e67436572743125302306092a864886f70d01090116166d2e73656375726974794073616d73756e672e636f6d3020170d3133303132343035323231305a180f32313132313233313035323231305a30819e310b3009060355040613024b523113301106035504080c0a536f7574684b6f7265613112301006035504070c095375776f6e43697479311b3019060355040a0c1253616d73756e67436f72706f726174696f6e310c300a060355040b0c03444d433114301206035504030c0b53616d73756e67436572743125302306092a864886f70d01090116166d2e73656375726974794073616d73756e672e636f6d30820120300d06092a864886f70d01010105000382010d00308201080282010100a2c51f56a1c8bf64ada0af152ced2344ac070b447efc85f1b69ce90fbc2b7a71257240c215eedbf7445c474fe34d62bc3035d79ba110859118f1200ecc9ae48b56400e187591272d59734e456d9dfd5a1f3227a30b9448bda84c2901b501295445e204ddb6f9f9e36b2560998f1764e446176fe5d83987220f8ed15106dc7c8ecb6798de45f5fbae54efe2b35a379631f545f84c98243aa4d92ef339330f954ad32e4e97aff69cbf68928484b03a8fa8eafdc8ff2a9801f249302d467b05f99a1680e4fb5b11624d5e53d67f09e86b82dd7305e3e483b12e3720fcccc2bc8857f13b6e1d60512074004f67d86241940eaba34afda2af3904b04913fa50f499f7020103a350304e301d0603551d0e04160414eef0f8211dccf6e442f3388889c9a3ea3ce0236c301f0603551d23041830168014eef0f8211dccf6e442f3388889c9a3ea3ce0236c300c0603551d13040530030101ff300d06092a864886f70d01010505000382010100395c7e7900c471e03fa9850905c6ab1edc5a8b7d43a16689d9bb1ec1a06513c4ea8f7471c6e474244174261cc151ae8d1a61019e0ed81fffee8afa1d01d85a32de796f4b46d0d5ddfcca7d1f90d523b54751f505a4e3b059569f24ba2564d72fbc4081533840f618c2993d935134d3c987605e032f6a12889af3190af1714a90f2a3476b8e0016ab45564bf10e611899babd86af33149ca6838b0a885c752ffe879f37997f262e819c62cf59caa794cfaaf8e3c462f5092a34264f0634316b13a67a644e104dc4070e8b6628a46f41da7e3c741f6edc21152f9f947dde6fe14b58f34e4d9e7abd103cb1ca9e09eb4fa5b553baa413329bd3919caca2d52e6d4b";
        strArr[5] = "308204d4308203bca003020102020900b161f3869153be27300d06092a864886f70d01010505003081a2310b3009060355040613024b52311430120603550408130b536f757468204b6f726561311330110603550407130a5375776f6e2043697479311c301a060355040a131353616d73756e6720436f72706f726174696f6e310c300a060355040b1303444d43311530130603550403130c53616d73756e6720436572743125302306092a864886f70d0109011616616e64726f69642e6f734073616d73756e672e636f6d301e170d3131303632323132323531325a170d3338313130373132323531325a3081a2310b3009060355040613024b52311430120603550408130b536f757468204b6f726561311330110603550407130a5375776f6e2043697479311c301a060355040a131353616d73756e6720436f72706f726174696f6e310c300a060355040b1303444d43311530130603550403130c53616d73756e6720436572743125302306092a864886f70d0109011616616e64726f69642e6f734073616d73756e672e636f6d30820120300d06092a864886f70d01010105000382010d00308201080282010100e93d8694c493d50a6224a473d70ddcecd84a2f40ac48bb8206c83a09a94f2db98aaa34f9fcc343b91a87c61254c3a43b0caed03cd839a63037253ea77d949a284dd0b44ebfbabbc2cea838213609d9a5813e88863210ee62c0c0e415611aa7f938ad2bc627c147ac6cf558002028d2e38b1d31aba794867717ddcfcadbeeac6bd345a7bf6433e52cfc93a2157cb048298bd33bf30c143b777e3f074897bcf3b5b181316b678256fd3accf64e88160b0781efd90711ef4acae86848d87e1c10a1747e780c48bcb378a7b437e0405ec54ed7e22c4dbc39f8b03ab1d5eeb7cf4804455fbcab35afb775d79e8f4c4fa4da00b2ce48c991fd94020f7ad089fba13003020103a382010b30820107301d0603551d0e04160414b58d96dcf0127466098625e3ffb03a4f8d0654743081d70603551d230481cf3081cc8014b58d96dcf0127466098625e3ffb03a4f8d065474a181a8a481a53081a2310b3009060355040613024b52311430120603550408130b536f757468204b6f726561311330110603550407130a5375776f6e2043697479311c301a060355040a131353616d73756e6720436f72706f726174696f6e310c300a060355040b1303444d43311530130603550403130c53616d73756e6720436572743125302306092a864886f70d0109011616616e64726f69642e6f734073616d73756e672e636f6d820900b161f3869153be27300c0603551d13040530030101ff300d06092a864886f70d0101050500038201010091327721aa614451a785e200349ce2f402049371943001266827c29abdf975dc7b3e6eaa02c41a07b445bb9de0bc43ce25c3c98928a94ff67ad81eec822cbd083ae686cd7126860655adb8d6a6228cf1f7a4a196699669c05b506efa1fca2cad1a150cabd01380e56bb1842651b4ff33bcb619b3c6e65a10cfd99350ea777c3866135523c1bece17f59fba76a2eb429453f7a2a9e6a6cc9e62e5f4b56706ba4c74cb86975aa865bead2209787b33261b9fa222a7117b1724ea3217ad680fd0408c5634278fbdfca0e32b16dc1a6cc245e931cbe84fc7cccdaa7778459e3003a082662ac6d84d485dd368e0eb4c2c9019420c82d1cd0fbd6fcc097353b059baea";
        strArr[6] = "308204d4308203bca003020102020900e49d6da353f759af300d06092a864886f70d01010505003081a2310b3009060355040613024b52311430120603550408130b536f757468204b6f726561311330110603550407130a5375776f6e2043697479311c301a060355040a131353616d73756e6720436f72706f726174696f6e310c300a060355040b1303444d43311530130603550403130c53616d73756e6720436572743125302306092a864886f70d0109011616616e64726f69642e6f734073616d73756e672e636f6d301e170d3039303630393135353934365a170d3336313032353135353934365a3081a2310b3009060355040613024b52311430120603550408130b536f757468204b6f726561311330110603550407130a5375776f6e2043697479311c301a060355040a131353616d73756e6720436f72706f726174696f6e310c300a060355040b1303444d43311530130603550403130c53616d73756e6720436572743125302306092a864886f70d0109011616616e64726f69642e6f734073616d73756e672e636f6d30820120300d06092a864886f70d01010105000382010d003082010802820101009ba004179d8018ab0fa3ab3c804899c2ecb6d66784225ae99936b71fd7f059969bb2076b8f2b9d7a5c20d0622e0a766de9602e3e8d60d9d335bdeab78100188f734b4678c7369c2e764913c8f43eede582827b8d1dc679c8fd0f0d0605fc6b87d331e2544bf11790b2a55c3a13463ec4cd35a931ad40dc687f116f1d6ba79eb63a01f96d107b1b166ddacb6d2fe8ac618217dabe6b69d4d9e692ab1970bb4346fd4860586e8387ef7682b07a428bc8036db143079bc37c8830e5a8c3d690f6b0cef5596ed80a9830f2e61c055894be1c2a7b3048602ef6df0e51073e06f0d55177f6aeb96b91b3b4c66b8b6e5b32bbe2afe46f45b0f48300a6ac9f9de1c500b7020103a382010b30820107301d0603551d0e041604149b6890fb4274c2e32d6c5daea2fac4dd0756529a3081d70603551d230481cf3081cc80149b6890fb4274c2e32d6c5daea2fac4dd0756529aa181a8a481a53081a2310b3009060355040613024b52311430120603550408130b536f757468204b6f726561311330110603550407130a5375776f6e2043697479311c301a060355040a131353616d73756e6720436f72706f726174696f6e310c300a060355040b1303444d43311530130603550403130c53616d73756e6720436572743125302306092a864886f70d0109011616616e64726f69642e6f734073616d73756e672e636f6d820900e49d6da353f759af300c0603551d13040530030101ff300d06092a864886f70d010105050003820101001a76d67e729785f9f22015d9eb9d1998f2d8ce5bc147f65060d58f2f29004a592dd065b651e8d746cf050f3389b1632970d1334e9bce20b43a77a18b6226be0da0a4ab4420dd734dcdd0e049c4f07cf45f3faee8ac90332c14b1f7c4e4f55866a8e3aa71ad1814b5c591e07085dadbe15544ef9bc9591b2c75b373ca9214f8a49acd18ccf061b484c3cd1448bb2af149694d58a53d4c6878b8e06c12e214e2847117ef95348eca3acaa3fffecd7924cb1dd67251eaee14b01870cae92a4238cecac4cda5ba2a2640055303e98e62121a9e49ac0dfcde32b28606f3fc613709fe5ab8aefea4ed53a310c4c9dac7f90242d55697b5690ade195f5253da947f2eaa";
        strArr[7] = "3082041e30820306a003020102020601670c2687f3300d06092a864886f70d01010505003081c4310b3009060355040613024b52311a30180603550408131152657075626c6963206f66204b6f726561311330110603550407130a5375776f6e204369747931253023060355040a131c53616d73756e6720456c656374726f6e69637320436f2e204c74642e31273025060355040b131e4d6f62696c6520436f6d6d756e69636174696f6e7320427573696e657373313430320603550403132b53616d73756e6720506c6174666f726d204b657920666f72206e6f6e2d47616c61787920646576696365733020170d3138313131333038313833315a180f32313138313131323135303030305a3081c4310b3009060355040613024b52311a30180603550408131152657075626c6963206f66204b6f726561311330110603550407130a5375776f6e204369747931253023060355040a131c53616d73756e6720456c656374726f6e69637320436f2e204c74642e31273025060355040b131e4d6f62696c6520436f6d6d756e69636174696f6e7320427573696e657373313430320603550403132b53616d73756e6720506c6174666f726d204b657920666f72206e6f6e2d47616c617879206465766963657330820122300d06092a864886f70d01010105000382010f003082010a0282010100f7049ae9aa6c64c27ebcf799f32bd9118c2870a54b4c9cd200aa33d2f332903b2a6430c608aac3038b65f644d7a82127ec187099beb680c71d3593d2522f94c894c018fb8fb08d3282bea8feafe902ce1a11da806d63366f514b97c6e286221537f758ece2bcb0b2278c4ae9217ff1c078ddb9401ce490f07557b50f6ddbbe43aacae52849a5e465010af4bdf13eae532771f6c8dc370fe715988d615e67dff7870bd4393490d17ab71584dbe7eb549df5b402fb7f0b4db5cc86e4a818601a183fe94a4a2bafd29367507f131490ac3e4e38c61f9f86c82cf2b583656b95139ce4e46c3ce04d9a9587316a47062ced72e186d546bcc39896491ad3242bb658b70203010001a3123010300e0603551d0f0101ff0404030205a0300d06092a864886f70d010105050003820101003347014ea4d8c43a387b28331fd3ba02a4aee7b9ecd340bce8e517c21ee6cc0e295d999ac5e68352ca59f30b82aa2c0736715cc20710338c34beacec99ba7a153cead3ec03640f6b764dcfa0fabfa4df5972b7abbecf532238ae1a1e2b404379f065c4ea8d148f60eb6f51c783b82b28bc97cc4486bfb08f9bba956323044b67d4fefb560c44fa18aeb397c0d87841295de021be9599396a0e734d2ec69dde9b70545db7aa106901437f07dc6d26f99d97b83380bad7b42536a47742935fe143684d8f31f07df44a7c274eaa33ba51863dbe57a1bc66cb988a97ed17f0f86e596c03a511391ec72dc4c79c039657d8b4b4ddd8a2910fa4872a3935d93a6947ad";
        strArr[8] = "3082041830820300a003020102020601670c27ef2d300d06092a864886f70d01010505003081c1310b3009060355040613024b52311a30180603550408131152657075626c6963206f66204b6f726561311330110603550407130a5375776f6e204369747931253023060355040a131c53616d73756e6720456c656374726f6e69637320436f2e204c74642e31273025060355040b131e4d6f62696c6520436f6d6d756e69636174696f6e7320427573696e6573733131302f0603550403132853616d73756e67204d65646961204b657920666f72206e6f6e2d47616c61787920646576696365733020170d3138313131333038323030325a180f32313138313131323135303030305a3081c1310b3009060355040613024b52311a30180603550408131152657075626c6963206f66204b6f726561311330110603550407130a5375776f6e204369747931253023060355040a131c53616d73756e6720456c656374726f6e69637320436f2e204c74642e31273025060355040b131e4d6f62696c6520436f6d6d756e69636174696f6e7320427573696e6573733131302f0603550403132853616d73756e67204d65646961204b657920666f72206e6f6e2d47616c617879206465766963657330820122300d06092a864886f70d01010105000382010f003082010a0282010100bb60b4487c7c006073d54adf1e85ee3352f323e7ed751880b7ff99313fa6e4d94236cbc474aad528bfdc5a1a2ba33bdbd17996439ab3746b8bfd243852429c2c036a0d634e2ee2774ae92dede65430698e77368be3fbe640d842a445fe57118111e479ed018142157095b17dd146e689e049e5182931347113c38391c3cec258ca6b675f5bdb4158de58a64c0f37fb86e0f4517d879eb265fc44ee33aca2f1185b74f23e4a48c8a7eb8941055d374c485ca0ae5adb04607e9aedf43d3ae7e15f3e0ef6f05a922c3925fa11488371f94a3847f7cefbbf5fbcf18416f21171b946c6be5acbbe9e55bf610fa333b4d1e6d0c0278bba1817cd70aa1beefb73756fb90203010001a3123010300e0603551d0f0101ff0404030205a0300d06092a864886f70d0101050500038201010057f1b2b239f9551f4de9fb5afd88b0b7bc67d37bf9bfe8748583d35d14c9291355322e896bbb66d0d56c9708215fad9c40e9398620ea3b1e4641a5883a88472f852cc36afa88b695d5a7af408d5eb583bd4cec9452d0f901b6c38e1f97b55325b596e742fade940391b44d8f19352e8a543fe1c89ad600a8ba32373b1d84fb1b8d34e7541337254fdc9716b2adcfed7105f713ec4fc98c4eee56f7ffa2d2355e16161e2f276a075eda15cc2cdba93c6a49907ad01463cc752708051b8d87001028a6869187589425d3a8992cb9044a7c4d5e3e74a270f6bd1ebf57fd3afb82ab74399a40db820103ea361f7e87b172302ce14b29527bde67c01f4b71832c8665";
        strArr[9] = "3082041a30820302a003020102020601670c278709300d06092a864886f70d01010505003081c2310b3009060355040613024b52311a30180603550408131152657075626c6963206f66204b6f726561311330110603550407130a5375776f6e204369747931253023060355040a131c53616d73756e6720456c656374726f6e69637320436f2e204c74642e31273025060355040b131e4d6f62696c6520436f6d6d756e69636174696f6e7320427573696e657373313230300603550403132953616d73756e6720536861726564204b657920666f72206e6f6e2d47616c61787920646576696365733020170d3138313131333038313933365a180f32313138313131323135303030305a3081c2310b3009060355040613024b52311a30180603550408131152657075626c6963206f66204b6f726561311330110603550407130a5375776f6e204369747931253023060355040a131c53616d73756e6720456c656374726f6e69637320436f2e204c74642e31273025060355040b131e4d6f62696c6520436f6d6d756e69636174696f6e7320427573696e657373313230300603550403132953616d73756e6720536861726564204b657920666f72206e6f6e2d47616c617879206465766963657330820122300d06092a864886f70d01010105000382010f003082010a02820101009fce256105db13cb1ec14f133d799cf889bf7c29cb8a1a8e8ba1d618a03e01b6705901e7fe2d012b3ad2cfdcad80a2718b4fb09f2d0ef0142cea5fd17afbddb4a1e7d2c99f2a1650ca17faedae9cbc5c13561e723b9ae120f55109aa992d57d2ba7e3c495620e5957c7c75c2ade6d03c5b204ceb460754ccdcd5791267f46283f37923ce3d828ee78a8702770a6356824086c956e403048059d8d07797b1b3d2671f8134b97bcdc009ce0fde7f9fda53d9175440309920838bb7dd129189322cd47851f2be587d288a38af2c32bf1024d9b7e265009db694d6d24d40576eb777b0b3713ac24cbbf1cf0534e565ce5030503c842e43438ca27557b209f475337d0203010001a3123010300e0603551d0f0101ff0404030205a0300d06092a864886f70d010105050003820101009bddfa8de87f1d9e7467e0251ca54441f6a68f4f3fc84b0fe273ffd7f01598df91b61b5bd61b14d1ecaa633d20c96b950797432e85f144d2cc04b59770e7ec912ffd59573dcc79d438ef04ed81ea98f09c8b4a2f1e7701dcac789ab33c2a2b39d026b72f3bcff9c29bdfbe34edd6be30ac6b050c10e259d4ed99b6efb4c9d0c32020f842e74984fd00bc59bb32e28ca5f32e052e19fa30859da473a402539bf58d87140edc935792f5e2da4a017e71304fbc3a20f25129a19f7f3ff3e6e1c75a6c1cf489d13e80d8a86fc8b6dd879088c4272d4bbd069b4a43bb61210b066c5280293aa580751337b24fda13553d7294b5916433e730a021520330236639e89c";
        if (z) {
            strArr[10] = "308204a830820390a003020102020900b3998086d056cffa300d06092a864886f70d0101040500308194310b3009060355040613025553311330110603550408130a43616c69666f726e6961311630140603550407130d4d6f756e7461696e20566965773110300e060355040a1307416e64726f69643110300e060355040b1307416e64726f69643110300e06035504031307416e64726f69643122302006092a864886f70d0109011613616e64726f696440616e64726f69642e636f6d301e170d3038303431353232343035305a170d3335303930313232343035305a308194310b3009060355040613025553311330110603550408130a43616c69666f726e6961311630140603550407130d4d6f756e7461696e20566965773110300e060355040a1307416e64726f69643110300e060355040b1307416e64726f69643110300e06035504031307416e64726f69643122302006092a864886f70d0109011613616e64726f696440616e64726f69642e636f6d30820120300d06092a864886f70d01010105000382010d003082010802820101009c780592ac0d5d381cdeaa65ecc8a6006e36480c6d7207b12011be50863aabe2b55d009adf7146d6f2202280c7cd4d7bdb26243b8a806c26b34b137523a49268224904dc01493e7c0acf1a05c874f69b037b60309d9074d24280e16bad2a8734361951eaf72a482d09b204b1875e12ac98c1aa773d6800b9eafde56d58bed8e8da16f9a360099c37a834a6dfedb7b6b44a049e07a269fccf2c5496f2cf36d64df90a3b8d8f34a3baab4cf53371ab27719b3ba58754ad0c53fc14e1db45d51e234fbbe93c9ba4edf9ce54261350ec535607bf69a2ff4aa07db5f7ea200d09a6c1b49e21402f89ed1190893aab5a9180f152e82f85a45753cf5fc19071c5eec827020103a381fc3081f9301d0603551d0e041604144fe4a0b3dd9cba29f71d7287c4e7c38f2086c2993081c90603551d230481c13081be80144fe4a0b3dd9cba29f71d7287c4e7c38f2086c299a1819aa48197308194310b3009060355040613025553311330110603550408130a43616c69666f726e6961311630140603550407130d4d6f756e7461696e20566965773110300e060355040a1307416e64726f69643110300e060355040b1307416e64726f69643110300e06035504031307416e64726f69643122302006092a864886f70d0109011613616e64726f696440616e64726f69642e636f6d820900b3998086d056cffa300c0603551d13040530030101ff300d06092a864886f70d01010405000382010100572551b8d93a1f73de0f6d469f86dad6701400293c88a0cd7cd778b73dafcc197fab76e6212e56c1c761cfc42fd733de52c50ae08814cefc0a3b5a1a4346054d829f1d82b42b2048bf88b5d14929ef85f60edd12d72d55657e22e3e85d04c831d613d19938bb8982247fa321256ba12d1d6a8f92ea1db1c373317ba0c037f0d1aff645aef224979fba6e7a14bc025c71b98138cef3ddfc059617cf24845cf7b40d6382f7275ed738495ab6e5931b9421765c491b72fb68e080dbdb58c2029d347c8b328ce43ef6a8b15533edfbe989bd6a48dd4b202eda94c6ab8dd5b8399203daae2ed446232e4fe9bd961394c6300e5138e3cfd285e6e4e483538cb8b1b357";
        }
        int i2 = -1;
        if (signatureArr != null) {
            for (int i3 = 0; i3 < signatureArr.length; i3++) {
                if (signatureArr[i3] != null) {
                    int i4 = 0;
                    while (true) {
                        if (i4 >= i) {
                            break;
                        }
                        if (strArr[i4].compareToIgnoreCase(signatureArr[i3].toCharsString().toString()) == 0) {
                            i2 = i4;
                            break;
                        }
                        i4++;
                    }
                }
            }
        }
        if (i2 == -1 && new File("/data/system/.aasa/AASApolicy/ASKSK.xml").exists() && signatureArr != null) {
            for (Signature signature : signatureArr) {
                if (signature != null) {
                    String str2 = signature.toCharsString().toString();
                    if (checkListForASKS(15, str2, null) != -1) {
                        Slog.i("AASA_ASKSManager", " pkg:" + str + " signValue is same with " + str2);
                        return 10;
                    }
                }
            }
        }
        return i2;
    }

    /* JADX WARN: Code restructure failed: missing block: B:88:0x0108, code lost:
    
        if (checkListForASKS(10, r21, null) != (-1)) goto L143;
     */
    /* JADX WARN: Removed duplicated region for block: B:23:0x01c3  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final int parsePackageForASKS(com.android.server.asks.ASKSManagerService.ASKSSession r20, java.lang.String r21, java.lang.String r22, long r23, java.lang.String r25, java.lang.String r26, int r27, boolean r28) {
        /*
            Method dump skipped, instructions count: 612
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.server.asks.ASKSManagerService.parsePackageForASKS(com.android.server.asks.ASKSManagerService$ASKSSession, java.lang.String, java.lang.String, long, java.lang.String, java.lang.String, int, boolean):int");
    }

    public final int checkListForASKS(int i, String str, String str2) {
        HashMap hashMap = new HashMap();
        new ArrayList();
        getASKSDataFromXML(i, hashMap);
        int i2 = -1;
        if (!hashMap.containsKey(str)) {
            return -1;
        }
        if (str2 != null) {
            ArrayList arrayList = (ArrayList) hashMap.get(str);
            if (arrayList != null && arrayList.contains(str2)) {
                i2 = arrayList.indexOf(str2);
            }
            if ((i != 9 && i != 18 && i != 19) || arrayList == null || !arrayList.contains("ALL")) {
                return i2;
            }
        }
        return 0;
    }

    public final boolean checkSmsFilterEnabled() {
        HashMap hashMap = new HashMap();
        HashMap hashMap2 = new HashMap();
        getASKSDataFromXML(40, hashMap2);
        getASKSDataFromXML(39, hashMap);
        return (hashMap2.size() == 0 && hashMap.size() == 0) ? false : true;
    }

    public final boolean checkIfSmsFilterTarget() {
        boolean equalsIgnoreCase = "KR".equalsIgnoreCase(SemCscFeature.getInstance().getString("CountryISO"));
        String str = SystemProperties.get("ro.product.model", "Unknown");
        HashMap hashMap = new HashMap();
        getASKSDataFromXML(46, hashMap);
        if (hashMap.containsKey("target_model") && equalsIgnoreCase) {
            return ((ArrayList) hashMap.get("target_model")).contains("ALL") || ((ArrayList) hashMap.get("target_model")).contains(str);
        }
        return false;
    }

    /* JADX WARN: Failed to find 'out' block for switch in B:2:0x0021. Please report as an issue. */
    /* JADX WARN: Removed duplicated region for block: B:13:0x0149 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:14:0x014a A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:8:0x012b  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final void getASKSDataFromXML(int r14, java.util.HashMap r15) {
        /*
            Method dump skipped, instructions count: 542
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.server.asks.ASKSManagerService.getASKSDataFromXML(int, java.util.HashMap):void");
    }

    /* JADX WARN: Code restructure failed: missing block: B:40:0x00c1, code lost:
    
        if (r4 == null) goto L100;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final boolean isASKSToken(com.android.server.asks.ASKSManagerService.ASKSSession r12, java.lang.String r13) {
        /*
            r11 = this;
            java.lang.String r11 = "META-INF"
            java.lang.String r0 = " ERROR: AASA_ASKSIsToken "
            java.lang.String r1 = "AASA_ASKSManager"
            java.lang.String r2 = "SEC-INF"
            r3 = 0
            r4 = 0
            android.util.jar.StrictJarFile r5 = new android.util.jar.StrictJarFile     // Catch: java.lang.Throwable -> L96 java.lang.SecurityException -> L98 java.io.IOException -> Lae
            r6 = 1
            r5.<init>(r13, r3, r6)     // Catch: java.lang.Throwable -> L96 java.lang.SecurityException -> L98 java.io.IOException -> Lae
            java.util.Iterator r4 = r5.iterator()     // Catch: java.lang.Throwable -> L8d java.lang.SecurityException -> L90 java.io.IOException -> L93
        L14:
            boolean r7 = r4.hasNext()     // Catch: java.lang.Throwable -> L8d java.lang.SecurityException -> L90 java.io.IOException -> L93
            if (r7 == 0) goto L89
            java.lang.Object r7 = r4.next()     // Catch: java.lang.Throwable -> L8d java.lang.SecurityException -> L90 java.io.IOException -> L93
            java.util.zip.ZipEntry r7 = (java.util.zip.ZipEntry) r7     // Catch: java.lang.Throwable -> L8d java.lang.SecurityException -> L90 java.io.IOException -> L93
            java.lang.String r7 = r7.getName()     // Catch: java.lang.Throwable -> L8d java.lang.SecurityException -> L90 java.io.IOException -> L93
            boolean r8 = r7.startsWith(r2)     // Catch: java.lang.Throwable -> L8d java.lang.SecurityException -> L90 java.io.IOException -> L93
            java.lang.String r9 = "buildConfirm.crt"
            java.lang.String r10 = "buildinfo"
            if (r8 == 0) goto L53
            boolean r8 = r7.contains(r10)     // Catch: java.lang.Throwable -> L8d java.lang.SecurityException -> L90 java.io.IOException -> L93
            if (r8 == 0) goto L53
            r12.setCodePath(r13)     // Catch: java.lang.Throwable -> L8d java.lang.SecurityException -> L90 java.io.IOException -> L93
            r12.setTokenName(r7)     // Catch: java.lang.Throwable -> L8d java.lang.SecurityException -> L90 java.io.IOException -> L93
            java.lang.StringBuilder r11 = new java.lang.StringBuilder     // Catch: java.lang.Throwable -> L8d java.lang.SecurityException -> L90 java.io.IOException -> L93
            r11.<init>()     // Catch: java.lang.Throwable -> L8d java.lang.SecurityException -> L90 java.io.IOException -> L93
            r11.append(r2)     // Catch: java.lang.Throwable -> L8d java.lang.SecurityException -> L90 java.io.IOException -> L93
            java.lang.String r13 = java.io.File.separator     // Catch: java.lang.Throwable -> L8d java.lang.SecurityException -> L90 java.io.IOException -> L93
            r11.append(r13)     // Catch: java.lang.Throwable -> L8d java.lang.SecurityException -> L90 java.io.IOException -> L93
            r11.append(r9)     // Catch: java.lang.Throwable -> L8d java.lang.SecurityException -> L90 java.io.IOException -> L93
            java.lang.String r11 = r11.toString()     // Catch: java.lang.Throwable -> L8d java.lang.SecurityException -> L90 java.io.IOException -> L93
            r12.setCertName(r11)     // Catch: java.lang.Throwable -> L8d java.lang.SecurityException -> L90 java.io.IOException -> L93
        L51:
            r3 = r6
            goto L89
        L53:
            boolean r8 = r7.startsWith(r11)     // Catch: java.lang.Throwable -> L8d java.lang.SecurityException -> L90 java.io.IOException -> L93
            if (r8 == 0) goto L14
            boolean r8 = r7.contains(r2)     // Catch: java.lang.Throwable -> L8d java.lang.SecurityException -> L90 java.io.IOException -> L93
            if (r8 == 0) goto L14
            boolean r8 = r7.contains(r10)     // Catch: java.lang.Throwable -> L8d java.lang.SecurityException -> L90 java.io.IOException -> L93
            if (r8 == 0) goto L14
            r12.setCodePath(r13)     // Catch: java.lang.Throwable -> L8d java.lang.SecurityException -> L90 java.io.IOException -> L93
            r12.setTokenName(r7)     // Catch: java.lang.Throwable -> L8d java.lang.SecurityException -> L90 java.io.IOException -> L93
            java.lang.StringBuilder r13 = new java.lang.StringBuilder     // Catch: java.lang.Throwable -> L8d java.lang.SecurityException -> L90 java.io.IOException -> L93
            r13.<init>()     // Catch: java.lang.Throwable -> L8d java.lang.SecurityException -> L90 java.io.IOException -> L93
            r13.append(r11)     // Catch: java.lang.Throwable -> L8d java.lang.SecurityException -> L90 java.io.IOException -> L93
            java.lang.String r11 = java.io.File.separator     // Catch: java.lang.Throwable -> L8d java.lang.SecurityException -> L90 java.io.IOException -> L93
            r13.append(r11)     // Catch: java.lang.Throwable -> L8d java.lang.SecurityException -> L90 java.io.IOException -> L93
            r13.append(r2)     // Catch: java.lang.Throwable -> L8d java.lang.SecurityException -> L90 java.io.IOException -> L93
            r13.append(r11)     // Catch: java.lang.Throwable -> L8d java.lang.SecurityException -> L90 java.io.IOException -> L93
            r13.append(r9)     // Catch: java.lang.Throwable -> L8d java.lang.SecurityException -> L90 java.io.IOException -> L93
            java.lang.String r11 = r13.toString()     // Catch: java.lang.Throwable -> L8d java.lang.SecurityException -> L90 java.io.IOException -> L93
            r12.setCertName(r11)     // Catch: java.lang.Throwable -> L8d java.lang.SecurityException -> L90 java.io.IOException -> L93
            goto L51
        L89:
            r5.close()
            goto Lc6
        L8d:
            r11 = move-exception
            r4 = r5
            goto Lc7
        L90:
            r11 = move-exception
            r4 = r5
            goto L99
        L93:
            r11 = move-exception
            r4 = r5
            goto Laf
        L96:
            r11 = move-exception
            goto Lc7
        L98:
            r11 = move-exception
        L99:
            java.lang.StringBuilder r12 = new java.lang.StringBuilder     // Catch: java.lang.Throwable -> L96
            r12.<init>()     // Catch: java.lang.Throwable -> L96
            r12.append(r0)     // Catch: java.lang.Throwable -> L96
            r12.append(r11)     // Catch: java.lang.Throwable -> L96
            java.lang.String r11 = r12.toString()     // Catch: java.lang.Throwable -> L96
            android.util.Slog.i(r1, r11)     // Catch: java.lang.Throwable -> L96
            if (r4 == 0) goto Lc6
            goto Lc3
        Lae:
            r11 = move-exception
        Laf:
            java.lang.StringBuilder r12 = new java.lang.StringBuilder     // Catch: java.lang.Throwable -> L96
            r12.<init>()     // Catch: java.lang.Throwable -> L96
            r12.append(r0)     // Catch: java.lang.Throwable -> L96
            r12.append(r11)     // Catch: java.lang.Throwable -> L96
            java.lang.String r11 = r12.toString()     // Catch: java.lang.Throwable -> L96
            android.util.Slog.i(r1, r11)     // Catch: java.lang.Throwable -> L96
            if (r4 == 0) goto Lc6
        Lc3:
            r4.close()
        Lc6:
            return r3
        Lc7:
            if (r4 == 0) goto Lcc
            r4.close()
        Lcc:
            throw r11
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.server.asks.ASKSManagerService.isASKSToken(com.android.server.asks.ASKSManagerService$ASKSSession, java.lang.String):boolean");
    }

    /* JADX WARN: Can't wrap try/catch for region: R(9:2|3|(3:306|307|(6:309|6|7|(1:9)(1:294)|10|(2:12|13)(2:15|(4:286|287|288|290)(6:19|20|21|22|23|(1:25)(37:26|27|28|(3:30|31|(2:33|(1:35)(2:36|(3:38|39|40)(1:241)))(2:242|(2:244|40)))(2:257|(1:(5:261|262|263|264|265)(7:260|42|(3:43|44|(1:46)(1:47))|48|(1:54)|55|(24:237|(2:239|67)|68|(2:225|(17:229|(1:236)|76|(1:208)(1:80)|81|(2:85|(2:87|(1:89))(1:90))|91|(3:204|(1:206)|207)(5:95|96|97|(1:99)|100)|101|(4:105|106|107|(2:109|110)(2:111|(2:113|114)))|117|(2:121|(2:123|(1:128)(1:127))(4:129|(1:139)(1:133)|(1:137)|138))|140|(3:144|145|146)|150|(4:154|155|(1:195)(2:159|(1:194)(2:163|(1:192)(8:167|168|169|170|(1:178)|179|(1:187)|188)))|193)|(2:197|198)(2:199|200)))(2:72|(1:74)(2:209|(1:211)(2:212|(2:218|(1:224)(2:222|223))(2:216|217))))|75|76|(1:78)|208|81|(3:83|85|(0)(0))|91|(1:93)|204|(0)|207|101|(5:103|105|106|107|(0)(0))|117|(3:119|121|(0)(0))|140|(4:142|144|145|146)|150|(6:152|154|155|(1:157)|195|193)|(0)(0))(26:59|(2:61|(2:66|67)(1:65))|68|(1:70)|225|(22:227|229|(3:231|233|236)|76|(0)|208|81|(0)|91|(0)|204|(0)|207|101|(0)|117|(0)|140|(0)|150|(0)|(0)(0))|75|76|(0)|208|81|(0)|91|(0)|204|(0)|207|101|(0)|117|(0)|140|(0)|150|(0)|(0)(0)))))|41|42|(4:43|44|(0)(0)|46)|48|(3:50|52|54)|55|(1:57)|237|(0)|68|(0)|225|(0)|75|76|(0)|208|81|(0)|91|(0)|204|(0)|207|101|(0)|117|(0)|140|(0)|150|(0)|(0)(0))))))|5|6|7|(0)(0)|10|(0)(0)) */
    /* JADX WARN: Code restructure failed: missing block: B:295:0x0053, code lost:
    
        r0 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:296:0x0054, code lost:
    
        r12 = r0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:298:0x008d, code lost:
    
        if (r11 != null) goto L376;
     */
    /* JADX WARN: Code restructure failed: missing block: B:301:0x0050, code lost:
    
        r0 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:302:0x0051, code lost:
    
        r12 = r0;
     */
    /* JADX WARN: Not initialized variable reg: 11, insn: 0x07c6: MOVE (r10 I:??[OBJECT, ARRAY]) = (r11 I:??[OBJECT, ARRAY]), block:B:317:0x07c5 */
    /* JADX WARN: Removed duplicated region for block: B:103:0x0469 A[Catch: NumberFormatException -> 0x074a, IOException -> 0x074c, XmlPullParserException -> 0x0790, TryCatch #11 {NumberFormatException -> 0x074a, blocks: (B:42:0x0270, B:43:0x0279, B:46:0x0283, B:48:0x028f, B:50:0x02b4, B:52:0x02be, B:54:0x02cb, B:55:0x02e0, B:57:0x02e6, B:61:0x02f3, B:63:0x02f9, B:65:0x0303, B:66:0x0309, B:67:0x032b, B:68:0x0332, B:70:0x0338, B:72:0x0342, B:74:0x034e, B:76:0x03bb, B:78:0x03c1, B:80:0x03cb, B:81:0x03d5, B:83:0x03db, B:87:0x03e8, B:89:0x03f4, B:90:0x03fc, B:91:0x0402, B:93:0x0408, B:95:0x0412, B:101:0x0463, B:103:0x0469, B:105:0x0473, B:115:0x04bc, B:117:0x04c4, B:119:0x04cc, B:121:0x04d6, B:123:0x04e2, B:125:0x050f, B:127:0x0519, B:128:0x0527, B:129:0x0531, B:131:0x054f, B:133:0x0559, B:135:0x056f, B:137:0x057b, B:138:0x0599, B:139:0x0563, B:140:0x059c, B:142:0x05a4, B:144:0x05ae, B:148:0x05dc, B:150:0x05e6, B:152:0x05ee, B:154:0x05f8, B:157:0x0602, B:159:0x060c, B:161:0x0614, B:163:0x061e, B:165:0x0626, B:167:0x0632, B:170:0x06a6, B:172:0x06ae, B:174:0x06ba, B:176:0x06c2, B:178:0x06ce, B:179:0x06e4, B:181:0x06ec, B:183:0x06f8, B:185:0x0700, B:187:0x070c, B:188:0x0722, B:191:0x069c, B:192:0x0726, B:193:0x0737, B:194:0x072c, B:195:0x0732, B:197:0x073b, B:199:0x0742, B:202:0x044e, B:206:0x045b, B:209:0x0351, B:211:0x035c, B:212:0x0362, B:214:0x036b, B:216:0x036f, B:218:0x0377, B:220:0x037f, B:222:0x0383, B:224:0x038b, B:227:0x0394, B:236:0x03b1, B:264:0x01f5, B:260:0x0225), top: B:28:0x00f0 }] */
    /* JADX WARN: Removed duplicated region for block: B:109:0x049d A[Catch: NumberFormatException -> 0x04bc, IOException -> 0x074c, XmlPullParserException -> 0x0790, TryCatch #6 {NumberFormatException -> 0x04bc, blocks: (B:107:0x048d, B:109:0x049d, B:111:0x04a5, B:113:0x04b3), top: B:106:0x048d }] */
    /* JADX WARN: Removed duplicated region for block: B:111:0x04a5 A[Catch: NumberFormatException -> 0x04bc, IOException -> 0x074c, XmlPullParserException -> 0x0790, TryCatch #6 {NumberFormatException -> 0x04bc, blocks: (B:107:0x048d, B:109:0x049d, B:111:0x04a5, B:113:0x04b3), top: B:106:0x048d }] */
    /* JADX WARN: Removed duplicated region for block: B:119:0x04cc A[Catch: NumberFormatException -> 0x074a, IOException -> 0x074c, XmlPullParserException -> 0x0790, TryCatch #11 {NumberFormatException -> 0x074a, blocks: (B:42:0x0270, B:43:0x0279, B:46:0x0283, B:48:0x028f, B:50:0x02b4, B:52:0x02be, B:54:0x02cb, B:55:0x02e0, B:57:0x02e6, B:61:0x02f3, B:63:0x02f9, B:65:0x0303, B:66:0x0309, B:67:0x032b, B:68:0x0332, B:70:0x0338, B:72:0x0342, B:74:0x034e, B:76:0x03bb, B:78:0x03c1, B:80:0x03cb, B:81:0x03d5, B:83:0x03db, B:87:0x03e8, B:89:0x03f4, B:90:0x03fc, B:91:0x0402, B:93:0x0408, B:95:0x0412, B:101:0x0463, B:103:0x0469, B:105:0x0473, B:115:0x04bc, B:117:0x04c4, B:119:0x04cc, B:121:0x04d6, B:123:0x04e2, B:125:0x050f, B:127:0x0519, B:128:0x0527, B:129:0x0531, B:131:0x054f, B:133:0x0559, B:135:0x056f, B:137:0x057b, B:138:0x0599, B:139:0x0563, B:140:0x059c, B:142:0x05a4, B:144:0x05ae, B:148:0x05dc, B:150:0x05e6, B:152:0x05ee, B:154:0x05f8, B:157:0x0602, B:159:0x060c, B:161:0x0614, B:163:0x061e, B:165:0x0626, B:167:0x0632, B:170:0x06a6, B:172:0x06ae, B:174:0x06ba, B:176:0x06c2, B:178:0x06ce, B:179:0x06e4, B:181:0x06ec, B:183:0x06f8, B:185:0x0700, B:187:0x070c, B:188:0x0722, B:191:0x069c, B:192:0x0726, B:193:0x0737, B:194:0x072c, B:195:0x0732, B:197:0x073b, B:199:0x0742, B:202:0x044e, B:206:0x045b, B:209:0x0351, B:211:0x035c, B:212:0x0362, B:214:0x036b, B:216:0x036f, B:218:0x0377, B:220:0x037f, B:222:0x0383, B:224:0x038b, B:227:0x0394, B:236:0x03b1, B:264:0x01f5, B:260:0x0225), top: B:28:0x00f0 }] */
    /* JADX WARN: Removed duplicated region for block: B:123:0x04e2 A[Catch: NumberFormatException -> 0x074a, IOException -> 0x074c, XmlPullParserException -> 0x0790, TryCatch #11 {NumberFormatException -> 0x074a, blocks: (B:42:0x0270, B:43:0x0279, B:46:0x0283, B:48:0x028f, B:50:0x02b4, B:52:0x02be, B:54:0x02cb, B:55:0x02e0, B:57:0x02e6, B:61:0x02f3, B:63:0x02f9, B:65:0x0303, B:66:0x0309, B:67:0x032b, B:68:0x0332, B:70:0x0338, B:72:0x0342, B:74:0x034e, B:76:0x03bb, B:78:0x03c1, B:80:0x03cb, B:81:0x03d5, B:83:0x03db, B:87:0x03e8, B:89:0x03f4, B:90:0x03fc, B:91:0x0402, B:93:0x0408, B:95:0x0412, B:101:0x0463, B:103:0x0469, B:105:0x0473, B:115:0x04bc, B:117:0x04c4, B:119:0x04cc, B:121:0x04d6, B:123:0x04e2, B:125:0x050f, B:127:0x0519, B:128:0x0527, B:129:0x0531, B:131:0x054f, B:133:0x0559, B:135:0x056f, B:137:0x057b, B:138:0x0599, B:139:0x0563, B:140:0x059c, B:142:0x05a4, B:144:0x05ae, B:148:0x05dc, B:150:0x05e6, B:152:0x05ee, B:154:0x05f8, B:157:0x0602, B:159:0x060c, B:161:0x0614, B:163:0x061e, B:165:0x0626, B:167:0x0632, B:170:0x06a6, B:172:0x06ae, B:174:0x06ba, B:176:0x06c2, B:178:0x06ce, B:179:0x06e4, B:181:0x06ec, B:183:0x06f8, B:185:0x0700, B:187:0x070c, B:188:0x0722, B:191:0x069c, B:192:0x0726, B:193:0x0737, B:194:0x072c, B:195:0x0732, B:197:0x073b, B:199:0x0742, B:202:0x044e, B:206:0x045b, B:209:0x0351, B:211:0x035c, B:212:0x0362, B:214:0x036b, B:216:0x036f, B:218:0x0377, B:220:0x037f, B:222:0x0383, B:224:0x038b, B:227:0x0394, B:236:0x03b1, B:264:0x01f5, B:260:0x0225), top: B:28:0x00f0 }] */
    /* JADX WARN: Removed duplicated region for block: B:129:0x0531 A[Catch: NumberFormatException -> 0x074a, IOException -> 0x074c, XmlPullParserException -> 0x0790, TryCatch #11 {NumberFormatException -> 0x074a, blocks: (B:42:0x0270, B:43:0x0279, B:46:0x0283, B:48:0x028f, B:50:0x02b4, B:52:0x02be, B:54:0x02cb, B:55:0x02e0, B:57:0x02e6, B:61:0x02f3, B:63:0x02f9, B:65:0x0303, B:66:0x0309, B:67:0x032b, B:68:0x0332, B:70:0x0338, B:72:0x0342, B:74:0x034e, B:76:0x03bb, B:78:0x03c1, B:80:0x03cb, B:81:0x03d5, B:83:0x03db, B:87:0x03e8, B:89:0x03f4, B:90:0x03fc, B:91:0x0402, B:93:0x0408, B:95:0x0412, B:101:0x0463, B:103:0x0469, B:105:0x0473, B:115:0x04bc, B:117:0x04c4, B:119:0x04cc, B:121:0x04d6, B:123:0x04e2, B:125:0x050f, B:127:0x0519, B:128:0x0527, B:129:0x0531, B:131:0x054f, B:133:0x0559, B:135:0x056f, B:137:0x057b, B:138:0x0599, B:139:0x0563, B:140:0x059c, B:142:0x05a4, B:144:0x05ae, B:148:0x05dc, B:150:0x05e6, B:152:0x05ee, B:154:0x05f8, B:157:0x0602, B:159:0x060c, B:161:0x0614, B:163:0x061e, B:165:0x0626, B:167:0x0632, B:170:0x06a6, B:172:0x06ae, B:174:0x06ba, B:176:0x06c2, B:178:0x06ce, B:179:0x06e4, B:181:0x06ec, B:183:0x06f8, B:185:0x0700, B:187:0x070c, B:188:0x0722, B:191:0x069c, B:192:0x0726, B:193:0x0737, B:194:0x072c, B:195:0x0732, B:197:0x073b, B:199:0x0742, B:202:0x044e, B:206:0x045b, B:209:0x0351, B:211:0x035c, B:212:0x0362, B:214:0x036b, B:216:0x036f, B:218:0x0377, B:220:0x037f, B:222:0x0383, B:224:0x038b, B:227:0x0394, B:236:0x03b1, B:264:0x01f5, B:260:0x0225), top: B:28:0x00f0 }] */
    /* JADX WARN: Removed duplicated region for block: B:12:0x0095  */
    /* JADX WARN: Removed duplicated region for block: B:142:0x05a4 A[Catch: NumberFormatException -> 0x074a, IOException -> 0x074c, XmlPullParserException -> 0x0790, TryCatch #11 {NumberFormatException -> 0x074a, blocks: (B:42:0x0270, B:43:0x0279, B:46:0x0283, B:48:0x028f, B:50:0x02b4, B:52:0x02be, B:54:0x02cb, B:55:0x02e0, B:57:0x02e6, B:61:0x02f3, B:63:0x02f9, B:65:0x0303, B:66:0x0309, B:67:0x032b, B:68:0x0332, B:70:0x0338, B:72:0x0342, B:74:0x034e, B:76:0x03bb, B:78:0x03c1, B:80:0x03cb, B:81:0x03d5, B:83:0x03db, B:87:0x03e8, B:89:0x03f4, B:90:0x03fc, B:91:0x0402, B:93:0x0408, B:95:0x0412, B:101:0x0463, B:103:0x0469, B:105:0x0473, B:115:0x04bc, B:117:0x04c4, B:119:0x04cc, B:121:0x04d6, B:123:0x04e2, B:125:0x050f, B:127:0x0519, B:128:0x0527, B:129:0x0531, B:131:0x054f, B:133:0x0559, B:135:0x056f, B:137:0x057b, B:138:0x0599, B:139:0x0563, B:140:0x059c, B:142:0x05a4, B:144:0x05ae, B:148:0x05dc, B:150:0x05e6, B:152:0x05ee, B:154:0x05f8, B:157:0x0602, B:159:0x060c, B:161:0x0614, B:163:0x061e, B:165:0x0626, B:167:0x0632, B:170:0x06a6, B:172:0x06ae, B:174:0x06ba, B:176:0x06c2, B:178:0x06ce, B:179:0x06e4, B:181:0x06ec, B:183:0x06f8, B:185:0x0700, B:187:0x070c, B:188:0x0722, B:191:0x069c, B:192:0x0726, B:193:0x0737, B:194:0x072c, B:195:0x0732, B:197:0x073b, B:199:0x0742, B:202:0x044e, B:206:0x045b, B:209:0x0351, B:211:0x035c, B:212:0x0362, B:214:0x036b, B:216:0x036f, B:218:0x0377, B:220:0x037f, B:222:0x0383, B:224:0x038b, B:227:0x0394, B:236:0x03b1, B:264:0x01f5, B:260:0x0225), top: B:28:0x00f0 }] */
    /* JADX WARN: Removed duplicated region for block: B:152:0x05ee A[Catch: NumberFormatException -> 0x074a, IOException -> 0x074c, XmlPullParserException -> 0x0790, TryCatch #11 {NumberFormatException -> 0x074a, blocks: (B:42:0x0270, B:43:0x0279, B:46:0x0283, B:48:0x028f, B:50:0x02b4, B:52:0x02be, B:54:0x02cb, B:55:0x02e0, B:57:0x02e6, B:61:0x02f3, B:63:0x02f9, B:65:0x0303, B:66:0x0309, B:67:0x032b, B:68:0x0332, B:70:0x0338, B:72:0x0342, B:74:0x034e, B:76:0x03bb, B:78:0x03c1, B:80:0x03cb, B:81:0x03d5, B:83:0x03db, B:87:0x03e8, B:89:0x03f4, B:90:0x03fc, B:91:0x0402, B:93:0x0408, B:95:0x0412, B:101:0x0463, B:103:0x0469, B:105:0x0473, B:115:0x04bc, B:117:0x04c4, B:119:0x04cc, B:121:0x04d6, B:123:0x04e2, B:125:0x050f, B:127:0x0519, B:128:0x0527, B:129:0x0531, B:131:0x054f, B:133:0x0559, B:135:0x056f, B:137:0x057b, B:138:0x0599, B:139:0x0563, B:140:0x059c, B:142:0x05a4, B:144:0x05ae, B:148:0x05dc, B:150:0x05e6, B:152:0x05ee, B:154:0x05f8, B:157:0x0602, B:159:0x060c, B:161:0x0614, B:163:0x061e, B:165:0x0626, B:167:0x0632, B:170:0x06a6, B:172:0x06ae, B:174:0x06ba, B:176:0x06c2, B:178:0x06ce, B:179:0x06e4, B:181:0x06ec, B:183:0x06f8, B:185:0x0700, B:187:0x070c, B:188:0x0722, B:191:0x069c, B:192:0x0726, B:193:0x0737, B:194:0x072c, B:195:0x0732, B:197:0x073b, B:199:0x0742, B:202:0x044e, B:206:0x045b, B:209:0x0351, B:211:0x035c, B:212:0x0362, B:214:0x036b, B:216:0x036f, B:218:0x0377, B:220:0x037f, B:222:0x0383, B:224:0x038b, B:227:0x0394, B:236:0x03b1, B:264:0x01f5, B:260:0x0225), top: B:28:0x00f0 }] */
    /* JADX WARN: Removed duplicated region for block: B:15:0x009d  */
    /* JADX WARN: Removed duplicated region for block: B:197:0x073b A[Catch: NumberFormatException -> 0x074a, IOException -> 0x074c, XmlPullParserException -> 0x0790, TryCatch #11 {NumberFormatException -> 0x074a, blocks: (B:42:0x0270, B:43:0x0279, B:46:0x0283, B:48:0x028f, B:50:0x02b4, B:52:0x02be, B:54:0x02cb, B:55:0x02e0, B:57:0x02e6, B:61:0x02f3, B:63:0x02f9, B:65:0x0303, B:66:0x0309, B:67:0x032b, B:68:0x0332, B:70:0x0338, B:72:0x0342, B:74:0x034e, B:76:0x03bb, B:78:0x03c1, B:80:0x03cb, B:81:0x03d5, B:83:0x03db, B:87:0x03e8, B:89:0x03f4, B:90:0x03fc, B:91:0x0402, B:93:0x0408, B:95:0x0412, B:101:0x0463, B:103:0x0469, B:105:0x0473, B:115:0x04bc, B:117:0x04c4, B:119:0x04cc, B:121:0x04d6, B:123:0x04e2, B:125:0x050f, B:127:0x0519, B:128:0x0527, B:129:0x0531, B:131:0x054f, B:133:0x0559, B:135:0x056f, B:137:0x057b, B:138:0x0599, B:139:0x0563, B:140:0x059c, B:142:0x05a4, B:144:0x05ae, B:148:0x05dc, B:150:0x05e6, B:152:0x05ee, B:154:0x05f8, B:157:0x0602, B:159:0x060c, B:161:0x0614, B:163:0x061e, B:165:0x0626, B:167:0x0632, B:170:0x06a6, B:172:0x06ae, B:174:0x06ba, B:176:0x06c2, B:178:0x06ce, B:179:0x06e4, B:181:0x06ec, B:183:0x06f8, B:185:0x0700, B:187:0x070c, B:188:0x0722, B:191:0x069c, B:192:0x0726, B:193:0x0737, B:194:0x072c, B:195:0x0732, B:197:0x073b, B:199:0x0742, B:202:0x044e, B:206:0x045b, B:209:0x0351, B:211:0x035c, B:212:0x0362, B:214:0x036b, B:216:0x036f, B:218:0x0377, B:220:0x037f, B:222:0x0383, B:224:0x038b, B:227:0x0394, B:236:0x03b1, B:264:0x01f5, B:260:0x0225), top: B:28:0x00f0 }] */
    /* JADX WARN: Removed duplicated region for block: B:199:0x0742 A[Catch: NumberFormatException -> 0x074a, IOException -> 0x074c, XmlPullParserException -> 0x0790, TRY_LEAVE, TryCatch #11 {NumberFormatException -> 0x074a, blocks: (B:42:0x0270, B:43:0x0279, B:46:0x0283, B:48:0x028f, B:50:0x02b4, B:52:0x02be, B:54:0x02cb, B:55:0x02e0, B:57:0x02e6, B:61:0x02f3, B:63:0x02f9, B:65:0x0303, B:66:0x0309, B:67:0x032b, B:68:0x0332, B:70:0x0338, B:72:0x0342, B:74:0x034e, B:76:0x03bb, B:78:0x03c1, B:80:0x03cb, B:81:0x03d5, B:83:0x03db, B:87:0x03e8, B:89:0x03f4, B:90:0x03fc, B:91:0x0402, B:93:0x0408, B:95:0x0412, B:101:0x0463, B:103:0x0469, B:105:0x0473, B:115:0x04bc, B:117:0x04c4, B:119:0x04cc, B:121:0x04d6, B:123:0x04e2, B:125:0x050f, B:127:0x0519, B:128:0x0527, B:129:0x0531, B:131:0x054f, B:133:0x0559, B:135:0x056f, B:137:0x057b, B:138:0x0599, B:139:0x0563, B:140:0x059c, B:142:0x05a4, B:144:0x05ae, B:148:0x05dc, B:150:0x05e6, B:152:0x05ee, B:154:0x05f8, B:157:0x0602, B:159:0x060c, B:161:0x0614, B:163:0x061e, B:165:0x0626, B:167:0x0632, B:170:0x06a6, B:172:0x06ae, B:174:0x06ba, B:176:0x06c2, B:178:0x06ce, B:179:0x06e4, B:181:0x06ec, B:183:0x06f8, B:185:0x0700, B:187:0x070c, B:188:0x0722, B:191:0x069c, B:192:0x0726, B:193:0x0737, B:194:0x072c, B:195:0x0732, B:197:0x073b, B:199:0x0742, B:202:0x044e, B:206:0x045b, B:209:0x0351, B:211:0x035c, B:212:0x0362, B:214:0x036b, B:216:0x036f, B:218:0x0377, B:220:0x037f, B:222:0x0383, B:224:0x038b, B:227:0x0394, B:236:0x03b1, B:264:0x01f5, B:260:0x0225), top: B:28:0x00f0 }] */
    /* JADX WARN: Removed duplicated region for block: B:206:0x045b A[Catch: NumberFormatException -> 0x074a, IOException -> 0x074c, XmlPullParserException -> 0x0790, TryCatch #11 {NumberFormatException -> 0x074a, blocks: (B:42:0x0270, B:43:0x0279, B:46:0x0283, B:48:0x028f, B:50:0x02b4, B:52:0x02be, B:54:0x02cb, B:55:0x02e0, B:57:0x02e6, B:61:0x02f3, B:63:0x02f9, B:65:0x0303, B:66:0x0309, B:67:0x032b, B:68:0x0332, B:70:0x0338, B:72:0x0342, B:74:0x034e, B:76:0x03bb, B:78:0x03c1, B:80:0x03cb, B:81:0x03d5, B:83:0x03db, B:87:0x03e8, B:89:0x03f4, B:90:0x03fc, B:91:0x0402, B:93:0x0408, B:95:0x0412, B:101:0x0463, B:103:0x0469, B:105:0x0473, B:115:0x04bc, B:117:0x04c4, B:119:0x04cc, B:121:0x04d6, B:123:0x04e2, B:125:0x050f, B:127:0x0519, B:128:0x0527, B:129:0x0531, B:131:0x054f, B:133:0x0559, B:135:0x056f, B:137:0x057b, B:138:0x0599, B:139:0x0563, B:140:0x059c, B:142:0x05a4, B:144:0x05ae, B:148:0x05dc, B:150:0x05e6, B:152:0x05ee, B:154:0x05f8, B:157:0x0602, B:159:0x060c, B:161:0x0614, B:163:0x061e, B:165:0x0626, B:167:0x0632, B:170:0x06a6, B:172:0x06ae, B:174:0x06ba, B:176:0x06c2, B:178:0x06ce, B:179:0x06e4, B:181:0x06ec, B:183:0x06f8, B:185:0x0700, B:187:0x070c, B:188:0x0722, B:191:0x069c, B:192:0x0726, B:193:0x0737, B:194:0x072c, B:195:0x0732, B:197:0x073b, B:199:0x0742, B:202:0x044e, B:206:0x045b, B:209:0x0351, B:211:0x035c, B:212:0x0362, B:214:0x036b, B:216:0x036f, B:218:0x0377, B:220:0x037f, B:222:0x0383, B:224:0x038b, B:227:0x0394, B:236:0x03b1, B:264:0x01f5, B:260:0x0225), top: B:28:0x00f0 }] */
    /* JADX WARN: Removed duplicated region for block: B:227:0x0394 A[Catch: NumberFormatException -> 0x074a, IOException -> 0x074c, XmlPullParserException -> 0x0790, TryCatch #11 {NumberFormatException -> 0x074a, blocks: (B:42:0x0270, B:43:0x0279, B:46:0x0283, B:48:0x028f, B:50:0x02b4, B:52:0x02be, B:54:0x02cb, B:55:0x02e0, B:57:0x02e6, B:61:0x02f3, B:63:0x02f9, B:65:0x0303, B:66:0x0309, B:67:0x032b, B:68:0x0332, B:70:0x0338, B:72:0x0342, B:74:0x034e, B:76:0x03bb, B:78:0x03c1, B:80:0x03cb, B:81:0x03d5, B:83:0x03db, B:87:0x03e8, B:89:0x03f4, B:90:0x03fc, B:91:0x0402, B:93:0x0408, B:95:0x0412, B:101:0x0463, B:103:0x0469, B:105:0x0473, B:115:0x04bc, B:117:0x04c4, B:119:0x04cc, B:121:0x04d6, B:123:0x04e2, B:125:0x050f, B:127:0x0519, B:128:0x0527, B:129:0x0531, B:131:0x054f, B:133:0x0559, B:135:0x056f, B:137:0x057b, B:138:0x0599, B:139:0x0563, B:140:0x059c, B:142:0x05a4, B:144:0x05ae, B:148:0x05dc, B:150:0x05e6, B:152:0x05ee, B:154:0x05f8, B:157:0x0602, B:159:0x060c, B:161:0x0614, B:163:0x061e, B:165:0x0626, B:167:0x0632, B:170:0x06a6, B:172:0x06ae, B:174:0x06ba, B:176:0x06c2, B:178:0x06ce, B:179:0x06e4, B:181:0x06ec, B:183:0x06f8, B:185:0x0700, B:187:0x070c, B:188:0x0722, B:191:0x069c, B:192:0x0726, B:193:0x0737, B:194:0x072c, B:195:0x0732, B:197:0x073b, B:199:0x0742, B:202:0x044e, B:206:0x045b, B:209:0x0351, B:211:0x035c, B:212:0x0362, B:214:0x036b, B:216:0x036f, B:218:0x0377, B:220:0x037f, B:222:0x0383, B:224:0x038b, B:227:0x0394, B:236:0x03b1, B:264:0x01f5, B:260:0x0225), top: B:28:0x00f0 }] */
    /* JADX WARN: Removed duplicated region for block: B:239:0x0331  */
    /* JADX WARN: Removed duplicated region for block: B:294:0x004b  */
    /* JADX WARN: Removed duplicated region for block: B:305:0x0074  */
    /* JADX WARN: Removed duplicated region for block: B:319:0x07c9  */
    /* JADX WARN: Removed duplicated region for block: B:321:? A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:46:0x0283 A[Catch: NumberFormatException -> 0x074a, IOException -> 0x074c, XmlPullParserException -> 0x0790, LOOP:0: B:43:0x0279->B:46:0x0283, LOOP_END, TRY_ENTER, TryCatch #11 {NumberFormatException -> 0x074a, blocks: (B:42:0x0270, B:43:0x0279, B:46:0x0283, B:48:0x028f, B:50:0x02b4, B:52:0x02be, B:54:0x02cb, B:55:0x02e0, B:57:0x02e6, B:61:0x02f3, B:63:0x02f9, B:65:0x0303, B:66:0x0309, B:67:0x032b, B:68:0x0332, B:70:0x0338, B:72:0x0342, B:74:0x034e, B:76:0x03bb, B:78:0x03c1, B:80:0x03cb, B:81:0x03d5, B:83:0x03db, B:87:0x03e8, B:89:0x03f4, B:90:0x03fc, B:91:0x0402, B:93:0x0408, B:95:0x0412, B:101:0x0463, B:103:0x0469, B:105:0x0473, B:115:0x04bc, B:117:0x04c4, B:119:0x04cc, B:121:0x04d6, B:123:0x04e2, B:125:0x050f, B:127:0x0519, B:128:0x0527, B:129:0x0531, B:131:0x054f, B:133:0x0559, B:135:0x056f, B:137:0x057b, B:138:0x0599, B:139:0x0563, B:140:0x059c, B:142:0x05a4, B:144:0x05ae, B:148:0x05dc, B:150:0x05e6, B:152:0x05ee, B:154:0x05f8, B:157:0x0602, B:159:0x060c, B:161:0x0614, B:163:0x061e, B:165:0x0626, B:167:0x0632, B:170:0x06a6, B:172:0x06ae, B:174:0x06ba, B:176:0x06c2, B:178:0x06ce, B:179:0x06e4, B:181:0x06ec, B:183:0x06f8, B:185:0x0700, B:187:0x070c, B:188:0x0722, B:191:0x069c, B:192:0x0726, B:193:0x0737, B:194:0x072c, B:195:0x0732, B:197:0x073b, B:199:0x0742, B:202:0x044e, B:206:0x045b, B:209:0x0351, B:211:0x035c, B:212:0x0362, B:214:0x036b, B:216:0x036f, B:218:0x0377, B:220:0x037f, B:222:0x0383, B:224:0x038b, B:227:0x0394, B:236:0x03b1, B:264:0x01f5, B:260:0x0225), top: B:28:0x00f0 }] */
    /* JADX WARN: Removed duplicated region for block: B:47:0x028f A[EDGE_INSN: B:47:0x028f->B:48:0x028f BREAK  A[LOOP:0: B:43:0x0279->B:46:0x0283], SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:70:0x0338 A[Catch: NumberFormatException -> 0x074a, IOException -> 0x074c, XmlPullParserException -> 0x0790, TryCatch #11 {NumberFormatException -> 0x074a, blocks: (B:42:0x0270, B:43:0x0279, B:46:0x0283, B:48:0x028f, B:50:0x02b4, B:52:0x02be, B:54:0x02cb, B:55:0x02e0, B:57:0x02e6, B:61:0x02f3, B:63:0x02f9, B:65:0x0303, B:66:0x0309, B:67:0x032b, B:68:0x0332, B:70:0x0338, B:72:0x0342, B:74:0x034e, B:76:0x03bb, B:78:0x03c1, B:80:0x03cb, B:81:0x03d5, B:83:0x03db, B:87:0x03e8, B:89:0x03f4, B:90:0x03fc, B:91:0x0402, B:93:0x0408, B:95:0x0412, B:101:0x0463, B:103:0x0469, B:105:0x0473, B:115:0x04bc, B:117:0x04c4, B:119:0x04cc, B:121:0x04d6, B:123:0x04e2, B:125:0x050f, B:127:0x0519, B:128:0x0527, B:129:0x0531, B:131:0x054f, B:133:0x0559, B:135:0x056f, B:137:0x057b, B:138:0x0599, B:139:0x0563, B:140:0x059c, B:142:0x05a4, B:144:0x05ae, B:148:0x05dc, B:150:0x05e6, B:152:0x05ee, B:154:0x05f8, B:157:0x0602, B:159:0x060c, B:161:0x0614, B:163:0x061e, B:165:0x0626, B:167:0x0632, B:170:0x06a6, B:172:0x06ae, B:174:0x06ba, B:176:0x06c2, B:178:0x06ce, B:179:0x06e4, B:181:0x06ec, B:183:0x06f8, B:185:0x0700, B:187:0x070c, B:188:0x0722, B:191:0x069c, B:192:0x0726, B:193:0x0737, B:194:0x072c, B:195:0x0732, B:197:0x073b, B:199:0x0742, B:202:0x044e, B:206:0x045b, B:209:0x0351, B:211:0x035c, B:212:0x0362, B:214:0x036b, B:216:0x036f, B:218:0x0377, B:220:0x037f, B:222:0x0383, B:224:0x038b, B:227:0x0394, B:236:0x03b1, B:264:0x01f5, B:260:0x0225), top: B:28:0x00f0 }] */
    /* JADX WARN: Removed duplicated region for block: B:78:0x03c1 A[Catch: NumberFormatException -> 0x074a, IOException -> 0x074c, XmlPullParserException -> 0x0790, TryCatch #11 {NumberFormatException -> 0x074a, blocks: (B:42:0x0270, B:43:0x0279, B:46:0x0283, B:48:0x028f, B:50:0x02b4, B:52:0x02be, B:54:0x02cb, B:55:0x02e0, B:57:0x02e6, B:61:0x02f3, B:63:0x02f9, B:65:0x0303, B:66:0x0309, B:67:0x032b, B:68:0x0332, B:70:0x0338, B:72:0x0342, B:74:0x034e, B:76:0x03bb, B:78:0x03c1, B:80:0x03cb, B:81:0x03d5, B:83:0x03db, B:87:0x03e8, B:89:0x03f4, B:90:0x03fc, B:91:0x0402, B:93:0x0408, B:95:0x0412, B:101:0x0463, B:103:0x0469, B:105:0x0473, B:115:0x04bc, B:117:0x04c4, B:119:0x04cc, B:121:0x04d6, B:123:0x04e2, B:125:0x050f, B:127:0x0519, B:128:0x0527, B:129:0x0531, B:131:0x054f, B:133:0x0559, B:135:0x056f, B:137:0x057b, B:138:0x0599, B:139:0x0563, B:140:0x059c, B:142:0x05a4, B:144:0x05ae, B:148:0x05dc, B:150:0x05e6, B:152:0x05ee, B:154:0x05f8, B:157:0x0602, B:159:0x060c, B:161:0x0614, B:163:0x061e, B:165:0x0626, B:167:0x0632, B:170:0x06a6, B:172:0x06ae, B:174:0x06ba, B:176:0x06c2, B:178:0x06ce, B:179:0x06e4, B:181:0x06ec, B:183:0x06f8, B:185:0x0700, B:187:0x070c, B:188:0x0722, B:191:0x069c, B:192:0x0726, B:193:0x0737, B:194:0x072c, B:195:0x0732, B:197:0x073b, B:199:0x0742, B:202:0x044e, B:206:0x045b, B:209:0x0351, B:211:0x035c, B:212:0x0362, B:214:0x036b, B:216:0x036f, B:218:0x0377, B:220:0x037f, B:222:0x0383, B:224:0x038b, B:227:0x0394, B:236:0x03b1, B:264:0x01f5, B:260:0x0225), top: B:28:0x00f0 }] */
    /* JADX WARN: Removed duplicated region for block: B:83:0x03db A[Catch: NumberFormatException -> 0x074a, IOException -> 0x074c, XmlPullParserException -> 0x0790, TryCatch #11 {NumberFormatException -> 0x074a, blocks: (B:42:0x0270, B:43:0x0279, B:46:0x0283, B:48:0x028f, B:50:0x02b4, B:52:0x02be, B:54:0x02cb, B:55:0x02e0, B:57:0x02e6, B:61:0x02f3, B:63:0x02f9, B:65:0x0303, B:66:0x0309, B:67:0x032b, B:68:0x0332, B:70:0x0338, B:72:0x0342, B:74:0x034e, B:76:0x03bb, B:78:0x03c1, B:80:0x03cb, B:81:0x03d5, B:83:0x03db, B:87:0x03e8, B:89:0x03f4, B:90:0x03fc, B:91:0x0402, B:93:0x0408, B:95:0x0412, B:101:0x0463, B:103:0x0469, B:105:0x0473, B:115:0x04bc, B:117:0x04c4, B:119:0x04cc, B:121:0x04d6, B:123:0x04e2, B:125:0x050f, B:127:0x0519, B:128:0x0527, B:129:0x0531, B:131:0x054f, B:133:0x0559, B:135:0x056f, B:137:0x057b, B:138:0x0599, B:139:0x0563, B:140:0x059c, B:142:0x05a4, B:144:0x05ae, B:148:0x05dc, B:150:0x05e6, B:152:0x05ee, B:154:0x05f8, B:157:0x0602, B:159:0x060c, B:161:0x0614, B:163:0x061e, B:165:0x0626, B:167:0x0632, B:170:0x06a6, B:172:0x06ae, B:174:0x06ba, B:176:0x06c2, B:178:0x06ce, B:179:0x06e4, B:181:0x06ec, B:183:0x06f8, B:185:0x0700, B:187:0x070c, B:188:0x0722, B:191:0x069c, B:192:0x0726, B:193:0x0737, B:194:0x072c, B:195:0x0732, B:197:0x073b, B:199:0x0742, B:202:0x044e, B:206:0x045b, B:209:0x0351, B:211:0x035c, B:212:0x0362, B:214:0x036b, B:216:0x036f, B:218:0x0377, B:220:0x037f, B:222:0x0383, B:224:0x038b, B:227:0x0394, B:236:0x03b1, B:264:0x01f5, B:260:0x0225), top: B:28:0x00f0 }] */
    /* JADX WARN: Removed duplicated region for block: B:87:0x03e8 A[Catch: NumberFormatException -> 0x074a, IOException -> 0x074c, XmlPullParserException -> 0x0790, TryCatch #11 {NumberFormatException -> 0x074a, blocks: (B:42:0x0270, B:43:0x0279, B:46:0x0283, B:48:0x028f, B:50:0x02b4, B:52:0x02be, B:54:0x02cb, B:55:0x02e0, B:57:0x02e6, B:61:0x02f3, B:63:0x02f9, B:65:0x0303, B:66:0x0309, B:67:0x032b, B:68:0x0332, B:70:0x0338, B:72:0x0342, B:74:0x034e, B:76:0x03bb, B:78:0x03c1, B:80:0x03cb, B:81:0x03d5, B:83:0x03db, B:87:0x03e8, B:89:0x03f4, B:90:0x03fc, B:91:0x0402, B:93:0x0408, B:95:0x0412, B:101:0x0463, B:103:0x0469, B:105:0x0473, B:115:0x04bc, B:117:0x04c4, B:119:0x04cc, B:121:0x04d6, B:123:0x04e2, B:125:0x050f, B:127:0x0519, B:128:0x0527, B:129:0x0531, B:131:0x054f, B:133:0x0559, B:135:0x056f, B:137:0x057b, B:138:0x0599, B:139:0x0563, B:140:0x059c, B:142:0x05a4, B:144:0x05ae, B:148:0x05dc, B:150:0x05e6, B:152:0x05ee, B:154:0x05f8, B:157:0x0602, B:159:0x060c, B:161:0x0614, B:163:0x061e, B:165:0x0626, B:167:0x0632, B:170:0x06a6, B:172:0x06ae, B:174:0x06ba, B:176:0x06c2, B:178:0x06ce, B:179:0x06e4, B:181:0x06ec, B:183:0x06f8, B:185:0x0700, B:187:0x070c, B:188:0x0722, B:191:0x069c, B:192:0x0726, B:193:0x0737, B:194:0x072c, B:195:0x0732, B:197:0x073b, B:199:0x0742, B:202:0x044e, B:206:0x045b, B:209:0x0351, B:211:0x035c, B:212:0x0362, B:214:0x036b, B:216:0x036f, B:218:0x0377, B:220:0x037f, B:222:0x0383, B:224:0x038b, B:227:0x0394, B:236:0x03b1, B:264:0x01f5, B:260:0x0225), top: B:28:0x00f0 }] */
    /* JADX WARN: Removed duplicated region for block: B:90:0x03fc A[Catch: NumberFormatException -> 0x074a, IOException -> 0x074c, XmlPullParserException -> 0x0790, TryCatch #11 {NumberFormatException -> 0x074a, blocks: (B:42:0x0270, B:43:0x0279, B:46:0x0283, B:48:0x028f, B:50:0x02b4, B:52:0x02be, B:54:0x02cb, B:55:0x02e0, B:57:0x02e6, B:61:0x02f3, B:63:0x02f9, B:65:0x0303, B:66:0x0309, B:67:0x032b, B:68:0x0332, B:70:0x0338, B:72:0x0342, B:74:0x034e, B:76:0x03bb, B:78:0x03c1, B:80:0x03cb, B:81:0x03d5, B:83:0x03db, B:87:0x03e8, B:89:0x03f4, B:90:0x03fc, B:91:0x0402, B:93:0x0408, B:95:0x0412, B:101:0x0463, B:103:0x0469, B:105:0x0473, B:115:0x04bc, B:117:0x04c4, B:119:0x04cc, B:121:0x04d6, B:123:0x04e2, B:125:0x050f, B:127:0x0519, B:128:0x0527, B:129:0x0531, B:131:0x054f, B:133:0x0559, B:135:0x056f, B:137:0x057b, B:138:0x0599, B:139:0x0563, B:140:0x059c, B:142:0x05a4, B:144:0x05ae, B:148:0x05dc, B:150:0x05e6, B:152:0x05ee, B:154:0x05f8, B:157:0x0602, B:159:0x060c, B:161:0x0614, B:163:0x061e, B:165:0x0626, B:167:0x0632, B:170:0x06a6, B:172:0x06ae, B:174:0x06ba, B:176:0x06c2, B:178:0x06ce, B:179:0x06e4, B:181:0x06ec, B:183:0x06f8, B:185:0x0700, B:187:0x070c, B:188:0x0722, B:191:0x069c, B:192:0x0726, B:193:0x0737, B:194:0x072c, B:195:0x0732, B:197:0x073b, B:199:0x0742, B:202:0x044e, B:206:0x045b, B:209:0x0351, B:211:0x035c, B:212:0x0362, B:214:0x036b, B:216:0x036f, B:218:0x0377, B:220:0x037f, B:222:0x0383, B:224:0x038b, B:227:0x0394, B:236:0x03b1, B:264:0x01f5, B:260:0x0225), top: B:28:0x00f0 }] */
    /* JADX WARN: Removed duplicated region for block: B:93:0x0408 A[Catch: NumberFormatException -> 0x074a, IOException -> 0x074c, XmlPullParserException -> 0x0790, TryCatch #11 {NumberFormatException -> 0x074a, blocks: (B:42:0x0270, B:43:0x0279, B:46:0x0283, B:48:0x028f, B:50:0x02b4, B:52:0x02be, B:54:0x02cb, B:55:0x02e0, B:57:0x02e6, B:61:0x02f3, B:63:0x02f9, B:65:0x0303, B:66:0x0309, B:67:0x032b, B:68:0x0332, B:70:0x0338, B:72:0x0342, B:74:0x034e, B:76:0x03bb, B:78:0x03c1, B:80:0x03cb, B:81:0x03d5, B:83:0x03db, B:87:0x03e8, B:89:0x03f4, B:90:0x03fc, B:91:0x0402, B:93:0x0408, B:95:0x0412, B:101:0x0463, B:103:0x0469, B:105:0x0473, B:115:0x04bc, B:117:0x04c4, B:119:0x04cc, B:121:0x04d6, B:123:0x04e2, B:125:0x050f, B:127:0x0519, B:128:0x0527, B:129:0x0531, B:131:0x054f, B:133:0x0559, B:135:0x056f, B:137:0x057b, B:138:0x0599, B:139:0x0563, B:140:0x059c, B:142:0x05a4, B:144:0x05ae, B:148:0x05dc, B:150:0x05e6, B:152:0x05ee, B:154:0x05f8, B:157:0x0602, B:159:0x060c, B:161:0x0614, B:163:0x061e, B:165:0x0626, B:167:0x0632, B:170:0x06a6, B:172:0x06ae, B:174:0x06ba, B:176:0x06c2, B:178:0x06ce, B:179:0x06e4, B:181:0x06ec, B:183:0x06f8, B:185:0x0700, B:187:0x070c, B:188:0x0722, B:191:0x069c, B:192:0x0726, B:193:0x0737, B:194:0x072c, B:195:0x0732, B:197:0x073b, B:199:0x0742, B:202:0x044e, B:206:0x045b, B:209:0x0351, B:211:0x035c, B:212:0x0362, B:214:0x036b, B:216:0x036f, B:218:0x0377, B:220:0x037f, B:222:0x0383, B:224:0x038b, B:227:0x0394, B:236:0x03b1, B:264:0x01f5, B:260:0x0225), top: B:28:0x00f0 }] */
    /* JADX WARN: Removed duplicated region for block: B:9:0x003c A[Catch: SecurityException -> 0x0050, IOException -> 0x0053, all -> 0x07c4, TRY_LEAVE, TryCatch #12 {all -> 0x07c4, blocks: (B:307:0x001f, B:7:0x0032, B:9:0x003c, B:303:0x005e, B:297:0x0079), top: B:2:0x0018 }] */
    /* JADX WARN: Type inference failed for: r8v0 */
    /* JADX WARN: Type inference failed for: r8v13 */
    /* JADX WARN: Type inference failed for: r8v2 */
    /* JADX WARN: Type inference failed for: r8v3 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final int verifyToken(com.android.server.asks.ASKSManagerService.ASKSSession r27, java.lang.String r28, java.lang.String r29, boolean r30, int r31, int r32) {
        /*
            Method dump skipped, instructions count: 1997
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.server.asks.ASKSManagerService.verifyToken(com.android.server.asks.ASKSManagerService$ASKSSession, java.lang.String, java.lang.String, boolean, int, int):int");
    }

    /* JADX WARN: Code restructure failed: missing block: B:37:0x00c8, code lost:
    
        if (r19 == 2) goto L178;
     */
    /* JADX WARN: Code restructure failed: missing block: B:38:0x00ca, code lost:
    
        if (r13 == null) goto L174;
     */
    /* JADX WARN: Code restructure failed: missing block: B:39:0x00cf, code lost:
    
        if (r5 == null) goto L176;
     */
    /* JADX WARN: Code restructure failed: missing block: B:40:0x00d1, code lost:
    
        r5.close();
     */
    /* JADX WARN: Code restructure failed: missing block: B:43:0x00d4, code lost:
    
        android.util.Slog.e("AASA_ASKSManager", "this is not on the way to check integrity");
     */
    /* JADX WARN: Code restructure failed: missing block: B:44:0x00de, code lost:
    
        return "22".getBytes();
     */
    /* JADX WARN: Code restructure failed: missing block: B:46:0x00cc, code lost:
    
        r13.close();
     */
    /* JADX WARN: Removed duplicated region for block: B:73:0x0133 A[Catch: IOException -> 0x0136, TRY_LEAVE, TryCatch #0 {IOException -> 0x0136, blocks: (B:78:0x012e, B:73:0x0133), top: B:77:0x012e }] */
    /* JADX WARN: Removed duplicated region for block: B:77:0x012e A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final byte[] checkIntegrityNew(com.android.server.asks.ASKSManagerService.ASKSSession r18, int r19, byte[] r20) {
        /*
            Method dump skipped, instructions count: 323
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.server.asks.ASKSManagerService.checkIntegrityNew(com.android.server.asks.ASKSManagerService$ASKSSession, int, byte[]):byte[]");
    }

    public final byte[] getTokenContents(byte[] bArr, int i) {
        boolean z;
        int i2;
        byte[] bArr2 = new byte[7];
        int i3 = i;
        int i4 = 0;
        while (true) {
            byte b = bArr[i3];
            if (b == 44) {
                z = false;
                break;
            }
            if (i4 >= 5) {
                z = true;
                break;
            }
            bArr2[i4] = b;
            i3++;
            i4++;
        }
        if (z) {
            return "22".getBytes();
        }
        byte[] bArr3 = new byte[i4];
        System.arraycopy(bArr2, 0, bArr3, 0, i4);
        try {
            i2 = Integer.parseInt(new String(bArr3));
        } catch (NumberFormatException e) {
            e.printStackTrace();
            i2 = 0;
        }
        byte[] bArr4 = new byte[i2];
        System.arraycopy(bArr, i + i4 + 1, bArr4, 0, i2);
        return bArr4;
    }

    public final byte[] findCertificateIndex(ASKSSession aSKSSession, byte[] bArr) {
        try {
            XmlPullParser newPullParser = XmlPullParserFactory.newInstance().newPullParser();
            newPullParser.setInput(new ByteArrayInputStream(bArr), null);
            new ArrayList();
            try {
                String parseXMLNew = parseXMLNew(newPullParser, "INDEX");
                Slog.i("AASA_ASKSManager", "index : " + parseXMLNew);
                if ("0.0".equals(parseXMLNew)) {
                    Slog.d("AASA_ASKSManager", "ENG Cert Index");
                } else {
                    String[] split = parseXMLNew.split("\\.");
                    String replaceAll = aSKSSession.getTokenName().replaceAll("[^0-9]", "");
                    aSKSSession.setCAKeyIndex(split[0]);
                    Slog.d("AASA_ASKSManager", "mTokenName : " + aSKSSession.getTokenName() + " SignerVersion : " + replaceAll);
                    if ("".equals(replaceAll)) {
                        replaceAll = "1";
                    }
                    if (!replaceAll.equals(split[1])) {
                        Slog.d("AASA_ASKSManager", "Signer Cert File is not matched with index!");
                        return "21".getBytes();
                    }
                    if (checkListForASKS(14, "SIGNER", split[1]) != -1) {
                        Slog.d("AASA_ASKSManager", "SIGNER is in CRL");
                        return "21".getBytes();
                    }
                    if (checkListForASKS(14, "INTER", split[0]) != -1) {
                        Slog.d("AASA_ASKSManager", "INTER is in CRL");
                        return "21".getBytes();
                    }
                }
                return null;
            } catch (IOException e) {
                Slog.i("AASA_ASKSManager", " " + e.toString());
                return "21".getBytes();
            }
        } catch (XmlPullParserException e2) {
            Slog.i("AASA_ASKSManager", " " + e2.toString());
            return "21".getBytes();
        }
    }

    public final byte[] checkCertificateChaining(ASKSSession aSKSSession, byte[] bArr, X509Certificate x509Certificate) {
        FileInputStream fileInputStream;
        X509Certificate x509Certificate2;
        if (this.DEBUG_MODE_FOR_DEVELOPMENT) {
            return bArr;
        }
        try {
            CertificateFactory certificateFactory = CertificateFactory.getInstance("x.509");
            try {
                fileInputStream = new FileInputStream(this.CA_CERT_PATH + aSKSSession.getCAKeyIndex() + ".crt");
                x509Certificate2 = (X509Certificate) certificateFactory.generateCertificate(fileInputStream);
            } catch (Exception e) {
                Slog.e("AASA_ASKSManager", "Look at system File. " + e);
                fileInputStream = new FileInputStream(this.CA_CERT_SYSTEM_PATH + aSKSSession.getCAKeyIndex() + ".crt");
                x509Certificate2 = (X509Certificate) certificateFactory.generateCertificate(fileInputStream);
            }
            try {
                x509Certificate.verify(x509Certificate2.getPublicKey());
                Slog.i("AASA_ASKSManager", "signerCert is verificated!");
                fileInputStream.close();
                try {
                    X509Certificate x509Certificate3 = (X509Certificate) certificateFactory.generateCertificate(new FileInputStream(this.ROOT_CERT_FILE));
                    x509Certificate2.verify(x509Certificate3.getPublicKey());
                    Slog.i("AASA_ASKSManager", "CAcert is verificated!");
                    try {
                        x509Certificate3.verify(x509Certificate3.getPublicKey());
                        Slog.i("AASA_ASKSManager", "rootCert is verificated!");
                        return bArr;
                    } catch (Exception e2) {
                        Slog.i("AASA_ASKSManager", "ERROR: rootCert is not verified " + e2);
                        return "22".getBytes();
                    }
                } catch (Exception e3) {
                    Slog.i("AASA_ASKSManager", "ERROR: CACert is not verified by RootCert " + e3);
                    return "22".getBytes();
                }
            } catch (Exception e4) {
                Slog.i("AASA_ASKSManager", "ERROR: SignerCert is not verified by CACert " + e4);
                return "22".getBytes();
            }
        } catch (Exception unused) {
            Slog.e("AASA_ASKSManager", "Token is NOT verificated in CheckCRL!");
            return "22".getBytes();
        }
    }

    public final void parseXMLNew(XmlPullParser xmlPullParser, HashMap hashMap) {
        parseXMLNew(xmlPullParser, hashMap, null);
    }

    public final String parseXMLNew(XmlPullParser xmlPullParser, String str) {
        HashMap hashMap = new HashMap();
        hashMap.put(str, "NONE");
        parseXMLNew(xmlPullParser, hashMap, null);
        return (String) hashMap.get(str);
    }

    public final void parseXMLNew(XmlPullParser xmlPullParser, HashMap hashMap, ArrayList arrayList) {
        String name;
        int eventType = xmlPullParser.getEventType();
        while (eventType != 1) {
            if (eventType == 2 && (name = xmlPullParser.getName()) != null) {
                if (hashMap.containsKey(name)) {
                    if (xmlPullParser.getAttributeCount() != 1) {
                        Slog.e("AASA_ASKSManager", "this is an exceptional case");
                    }
                    hashMap.replace(name, xmlPullParser.getAttributeValue(0));
                } else if (arrayList != null && "PERMISSION".equals(name)) {
                    if (xmlPullParser.getAttributeCount() != 1) {
                        Slog.e("AASA_ASKSManager", "this is an exceptional case for permission");
                    }
                    arrayList.add(xmlPullParser.getAttributeValue(0));
                }
            }
            eventType = xmlPullParser.next();
        }
    }

    public final boolean checkTokenTarget(String str, String str2) {
        boolean z;
        boolean z2;
        if (str == null || str2 == null) {
            Slog.i("AASA_ASKSManager", "ERROR: checkTokenTarget input is null");
            return false;
        }
        String[] split = str.split(",");
        String[] split2 = str2.split(",");
        String str3 = SystemProperties.get("ro.product.model", "Unknown");
        String str4 = SystemProperties.get("ro.csc.sales_code");
        int i = 1;
        if ("ALL".equals(split[0])) {
            if (split.length != 1) {
                int i2 = 1;
                while (true) {
                    if (i2 >= split.length) {
                        z2 = true;
                        break;
                    }
                    if (split[i2].equals(str3)) {
                        z2 = false;
                        break;
                    }
                    i2++;
                }
                if (z2) {
                    if ("ALL".equals(split2[0])) {
                        if (split2.length != 1) {
                            while (i < split2.length) {
                                if (split2[i].equals(str4)) {
                                    return false;
                                }
                                i++;
                            }
                        }
                    } else if (!"ALL".equals(split2[0])) {
                        for (String str5 : split2) {
                            if (!str5.equals(str4)) {
                            }
                        }
                        return false;
                    }
                }
                return z2;
            }
            if ("ALL".equals(split2[0])) {
                if (split2.length != 1) {
                    for (int i3 = 1; i3 < split2.length; i3++) {
                        if (split2[i3].equals(str4)) {
                            return false;
                        }
                    }
                }
            } else {
                if ("ALL".equals(split2[0])) {
                    return false;
                }
                for (String str6 : split2) {
                    if (!str6.equals(str4)) {
                    }
                }
                return false;
            }
        } else {
            if ("ALL".equals(split[0])) {
                return false;
            }
            int i4 = 0;
            while (true) {
                if (i4 >= split.length) {
                    z = false;
                    break;
                }
                if (split[i4].equals(str3)) {
                    z = true;
                    break;
                }
                i4++;
            }
            if (z) {
                if ("ALL".equals(split2[0])) {
                    if (split2.length == 1) {
                        for (String str7 : split) {
                            if (!str7.equals(str3)) {
                            }
                        }
                        return false;
                    }
                    while (i < split2.length) {
                        if (split2[i].equals(str4)) {
                            return false;
                        }
                        i++;
                    }
                } else if (!"ALL".equals(split2[0])) {
                    for (String str8 : split2) {
                        if (!str8.equals(str4)) {
                        }
                    }
                    return false;
                }
            }
            return z;
        }
        return true;
    }

    public final boolean isInteger(String str) {
        try {
            Integer.parseInt(str);
            return true;
        } catch (NumberFormatException unused) {
            return false;
        }
    }

    public final void writeBlockApkList(String str) {
        PrintWriter printWriter = null;
        try {
            try {
                PrintWriter fastPrintWriter = new FastPrintWriter(new FileOutputStream(new File("/data/system/.aasa/blockedList.log"), false));
                try {
                    fastPrintWriter.println(str);
                    fastPrintWriter.close();
                    Slog.i("AASA_ASKSManager", "writeBlockApkList() Success");
                    fastPrintWriter.close();
                } catch (IOException e) {
                    e = e;
                    printWriter = fastPrintWriter;
                    Slog.i("AASA_ASKSManager", "writeBlockApkList() Fail " + e);
                    if (printWriter != null) {
                        printWriter.close();
                    }
                } catch (Throwable th) {
                    th = th;
                    printWriter = fastPrintWriter;
                    if (printWriter != null) {
                        printWriter.close();
                    }
                    throw th;
                }
            } catch (IOException e2) {
                e = e2;
            }
        } catch (Throwable th2) {
            th = th2;
        }
    }

    public final String getSHA256ForPkgName(String str) {
        try {
            return getSHA256(str + "AASAASKS");
        } catch (UnsupportedEncodingException | NoSuchAlgorithmException unused) {
            return "";
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:35:0x0058 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Type inference failed for: r4v1, types: [java.io.InputStream] */
    /* JADX WARN: Type inference failed for: r4v8, types: [byte[]] */
    /* JADX WARN: Type inference failed for: r4v9 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final byte[] getApkFileHashBytes(java.lang.String r5) {
        /*
            r4 = this;
            r4 = 0
            java.lang.String r0 = "SHA-256"
            java.security.MessageDigest r0 = java.security.MessageDigest.getInstance(r0)     // Catch: java.security.NoSuchAlgorithmException -> L5d
            java.io.File r1 = new java.io.File
            r1.<init>(r5)
            if (r0 == 0) goto L5c
            boolean r5 = r1.exists()
            if (r5 == 0) goto L5c
            r5 = 4096(0x1000, float:5.74E-42)
            byte[] r5 = new byte[r5]     // Catch: java.lang.Throwable -> L33 java.io.IOException -> L37
            java.io.FileInputStream r2 = new java.io.FileInputStream     // Catch: java.lang.Throwable -> L33 java.io.IOException -> L37
            r2.<init>(r1)     // Catch: java.lang.Throwable -> L33 java.io.IOException -> L37
        L1d:
            int r1 = r2.read(r5)     // Catch: java.io.IOException -> L31 java.lang.Throwable -> L55
            r3 = -1
            if (r1 == r3) goto L29
            r3 = 0
            r0.update(r5, r3, r1)     // Catch: java.io.IOException -> L31 java.lang.Throwable -> L55
            goto L1d
        L29:
            byte[] r4 = r0.digest()     // Catch: java.io.IOException -> L31 java.lang.Throwable -> L55
            r2.close()     // Catch: java.io.IOException -> L5c
            goto L5c
        L31:
            r5 = move-exception
            goto L39
        L33:
            r5 = move-exception
            r2 = r4
            r4 = r5
            goto L56
        L37:
            r5 = move-exception
            r2 = r4
        L39:
            java.lang.String r0 = "AASA_ASKSManager"
            java.lang.StringBuilder r1 = new java.lang.StringBuilder     // Catch: java.lang.Throwable -> L55
            r1.<init>()     // Catch: java.lang.Throwable -> L55
            java.lang.String r3 = " ERROR: getApkFileHash:"
            r1.append(r3)     // Catch: java.lang.Throwable -> L55
            r1.append(r5)     // Catch: java.lang.Throwable -> L55
            java.lang.String r5 = r1.toString()     // Catch: java.lang.Throwable -> L55
            android.util.Slog.e(r0, r5)     // Catch: java.lang.Throwable -> L55
            if (r2 == 0) goto L54
            r2.close()     // Catch: java.io.IOException -> L54
        L54:
            return r4
        L55:
            r4 = move-exception
        L56:
            if (r2 == 0) goto L5b
            r2.close()     // Catch: java.io.IOException -> L5b
        L5b:
            throw r4
        L5c:
            return r4
        L5d:
            r5 = move-exception
            r5.printStackTrace()
            return r4
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.server.asks.ASKSManagerService.getApkFileHashBytes(java.lang.String):byte[]");
    }

    public final String getApkFileHash(String str) {
        try {
            byte[] apkFileHashBytes = getApkFileHashBytes(str);
            return apkFileHashBytes != null ? getSHA256ForPkgName(convertToHex(apkFileHashBytes)) : "";
        } catch (IOException unused) {
            return "";
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:86:0x0120 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final java.lang.String getAdvancedHash(java.lang.String r12) {
        /*
            Method dump skipped, instructions count: 297
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.server.asks.ASKSManagerService.getAdvancedHash(java.lang.String):java.lang.String");
    }

    public final String getSHA256(String str) {
        MessageDigest messageDigest = MessageDigest.getInstance("SHA-256");
        messageDigest.update(str.getBytes("ISO-8859-1"), 0, str.length());
        return convertToHex(messageDigest.digest());
    }

    public final String convertToHex(byte[] bArr) {
        StringBuilder sb = new StringBuilder();
        if (bArr == null) {
            return "null";
        }
        for (byte b : bArr) {
            int i = (b >>> 4) & 15;
            int i2 = 0;
            while (true) {
                sb.append((char) ((i < 0 || i > 9) ? (i - 10) + 97 : i + 48));
                i = b & 15;
                int i3 = i2 + 1;
                if (i2 >= 1) {
                    break;
                }
                i2 = i3;
            }
        }
        return sb.toString();
    }

    public final Certificate[] loadCertificates(StrictJarFile strictJarFile, ZipEntry zipEntry, MessageDigest messageDigest) {
        InputStream inputStream;
        try {
            if (zipEntry == null) {
                return null;
            }
            try {
                inputStream = strictJarFile.getInputStream(zipEntry);
                try {
                    byte[] bArr = new byte[IInstalld.FLAG_USE_QUOTA];
                    if (inputStream != null) {
                        while (true) {
                            int read = inputStream.read(bArr, 0, IInstalld.FLAG_USE_QUOTA);
                            if (read == -1) {
                                break;
                            }
                            messageDigest.update(bArr, 0, read);
                        }
                        inputStream.close();
                    }
                    return strictJarFile.getCertificates(zipEntry);
                } catch (IOException e) {
                    e = e;
                    Slog.e("AASA_ASKSManager", "loadCert(md) : TinyAASA + No IO " + e.toString());
                    if (inputStream != null) {
                        inputStream.close();
                    }
                    return null;
                } catch (RuntimeException e2) {
                    e = e2;
                    Slog.e("AASA_ASKSManager", "loadCert(md) : TinyAASA + No RUN " + e.toString());
                    if (inputStream != null) {
                        inputStream.close();
                    }
                    return null;
                }
            } catch (IOException e3) {
                e = e3;
                inputStream = null;
            } catch (RuntimeException e4) {
                e = e4;
                inputStream = null;
            }
        } catch (IOException unused) {
        }
    }

    public final Certificate[] loadCertificates(StrictJarFile strictJarFile, ZipEntry zipEntry, byte[] bArr) {
        InputStream inputStream;
        try {
            if (zipEntry != null) {
                try {
                    inputStream = strictJarFile.getInputStream(zipEntry);
                    if (inputStream != null) {
                        do {
                            try {
                            } catch (IOException e) {
                                e = e;
                                Slog.i("AASA_ASKSManager", "loadCert(B) : No IO " + e.toString());
                                if (inputStream != null) {
                                    inputStream.close();
                                }
                                return null;
                            } catch (RuntimeException e2) {
                                e = e2;
                                Slog.i("AASA_ASKSManager", "loadCert(B) : No RUN " + e.toString());
                                if (inputStream != null) {
                                    inputStream.close();
                                }
                                return null;
                            }
                        } while (inputStream.read(bArr, 0, bArr.length) != -1);
                        inputStream.close();
                    }
                    return strictJarFile.getCertificates(zipEntry);
                } catch (IOException e3) {
                    e = e3;
                    inputStream = null;
                } catch (RuntimeException e4) {
                    e = e4;
                    inputStream = null;
                }
            }
        } catch (IOException unused) {
        }
        return null;
    }

    public final void updateRestrictedTargetPackages() {
        HashMap hashMap = new HashMap();
        HashMap hashMap2 = (HashMap) this.mASKSStates.clone();
        for (Map.Entry entry : hashMap2.entrySet()) {
            ASKSState aSKSState = (ASKSState) hashMap2.get(entry.getKey());
            if (aSKSState.getRestrict() != null) {
                hashMap.put((String) entry.getKey(), aSKSState.getRestrict().getType());
            } else if (aSKSState.getEMMode() != -1) {
                hashMap.put((String) entry.getKey(), "DENY");
            }
        }
        ASKSManager.updateRestrictedTargetPackages(hashMap);
    }

    public final boolean updateRestrictRule(ASKSSession aSKSSession) {
        HashMap hashMap = new HashMap();
        getRestrictDataFromXML(hashMap, aSKSSession);
        if (hashMap.isEmpty()) {
            Log.d("AASA_ASKSManager_RESTRICTED", "There is no restricted rule.");
        }
        HashMap hashMap2 = this.mASKSStates;
        boolean z = false;
        if (hashMap2 != null && !hashMap2.isEmpty()) {
            for (Map.Entry entry : this.mASKSStates.entrySet()) {
                String str = (String) entry.getKey();
                ASKSState aSKSState = (ASKSState) entry.getValue();
                if (hashMap.containsKey(str)) {
                    Restrict restrict = aSKSState.getRestrict();
                    Restrict restrict2 = (Restrict) hashMap.get(str);
                    Slog.d("AASA_ASKSManager_RESTRICTED", "updateRestrictRule() : new restricted rule exists.");
                    if (restrict != null && "Token".equals(restrict.getFrom())) {
                        Slog.d("AASA_ASKSManager_RESTRICTED", "updateRestictRule() : current restricted rule(" + str + ") is from Token. Skipped.");
                    } else if (restrict == null || ("Policy".equals(restrict.getFrom()) && Integer.parseInt(restrict2.getVersion()) > Integer.parseInt(restrict.getVersion()))) {
                        aSKSState.setRestrict(restrict2);
                        Slog.d("AASA_ASKSManager_RESTRICTED", "updateRestrictRule() : update restricted rule for " + ((String) entry.getKey()));
                        z = true;
                    }
                } else {
                    Slog.d("AASA_ASKSManager_RESTRICTED", "updateRestrictRule() : new restricted rule doesn't exists.");
                    if (aSKSState.getRestrict() != null && "Policy".equals(aSKSState.getRestrict().getFrom())) {
                        aSKSState.setRestrict(null);
                        Slog.d("AASA_ASKSManager_RESTRICTED", "updateRestrictRule() : remove restricted rule for " + ((String) entry.getKey()));
                        z = true;
                    } else if (aSKSState.getRestrict() != null && "Token".equals(aSKSState.getRestrict().getFrom())) {
                        Slog.d("AASA_ASKSManager_RESTRICTED", "updateRestictRule() : current restricted rule(" + ((String) entry.getKey()) + ") is from Token. not removed.");
                    }
                }
            }
        }
        for (Map.Entry entry2 : hashMap.entrySet()) {
            HashMap hashMap3 = this.mASKSStates;
            if (hashMap3 == null || !hashMap3.containsKey(entry2.getKey())) {
                Slog.d("AASA_ASKSManager_RESTRICTED", "updateRestrictRule() : new restricted rule for " + ((String) entry2.getKey()));
                ASKSState aSKSState2 = new ASKSState();
                aSKSState2.setRestrict((Restrict) entry2.getValue());
                this.mASKSStates.put((String) entry2.getKey(), aSKSState2);
                z = true;
            }
        }
        return z;
    }

    /* JADX WARN: Removed duplicated region for block: B:32:0x00dc A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:45:0x00d2 A[SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final void getRestrictDataFromXML(java.util.HashMap r18, com.android.server.asks.ASKSManagerService.ASKSSession r19) {
        /*
            Method dump skipped, instructions count: 288
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.server.asks.ASKSManagerService.getRestrictDataFromXML(java.util.HashMap, com.android.server.asks.ASKSManagerService$ASKSSession):void");
    }

    public final void readRestrict(XmlPullParser xmlPullParser, String str) {
        ASKSState aSKSState = (ASKSState) this.mASKSStates.get(str);
        if (aSKSState != null) {
            Restrict restrict = new Restrict();
            readRestrictRule(xmlPullParser, restrict, null);
            aSKSState.setRestrict(restrict);
        }
    }

    public final void readRestrictRule(XmlPullParser xmlPullParser, Restrict restrict, String str) {
        String from;
        ArrayList arrayList = null;
        String attributeValue = xmlPullParser.getAttributeValue(null, "type");
        String attributeValue2 = xmlPullParser.getAttributeValue(null, "datelimit");
        if (str == null) {
            str = xmlPullParser.getAttributeValue(null, "version");
        }
        if (restrict.getFrom() == null) {
            from = xmlPullParser.getAttributeValue(null, "from");
        } else {
            from = restrict.getFrom();
        }
        if (((attributeValue == null) || (str == null)) || attributeValue2 == null || from == null) {
            return;
        }
        if ("REVOKE".equals(attributeValue)) {
            arrayList = new ArrayList();
            readRestrictPermissions(xmlPullParser, arrayList);
        }
        restrict.setVersion(str);
        restrict.setType(attributeValue);
        restrict.setDateLimit(attributeValue2);
        restrict.setFrom(from);
        restrict.setPermissionList(arrayList);
    }

    public final void readRestrictPermissions(XmlPullParser xmlPullParser, ArrayList arrayList) {
        int depth = xmlPullParser.getDepth();
        while (true) {
            int next = xmlPullParser.next();
            if (next == 1 || (next == 3 && xmlPullParser.getDepth() <= depth)) {
                break;
            }
            if (next != 3 && next != 4 && "permission".equalsIgnoreCase(xmlPullParser.getName()) && xmlPullParser.getAttributeValue(null, "value") != null) {
                arrayList.add(xmlPullParser.getAttributeValue(null, "value"));
            }
        }
        arrayList.size();
    }

    /* JADX WARN: Removed duplicated region for block: B:92:0x00f8 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:95:0x0073 A[SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final void getADPDataFromXML(java.util.HashMap r11) {
        /*
            Method dump skipped, instructions count: 428
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.server.asks.ASKSManagerService.getADPDataFromXML(java.util.HashMap):void");
    }

    public final void readEMMode(XmlPullParser xmlPullParser, String str) {
        ASKSState aSKSState = (ASKSState) this.mASKSStates.get(str);
        if (aSKSState != null) {
            aSKSState.setEMMode(Integer.decode(xmlPullParser.getAttributeValue(null, "value")).intValue());
        }
    }

    public final void readDeletable(XmlPullParser xmlPullParser, String str) {
        ASKSState aSKSState = (ASKSState) this.mASKSStates.get(str);
        if (aSKSState != null) {
            String attributeValue = xmlPullParser.getAttributeValue(null, "version");
            String attributeValue2 = xmlPullParser.getAttributeValue(null, "datelimit");
            if (attributeValue == null || attributeValue2 == null) {
                return;
            }
            aSKSState.setDeletable(new Deletable(attributeValue, attributeValue2));
        }
    }

    public final void readyForBooting(Context context) {
        String[] trustedFile;
        Slog.d("AASA_ASKSManager_SECURETIME", "readyForBooting : ");
        if (context == null) {
            Slog.d("AASA_ASKSManager_SECURETIME", "context is null. ");
            return;
        }
        int checkNetworkConnection = checkNetworkConnection(context);
        if (isAutoTimeEnabled(context) && checkNetworkConnection > 0) {
            setTrustedFile(0, System.currentTimeMillis(), SystemClock.elapsedRealtime());
        } else if (hasTrustedTime() && (trustedFile = getTrustedFile()) != null && trustedFile.length == 3) {
            int parseInt = Integer.parseInt(trustedFile[0]);
            setTrustedFile(parseInt < 2 ? 2 : parseInt, Long.parseLong(trustedFile[1]), SystemClock.elapsedRealtime());
        }
    }

    public final int checkNetworkConnection(Context context) {
        Slog.d("AASA_ASKSManager_SECURETIME", "checkNetworkConnection : ");
        if (context == null) {
            Slog.d("AASA_ASKSManager_SECURETIME", "context is null. ");
            return this.TYPE_NOT_CONNECTED;
        }
        NetworkInfo activeNetworkInfo = ((ConnectivityManager) context.getSystemService("connectivity")).getActiveNetworkInfo();
        if (activeNetworkInfo != null) {
            if (activeNetworkInfo.getType() == 1) {
                return this.TYPE_WIFI;
            }
            if (activeNetworkInfo.getType() == 0) {
                return this.TYPE_MOBILE;
            }
        }
        return this.TYPE_NOT_CONNECTED;
    }

    public final boolean isAutoTimeEnabled(Context context) {
        Slog.d("AASA_ASKSManager_SECURETIME", "isAutoTimeEnabled : ");
        boolean z = false;
        if (context == null) {
            Slog.d("AASA_ASKSManager_SECURETIME", "context is null. ");
            return false;
        }
        try {
            if (Settings.Global.getInt(context.getContentResolver(), "auto_time") == 1) {
                Slog.d("AASA_ASKSManager_SECURETIME", "isAutoTimeEnabled : ON");
                z = true;
            } else {
                Slog.d("AASA_ASKSManager_SECURETIME", "isAutoTimeEnabled : OFF");
            }
        } catch (Settings.SettingNotFoundException e) {
            e.printStackTrace();
        }
        return z;
    }

    public void setTrustTimebyStatusChanged() {
        String[] trustedFile;
        Slog.d("AASA_ASKSManager_SECURETIME", "setTrustTimebyStatusChanged : ");
        if (this.mContext == null) {
            Slog.d("AASA_ASKSManager_SECURETIME", "mContext is null. ");
            return;
        }
        if (hasTrustedTime() && (trustedFile = getTrustedFile()) != null && trustedFile.length == 3 && trustedFile[0].equals("0")) {
            updateTrustedFile();
            return;
        }
        int checkNetworkConnection = checkNetworkConnection(this.mContext);
        if (isAutoTimeEnabled(this.mContext) && checkNetworkConnection > 0) {
            setTrustedFile(0, System.currentTimeMillis(), SystemClock.elapsedRealtime());
        } else {
            updateTrustedFile();
        }
    }

    public final void updateTrustedFile() {
        String[] trustedFile;
        Slog.d("AASA_ASKSManager_SECURETIME", "updateTrustedFile : ");
        if (hasTrustedTime() && (trustedFile = getTrustedFile()) != null && trustedFile.length == 3) {
            int parseInt = Integer.parseInt(trustedFile[0]);
            long parseLong = Long.parseLong(trustedFile[1]);
            long parseLong2 = Long.parseLong(trustedFile[2]);
            long elapsedRealtime = SystemClock.elapsedRealtime();
            setTrustedFile(parseInt, (parseLong - parseLong2) + elapsedRealtime, elapsedRealtime);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:17:0x006a  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final void setTrustedFile(int r5, long r6, long r8) {
        /*
            r4 = this;
            java.lang.String r0 = ","
            java.lang.String r1 = "setTrustedFile : "
            java.lang.String r2 = "AASA_ASKSManager_SECURETIME"
            android.util.Slog.d(r2, r1)
            java.lang.String r1 = "security.ASKS.time_value"
            java.lang.String r4 = r4.convertMillsToString(r6)
            android.os.SystemProperties.set(r1, r4)
            r4 = 0
            java.io.PrintWriter r1 = new java.io.PrintWriter     // Catch: java.lang.Throwable -> L45 java.io.IOException -> L49
            java.lang.String r3 = "/data/system/.aasa/trustedTime"
            r1.<init>(r3)     // Catch: java.lang.Throwable -> L45 java.io.IOException -> L49
            java.lang.StringBuilder r4 = new java.lang.StringBuilder     // Catch: java.io.IOException -> L43 java.lang.Throwable -> L67
            r4.<init>()     // Catch: java.io.IOException -> L43 java.lang.Throwable -> L67
            java.lang.String r3 = ""
            r4.append(r3)     // Catch: java.io.IOException -> L43 java.lang.Throwable -> L67
            r4.append(r5)     // Catch: java.io.IOException -> L43 java.lang.Throwable -> L67
            r4.append(r0)     // Catch: java.io.IOException -> L43 java.lang.Throwable -> L67
            r4.append(r6)     // Catch: java.io.IOException -> L43 java.lang.Throwable -> L67
            r4.append(r0)     // Catch: java.io.IOException -> L43 java.lang.Throwable -> L67
            r4.append(r8)     // Catch: java.io.IOException -> L43 java.lang.Throwable -> L67
            java.lang.String r4 = r4.toString()     // Catch: java.io.IOException -> L43 java.lang.Throwable -> L67
            r1.println(r4)     // Catch: java.io.IOException -> L43 java.lang.Throwable -> L67
            r1.flush()     // Catch: java.io.IOException -> L43 java.lang.Throwable -> L67
            r1.close()     // Catch: java.io.IOException -> L43 java.lang.Throwable -> L67
            goto L63
        L43:
            r4 = move-exception
            goto L4c
        L45:
            r5 = move-exception
            r1 = r4
            r4 = r5
            goto L68
        L49:
            r5 = move-exception
            r1 = r4
            r4 = r5
        L4c:
            java.lang.StringBuilder r5 = new java.lang.StringBuilder     // Catch: java.lang.Throwable -> L67
            r5.<init>()     // Catch: java.lang.Throwable -> L67
            java.lang.String r6 = "setTrustedTime() "
            r5.append(r6)     // Catch: java.lang.Throwable -> L67
            r5.append(r4)     // Catch: java.lang.Throwable -> L67
            java.lang.String r4 = r5.toString()     // Catch: java.lang.Throwable -> L67
            android.util.Slog.d(r2, r4)     // Catch: java.lang.Throwable -> L67
            if (r1 == 0) goto L66
        L63:
            r1.close()
        L66:
            return
        L67:
            r4 = move-exception
        L68:
            if (r1 == 0) goto L6d
            r1.close()
        L6d:
            throw r4
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.server.asks.ASKSManagerService.setTrustedFile(int, long, long):void");
    }

    public final boolean hasTrustedTime() {
        return new File("/data/system/.aasa/trustedTime").exists();
    }

    /* JADX WARN: Code restructure failed: missing block: B:32:0x0038, code lost:
    
        if (r2 == null) goto L72;
     */
    /* JADX WARN: Not initialized variable reg: 2, insn: 0x0043: MOVE (r0 I:??[OBJECT, ARRAY]) = (r2 I:??[OBJECT, ARRAY]), block:B:35:0x0043 */
    /* JADX WARN: Removed duplicated region for block: B:38:0x0046 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final java.lang.String[] getTrustedFile() {
        /*
            r6 = this;
            java.lang.String r6 = "AASA_ASKSManager_SECURETIME"
            java.lang.String r0 = "getTrustedFile : "
            android.util.Slog.d(r6, r0)
            r6 = 3
            r0 = 0
            java.io.FileReader r1 = new java.io.FileReader     // Catch: java.lang.Throwable -> L30 java.io.IOException -> L32
            java.lang.String r2 = "/data/system/.aasa/trustedTime"
            r1.<init>(r2)     // Catch: java.lang.Throwable -> L30 java.io.IOException -> L32
            java.io.BufferedReader r2 = new java.io.BufferedReader     // Catch: java.lang.Throwable -> L30 java.io.IOException -> L32
            r2.<init>(r1)     // Catch: java.lang.Throwable -> L30 java.io.IOException -> L32
            r3 = r0
        L16:
            java.lang.String r4 = r2.readLine()     // Catch: java.io.IOException -> L2e java.lang.Throwable -> L42
            if (r4 == 0) goto L27
            java.lang.String r5 = ","
            java.lang.String[] r3 = r4.split(r5)     // Catch: java.io.IOException -> L2e java.lang.Throwable -> L42
            if (r3 == 0) goto L16
            int r4 = r3.length     // Catch: java.io.IOException -> L2e java.lang.Throwable -> L42
            if (r4 != r6) goto L16
        L27:
            r1.close()     // Catch: java.io.IOException -> L2e java.lang.Throwable -> L42
        L2a:
            r2.close()     // Catch: java.io.IOException -> L3b
            goto L3b
        L2e:
            r1 = move-exception
            goto L35
        L30:
            r6 = move-exception
            goto L44
        L32:
            r1 = move-exception
            r2 = r0
            r3 = r2
        L35:
            r1.printStackTrace()     // Catch: java.lang.Throwable -> L42
            if (r2 == 0) goto L3b
            goto L2a
        L3b:
            if (r3 == 0) goto L41
            int r1 = r3.length
            if (r1 != r6) goto L41
            return r3
        L41:
            return r0
        L42:
            r6 = move-exception
            r0 = r2
        L44:
            if (r0 == 0) goto L49
            r0.close()     // Catch: java.io.IOException -> L49
        L49:
            throw r6
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.server.asks.ASKSManagerService.getTrustedFile():java.lang.String[]");
    }

    public final void setTrustTimeByToken(String str) {
        setTrustedFile(3, convertStringToMills(str), SystemClock.elapsedRealtime());
    }

    public final String getTrustedToday() {
        String str = SystemProperties.get("security.ASKS.time_value", "00000000");
        return (str == null || str.equals("00000000")) ? getTrustedTodayInner() : str;
    }

    public final String getTrustedTodayInner() {
        if (!hasTrustedTime()) {
            return convertMillsToString(System.currentTimeMillis());
        }
        String[] trustedFile = getTrustedFile();
        if (trustedFile == null || trustedFile.length != 3) {
            return convertMillsToString(System.currentTimeMillis());
        }
        String convertMillsToString = convertMillsToString((Long.parseLong(trustedFile[1]) - Long.parseLong(trustedFile[2])) + SystemClock.elapsedRealtime());
        Slog.d("AASA_ASKSManager_SECURETIME", "getElapsedToday : " + convertMillsToString);
        return convertMillsToString;
    }

    public final void setExpirationDate() {
        long j = SystemProperties.getLong("ro.build.date.utc", -1L) * 1000;
        if (j < 0) {
            SystemProperties.set("security.ASKS.expiration_date", Long.toString(j));
            return;
        }
        Date date = new Date(j);
        Calendar calendar = Calendar.getInstance();
        calendar.setTime(date);
        calendar.add(5, 3);
        SystemProperties.set("security.ASKS.expiration_date", new SimpleDateFormat("yyyyMMdd").format(calendar.getTime()));
    }

    public final void setSamsungAnalyticsLog(String str, String str2, String str3) {
        try {
            File file = new File("/data/system/.aasa/SamsungAnalyticsLog");
            if (file.length() <= 500000) {
                FastPrintWriter fastPrintWriter = new FastPrintWriter(new FileOutputStream(file, true));
                fastPrintWriter.println(str + "," + str2 + "," + str3);
                fastPrintWriter.close();
            } else {
                FastPrintWriter fastPrintWriter2 = new FastPrintWriter(new FileOutputStream(file, false));
                fastPrintWriter2.println(str + "," + str2 + "," + str3);
                fastPrintWriter2.close();
            }
        } catch (IOException e) {
            Slog.i("AASA_ASKSManager", "setSamsungAnalyticsLog " + e);
        }
    }

    public final String convertMillsToString(long j) {
        SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyyMMdd");
        Calendar calendar = Calendar.getInstance();
        calendar.setTimeInMillis(j);
        return simpleDateFormat.format(calendar.getTime());
    }

    public final long convertStringToMills(String str) {
        try {
            return new SimpleDateFormat("yyyyMMdd").parse(str).getTime();
        } catch (ParseException e) {
            e.printStackTrace();
            return -1L;
        }
    }

    public final void readPackage(XmlPullParser xmlPullParser) {
        String attributeValue = xmlPullParser.getAttributeValue(null, "name");
        this.mASKSStates.put(attributeValue, new ASKSState());
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
                String name = xmlPullParser.getName();
                if (name.equals("restrict")) {
                    readRestrict(xmlPullParser, attributeValue);
                } else if (name.equals("emmode")) {
                    readEMMode(xmlPullParser, attributeValue);
                } else if (name.equals("delete")) {
                    readDeletable(xmlPullParser, attributeValue);
                } else {
                    Slog.w("ASKSManager", "Unknown element under <pkg>: " + xmlPullParser.getName());
                    com.android.internal.util.XmlUtils.skipCurrentTag(xmlPullParser);
                }
            }
        }
    }

    public final void readState() {
        readStateInner();
    }

    /* JADX WARN: Code restructure failed: missing block: B:45:0x0082, code lost:
    
        r1.close();
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final void readStateInner() {
        /*
            Method dump skipped, instructions count: 379
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.server.asks.ASKSManagerService.readStateInner():void");
    }

    public final void writeState() {
        writeStateInner();
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r1v11, types: [java.lang.String] */
    /* JADX WARN: Type inference failed for: r1v8, types: [java.lang.Throwable, java.io.IOException] */
    public final void writeStateInner() {
        synchronized (this.mFile) {
            FileOutputStream fileOutputStream = null;
            fileOutputStream = null;
            try {
                try {
                    FileOutputStream startWrite = this.mFile.startWrite();
                    try {
                        try {
                            HashMap hashMap = (HashMap) this.mASKSStates.clone();
                            try {
                                FastXmlSerializer fastXmlSerializer = new FastXmlSerializer();
                                fastXmlSerializer.setOutput(startWrite, StandardCharsets.UTF_8.name());
                                fastXmlSerializer.startDocument(null, Boolean.TRUE);
                                fastXmlSerializer.startTag(null, "asks");
                                fastXmlSerializer.attribute(null, "version", mASKSPolicyVersion);
                                for (String str : hashMap.keySet()) {
                                    ASKSState aSKSState = (ASKSState) hashMap.get(str);
                                    if (aSKSState != null && aSKSState.hasValue()) {
                                        fastXmlSerializer.startTag(null, "package");
                                        fastXmlSerializer.attribute(null, "name", str);
                                        if (aSKSState.getRestrict() != null) {
                                            Restrict restrict = aSKSState.getRestrict();
                                            fastXmlSerializer.startTag(null, "restrict");
                                            fastXmlSerializer.attribute(null, "version", restrict.getVersion());
                                            fastXmlSerializer.attribute(null, "type", restrict.getType());
                                            fastXmlSerializer.attribute(null, "datelimit", restrict.getDateLimit());
                                            fastXmlSerializer.attribute(null, "from", restrict.getFrom());
                                            if ("REVOKE".equals(restrict.getType())) {
                                                Iterator it = restrict.getPermissionList().iterator();
                                                while (it.hasNext()) {
                                                    String str2 = (String) it.next();
                                                    fastXmlSerializer.startTag(null, "permission");
                                                    fastXmlSerializer.attribute(null, "value", str2);
                                                    fastXmlSerializer.endTag(null, "permission");
                                                }
                                            }
                                            fastXmlSerializer.endTag(null, "restrict");
                                        }
                                        if (aSKSState.getEMMode() != -1) {
                                            String hexString = Integer.toHexString(aSKSState.getEMMode());
                                            fastXmlSerializer.startTag(null, "emmode");
                                            fastXmlSerializer.attribute(null, "value", "0x" + hexString);
                                            fastXmlSerializer.endTag(null, "emmode");
                                        }
                                        if (aSKSState.getDeletable() != null) {
                                            Deletable deletable = aSKSState.getDeletable();
                                            fastXmlSerializer.startTag(null, "delete");
                                            fastXmlSerializer.attribute(null, "version", deletable.getVersion());
                                            fastXmlSerializer.attribute(null, "datelimit", deletable.getDateLimit());
                                            fastXmlSerializer.endTag(null, "delete");
                                        }
                                        fastXmlSerializer.endTag(null, "package");
                                    }
                                }
                                fastXmlSerializer.endTag(null, "asks");
                                fastXmlSerializer.endDocument();
                                this.mFile.finishWrite(startWrite);
                                SystemProperties.set("security.ASKS.policy_version", mASKSPolicyVersion);
                                fileOutputStream = "security.ASKS.policy_version";
                            } catch (IOException e) {
                                Slog.w("AASA_ASKSManager", "Failed to write state, restoring backup", (Throwable) e);
                                this.mFile.failWrite(startWrite);
                                fileOutputStream = e;
                            }
                            if (startWrite != null) {
                                try {
                                    startWrite.close();
                                } catch (IOException e2) {
                                    e = e2;
                                    e.printStackTrace();
                                }
                            }
                        } catch (Throwable th) {
                            th = th;
                            fileOutputStream = startWrite;
                            if (fileOutputStream != null) {
                                try {
                                    fileOutputStream.close();
                                } catch (IOException e3) {
                                    e3.printStackTrace();
                                }
                            }
                            throw th;
                        }
                    } catch (IOException e4) {
                        e = e4;
                        fileOutputStream = startWrite;
                        Slog.w("AASA_ASKSManager", "Failed to write state: " + e);
                        if (fileOutputStream != null) {
                            try {
                                fileOutputStream.close();
                            } catch (IOException e5) {
                                e = e5;
                                e.printStackTrace();
                            }
                        }
                    }
                } catch (IOException e6) {
                    e = e6;
                }
            } catch (Throwable th2) {
                th = th2;
            }
        }
    }

    public final ASKSSession openSession(String str) {
        if (this.mSessions.containsKey(str)) {
            ASKSSession aSKSSession = (ASKSSession) this.mSessions.get(str);
            aSKSSession.clear();
            aSKSSession.setPackageName(str);
            return aSKSSession;
        }
        ASKSSession aSKSSession2 = new ASKSSession();
        aSKSSession2.setPackageName(str);
        this.mSessions.put(str, aSKSSession2);
        return aSKSSession2;
    }

    public final void closeSession(ASKSSession aSKSSession, String str) {
        if (aSKSSession != null) {
            aSKSSession.clear();
        }
        if (this.mSessions.containsKey(str)) {
            this.mSessions.remove(str);
        }
    }

    public final void updateASKSNotification() {
        NotificationManager notificationManager = (NotificationManager) this.mContext.getSystemService("notification");
        if (notificationManager == null) {
            return;
        }
        notificationManager.notifyAsUser(null, 1, new Notification.Builder(this.mContext, SystemNotificationChannels.ASKS).setSmallIcon(R.drawable.blank_tile).setWhen(0L).setOngoing(true).setContentTitle("This is non-product binary").setVisibility(1).setContentText("This binary can be used until [" + SystemProperties.get("security.ASKS.expiration_date") + "]").build(), UserHandle.ALL);
    }

    /* loaded from: classes.dex */
    public final class ASKSState {
        public Deletable deletable;
        public int emMode;
        public Restrict restrict;
        public int uid;

        public ASKSState() {
            this.uid = -1;
            this.restrict = null;
            this.emMode = -1;
            this.deletable = null;
        }

        public ASKSState(ASKSSession aSKSSession) {
            this.uid = -1;
            this.restrict = null;
            this.emMode = -1;
            this.deletable = null;
            this.restrict = aSKSSession.getRestrict();
            this.emMode = aSKSSession.getEMMode();
            this.deletable = aSKSSession.getDeletable();
        }

        public void setRestrict(Restrict restrict) {
            this.restrict = restrict;
        }

        public void setEMMode(int i) {
            this.emMode = i;
        }

        public void setDeletable(Deletable deletable) {
            this.deletable = deletable;
        }

        public Restrict getRestrict() {
            return this.restrict;
        }

        public int getEMMode() {
            return this.emMode;
        }

        public Deletable getDeletable() {
            return this.deletable;
        }

        public boolean hasValue() {
            return (this.restrict == null && this.emMode == -1 && this.deletable == null) ? false : true;
        }

        public String toString() {
            StringBuffer stringBuffer = new StringBuffer();
            stringBuffer.append("ASKSState info {");
            if (this.restrict != null) {
                stringBuffer.append("restrict = ");
                stringBuffer.append(this.restrict.toString());
            }
            if (this.emMode != -1) {
                stringBuffer.append(" emmode = ");
                stringBuffer.append(String.valueOf(this.emMode));
            }
            if (this.deletable != null) {
                stringBuffer.append(" deletable = ");
                stringBuffer.append(this.deletable.toString());
            }
            stringBuffer.append("}");
            return stringBuffer.toString();
        }
    }

    /* loaded from: classes.dex */
    public final class ASKSSession {
        public String mPackageName = null;
        public String mVersion = null;
        public String mPackageNameHash = "";
        public String mPackageDigest = "";
        public String mCodePath = "";
        public String mTokenName = "";
        public String mCertName = "";
        public String mCAKeyIndex = "";
        public Signature[] mSignature = null;
        public boolean isASKSTarget = false;
        public Restrict mRestrict = null;
        public int emMode = -1;
        public Deletable mDeletable = null;
        public RUFSContainer mRufsContainer = null;

        public void setPackageName(String str) {
            this.mPackageName = str;
        }

        public void setVersion(String str) {
            this.mVersion = str;
        }

        public void setPkgNameHash(String str) {
            this.mPackageNameHash = str;
        }

        public void setPkgDigest(String str) {
            this.mPackageDigest = str;
        }

        public void setCodePath(String str) {
            this.mCodePath = str;
        }

        public void setTokenName(String str) {
            this.mTokenName = str;
        }

        public void setCertName(String str) {
            this.mCertName = str;
        }

        public void setCAKeyIndex(String str) {
            this.mCAKeyIndex = str;
        }

        public void setSignature(Signature[] signatureArr) {
            this.mSignature = (Signature[]) signatureArr.clone();
        }

        public void setASKSTarget(boolean z) {
            this.isASKSTarget = z;
        }

        public void setRestrict(Restrict restrict) {
            this.mRestrict = restrict;
        }

        public void setEMMode(int i) {
            this.emMode = i;
        }

        public void setDeletable(Deletable deletable) {
            this.mDeletable = deletable;
        }

        public void setRufsContainer(RUFSContainer rUFSContainer) {
            this.mRufsContainer = rUFSContainer;
        }

        public String getPackageName() {
            return this.mPackageName;
        }

        public String getPkgNameHash() {
            return this.mPackageNameHash;
        }

        public String getPkgDigest() {
            return this.mPackageDigest;
        }

        public String getCodePath() {
            return this.mCodePath;
        }

        public String getTokenName() {
            return this.mTokenName;
        }

        public String getCertName() {
            return this.mCertName;
        }

        public String getCAKeyIndex() {
            return this.mCAKeyIndex;
        }

        public Signature[] getSignature() {
            return this.mSignature;
        }

        public boolean isASKSTarget() {
            return this.isASKSTarget;
        }

        public Restrict getRestrict() {
            return this.mRestrict;
        }

        public int getEMMode() {
            return this.emMode;
        }

        public Deletable getDeletable() {
            return this.mDeletable;
        }

        public RUFSContainer getRufsContainer() {
            return this.mRufsContainer;
        }

        public void clear() {
            this.mPackageName = null;
            this.mVersion = null;
            this.mPackageNameHash = "";
            this.mPackageDigest = "";
            this.mCodePath = "";
            this.mTokenName = "";
            this.mCertName = "";
            this.mCAKeyIndex = "";
            this.mSignature = null;
            this.isASKSTarget = false;
            this.mRestrict = null;
            this.emMode = -1;
            this.mDeletable = null;
            this.mRufsContainer = null;
        }

        public boolean hasValue() {
            return (this.mRestrict == null && this.emMode == -1 && this.mDeletable == null) ? false : true;
        }

        public String toString() {
            StringBuilder sb = new StringBuilder();
            sb.append("version = ");
            sb.append(this.mVersion);
            if (this.mRestrict != null) {
                sb.append(", restrict = ");
                sb.append(this.mRestrict.toString());
            }
            sb.append(", em mode = ");
            sb.append(String.valueOf(this.emMode));
            if (this.mDeletable != null) {
                sb.append(", deletable = ");
                sb.append(this.mDeletable.toString());
            }
            return sb.toString();
        }
    }

    /* loaded from: classes.dex */
    public final class Restrict {
        public String mDatelimit;
        public String mFrom;
        public ArrayList mPermissionList;
        public String mType;
        public String mVersion;

        public Restrict() {
            this.mFrom = null;
        }

        public Restrict(String str, String str2, String str3, String str4, ArrayList arrayList) {
            this.mVersion = str;
            this.mType = str2;
            this.mDatelimit = str3;
            this.mFrom = str4;
            this.mPermissionList = arrayList;
        }

        public void setVersion(String str) {
            this.mVersion = str;
        }

        public void setType(String str) {
            this.mType = str;
        }

        public void setDateLimit(String str) {
            this.mDatelimit = str;
        }

        public void setFrom(String str) {
            this.mFrom = str;
        }

        public void setPermissionList(ArrayList arrayList) {
            this.mPermissionList = arrayList;
        }

        public String getVersion() {
            return this.mVersion;
        }

        public String getType() {
            return this.mType;
        }

        public String getDateLimit() {
            return this.mDatelimit;
        }

        public String getFrom() {
            return this.mFrom;
        }

        public ArrayList getPermissionList() {
            return this.mPermissionList;
        }

        public String toString() {
            StringBuilder sb = new StringBuilder();
            sb.append("version = ");
            sb.append(this.mVersion);
            sb.append(", type = ");
            sb.append(this.mType);
            sb.append(", datelimit = ");
            sb.append(this.mDatelimit);
            sb.append(", from = ");
            sb.append(this.mFrom);
            if ("REVOKE".equals(this.mType)) {
                sb.append(", pm = ");
                for (int i = 0; i < this.mPermissionList.size(); i++) {
                    sb.append((String) this.mPermissionList.get(i));
                    sb.append("|");
                }
            }
            return sb.toString();
        }
    }

    /* loaded from: classes.dex */
    public final class Deletable {
        public String mDatelimit;
        public String mVersion;

        public Deletable() {
        }

        public Deletable(String str, String str2) {
            this.mVersion = str;
            this.mDatelimit = str2;
        }

        public void setVersion(String str) {
            this.mVersion = str;
        }

        public void setDateLimit(String str) {
            this.mDatelimit = str;
        }

        public String getVersion() {
            return this.mVersion;
        }

        public String getDateLimit() {
            return this.mDatelimit;
        }

        public String toString() {
            return "version = " + this.mVersion + ", datelimit = " + this.mDatelimit;
        }
    }
}
