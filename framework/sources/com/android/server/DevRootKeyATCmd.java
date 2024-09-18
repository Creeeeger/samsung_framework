package com.android.server;

import android.content.Context;
import android.os.Build;
import android.os.SystemProperties;
import android.telephony.TelephonyManager;
import android.text.TextUtils;
import android.util.Log;
import com.samsung.android.graphics.spr.document.animator.SprAnimatorBase;
import com.samsung.android.graphics.spr.document.attribute.SprAttributeBase;
import com.samsung.android.service.DeviceIDProvisionService.DeviceIDProvisionManager;
import com.samsung.android.service.DeviceRootKeyService.DeviceRootKeyServiceManager;
import com.samsung.android.service.DeviceRootKeyService.Tlv;
import com.samsung.android.service.EngineeringMode.EngineeringModeManager;
import java.security.InvalidAlgorithmParameterException;
import java.security.NoSuchAlgorithmException;
import java.security.NoSuchProviderException;
import java.security.PublicKey;
import java.security.cert.CertPath;
import java.security.cert.CertPathValidator;
import java.security.cert.CertPathValidatorException;
import java.security.cert.CertStore;
import java.security.cert.Certificate;
import java.security.cert.CertificateException;
import java.security.cert.CertificateFactory;
import java.security.cert.CollectionCertStoreParameters;
import java.security.cert.PKIXCertPathValidatorResult;
import java.security.cert.PKIXParameters;
import java.security.cert.TrustAnchor;
import java.security.cert.X509Certificate;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Calendar;
import java.util.HashSet;
import java.util.List;
import java.util.Set;

/* loaded from: classes5.dex */
public class DevRootKeyATCmd implements IWorkOnAt {
    protected static final String AT_COMMAND_DEVROOTK = "DEVROOTK";
    protected static final String AT_COMMAND_HEADER = "AT";
    protected static final int MODE_MNFR_ALLOW_ATCMD = 28;
    protected static final String TAG = "DEVROOT#ATCmd(1.0.0)";
    protected static final String VERSION = "1.0.0";
    static int getKeyWaitTime;
    protected static final boolean isSupportnewSAKatcmd;
    protected boolean isJDMProductNotInHouse = false;
    protected Context mContext;
    private DeviceRootKeyServiceManager mDeviceRootKeyServiceManager;
    private Tlv mTlv;
    private String mTlvKeyBlob;
    private int mTlvKeyBlobCounter;

    private native byte[] generateCertificateSigningRequest(int i, String str, String str2);

    private native int installDeviceBoundCertificate(int i, byte[] bArr);

    private native int installDeviceID(int i, String str, String str2, String str3, String str4, String str5, String str6, String str7, String str8, String str9);

    private native int installDeviceUnboundKey(int i, byte[] bArr);

    private native int isExistDRK(int i);

    private native boolean isSupportedDrkV2();

    private native String readDrkUID(int i);

    private native byte[] readKeyInfo(int i);

    private native int validateDeviceKey(int i);

    static {
        isSupportnewSAKatcmd = Integer.parseInt(SystemProperties.get("ro.product.first_api_level")) > 33;
        System.loadLibrary("_nativeJni.dk.samsung");
        getKeyWaitTime = 50;
    }

    public DevRootKeyATCmd(Context context) {
        this.mContext = context;
        initTlvKeyBlob();
        this.mDeviceRootKeyServiceManager = new DeviceRootKeyServiceManager(context.getApplicationContext());
        DeviceIDProvisionManager deviceIDProvisionManager = new DeviceIDProvisionManager(context.getApplicationContext());
        if (deviceIDProvisionManager.isAvailable()) {
            deviceIDProvisionManager.provision();
        }
    }

    @Override // com.android.server.IWorkOnAt
    public String getCmd() {
        return AT_COMMAND_DEVROOTK;
    }

    /* JADX WARN: Code restructure failed: missing block: B:202:0x005d, code lost:            if (java.lang.Integer.parseInt(r6[0]) == 1) goto L16;     */
    /* JADX WARN: Failed to find 'out' block for switch in B:19:0x00ac. Please report as an issue. */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r2v0, types: [java.lang.String] */
    /* JADX WARN: Type inference failed for: r2v103, types: [java.lang.StringBuilder] */
    /* JADX WARN: Type inference failed for: r2v2 */
    /* JADX WARN: Type inference failed for: r7v0, types: [java.lang.String] */
    /* JADX WARN: Type inference failed for: r7v100 */
    /* JADX WARN: Type inference failed for: r7v101 */
    /* JADX WARN: Type inference failed for: r7v102 */
    /* JADX WARN: Type inference failed for: r7v103 */
    /* JADX WARN: Type inference failed for: r7v104 */
    /* JADX WARN: Type inference failed for: r7v105 */
    /* JADX WARN: Type inference failed for: r7v106 */
    /* JADX WARN: Type inference failed for: r7v107 */
    /* JADX WARN: Type inference failed for: r7v108 */
    /* JADX WARN: Type inference failed for: r7v109 */
    /* JADX WARN: Type inference failed for: r7v110 */
    /* JADX WARN: Type inference failed for: r7v111 */
    /* JADX WARN: Type inference failed for: r7v3 */
    /* JADX WARN: Type inference failed for: r7v36 */
    /* JADX WARN: Type inference failed for: r7v73 */
    /* JADX WARN: Type inference failed for: r7v74 */
    /* JADX WARN: Type inference failed for: r7v75 */
    /* JADX WARN: Type inference failed for: r7v76 */
    /* JADX WARN: Type inference failed for: r7v77 */
    /* JADX WARN: Type inference failed for: r7v78 */
    /* JADX WARN: Type inference failed for: r7v79 */
    /* JADX WARN: Type inference failed for: r7v80 */
    /* JADX WARN: Type inference failed for: r7v81 */
    /* JADX WARN: Type inference failed for: r7v82 */
    /* JADX WARN: Type inference failed for: r7v83 */
    /* JADX WARN: Type inference failed for: r7v84 */
    /* JADX WARN: Type inference failed for: r7v85 */
    /* JADX WARN: Type inference failed for: r7v86 */
    /* JADX WARN: Type inference failed for: r7v87 */
    /* JADX WARN: Type inference failed for: r7v88 */
    /* JADX WARN: Type inference failed for: r7v89 */
    /* JADX WARN: Type inference failed for: r7v90 */
    /* JADX WARN: Type inference failed for: r7v91 */
    /* JADX WARN: Type inference failed for: r7v92 */
    /* JADX WARN: Type inference failed for: r7v93 */
    /* JADX WARN: Type inference failed for: r7v94 */
    /* JADX WARN: Type inference failed for: r7v95 */
    /* JADX WARN: Type inference failed for: r7v96 */
    /* JADX WARN: Type inference failed for: r7v97 */
    /* JADX WARN: Type inference failed for: r7v98 */
    /* JADX WARN: Type inference failed for: r7v99 */
    /* JADX WARN: Type inference failed for: r8v2, types: [java.lang.StringBuilder] */
    @Override // com.android.server.IWorkOnAt
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public java.lang.String processCmd(java.lang.String r20) {
        /*
            Method dump skipped, instructions count: 1954
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.server.DevRootKeyATCmd.processCmd(java.lang.String):java.lang.String");
    }

    public String generateCertWithTlv(boolean tlv) {
        byte[] tlvTestExponent = {2, 2, SprAnimatorBase.INTERPOLATOR_TYPE_QUADEASEINOUT, -17};
        byte[] tlvTestKeyUsage = {3, 2, 2, -4};
        byte[] tlvTestSubjectAlterName = {SprAnimatorBase.INTERPOLATOR_TYPE_SINEINOUT90, SprAnimatorBase.INTERPOLATOR_TYPE_SINEINOUT90, -122, SprAnimatorBase.INTERPOLATOR_TYPE_SINEINOUT70, 84, 104, 105, 115, 32, 105, 115, 32, 115, 117, 98, 106, 101, 99, 116, 32, SprAttributeBase.TYPE_ANIMATOR_SET, 108, 116, 101, 114, 110, SprAttributeBase.TYPE_ANIMATOR_SET, 116, 105, 118, 101, 32, 110, SprAttributeBase.TYPE_ANIMATOR_SET, 109, 101, 32, 102, 105, 101, 108, 100, 32, 116, 101, 115, 116, SprAnimatorBase.INTERPOLATOR_TYPE_SINEINOUT70, SprAnimatorBase.INTERPOLATOR_TYPE_SINEINOUT60, 95};
        byte[] tlbTestHashAlgo = {6, 9, SprAnimatorBase.INTERPOLATOR_TYPE_SINEIN33, -122, 72, -122, -9, 13, 1, 1, 5};
        if (tlv) {
            Tlv tlv2 = new Tlv();
            this.mTlv = tlv2;
            tlv2.setTlv(1, tlvTestExponent);
            this.mTlv.setTlv(5, tlvTestKeyUsage);
            this.mTlv.setTlv(29, tlvTestSubjectAlterName);
            this.mTlv.setTlv(3, tlbTestHashAlgo);
        } else {
            this.mTlv = null;
        }
        byte[] serviceCert = this.mDeviceRootKeyServiceManager.doSelfTestProvService(1, this.mTlv);
        if (serviceCert != null) {
            return SecureKeyConst.AT_RESPONSE_OK;
        }
        return SecureKeyConst.AT_RESPONSE_FAILED;
    }

    public String processTestCmd(int cmd, String subData) {
        String result;
        if (!"eng".equals(Build.TYPE)) {
            return SecureKeyConst.AT_RESPONSE_UNIMPLEMENTED;
        }
        DeviceRootKeyServiceManager deviceRootKeyServiceManager = this.mDeviceRootKeyServiceManager;
        if (deviceRootKeyServiceManager == null) {
            return SecureKeyConst.AT_RESPONSE_INSTANCE_ERROR;
        }
        try {
            switch (cmd) {
                case 90:
                    if (!deviceRootKeyServiceManager.isAliveDeviceRootKeyService()) {
                        result = SecureKeyConst.AT_RESPONSE_CONN_FAILED;
                        break;
                    } else {
                        result = SecureKeyConst.AT_RESPONSE_OK;
                        break;
                    }
                case 91:
                    if (isSupportedDrkV2()) {
                        result = SecureKeyConst.AT_RESPONSE_OK;
                        break;
                    } else {
                        result = SecureKeyConst.AT_RESPONSE_FAILED;
                        break;
                    }
                case 92:
                    if (!deviceRootKeyServiceManager.isExistDeviceRootKey(1)) {
                        result = SecureKeyConst.AT_RESPONSE_FAILED;
                        break;
                    } else {
                        result = SecureKeyConst.AT_RESPONSE_OK;
                        break;
                    }
                case 93:
                    String tmpStrResult = deviceRootKeyServiceManager.getDeviceRootKeyUID(1);
                    if (tmpStrResult == null) {
                        result = SecureKeyConst.AT_RESPONSE_FAILED;
                        break;
                    } else {
                        result = SecureKeyConst.AT_RESPONSE_OK;
                        break;
                    }
                case 94:
                    byte[] tmpResult = deviceRootKeyServiceManager.getDeviceRootKeyCertificate(1);
                    if (tmpResult == null) {
                        result = SecureKeyConst.AT_RESPONSE_FAILED;
                        break;
                    } else {
                        result = SecureKeyConst.AT_RESPONSE_OK;
                        break;
                    }
                case 95:
                    result = generateCertWithTlv(false);
                    break;
                case 96:
                    result = generateCertWithTlv(true);
                    break;
                case 97:
                    DeviceRootKeyServiceManager.DeviceInfo dInfo = deviceRootKeyServiceManager.getDeviceInfo(14);
                    if (dInfo == null) {
                        result = SecureKeyConst.AT_RESPONSE_FAILED;
                        break;
                    } else {
                        result = SecureKeyConst.AT_RESPONSE_OK;
                        break;
                    }
                default:
                    return SecureKeyConst.AT_RESPONSE_INVALID_PARAM;
            }
            return result;
        } catch (Exception e) {
            e.printStackTrace();
            String result2 = "NG_FAIL(EXCEPTION_OCCURS) " + e.getMessage();
            return result2;
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public String[] parsingParam(String cmd) {
        try {
            String params = cmd.substring(0, cmd.length());
            String[] result = params.split(",");
            return result;
        } catch (Exception e) {
            e.printStackTrace();
            return null;
        }
    }

    protected boolean appendKeyBlob(int sequenceNo, String keyBlob) {
        if (sequenceNo != 1) {
            if (sequenceNo == this.mTlvKeyBlobCounter + 1) {
                this.mTlvKeyBlobCounter = sequenceNo;
                this.mTlvKeyBlob += keyBlob;
            } else {
                initTlvKeyBlob();
                return false;
            }
        } else {
            this.mTlvKeyBlobCounter = sequenceNo;
            this.mTlvKeyBlob = keyBlob;
        }
        return true;
    }

    protected byte[] getTotalKeyBlob() {
        return this.mTlvKeyBlob.getBytes();
    }

    protected int getKeyBlobIndex() {
        return this.mTlvKeyBlobCounter;
    }

    protected void initTlvKeyBlob() {
        this.mTlvKeyBlobCounter = 0;
        this.mTlvKeyBlob = "";
    }

    protected int checkKeyValidity(int keyType) {
        int ret;
        int ret2 = 0;
        "factory".equals(SystemProperties.get("ro.factory.factory_binary"));
        boolean isSupportIDAttestation = false;
        boolean isSystemFirstApiLevelMoreThanT = Integer.parseInt(SystemProperties.get("ro.product.first_api_level")) >= 33;
        boolean isVendorFirstApiLevelMoreThanT = Integer.parseInt(SystemProperties.get("ro.vendor.build.version.sdk")) >= 33;
        boolean isExceptionHandlingGrfSModules = SystemProperties.get("ro.build.flavor", "").contains("a14m") || SystemProperties.get("ro.build.flavor", "").contains("a14xm") || SystemProperties.get("ro.build.flavor", "").contains("a24") || SystemProperties.get("ro.build.flavor", "").contains("a34x");
        if (isSystemFirstApiLevelMoreThanT && (isVendorFirstApiLevelMoreThanT || isExceptionHandlingGrfSModules)) {
            isSupportIDAttestation = true;
        }
        if (1 != 0) {
            if (isSupportIDAttestation && (ret = installDeviceID(keyType)) != 0) {
                Log.e(TAG, "installDeviceID failed");
                return ret;
            }
            ret2 = validateDeviceKey(keyType);
            if (ret2 != 0) {
                Log.e(TAG, "validateDeviceKey failed");
                return ret2;
            }
        }
        if ((keyType == 1 || (keyType == 4 && 1 != 0)) && (ret2 = validateDeviceKeyFromKeystore(keyType, isSupportIDAttestation)) != 0) {
            Log.e(TAG, "validateDeviceKeyFromKeystore failed");
            return ret2;
        }
        return ret2;
    }

    protected int installDeviceID(int keyType) {
        TelephonyManager telephonyService = (TelephonyManager) this.mContext.getSystemService("phone");
        String brand = isPropertyEmptyOrUnknown(Build.BRAND_FOR_ATTESTATION) ? Build.BRAND : Build.BRAND_FOR_ATTESTATION;
        String device = isPropertyEmptyOrUnknown(Build.DEVICE_FOR_ATTESTATION) ? Build.DEVICE : Build.DEVICE_FOR_ATTESTATION;
        String produt = isPropertyEmptyOrUnknown(Build.PRODUCT_FOR_ATTESTATION) ? Build.PRODUCT : Build.PRODUCT_FOR_ATTESTATION;
        String manufacturer = isPropertyEmptyOrUnknown(Build.MANUFACTURER_FOR_ATTESTATION) ? Build.MANUFACTURER : Build.MANUFACTURER_FOR_ATTESTATION;
        String model = isPropertyEmptyOrUnknown(Build.MODEL_FOR_ATTESTATION) ? Build.MODEL : Build.MODEL_FOR_ATTESTATION;
        String serial = Build.getSerial();
        String imei1 = telephonyService.getImei(0);
        String imei2 = telephonyService.getImei(1);
        String meid = telephonyService.getMeid(0);
        return installDeviceID(keyType, brand, device, produt, serial, imei1, imei2, meid, manufacturer, model);
    }

    protected boolean isEqualsRootPubKey(Certificate rootCert, int keyType) throws CertificateException {
        X509Certificate X509RootCert = (X509Certificate) rootCert;
        PublicKey pubkey = X509RootCert.getPublicKey();
        byte[] pubkeyEncoded = pubkey.getEncoded();
        if (keyType == 1 || keyType == 4) {
            if (Arrays.equals(pubkeyEncoded, SecureKeyConst.GoogleRootPubKey) || Arrays.equals(pubkeyEncoded, SecureKeyConst.GoogleDevRootPubKey)) {
                return true;
            }
            return false;
        }
        return false;
    }

    /* JADX WARN: Removed duplicated region for block: B:19:0x00c5 A[Catch: IOException | IllegalArgumentException | NullPointerException | InvalidAlgorithmParameterException | InvalidKeyException | KeyStoreException | NoSuchAlgorithmException | NoSuchProviderException | ProviderException | SignatureException | CertPathValidatorException | CertificateException -> 0x0260, TryCatch #1 {IOException | IllegalArgumentException | NullPointerException | InvalidAlgorithmParameterException | InvalidKeyException | KeyStoreException | NoSuchAlgorithmException | NoSuchProviderException | ProviderException | SignatureException | CertPathValidatorException | CertificateException -> 0x0260, blocks: (B:92:0x00b1, B:19:0x00c5, B:21:0x00cb, B:22:0x00d3, B:23:0x00da, B:25:0x00df, B:27:0x00f0, B:30:0x010b, B:31:0x010f), top: B:91:0x00b1 }] */
    /* JADX WARN: Removed duplicated region for block: B:25:0x00df A[Catch: IOException | IllegalArgumentException | NullPointerException | InvalidAlgorithmParameterException | InvalidKeyException | KeyStoreException | NoSuchAlgorithmException | NoSuchProviderException | ProviderException | SignatureException | CertPathValidatorException | CertificateException -> 0x0260, LOOP:0: B:23:0x00da->B:25:0x00df, LOOP_END, TryCatch #1 {IOException | IllegalArgumentException | NullPointerException | InvalidAlgorithmParameterException | InvalidKeyException | KeyStoreException | NoSuchAlgorithmException | NoSuchProviderException | ProviderException | SignatureException | CertPathValidatorException | CertificateException -> 0x0260, blocks: (B:92:0x00b1, B:19:0x00c5, B:21:0x00cb, B:22:0x00d3, B:23:0x00da, B:25:0x00df, B:27:0x00f0, B:30:0x010b, B:31:0x010f), top: B:91:0x00b1 }] */
    /* JADX WARN: Removed duplicated region for block: B:26:0x00f0 A[EDGE_INSN: B:26:0x00f0->B:27:0x00f0 BREAK  A[LOOP:0: B:23:0x00da->B:25:0x00df], SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:87:0x00a8 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    protected int validateDeviceKeyFromKeystore(int r30, boolean r31) {
        /*
            Method dump skipped, instructions count: 640
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.server.DevRootKeyATCmd.validateDeviceKeyFromKeystore(int, boolean):int");
    }

    protected boolean verifyCertChains(Certificate[] certs) throws CertificateException, NoSuchAlgorithmException, NoSuchProviderException, CertPathValidatorException, InvalidAlgorithmParameterException {
        List<X509Certificate> x509Certs = new ArrayList<>();
        int len = certs.length;
        for (int i = 1; i < len; i++) {
            X509Certificate x509Cert = (X509Certificate) certs[i];
            x509Certs.add(x509Cert);
        }
        return verifyCertChains(x509Certs);
    }

    protected boolean verifyCertChains(List<X509Certificate> certs) throws CertificateException, NoSuchAlgorithmException, NoSuchProviderException, CertPathValidatorException, InvalidAlgorithmParameterException {
        int len = certs.size();
        if (len != 0) {
            X509Certificate rootCert = certs.get(len - 1);
            X509Certificate finalCert = certs.get(0);
            CollectionCertStoreParameters ccsp = new CollectionCertStoreParameters(certs);
            CertStore store = CertStore.getInstance("Collection", ccsp);
            Calendar validDate = Calendar.getInstance();
            validDate.setTime(finalCert.getNotBefore());
            validDate.add(5, 2);
            List<X509Certificate> certchain = new ArrayList<>();
            for (int i = 0; i < len - 1; i++) {
                certchain.add(certs.get(i));
            }
            CertPath cp = CertificateFactory.getInstance("X.509").generateCertPath(certchain);
            Set<TrustAnchor> trust = new HashSet<>();
            trust.add(new TrustAnchor(rootCert, null));
            CertPathValidator cpv = CertPathValidator.getInstance("PKIX");
            PKIXParameters param = new PKIXParameters(trust);
            param.addCertStore(store);
            param.setDate(validDate.getTime());
            param.setRevocationEnabled(false);
            PKIXCertPathValidatorResult result = (PKIXCertPathValidatorResult) cpv.validate(cp, param);
            PublicKey subjectPublicKey = result.getPublicKey();
            if (!subjectPublicKey.equals(finalCert.getPublicKey())) {
                Log.e(TAG, "wrong public key returned");
                return false;
            }
            return true;
        }
        Log.e(TAG, "certification chain size is invalid");
        return false;
    }

    protected boolean isValidEM() {
        if (!SecureKeyConst.isJDM) {
            Log.i(TAG, "It is not a JDM project");
            return true;
        }
        if (SecureKeyConst.isDevDevice.equals("0x1")) {
            Log.i(TAG, "It is not A User Product Device");
            return true;
        }
        EngineeringModeManager EMMgr = new EngineeringModeManager(this.mContext.getApplicationContext());
        if (!EMMgr.isConnected()) {
            Log.e(TAG, "Failed to connect to em service");
            return false;
        }
        if (EMMgr.getStatus(28) == 1) {
            Log.i(TAG, "EM Status : Permitted");
            return true;
        }
        Log.e(TAG, "EM Status : Not Permitted");
        return false;
    }

    private boolean isPropertyEmptyOrUnknown(String property) {
        return TextUtils.isEmpty(property) || property.equals("unknown");
    }
}
