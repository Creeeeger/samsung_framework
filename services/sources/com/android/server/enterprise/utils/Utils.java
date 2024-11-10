package com.android.server.enterprise.utils;

import android.app.ActivityManager;
import android.app.AppGlobals;
import android.content.ContentValues;
import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.content.pm.IPackageManager;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.pm.Signature;
import android.content.pm.UserInfo;
import android.os.Binder;
import android.os.Process;
import android.os.RemoteException;
import android.os.UserHandle;
import android.os.UserManager;
import android.text.TextUtils;
import android.util.Base64;
import android.util.Log;
import com.android.server.enterprise.EnterpriseDeviceManagerService;
import com.android.server.enterprise.adapter.AdapterRegistry;
import com.android.server.enterprise.adapter.IPersonaManagerAdapter;
import com.android.server.enterprise.adapterlayer.PackageManagerAdapter;
import com.android.server.enterprise.storage.EdmStorageProvider;
import com.samsung.android.desktopmode.SemDesktopModeManager;
import com.samsung.android.feature.SemFloatingFeature;
import com.samsung.android.knox.ContextInfo;
import com.samsung.android.knox.custom.KnoxCustomManagerService;
import java.io.BufferedReader;
import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileReader;
import java.io.IOException;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.security.MessageDigest;
import java.security.PublicKey;
import java.security.cert.Certificate;
import java.security.cert.CertificateFactory;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.zip.GZIPInputStream;

/* loaded from: classes2.dex */
public abstract class Utils {
    public static final char[] HEX_DIGITS = {'0', '1', '2', '3', '4', '5', '6', '7', '8', '9', 'a', 'b', 'c', 'd', 'e', 'f'};
    public static String[] standardPermissions = {"com.samsung.android.knox.permission.KNOX_APN", "com.samsung.android.knox.permission.KNOX_INVENTORY", "com.samsung.android.knox.permission.KNOX_APP_MGMT", "com.samsung.android.knox.permission.KNOX_KIOSK_MODE", "com.samsung.android.knox.permission.KNOX_BLUETOOTH", "com.samsung.android.knox.permission.KNOX_LDAP", "com.samsung.android.knox.permission.KNOX_BLUETOOTH_SECUREMODE", "com.samsung.android.knox.permission.KNOX_LOCATION", "com.samsung.android.knox.permission.KNOX_BROWSER_PROXY", "com.samsung.android.knox.permission.KNOX_LOCKSCREEN", "com.samsung.android.knox.permission.KNOX_BROWSER_SETTINGS", "com.samsung.android.knox.permission.KNOX_MULTI_USER_MGMT", "com.samsung.android.knox.permission.KNOX_CERT_PROVISIONING", "com.samsung.android.knox.permission.KNOX_PHONE_RESTRICTION", "com.samsung.android.knox.permission.KNOX_CLIPBOARD", "com.samsung.android.knox.permission.KNOX_DATE_TIME", "com.samsung.android.knox.permission.KNOX_REMOTE_CONTROL", KnoxCustomManagerService.KNOX_DEX_PERMISSION, "com.samsung.android.knox.permission.KNOX_RESTRICTION_MGMT", "com.samsung.android.knox.permission.KNOX_EMAIL", "com.samsung.android.knox.permission.KNOX_ROAMING", "com.samsung.android.knox.permission.KNOX_ENTERPRISE_DEVICE_ADMIN", "com.samsung.android.knox.permission.KNOX_SECURITY", "com.samsung.android.knox.permission.KNOX_EXCHANGE", "com.samsung.android.knox.permission.KNOX_SENSITIVE_DATA_PROTECTION", "com.samsung.android.knox.permission.KNOX_FIREWALL", "com.samsung.android.knox.permission.KNOX_SPDCONTROL", "com.samsung.android.knox.permission.KNOX_GEOFENCING", "com.samsung.android.knox.permission.KNOX_VPN", "com.samsung.android.knox.permission.KNOX_GLOBALPROXY", "com.samsung.android.knox.permission.KNOX_WIFI", "com.samsung.android.knox.permission.KNOX_HW_CONTROL", "com.samsung.android.knox.permission.KNOX_ENHANCED_ATTESTATION"};
    public static String[] premiumPermissions = {"com.samsung.android.knox.permission.KNOX_ADVANCED_APP_MGMT", "com.samsung.android.knox.permission.KNOX_DLP_MGMT", "com.samsung.android.knox.permission.KNOX_ADVANCED_RESTRICTION", "com.samsung.android.knox.permission.KNOX_EBILLING", "com.samsung.android.knox.permission.KNOX_ADVANCED_SECURITY", "com.samsung.android.knox.permission.KNOX_NPA", "com.samsung.android.knox.permission.KNOX_AUDIT_LOG", "com.samsung.android.knox.permission.KNOX_SEAMS_MGMT", "com.samsung.android.knox.permission.KNOX_CCM_KEYSTORE", "com.samsung.android.knox.permission.KNOX_TIMA_KEYSTORE", "com.samsung.android.knox.permission.KNOX_CERTIFICATE", "com.samsung.android.knox.permission.KNOX_TIMA_KEYSTORE_PER_APP", "com.samsung.android.knox.permission.KNOX_CERTIFICATE_ENROLLMENT", "com.samsung.android.knox.permission.KNOX_UCM_MGMT", "com.samsung.android.knox.permission.KNOX_CONTAINER", "com.samsung.android.knox.permission.KNOX_VPN_CONTAINER", "com.samsung.android.knox.permission.KNOX_CONTAINER_RCP", "com.samsung.android.knox.permission.KNOX_VPN_GENERIC", "com.samsung.android.knox.permission.KNOX_MOBILE_THREAT_DEFENSE", "com.samsung.android.knox.permission.KNOX_DEVICE_CONFIGURATION", "com.samsung.android.knox.permission.KNOX_HDM", "com.samsung.android.knox.permission.KNOX_CRITICAL_COMMUNICATIONS"};
    public static String[] customPermissions = {"com.samsung.android.knox.permission.CUSTOM_PROKIOSK", "com.samsung.android.knox.permission.CUSTOM_SETTING", "com.samsung.android.knox.permission.CUSTOM_SYSTEM", KnoxCustomManagerService.KNOX_CUSTOM_DEX_PERMISSION};
    public static String TAG = "EnterpriseUtils";
    public static final int MY_PID = Process.myPid();

    public static String readPropertyValue(String str, String str2) {
        String readLine;
        if (!new File(str2).exists()) {
            Log.d(TAG, "File Not Found : " + str2);
            return null;
        }
        try {
            FileReader fileReader = new FileReader(str2);
            BufferedReader bufferedReader = new BufferedReader(fileReader, 512);
            do {
                try {
                    try {
                        readLine = bufferedReader.readLine();
                        if (readLine == null) {
                            try {
                                fileReader.close();
                                bufferedReader.close();
                            } catch (IOException e) {
                                e.printStackTrace();
                            }
                            return null;
                        }
                    } catch (Exception e2) {
                        e2.printStackTrace();
                        try {
                            fileReader.close();
                            bufferedReader.close();
                        } catch (IOException e3) {
                            e3.printStackTrace();
                        }
                        return null;
                    }
                } catch (Throwable th) {
                    try {
                        fileReader.close();
                        bufferedReader.close();
                    } catch (IOException e4) {
                        e4.printStackTrace();
                    }
                    throw th;
                }
            } while (!readLine.split("=")[0].equals(str));
            String[] split = readLine.split("=");
            String str3 = split.length == 2 ? split[1] : "";
            String str4 = str3.equals("null") ? null : str3;
            try {
                fileReader.close();
                bufferedReader.close();
            } catch (IOException e5) {
                e5.printStackTrace();
            }
            return str4;
        } catch (FileNotFoundException e6) {
            e6.printStackTrace();
            Log.e(TAG, "File access error " + str2);
            return null;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:43:0x00d1 A[Catch: IOException -> 0x00cd, TRY_LEAVE, TryCatch #6 {IOException -> 0x00cd, blocks: (B:53:0x00c9, B:43:0x00d1), top: B:52:0x00c9 }] */
    /* JADX WARN: Removed duplicated region for block: B:49:0x00da  */
    /* JADX WARN: Removed duplicated region for block: B:51:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:52:0x00c9 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:58:0x00e9 A[Catch: IOException -> 0x00e5, TRY_LEAVE, TryCatch #2 {IOException -> 0x00e5, blocks: (B:68:0x00e1, B:58:0x00e9), top: B:67:0x00e1 }] */
    /* JADX WARN: Removed duplicated region for block: B:64:0x00f2  */
    /* JADX WARN: Removed duplicated region for block: B:66:? A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:67:0x00e1 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static boolean writePropertyValue(java.lang.String r12, java.lang.String r13, java.lang.String r14) {
        /*
            Method dump skipped, instructions count: 246
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.server.enterprise.utils.Utils.writePropertyValue(java.lang.String, java.lang.String, java.lang.String):boolean");
    }

    public static byte[] serializeObject(Object obj) {
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        try {
            ObjectOutputStream objectOutputStream = new ObjectOutputStream(byteArrayOutputStream);
            objectOutputStream.writeObject(obj);
            objectOutputStream.close();
            return byteArrayOutputStream.toByteArray();
        } catch (IOException e) {
            e.printStackTrace();
            return null;
        }
    }

    public static Object deserializeObject(byte[] bArr) {
        try {
            ObjectInputStream objectInputStream = new ObjectInputStream(new ByteArrayInputStream(bArr));
            Object readObject = objectInputStream.readObject();
            objectInputStream.close();
            return readObject;
        } catch (IOException | ClassNotFoundException unused) {
            return null;
        }
    }

    public static Object deserializeObjectFromString(String str) {
        if (str == null) {
            return null;
        }
        try {
            ByteArrayInputStream byteArrayInputStream = new ByteArrayInputStream(Base64.decode(str, 0));
            try {
                GZIPInputStream gZIPInputStream = new GZIPInputStream(byteArrayInputStream);
                try {
                    ObjectInputStream objectInputStream = new ObjectInputStream(gZIPInputStream);
                    try {
                        Object readObject = objectInputStream.readObject();
                        objectInputStream.close();
                        gZIPInputStream.close();
                        byteArrayInputStream.close();
                        return readObject;
                    } finally {
                    }
                } finally {
                }
            } finally {
            }
        } catch (IOException e) {
            Log.d(TAG, "IOException to Deserialize Object from String: " + e);
            return null;
        } catch (ClassNotFoundException e2) {
            Log.d(TAG, "ClassNotFoundException to Deserialize Object from String: " + e2);
            return null;
        }
    }

    public static List convertStringToList(String str, String str2) {
        if (!TextUtils.isEmpty(str)) {
            return new ArrayList(Arrays.asList(str.split(str2)));
        }
        return new ArrayList();
    }

    public static String convertListToString(Collection collection, String str) {
        return (collection == null || collection.size() <= 0) ? "" : TextUtils.join(str, collection);
    }

    public static boolean isInteger(String str) {
        try {
            Integer.parseInt(str);
            return true;
        } catch (NullPointerException | NumberFormatException unused) {
            return false;
        }
    }

    public static boolean isSystemApplication(PackageInfo packageInfo, Signature[] signatureArr) {
        Signature[] signatureArr2;
        if (signatureArr == null || packageInfo == null) {
            Log.e(TAG, "invalid param, pkgInfo or signature null");
            return false;
        }
        ApplicationInfo applicationInfo = packageInfo.applicationInfo;
        if (applicationInfo == null || (applicationInfo.flags & 129) == 0 || (signatureArr2 = packageInfo.signatures) == null || signatureArr2.length != signatureArr.length) {
            return false;
        }
        for (int i = 0; i < signatureArr.length; i++) {
            if (!signatureArr[i].equals(packageInfo.signatures[i])) {
                return false;
            }
        }
        return true;
    }

    public static String getMessagePackageName(Context context) {
        int callingUid = Binder.getCallingUid();
        String string = SemFloatingFeature.getInstance().getString("SEC_FLOATING_FEATURE_MESSAGE_CONFIG_PACKAGE_NAME", "com.android.mms");
        if ("com.android.mms".equals(string)) {
            return "com.android.mms";
        }
        try {
            PackageManagerAdapter.getInstance(context).getPackageInfo(string, 0, UserHandle.getUserId(callingUid));
            return string;
        } catch (Exception unused) {
            return "com.android.mms";
        }
    }

    public static byte[] getEncodedPubKey(Signature signature) {
        Certificate generateCertificate;
        PublicKey publicKey;
        if (signature == null || (generateCertificate = CertificateFactory.getInstance("X.509").generateCertificate(new ByteArrayInputStream(signature.toByteArray()))) == null || (publicKey = generateCertificate.getPublicKey()) == null) {
            return null;
        }
        return publicKey.getEncoded();
    }

    public static ArrayList getApplicationSignaturesSHA256(Context context, String str) {
        byte[] digestBytes;
        if (context == null || str == null) {
            return null;
        }
        int callingUid = Binder.getCallingUid();
        ArrayList arrayList = new ArrayList();
        PackageInfo packageInfo = PackageManagerAdapter.getInstance(context).getPackageInfo(str, 64, UserHandle.getUserId(callingUid));
        if (packageInfo != null && packageInfo.signatures != null) {
            int i = 0;
            while (true) {
                Signature[] signatureArr = packageInfo.signatures;
                if (i >= signatureArr.length) {
                    break;
                }
                byte[] encodedPubKey = getEncodedPubKey(signatureArr[i]);
                if (encodedPubKey != null && (digestBytes = digestBytes(encodedPubKey, "SHA-256")) != null) {
                    arrayList.add(byte2HexFormatted(digestBytes));
                }
                i++;
            }
        }
        return arrayList;
    }

    public static String encodeToString(byte[] bArr) {
        return Base64.encodeToString(bArr, 11);
    }

    public static byte[] digestBytes(byte[] bArr, String str) {
        if (bArr == null || str == null) {
            return null;
        }
        return MessageDigest.getInstance(str).digest(bArr);
    }

    public static ArrayList getApplicationPubKeys(Context context, String str) {
        if (context == null || str == null) {
            return null;
        }
        int callingUid = Binder.getCallingUid();
        ArrayList arrayList = new ArrayList();
        PackageInfo packageInfo = PackageManagerAdapter.getInstance(context).getPackageInfo(str, 64, UserHandle.getUserId(callingUid));
        if (packageInfo != null && packageInfo.signatures != null) {
            int i = 0;
            while (true) {
                Signature[] signatureArr = packageInfo.signatures;
                if (i >= signatureArr.length) {
                    break;
                }
                byte[] encodedPubKey = getEncodedPubKey(signatureArr[i]);
                if (encodedPubKey != null) {
                    arrayList.add(encodeToString(encodedPubKey));
                }
                i++;
            }
        }
        return arrayList;
    }

    public static ArrayList getApplicationPubKeyMD5(Context context, String str) {
        if (str == null || context == null) {
            return null;
        }
        ArrayList arrayList = new ArrayList();
        ArrayList applicationPubKeys = getApplicationPubKeys(context, str);
        if (applicationPubKeys != null) {
            Iterator it = applicationPubKeys.iterator();
            while (it.hasNext()) {
                byte[] digestBytes = digestBytes(((String) it.next()).getBytes(), "MD5");
                if (digestBytes != null) {
                    arrayList.add(encodeToString(digestBytes));
                }
            }
        }
        return arrayList;
    }

    public static String byte2HexFormatted(byte[] bArr) {
        if (bArr == null) {
            return "";
        }
        StringBuilder sb = new StringBuilder(bArr.length * 2);
        for (int i = 0; i < bArr.length; i++) {
            String hexString = Integer.toHexString(bArr[i]);
            int length = hexString.length();
            if (length == 1) {
                hexString = "0" + hexString;
            }
            if (length > 2) {
                hexString = hexString.substring(length - 2, length);
            }
            sb.append(hexString.toUpperCase());
            if (i < bArr.length - 1) {
                sb.append(':');
            }
        }
        return sb.toString();
    }

    public static boolean hasPremiumPermission(Context context, String str) {
        return hasPermission(context, str, premiumPermissions);
    }

    public static boolean hasCustomPermission(Context context, String str) {
        return hasPermission(context, str, customPermissions);
    }

    public static boolean hasStandardPermission(Context context, String str) {
        return hasPermission(context, str, standardPermissions);
    }

    public static boolean hasPermission(Context context, String str, String[] strArr) {
        for (String str2 : strArr) {
            if (checkPermission(context, str, str2)) {
                return true;
            }
        }
        return false;
    }

    public static boolean checkPermission(Context context, String str, String str2) {
        if (context != null && str != null && !str.isEmpty() && str2 != null && !str2.isEmpty()) {
            IPackageManager packageManager = AppGlobals.getPackageManager();
            int callingUid = Binder.getCallingUid();
            if (packageManager != null) {
                try {
                    if (packageManager.checkPermission(str2, str, UserHandle.getUserId(callingUid)) == 0) {
                        return true;
                    }
                } catch (RemoteException e) {
                    e.printStackTrace();
                }
            }
        }
        return false;
    }

    public static int getPermissionType(Context context, String str) {
        try {
            boolean hasStandardPermission = hasStandardPermission(context, str);
            boolean hasCustomPermission = hasCustomPermission(context, str);
            boolean hasPremiumPermission = hasPremiumPermission(context, str);
            if (hasStandardPermission) {
                return !hasCustomPermission ? !hasPremiumPermission ? 1 : 2 : !hasPremiumPermission ? 3 : 4;
            }
            return 0;
        } catch (PackageManager.NameNotFoundException unused) {
            Log.d(TAG, "NameNotFoundException");
            return 0;
        }
    }

    public static ArrayList getAllUsers(Context context) {
        UserManager userManager = (UserManager) context.getSystemService("user");
        ArrayList arrayList = new ArrayList();
        long clearCallingIdentity = Binder.clearCallingIdentity();
        try {
            try {
                Iterator it = userManager.getUsers().iterator();
                while (it.hasNext()) {
                    arrayList.add(Integer.valueOf(((UserInfo) it.next()).getUserHandle().getIdentifier()));
                }
            } catch (Exception e) {
                e.printStackTrace();
            }
            return arrayList;
        } finally {
            Binder.restoreCallingIdentity(clearCallingIdentity);
        }
    }

    public static String intToHexString(int i, int i2) {
        int i3;
        int i4 = 8;
        char[] cArr = new char[8];
        while (true) {
            i4--;
            cArr[i4] = HEX_DIGITS[i & 15];
            i >>>= 4;
            if (i == 0 && (i3 = 8 - i4) >= i2) {
                return new String(cArr, i4, i3);
            }
        }
    }

    public static int getCallingOrCurrentUserId(ContextInfo contextInfo) {
        if (contextInfo == null) {
            contextInfo = new ContextInfo(Binder.getCallingUid());
        }
        if (contextInfo.mParent) {
            return 0;
        }
        if (getPersonaManagerAdapter().isValidKnoxId(contextInfo.mContainerId)) {
            Log.d(TAG, "getCallingOrCurrentUserId(): move: cxtInfo.mContainerId = " + contextInfo.mContainerId);
            return contextInfo.mContainerId;
        }
        if (MY_PID == Binder.getCallingPid()) {
            long clearCallingIdentity = Binder.clearCallingIdentity();
            try {
                return ActivityManager.getCurrentUser();
            } finally {
                Binder.restoreCallingIdentity(clearCallingIdentity);
            }
        }
        return UserHandle.getUserId(contextInfo.mCallerUid);
    }

    public static IPersonaManagerAdapter getPersonaManagerAdapter() {
        return (IPersonaManagerAdapter) AdapterRegistry.getAdapter(IPersonaManagerAdapter.class);
    }

    public static int getCallingOrUserUid(ContextInfo contextInfo) {
        if (contextInfo == null) {
            return Binder.getCallingUid();
        }
        if (contextInfo.mParent) {
            return EnterpriseDeviceManagerService.getInstance().getPseudoAdminUid();
        }
        if (getPersonaManagerAdapter().isValidKnoxId(contextInfo.mContainerId)) {
            return UserHandle.getUid(contextInfo.mContainerId, contextInfo.mCallerUid);
        }
        return contextInfo.mCallerUid;
    }

    public static Context createContextAsUser(Context context, String str, int i, int i2) {
        Log.d(TAG, "Creating context as user " + i2);
        long clearCallingIdentity = Binder.clearCallingIdentity();
        try {
            try {
                return context.createPackageContextAsUser(str, i, new UserHandle(i2));
            } catch (PackageManager.NameNotFoundException e) {
                Log.e(TAG, "Package name " + str + " could not be found! " + e.getMessage());
                Binder.restoreCallingIdentity(clearCallingIdentity);
                return null;
            }
        } finally {
            Binder.restoreCallingIdentity(clearCallingIdentity);
        }
    }

    public static boolean isPlatformSignedApp(Context context, String str, int i) {
        PackageInfo packageInfo;
        if (str == null) {
            return false;
        }
        try {
            packageInfo = PackageManagerAdapter.getInstance(context).getPackageInfo(str, 64, i);
        } catch (Exception e) {
            e.printStackTrace();
            packageInfo = null;
        }
        if (packageInfo == null) {
            Log.d(TAG, "Couldnt get Package Info for package " + str);
            return false;
        }
        try {
            return compareSystemSignature(context, packageInfo.signatures);
        } catch (RemoteException e2) {
            e2.printStackTrace();
            return false;
        }
    }

    public static boolean compareSystemSignature(Context context, Signature[] signatureArr) {
        try {
            PackageInfo packageInfo = context.getPackageManager().getPackageInfo("android", 64);
            if (packageInfo == null) {
                Log.e(TAG, "Could not Read package info");
            }
            if (packageInfo != null && packageInfo.signatures != null && signatureArr != null) {
                HashSet hashSet = new HashSet();
                for (Signature signature : packageInfo.signatures) {
                    hashSet.add(signature);
                }
                HashSet hashSet2 = new HashSet();
                for (Signature signature2 : signatureArr) {
                    hashSet2.add(signature2);
                }
                if (hashSet.equals(hashSet2)) {
                    return true;
                }
            }
            return false;
        } catch (PackageManager.NameNotFoundException e) {
            e.printStackTrace();
            return false;
        }
    }

    public static boolean comparePackageSignature(Context context, String str, String str2) {
        return comparePackageSignature(context, str, str2, 0);
    }

    /* JADX WARN: Removed duplicated region for block: B:14:0x0049  */
    /* JADX WARN: Removed duplicated region for block: B:18:0x0051  */
    /* JADX WARN: Removed duplicated region for block: B:30:0x0065  */
    /* JADX WARN: Removed duplicated region for block: B:34:0x0071  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static boolean comparePackageSignature(android.content.Context r7, java.lang.String r8, java.lang.String r9, int r10) {
        /*
            r0 = 0
            if (r9 == 0) goto L88
            if (r8 != 0) goto L7
            goto L88
        L7:
            long r1 = android.os.Binder.clearCallingIdentity()
            r3 = 134217728(0x8000000, float:3.85186E-34)
            r4 = 64
            r5 = 0
            if (r10 != 0) goto L26
            android.content.pm.PackageManager r10 = r7.getPackageManager()     // Catch: java.lang.Throwable -> L3c android.content.pm.PackageManager.NameNotFoundException -> L3e
            android.content.pm.PackageInfo r10 = r10.getPackageInfo(r8, r4)     // Catch: java.lang.Throwable -> L3c android.content.pm.PackageManager.NameNotFoundException -> L3e
            android.content.pm.PackageManager r7 = r7.getPackageManager()     // Catch: android.content.pm.PackageManager.NameNotFoundException -> L24 java.lang.Throwable -> L3c
            android.content.pm.PackageInfo r7 = r7.getPackageInfo(r8, r3)     // Catch: android.content.pm.PackageManager.NameNotFoundException -> L24 java.lang.Throwable -> L3c
            r5 = r7
            goto L43
        L24:
            r7 = move-exception
            goto L40
        L26:
            android.content.pm.PackageManager r6 = r7.getPackageManager()     // Catch: java.lang.Throwable -> L3c android.content.pm.PackageManager.NameNotFoundException -> L3e
            android.content.pm.PackageInfo r4 = r6.getPackageInfoAsUser(r8, r4, r10)     // Catch: java.lang.Throwable -> L3c android.content.pm.PackageManager.NameNotFoundException -> L3e
            android.content.pm.PackageManager r7 = r7.getPackageManager()     // Catch: android.content.pm.PackageManager.NameNotFoundException -> L39 java.lang.Throwable -> L3c
            android.content.pm.PackageInfo r7 = r7.getPackageInfoAsUser(r8, r3, r10)     // Catch: android.content.pm.PackageManager.NameNotFoundException -> L39 java.lang.Throwable -> L3c
            r5 = r7
            r10 = r4
            goto L43
        L39:
            r7 = move-exception
            r10 = r4
            goto L40
        L3c:
            r7 = move-exception
            goto L84
        L3e:
            r7 = move-exception
            r10 = r5
        L40:
            r7.printStackTrace()     // Catch: java.lang.Throwable -> L3c
        L43:
            android.os.Binder.restoreCallingIdentity(r1)
            r7 = 1
            if (r10 == 0) goto L63
            android.content.pm.Signature[] r8 = r10.signatures
            if (r8 == 0) goto L63
            int r10 = r8.length
            r1 = r0
        L4f:
            if (r1 >= r10) goto L63
            r2 = r8[r1]
            if (r2 == 0) goto L60
            java.lang.String r2 = r2.toCharsString()
            boolean r2 = r9.equals(r2)
            if (r2 == 0) goto L60
            return r7
        L60:
            int r1 = r1 + 1
            goto L4f
        L63:
            if (r5 == 0) goto L83
            android.content.pm.SigningInfo r8 = r5.signingInfo
            if (r8 == 0) goto L83
            android.content.pm.Signature[] r8 = r8.getApkContentsSigners()
            int r10 = r8.length
            r1 = r0
        L6f:
            if (r1 >= r10) goto L83
            r2 = r8[r1]
            if (r2 == 0) goto L80
            java.lang.String r2 = r2.toCharsString()
            boolean r2 = r9.equals(r2)
            if (r2 == 0) goto L80
            return r7
        L80:
            int r1 = r1 + 1
            goto L6f
        L83:
            return r0
        L84:
            android.os.Binder.restoreCallingIdentity(r1)
            throw r7
        L88:
            java.lang.String r7 = com.android.server.enterprise.utils.Utils.TAG
            java.lang.String r8 = "Invalid arguments"
            android.util.Log.d(r7, r8)
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.server.enterprise.utils.Utils.comparePackageSignature(android.content.Context, java.lang.String, java.lang.String, int):boolean");
    }

    public static int getProxyAdminOwnerUid(EdmStorageProvider edmStorageProvider, int i) {
        Integer asInteger;
        ContentValues contentValues = new ContentValues();
        contentValues.put("proxyUid", Integer.valueOf(i));
        List values = edmStorageProvider.getValues("PROXY_ADMIN_INFO", new String[]{"adminUid"}, contentValues);
        return (values.isEmpty() || (asInteger = ((ContentValues) values.get(0)).getAsInteger("adminUid")) == null) ? i : asInteger.intValue();
    }

    public static boolean isDexActivated(Context context) {
        SemDesktopModeManager semDesktopModeManager = (SemDesktopModeManager) context.getSystemService("desktopmode");
        return semDesktopModeManager != null && semDesktopModeManager.getDesktopModeState().enabled == 4;
    }

    public static boolean isEthernetOnlyApplied(EdmStorageProvider edmStorageProvider) {
        boolean z = false;
        try {
            Iterator it = edmStorageProvider.getBooleanList("DEX_POLICY", "ethernetOnlyApplied").iterator();
            while (true) {
                if (!it.hasNext()) {
                    break;
                }
                if (((Boolean) it.next()).booleanValue()) {
                    z = true;
                    break;
                }
            }
        } catch (Exception e) {
            Log.e(TAG, "isEthernetOnlyApplied : failed " + e.getMessage());
            e.printStackTrace();
        }
        Log.d(TAG, "isEthernetOnlyApplied - " + z);
        return z;
    }

    public static int getAdminUidForEthernetOnly(EdmStorageProvider edmStorageProvider) {
        int adminByField = edmStorageProvider.getAdminByField("DEX_POLICY", "ethernetOnlyEnabled", Integer.toString(1));
        Log.d(TAG, "getAdminUidForEthernetOnly - " + adminByField);
        return adminByField;
    }
}
