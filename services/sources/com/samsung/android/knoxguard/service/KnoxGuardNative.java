package com.samsung.android.knoxguard.service;

import android.os.Bundle;
import android.util.Slog;
import com.samsung.android.knoxguard.service.KnoxGuardSeService;

/* loaded from: classes2.dex */
public abstract class KnoxGuardNative {
    public static int KGTA_FAILED = -1000;
    public static int KGTA_PARAM_DEFAULT = 0;
    public static String TAG = "KnoxGuardTANative";

    public static native KgErrWrapper tz_generateHotpDhRequest(int i);

    public static native KgErrWrapper tz_getClientData(int i);

    public static native KgErrWrapper tz_getHotpChallenge(int i);

    public static native KgErrWrapper tz_getKGID(int i);

    public static native KgErrWrapper tz_getKGPolicy(int i, byte[] bArr, byte[] bArr2);

    public static native KgErrWrapper tz_getLockAction(int i);

    public static native KgErrWrapper tz_getLockObject(int i);

    public static native KgErrWrapper tz_getNonce(int i, byte[] bArr, byte[] bArr2);

    public static native KgErrWrapper tz_getTAInfo(int i);

    public static native KgErrWrapper tz_getTAState(int i);

    public static native KgErrWrapper tz_lockScreen(int i, byte[] bArr, byte[] bArr2);

    public static native KgErrWrapper tz_provisionCert(int i, byte[] bArr, byte[] bArr2, byte[] bArr3, byte[] bArr4);

    public static native KgErrWrapper tz_resetRPMB(int i, byte[] bArr);

    public static native KgErrWrapper tz_setClientData(int i, byte[] bArr);

    public static native KgErrWrapper tz_unlockScreen(int i);

    public static native KgErrWrapper tz_userChecking(int i);

    public static native KgErrWrapper tz_verifyCompleteToken(int i, byte[] bArr);

    public static native KgErrWrapper tz_verifyHOTPPin(int i, byte[] bArr);

    public static native KgErrWrapper tz_verifyHOTPsecret(int i, byte[] bArr);

    public static native KgErrWrapper tz_verifyHotpDhChallenge(int i, byte[] bArr, byte[] bArr2, byte[] bArr3);

    public static native KgErrWrapper tz_verifyKgRot(int i);

    public static native KgErrWrapper tz_verifyPolicy(int i, byte[] bArr, byte[] bArr2);

    public static native KgErrWrapper tz_verifyRegistrationInfo(int i, byte[] bArr, byte[] bArr2);

    public static int getTAState() {
        KgErrWrapper tAStateRefactor = getTAStateRefactor();
        if (tAStateRefactor == null) {
            return KGTA_FAILED;
        }
        int i = tAStateRefactor.err;
        return i == 0 ? tAStateRefactor.result : i;
    }

    public static KgErrWrapper verifyHOTPsecretRefactor(String str) {
        if (str == null) {
            Slog.e(TAG, "verifyHOTPsecret input string is null");
            return null;
        }
        return tz_verifyHOTPsecret(KGTA_PARAM_DEFAULT, s2b(str));
    }

    public static KgErrWrapper getTAStateRefactor() {
        return tz_getTAState(KGTA_PARAM_DEFAULT);
    }

    public static KgErrWrapper getKGPolicyRefactor() {
        PolicyStorageManager policyStorageManager = PolicyStorageManager.getInstance();
        int readData = policyStorageManager.readData();
        if (readData != PolicyStorageManager.SUCCESS) {
            Slog.e(TAG, "readData failed error " + readData);
            return null;
        }
        String policyRes = policyStorageManager.getPolicyRes();
        String signature = policyStorageManager.getSignature();
        if (policyRes == null || signature == null) {
            Slog.e(TAG, "GetKG Policy : policy or signature  null ");
            return null;
        }
        return tz_getKGPolicy(KGTA_PARAM_DEFAULT, s2b(policyRes), s2b(signature));
    }

    public static KgErrWrapper verifyCompleteTokenRefactor(String str) {
        if (str == null) {
            Slog.e(TAG, "verifyCompleteToken input string is null");
            return null;
        }
        return tz_verifyCompleteToken(KGTA_PARAM_DEFAULT, s2b(str));
    }

    public static KgErrWrapper generateHotpDHRequestRefactor() {
        return tz_generateHotpDhRequest(KGTA_PARAM_DEFAULT);
    }

    public static KgErrWrapper verifyHotpDHChallengeRefactor(String str, String str2, String str3) {
        if (str == null || str2 == null || str3 == null) {
            Slog.e(TAG, "verifyHotpDHChallenge failed: input null");
            return null;
        }
        return tz_verifyHotpDhChallenge(KGTA_PARAM_DEFAULT, s2b(str), s2b(str2), s2b(str3));
    }

    public static KgErrWrapper getTAInfo(int i) {
        return tz_getTAInfo(i);
    }

    public static KgErrWrapper provisionCert(String str, String str2, String str3, String str4) {
        return tz_provisionCert(KGTA_PARAM_DEFAULT, s2b(str), s2b(str2), s2b(str3), s2b(str4));
    }

    public static KgErrWrapper getHotpChallengeRefactor() {
        return tz_getHotpChallenge(KGTA_PARAM_DEFAULT);
    }

    public static KgErrWrapper verifyHOTPPinRefactor(String str) {
        if (str == null) {
            Slog.e(TAG, "verifyHotpPin fail, input null");
            return null;
        }
        return tz_verifyHOTPPin(KGTA_PARAM_DEFAULT, s2b(str));
    }

    public static KgErrWrapper verifyRegistrationInfoRefactor(String str, String str2) {
        if (str == null || str2 == null) {
            Slog.e(TAG, "verifyRegistrationInfo failed input null ");
            return null;
        }
        return tz_verifyRegistrationInfo(KGTA_PARAM_DEFAULT, s2b(str), s2b(str2));
    }

    public static KgErrWrapper verifyPolicyRefactor(String str, String str2) {
        if (str == null || str2 == null) {
            Slog.e(TAG, "verifyPolicy failed, empty input");
            return null;
        }
        KgErrWrapper tz_verifyPolicy = tz_verifyPolicy(KGTA_PARAM_DEFAULT, s2b(str), s2b(str2));
        if (tz_verifyPolicy == null) {
            Slog.e(TAG, "verifyPolicy failed, empty return from TA");
            return tz_verifyPolicy;
        }
        String b2s = b2s(tz_verifyPolicy.data);
        if (PolicyStorageManager.getInstance().saveData(str, str2) == PolicyStorageManager.SUCCESS) {
            return tz_verifyPolicy;
        }
        Slog.e(TAG, "store the policy to EFS failed =" + b2s);
        return null;
    }

    public static KgErrWrapper unlockScreenRefactor() {
        return tz_unlockScreen(KGTA_PARAM_DEFAULT);
    }

    public static KgErrWrapper lockScreenRefactor(String str, String str2, String str3, String str4, String str5, boolean z, boolean z2, Bundle bundle) {
        byte[] serialize = serialize(new KnoxGuardSeService.KGLockscreenInfo(str2, str3, str4, str5, z, z2, bundle));
        if (str == null) {
            Slog.e(TAG, "lockScreen: empty actionName");
            return null;
        }
        if (serialize == null) {
            Slog.e(TAG, "lockScreen: empty serialzeObj");
            return null;
        }
        return tz_lockScreen(KGTA_PARAM_DEFAULT, s2b(str), serialize);
    }

    /* JADX WARN: Code restructure failed: missing block: B:26:0x004b, code lost:
    
        if (r4 == null) goto L33;
     */
    /* JADX WARN: Removed duplicated region for block: B:36:0x005e A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:42:? A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:43:0x0053 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static byte[] serialize(java.lang.Object r5) {
        /*
            java.lang.String r0 = "Serialize outstream failed IO exception"
            java.lang.String r1 = "Serialize failed IO exception"
            if (r5 != 0) goto La
            r5 = 0
            byte[] r5 = new byte[r5]
            return r5
        La:
            r2 = 0
            java.io.ByteArrayOutputStream r3 = new java.io.ByteArrayOutputStream     // Catch: java.lang.Throwable -> L37 java.io.IOException -> L3a
            r3.<init>()     // Catch: java.lang.Throwable -> L37 java.io.IOException -> L3a
            java.io.ObjectOutputStream r4 = new java.io.ObjectOutputStream     // Catch: java.lang.Throwable -> L31 java.io.IOException -> L34
            r4.<init>(r3)     // Catch: java.lang.Throwable -> L31 java.io.IOException -> L34
            r4.writeObject(r5)     // Catch: java.io.IOException -> L2f java.lang.Throwable -> L4f
            byte[] r2 = r3.toByteArray()     // Catch: java.io.IOException -> L2f java.lang.Throwable -> L4f
            r3.close()     // Catch: java.io.IOException -> L20
            goto L25
        L20:
            java.lang.String r5 = com.samsung.android.knoxguard.service.KnoxGuardNative.TAG
            android.util.Slog.e(r5, r1)
        L25:
            r4.close()     // Catch: java.io.IOException -> L29
            goto L4e
        L29:
            java.lang.String r5 = com.samsung.android.knoxguard.service.KnoxGuardNative.TAG
            android.util.Slog.e(r5, r0)
            goto L4e
        L2f:
            r5 = move-exception
            goto L3d
        L31:
            r5 = move-exception
            r4 = r2
            goto L50
        L34:
            r5 = move-exception
            r4 = r2
            goto L3d
        L37:
            r5 = move-exception
            r4 = r2
            goto L51
        L3a:
            r5 = move-exception
            r3 = r2
            r4 = r3
        L3d:
            r5.printStackTrace()     // Catch: java.lang.Throwable -> L4f
            if (r3 == 0) goto L4b
            r3.close()     // Catch: java.io.IOException -> L46
            goto L4b
        L46:
            java.lang.String r5 = com.samsung.android.knoxguard.service.KnoxGuardNative.TAG
            android.util.Slog.e(r5, r1)
        L4b:
            if (r4 == 0) goto L4e
            goto L25
        L4e:
            return r2
        L4f:
            r5 = move-exception
        L50:
            r2 = r3
        L51:
            if (r2 == 0) goto L5c
            r2.close()     // Catch: java.io.IOException -> L57
            goto L5c
        L57:
            java.lang.String r2 = com.samsung.android.knoxguard.service.KnoxGuardNative.TAG
            android.util.Slog.e(r2, r1)
        L5c:
            if (r4 == 0) goto L67
            r4.close()     // Catch: java.io.IOException -> L62
            goto L67
        L62:
            java.lang.String r1 = com.samsung.android.knoxguard.service.KnoxGuardNative.TAG
            android.util.Slog.e(r1, r0)
        L67:
            throw r5
        */
        throw new UnsupportedOperationException("Method not decompiled: com.samsung.android.knoxguard.service.KnoxGuardNative.serialize(java.lang.Object):byte[]");
    }

    public static KgErrWrapper getLockActionRefactor() {
        return tz_getLockAction(KGTA_PARAM_DEFAULT);
    }

    public static KgErrWrapper getLockObjectRefactor() {
        return tz_getLockObject(KGTA_PARAM_DEFAULT);
    }

    public static KgErrWrapper getClientDataRefactor() {
        return tz_getClientData(KGTA_PARAM_DEFAULT);
    }

    public static KgErrWrapper getKGIDRefactor() {
        return tz_getKGID(KGTA_PARAM_DEFAULT);
    }

    public static KgErrWrapper verifyKgRotRefactor() {
        return tz_verifyKgRot(KGTA_PARAM_DEFAULT);
    }

    public static KgErrWrapper resetRPMBRefactor(String str) {
        return tz_resetRPMB(KGTA_PARAM_DEFAULT, s2b(str));
    }

    public static KgErrWrapper userCheckingRefactor() {
        return tz_userChecking(KGTA_PARAM_DEFAULT);
    }

    public static KgErrWrapper setClientDataRefactor(String str) {
        if (str == null) {
            Slog.e(TAG, "setClientData fail: empty input");
        }
        return tz_setClientData(KGTA_PARAM_DEFAULT, s2b(str));
    }

    public static KgErrWrapper getNonceRefactor(String str, String str2) {
        return tz_getNonce(KGTA_PARAM_DEFAULT, s2b(str), s2b(str2));
    }

    public static String b2s(byte[] bArr) {
        if (bArr != null) {
            return new String(bArr);
        }
        return null;
    }

    public static byte[] s2b(String str) {
        if (str == null) {
            return null;
        }
        return str.getBytes();
    }

    /* loaded from: classes2.dex */
    public class PolicyStorageManager {
        public static int SUCCESS;
        public static PolicyStorageManager instance;
        public String ans_policy = null;
        public String ans_signature = null;

        public static synchronized PolicyStorageManager getInstance() {
            PolicyStorageManager policyStorageManager;
            synchronized (PolicyStorageManager.class) {
                if (instance == null) {
                    instance = new PolicyStorageManager();
                }
                policyStorageManager = instance;
            }
            return policyStorageManager;
        }

        public final void cleanState() {
            this.ans_policy = null;
            this.ans_signature = null;
        }

        public final void storeDataReady(String str, String str2) {
            this.ans_policy = str;
            this.ans_signature = str2;
        }

        public synchronized int saveData(String str, String str2) {
            cleanState();
            Slog.e("KGTAPolicy", "use TA to store policy, skipping the EFS...");
            return SUCCESS;
        }

        public synchronized String getPolicyRes() {
            return this.ans_policy;
        }

        public synchronized String getSignature() {
            return this.ans_signature;
        }

        public synchronized int readData() {
            cleanState();
            Slog.e("KGTAPolicy", "use TA to store policy, skipping the EFS...");
            storeDataReady(" ", " ");
            return SUCCESS;
        }
    }
}
