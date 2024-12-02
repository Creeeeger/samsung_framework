package com.samsung.android.biometrics.app.setting.knox;

import android.content.Context;
import android.os.Bundle;
import android.os.Debug;
import android.os.RemoteException;
import android.os.ServiceManager;
import android.os.UserHandle;
import android.util.Log;
import com.android.internal.widget.LockscreenCredential;
import com.samsung.android.biometrics.app.setting.R;
import com.samsung.android.knox.ucm.core.IUcmService;
import com.samsung.android.knox.ucm.core.UniversalCredentialUtil;

/* loaded from: classes.dex */
public final class UCMUtils {
    private static final boolean DBG = Debug.semIsProductDev();

    public static LockscreenCredential generatePassword(int i, String str) {
        IUcmService uCMService = getUCMService();
        if (uCMService == null) {
            if (DBG) {
                Log.e("com.samsung.android.biometrics.app.setting.knox.UCMUtils", "failed to get UCM service");
            }
            return null;
        }
        try {
            Bundle generateKeyguardPassword = uCMService.generateKeyguardPassword(i, str, (Bundle) null);
            if (generateKeyguardPassword == null) {
                return null;
            }
            return LockscreenCredential.createSmartcardPassword(generateKeyguardPassword.getByteArray("bytearrayresponse"));
        } catch (RemoteException e) {
            e.printStackTrace();
            return null;
        }
    }

    private static void getDataFromServiceResponse(int[] iArr, Bundle bundle) {
        iArr[3] = bundle.getInt("minPinLength", -1);
        iArr[4] = bundle.getInt("maxPinLength", -1);
        iArr[5] = bundle.getInt("minPukLength", -1);
        iArr[6] = bundle.getInt("maxPukLength", -1);
        if (DBG) {
            Log.d("com.samsung.android.biometrics.app.setting.knox.UCMUtils", "pin min = " + iArr[3] + " pin max = " + iArr[4] + " puk min = " + iArr[5] + " puk max = " + iArr[6]);
        }
    }

    private static int[] getDefaultStatus() {
        return new int[]{132, -1, -1, -1, -1, -1, -1};
    }

    public static String getErrorMessage(Context context, int i) {
        String str = "\n(" + String.format("0x%08X", Integer.valueOf(i)) + ")";
        switch (i) {
            case 1:
            case 2:
            case 3:
            case 4:
            case 5:
            case 6:
            case 7:
            case 8:
            case 9:
            case 10:
            case 11:
            case 12:
            case 13:
            case 14:
            case 15:
            case 16:
            case 17:
            case 18:
            case 19:
            case 20:
            case 21:
            case 22:
            case 23:
            case 24:
            case 25:
                break;
            default:
                switch (i) {
                    case 257:
                    case 258:
                    case 259:
                    case 260:
                    case 261:
                    case 262:
                    case 263:
                    case 264:
                    case 265:
                    case 266:
                    case 267:
                    case 268:
                    case 269:
                    case 270:
                    case 271:
                        break;
                    default:
                        switch (i) {
                            case 4096:
                            case 8191:
                            case 150994944:
                            case 201326848:
                            case 201327104:
                                break;
                            case 16777472:
                            case 16777728:
                            case 16777984:
                            case 16778240:
                            case 33554945:
                                break;
                            case 134217728:
                                return context.getResources().getString(R.string.ucm_smartcard_error) + str;
                            default:
                                switch (i) {
                                    case 33554689:
                                    case 33554690:
                                        break;
                                    default:
                                        switch (i) {
                                            case 33555201:
                                            case 33555202:
                                            case 33555203:
                                            case 33555204:
                                            case 33555205:
                                            case 33555206:
                                                break;
                                            default:
                                                switch (i) {
                                                    case 33555457:
                                                    case 33555458:
                                                    case 33555459:
                                                    case 33555460:
                                                    case 33555461:
                                                    case 33555462:
                                                        break;
                                                    default:
                                                        switch (i) {
                                                            case 33555713:
                                                            case 33555714:
                                                                break;
                                                            default:
                                                                switch (i) {
                                                                    case 50331648:
                                                                    case 50331649:
                                                                    case 50331650:
                                                                    case 50331651:
                                                                    case 50331652:
                                                                        break;
                                                                    default:
                                                                        if (134217728 >= i || 134283264 <= i) {
                                                                            return context.getResources().getString(R.string.ucm_unknown_error) + str;
                                                                        }
                                                                        String format = String.format("0x%08X", Integer.valueOf(i));
                                                                        return context.getResources().getString(R.string.ucm_smartcard_error) + "\n(" + format.substring(format.length() - 4, format.length()) + ")";
                                                                }
                                                        }
                                                }
                                        }
                                }
                        }
                        return context.getResources().getString(R.string.ucm_communication_error) + str;
                }
        }
        return context.getResources().getString(R.string.ucm_internal_error) + str;
    }

    private static int[] getKeyguardStatusFromServiceResponse(Bundle bundle) {
        int[] defaultStatus = getDefaultStatus();
        bundle.getString("miscInfo", "NONE");
        defaultStatus[0] = bundle.getInt("state", -1);
        defaultStatus[1] = bundle.getInt("remainCnt", -1);
        defaultStatus[2] = bundle.getInt("errorresponse", -1);
        if (DBG) {
            Log.d("com.samsung.android.biometrics.app.setting.knox.UCMUtils", "remain count = " + defaultStatus[1] + "state = " + defaultStatus[0] + "error code = " + defaultStatus[2]);
        }
        return defaultStatus;
    }

    public static int[] getStatus() {
        String uCMUri = getUCMUri();
        int[] defaultStatus = getDefaultStatus();
        IUcmService uCMService = getUCMService();
        boolean z = DBG;
        if (uCMService == null) {
            if (!z) {
                return defaultStatus;
            }
            Log.e("com.samsung.android.biometrics.app.setting.knox.UCMUtils", "failed to get UCM service");
            return defaultStatus;
        }
        try {
            Bundle status = uCMService.getStatus(uCMUri);
            if (status == null) {
                return defaultStatus;
            }
            if (z) {
                Log.d("com.samsung.android.biometrics.app.setting.knox.UCMUtils", "status not null");
            }
            defaultStatus = getKeyguardStatusFromServiceResponse(status);
            getDataFromServiceResponse(defaultStatus, status);
            return defaultStatus;
        } catch (Exception e) {
            e.printStackTrace();
            return defaultStatus;
        }
    }

    public static String getUCMKeyguardStorageForUser() {
        return getUCMKeyguardStorageForUser(UserHandle.myUserId());
    }

    public static String getUCMKeyguardVendorName() {
        String uCMKeyguardStorageForUser = getUCMKeyguardStorageForUser(UserHandle.myUserId());
        if (uCMKeyguardStorageForUser == null) {
            return "";
        }
        if (DBG) {
            Log.d("com.samsung.android.biometrics.app.setting.knox.UCMUtils", "UCM Keyguard : ".concat(uCMKeyguardStorageForUser));
        }
        int lastIndexOf = uCMKeyguardStorageForUser.lastIndexOf(":");
        return lastIndexOf != -1 ? uCMKeyguardStorageForUser.substring(lastIndexOf + 1, uCMKeyguardStorageForUser.length()) : uCMKeyguardStorageForUser;
    }

    private static IUcmService getUCMService() {
        return IUcmService.Stub.asInterface(ServiceManager.getService("com.samsung.ucs.ucsservice"));
    }

    public static String getUCMUri() {
        String uCMKeyguardStorageForUser = getUCMKeyguardStorageForUser();
        if (uCMKeyguardStorageForUser == null) {
            return null;
        }
        String uri = UniversalCredentialUtil.getUri(uCMKeyguardStorageForUser, "");
        if (DBG) {
            Log.d("com.samsung.android.biometrics.app.setting.knox.UCMUtils", "getStatus, uri: " + uri);
        }
        return uri;
    }

    public static boolean isSupportBiometricForUCM() {
        IUcmService asInterface = IUcmService.Stub.asInterface(ServiceManager.getService("com.samsung.ucs.ucsservice"));
        if (asInterface == null) {
            Log.e("com.samsung.android.biometrics.app.setting.knox.UCMUtils", "Failed to get UCM Service");
            return false;
        }
        try {
            Bundle agentInfo = asInterface.getAgentInfo(getUCMUri());
            if (agentInfo == null) {
                return false;
            }
            return agentInfo.getBoolean("isSupportBiometricForUCM", false);
        } catch (Exception e) {
            e.printStackTrace();
            return false;
        }
    }

    public static boolean isUCMKeyguardEnabled() {
        int myUserId = UserHandle.myUserId();
        if (getUCMKeyguardStorageForUser(myUserId) == null) {
            return false;
        }
        if (DBG) {
            Log.d("com.samsung.android.biometrics.app.setting.knox.UCMUtils", "UCM Keyguard is enabled for user [" + myUserId + "]");
        }
        return true;
    }

    public static int[] verfiyODEPin(int i, String str, String str2) {
        int[] defaultStatus = getDefaultStatus();
        IUcmService uCMService = getUCMService();
        boolean z = DBG;
        if (uCMService == null) {
            if (z) {
                Log.e("com.samsung.android.biometrics.app.setting.knox.UCMUtils", "failed to get UCM service");
            }
            return defaultStatus;
        }
        try {
            Bundle verifyPin = uCMService.verifyPin(i, str2, str, (Bundle) null);
            if (verifyPin != null) {
                if (z) {
                    Log.d("com.samsung.android.biometrics.app.setting.knox.UCMUtils", "status not null");
                }
                int[] keyguardStatusFromServiceResponse = getKeyguardStatusFromServiceResponse(verifyPin);
                try {
                    int i2 = keyguardStatusFromServiceResponse[0];
                    if (i2 != 131) {
                        if (i2 != 132) {
                            if (z) {
                                Log.d("com.samsung.android.biometrics.app.setting.knox.UCMUtils", "Mostly has gone to PUK case");
                            }
                        } else if (z) {
                            Log.d("com.samsung.android.biometrics.app.setting.knox.UCMUtils", "PIN verfication failed");
                        }
                    } else if (z) {
                        Log.d("com.samsung.android.biometrics.app.setting.knox.UCMUtils", "PIN verfication succeed");
                    }
                    return keyguardStatusFromServiceResponse;
                } catch (Exception e) {
                    defaultStatus = keyguardStatusFromServiceResponse;
                    e = e;
                    e.printStackTrace();
                    return defaultStatus;
                }
            }
        } catch (Exception e2) {
            e = e2;
        }
        return defaultStatus;
    }

    /* JADX WARN: Code restructure failed: missing block: B:41:0x001f, code lost:
    
        if (r4.trim().length() > 0) goto L14;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static int[] verifyPUK(java.lang.String r7, java.lang.String r8, java.lang.String r9) {
        /*
            java.lang.String r0 = "com.samsung.android.biometrics.app.setting.knox.UCMUtils"
            boolean r1 = com.samsung.android.biometrics.app.setting.knox.UCMUtils.DBG
            if (r1 == 0) goto Lb
            java.lang.String r2 = "verifyPUK enterd"
            android.util.Log.d(r0, r2)
        Lb:
            int[] r2 = getDefaultStatus()
            r3 = 0
            if (r8 != 0) goto L13
            goto L22
        L13:
            java.lang.String r4 = r8.trim()     // Catch: java.lang.Exception -> L24
            java.lang.String r5 = r4.trim()     // Catch: java.lang.Exception -> L24
            int r5 = r5.length()     // Catch: java.lang.Exception -> L24
            if (r5 <= 0) goto L22
            goto L29
        L22:
            r4 = r3
            goto L29
        L24:
            r4 = move-exception
            r4.printStackTrace()
            goto L22
        L29:
            if (r1 == 0) goto L3c
            java.lang.StringBuilder r5 = new java.lang.StringBuilder
            java.lang.String r6 = "tempPUK : "
            r5.<init>(r6)
            r5.append(r4)
            java.lang.String r5 = r5.toString()
            android.util.Log.d(r0, r5)
        L3c:
            if (r9 != 0) goto L3f
            goto L53
        L3f:
            java.lang.String r5 = r9.trim()     // Catch: java.lang.Exception -> L4f
            java.lang.String r6 = r5.trim()     // Catch: java.lang.Exception -> L4f
            int r6 = r6.length()     // Catch: java.lang.Exception -> L4f
            if (r6 <= 0) goto L53
            r3 = r5
            goto L53
        L4f:
            r5 = move-exception
            r5.printStackTrace()
        L53:
            if (r1 == 0) goto L66
            java.lang.StringBuilder r5 = new java.lang.StringBuilder
            java.lang.String r6 = "tempPIN : "
            r5.<init>(r6)
            r5.append(r3)
            java.lang.String r5 = r5.toString()
            android.util.Log.d(r0, r5)
        L66:
            if (r4 == 0) goto L95
            if (r3 != 0) goto L6b
            goto L95
        L6b:
            com.samsung.android.knox.ucm.core.IUcmService r3 = getUCMService()
            if (r3 != 0) goto L79
            if (r1 == 0) goto L78
            java.lang.String r7 = "failed to get UCM service"
            android.util.Log.e(r0, r7)
        L78:
            return r2
        L79:
            android.os.Bundle r7 = r3.verifyPuk(r7, r8, r9)     // Catch: java.lang.Exception -> L91
            if (r7 == 0) goto L95
            int[] r2 = getKeyguardStatusFromServiceResponse(r7)     // Catch: java.lang.Exception -> L91
            r7 = 0
            r8 = r2[r7]     // Catch: java.lang.Exception -> L91
            r9 = 132(0x84, float:1.85E-43)
            if (r8 == r9) goto L8e
            r9 = 131(0x83, float:1.84E-43)
            if (r8 != r9) goto L95
        L8e:
            r2[r7] = r7     // Catch: java.lang.Exception -> L91
            goto L95
        L91:
            r7 = move-exception
            r7.printStackTrace()
        L95:
            return r2
        */
        throw new UnsupportedOperationException("Method not decompiled: com.samsung.android.biometrics.app.setting.knox.UCMUtils.verifyPUK(java.lang.String, java.lang.String, java.lang.String):int[]");
    }

    /* JADX WARN: Code restructure failed: missing block: B:20:0x0059, code lost:
    
        android.util.Log.d("com.samsung.android.biometrics.app.setting.knox.UCMUtils", "getUCMKeyguardStorageForUser. UCM Keyguard disabled for user [" + r9 + "]");
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private static java.lang.String getUCMKeyguardStorageForUser(int r9) {
        /*
            java.lang.String r0 = "getUCMKeyguardStorageForUser. keyguardCSName ["
            java.lang.String r1 = "getUCMKeyguardStorageForUser. UCM Keyguard enabled for user ["
            java.lang.String r2 = "getUCMKeyguardStorageForUser. UCM Keyguard disabled for user ["
            com.samsung.android.knox.ucm.core.IUcmService r3 = getUCMService()
            r4 = 0
            boolean r5 = com.samsung.android.biometrics.app.setting.knox.UCMUtils.DBG
            java.lang.String r6 = "com.samsung.android.biometrics.app.setting.knox.UCMUtils"
            if (r3 != 0) goto L19
            if (r5 == 0) goto L18
            java.lang.String r9 = "failed to get UCM service"
            android.util.Log.e(r6, r9)
        L18:
            return r4
        L19:
            java.lang.String r3 = r3.getKeyguardStorageForCurrentUser(r9)     // Catch: java.lang.Exception -> L6c
            boolean r7 = android.text.TextUtils.isEmpty(r3)     // Catch: java.lang.Exception -> L6c
            java.lang.String r8 = "]"
            if (r7 != 0) goto L57
            java.lang.String r7 = "none"
            boolean r7 = r3.equalsIgnoreCase(r7)     // Catch: java.lang.Exception -> L6c
            if (r7 == 0) goto L2e
            goto L57
        L2e:
            if (r5 == 0) goto L42
            java.lang.StringBuilder r2 = new java.lang.StringBuilder     // Catch: java.lang.Exception -> L6c
            r2.<init>(r1)     // Catch: java.lang.Exception -> L6c
            r2.append(r9)     // Catch: java.lang.Exception -> L6c
            r2.append(r8)     // Catch: java.lang.Exception -> L6c
            java.lang.String r9 = r2.toString()     // Catch: java.lang.Exception -> L6c
            android.util.Log.d(r6, r9)     // Catch: java.lang.Exception -> L6c
        L42:
            if (r5 == 0) goto L56
            java.lang.StringBuilder r9 = new java.lang.StringBuilder     // Catch: java.lang.Exception -> L6c
            r9.<init>(r0)     // Catch: java.lang.Exception -> L6c
            r9.append(r3)     // Catch: java.lang.Exception -> L6c
            r9.append(r8)     // Catch: java.lang.Exception -> L6c
            java.lang.String r9 = r9.toString()     // Catch: java.lang.Exception -> L6c
            android.util.Log.d(r6, r9)     // Catch: java.lang.Exception -> L6c
        L56:
            return r3
        L57:
            if (r5 == 0) goto L6b
            java.lang.StringBuilder r0 = new java.lang.StringBuilder     // Catch: java.lang.Exception -> L6c
            r0.<init>(r2)     // Catch: java.lang.Exception -> L6c
            r0.append(r9)     // Catch: java.lang.Exception -> L6c
            r0.append(r8)     // Catch: java.lang.Exception -> L6c
            java.lang.String r9 = r0.toString()     // Catch: java.lang.Exception -> L6c
            android.util.Log.d(r6, r9)     // Catch: java.lang.Exception -> L6c
        L6b:
            return r4
        L6c:
            r9 = move-exception
            r9.printStackTrace()
            return r4
        */
        throw new UnsupportedOperationException("Method not decompiled: com.samsung.android.biometrics.app.setting.knox.UCMUtils.getUCMKeyguardStorageForUser(int):java.lang.String");
    }
}
