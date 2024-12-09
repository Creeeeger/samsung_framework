package com.sec.internal.ims.gba;

import android.content.Context;
import android.content.Intent;
import android.os.Looper;
import android.os.RemoteException;
import android.telephony.gba.GbaAuthRequest;
import android.text.TextUtils;
import android.util.Base64;
import android.util.Log;
import android.util.SparseArray;
import com.sec.internal.constants.Mno;
import com.sec.internal.helper.SimUtil;
import com.sec.internal.helper.StrUtil;
import com.sec.internal.helper.httpclient.HttpRequestParams;
import com.sec.internal.helper.os.ITelephonyManager;
import com.sec.internal.helper.os.TelephonyManagerWrapper;
import com.sec.internal.ims.core.sim.SimManagerFactory;
import com.sec.internal.ims.gba.params.GbaData;
import com.sec.internal.ims.servicemodules.base.ServiceModuleBase;
import com.sec.internal.ims.servicemodules.ss.UtUtils;
import com.sec.internal.interfaces.ims.IImsFramework;
import com.sec.internal.interfaces.ims.core.ISimManager;
import com.sec.internal.interfaces.ims.gba.IGbaCallback;
import com.sec.internal.interfaces.ims.gba.IGbaServiceModule;
import com.sec.internal.log.IMSLog;
import java.nio.charset.Charset;
import java.nio.charset.StandardCharsets;
import java.util.Arrays;

/* loaded from: classes.dex */
public class GbaServiceModule extends ServiceModuleBase implements IGbaServiceModule {
    private static final String GBA_ME = "gba-me";
    public static final String GBA_UICC = "gba-u";
    private static final String IMS_AUTH_NO_ERR_STRING = "db";
    private static final String IMS_AUTH_SYNC_FAIL = "dc";
    private Context mContext;
    private Gba mGba;
    private SparseArray<IGbaCallback> mGbaCallbacks;
    private IImsFramework mImsFramework;
    private ITelephonyManager mTelephonyManager;
    private int resLen;
    private static final String LOG_TAG = GbaServiceModule.class.getSimpleName();
    private static int mGbaIdCounter = 0;
    private static byte[] gbaKey = null;

    @Override // com.sec.internal.ims.servicemodules.base.ServiceModuleBase
    public void handleIntent(Intent intent) {
    }

    @Override // com.sec.internal.ims.servicemodules.base.ServiceModuleBase
    public void init() {
        super.init();
        super.start();
    }

    @Override // com.sec.internal.interfaces.ims.servicemodules.base.IServiceModule
    public String[] getServicesRequiring() {
        return new String[]{"ss", "mmtel", "ft_http"};
    }

    public GbaServiceModule(Looper looper, Context context, IImsFramework iImsFramework) {
        super(looper);
        this.resLen = 0;
        this.mGbaCallbacks = new SparseArray<>();
        this.mContext = context;
        this.mImsFramework = iImsFramework;
        this.mTelephonyManager = TelephonyManagerWrapper.getInstance(context);
        initGbaAccessibleObj();
    }

    @Override // com.sec.internal.interfaces.ims.gba.IGbaServiceModule
    public IGbaCallback getGbaCallback(int i) {
        return this.mGbaCallbacks.get(i);
    }

    @Override // com.sec.internal.interfaces.ims.gba.IGbaServiceModule
    public void removeGbaCallback(int i) {
        this.mGbaCallbacks.remove(i);
    }

    @Override // com.sec.internal.interfaces.ims.gba.IGbaServiceModule
    public void storeGbaBootstrapParams(int i, byte[] bArr, String str, String str2) {
        if (this.mTelephonyManager == null) {
            return;
        }
        IMSLog.s(LOG_TAG, "rand :" + StrUtil.bytesToHexString(bArr) + " btid :" + str + " keyLifetime :" + str2);
        this.mTelephonyManager.setGbaBootstrappingParams(i, Arrays.copyOfRange(bArr, 1, 17), str, str2);
    }

    public String transmitLogicChannel(int i, String str, String str2, int i2) throws RemoteException {
        int iccOpenLogicalChannelAndGetChannel = this.mTelephonyManager.iccOpenLogicalChannelAndGetChannel(i, str);
        String iccTransmitApduLogicalChannel = this.mTelephonyManager.iccTransmitApduLogicalChannel(i, iccOpenLogicalChannelAndGetChannel, 2, 136, 0, 132, i2, str2);
        this.mTelephonyManager.iccCloseLogicalChannel(i, iccOpenLogicalChannelAndGetChannel);
        return iccTransmitApduLogicalChannel;
    }

    public String parseResKeyFromIsimResponse(byte[] bArr) {
        String bytesToHexString = StrUtil.bytesToHexString(bArr);
        if (bytesToHexString != null) {
            String str = LOG_TAG;
            IMSLog.s(str, "AkaResponse for GBA as received from sim: " + bytesToHexString);
            if (("" + bytesToHexString.charAt(0) + bytesToHexString.charAt(1)).equalsIgnoreCase(IMS_AUTH_NO_ERR_STRING)) {
                int parseInt = Integer.parseInt(bytesToHexString.substring(2, 4), 16);
                this.resLen = parseInt;
                if (2 >= parseInt) {
                    Log.i(str, "Illegal response received from iSim");
                    return null;
                }
            }
            int i = this.resLen;
            byte[] bArr2 = new byte[i];
            try {
                System.arraycopy(bArr, 2, bArr2, 0, i);
                String encodeToString = Base64.encodeToString(bArr2, 2);
                IMSLog.s(str, "AkaResponse for GBA to be sent: " + StrUtil.bytesToHexString(bArr2) + " base64 decode : " + encodeToString);
                return encodeToString;
            } catch (IndexOutOfBoundsException e) {
                Log.e(LOG_TAG, "ArrayIndexOutOfBoundsException: " + e.getMessage());
            }
        }
        return null;
    }

    public String getBtidFromSim(int i) {
        String btid = this.mTelephonyManager.getBtid(i);
        IMSLog.s(LOG_TAG, "getBtid " + btid);
        return btid;
    }

    public String getKeyLifetime(int i) {
        return this.mTelephonyManager.getKeyLifetime(i);
    }

    public String getPrivateUserIdentityfromIsim(int i, ITelephonyManager iTelephonyManager, ISimManager iSimManager) {
        Mno simMno = SimUtil.getSimMno(i);
        int subId = SimUtil.getSubId(i);
        if (subId < 0) {
            return "";
        }
        String isimImpi = iTelephonyManager.getIsimImpi(subId);
        if (TextUtils.isEmpty(isimImpi)) {
            return isimImpi;
        }
        if (simMno.isOneOf(Mno.EE, Mno.EE_ESN) || simMno.isKor()) {
            String[] isimImpu = iTelephonyManager.getIsimImpu(subId);
            String isimDomain = iTelephonyManager.getIsimDomain(subId);
            boolean z = false;
            if (isimImpu != null) {
                int length = isimImpu.length;
                int i2 = 0;
                while (true) {
                    if (i2 >= length) {
                        break;
                    }
                    if (!TextUtils.isEmpty(isimImpu[i2])) {
                        z = true;
                        break;
                    }
                    i2++;
                }
            }
            String str = LOG_TAG;
            IMSLog.i(str, i, "getPrivateUserIdentityfromIsim: MNO=" + simMno + ", found impu=" + z + ", domain=" + isimDomain + ", impi=" + IMSLog.checker(isimImpi));
            if (simMno.isKor() && !z) {
                return "";
            }
            if (!z || TextUtils.isEmpty(isimDomain) || TextUtils.isEmpty(isimImpi)) {
                IMSLog.i(str, i, "getPrivateUserIdentityfromIsim: domain is null | impi is null | impu Not found");
                return "";
            }
        }
        return isimImpi;
    }

    @Override // com.sec.internal.interfaces.ims.gba.IGbaServiceModule
    public String getImpi(int i) {
        ISimManager simManagerFromSimSlot = SimManagerFactory.getSimManagerFromSimSlot(i);
        if (simManagerFromSimSlot == null) {
            return "";
        }
        String privateUserIdentityfromIsim = simManagerFromSimSlot.hasIsim() ? getPrivateUserIdentityfromIsim(i, this.mTelephonyManager, simManagerFromSimSlot) : "";
        IMSLog.i(LOG_TAG, "getImpi after isim impi = " + IMSLog.checker(privateUserIdentityfromIsim));
        return TextUtils.isEmpty(privateUserIdentityfromIsim) ? simManagerFromSimSlot.getDerivedImpi() : privateUserIdentityfromIsim;
    }

    @Override // com.sec.internal.interfaces.ims.gba.IGbaServiceModule
    public String getImei(int i) {
        ITelephonyManager iTelephonyManager = this.mTelephonyManager;
        if (iTelephonyManager == null) {
            return null;
        }
        return iTelephonyManager.getImei(i);
    }

    @Override // com.sec.internal.interfaces.ims.gba.IGbaServiceModule
    public boolean initGbaAccessibleObj() {
        this.mGba = new Gba();
        return true;
    }

    @Override // com.sec.internal.interfaces.ims.gba.IGbaServiceModule
    public boolean isGbaUiccSupported(int i) {
        return this.mTelephonyManager.isGbaSupported(i);
    }

    @Override // com.sec.internal.interfaces.ims.gba.IGbaServiceModule
    public synchronized int getBtidAndGbaKey(GbaAuthRequest gbaAuthRequest, IGbaCallback iGbaCallback) {
        String nafUrl;
        HttpRequestParams httpRequestParams;
        Log.i(LOG_TAG, "GBA: getBtidAndGbaKey GbaAuthRequest");
        int slotId = SimManagerFactory.getSlotId(gbaAuthRequest.getSubId());
        Mno simMno = SimUtil.getSimMno(slotId);
        nafUrl = GbaUtility.getNafUrl(gbaAuthRequest.getNafUrl().toString());
        httpRequestParams = new HttpRequestParams();
        httpRequestParams.setPhoneId(slotId);
        httpRequestParams.setMethod(HttpRequestParams.Method.GET);
        httpRequestParams.setConnectionTimeout(5000L);
        httpRequestParams.setBsfUrl(UtUtils.getBSFDomain(slotId));
        httpRequestParams.setUrl(gbaAuthRequest.getNafUrl().toSafeString());
        if (simMno.isOneOf(Mno.TMOUS, Mno.DISH)) {
            httpRequestParams.setUseImei(true);
        }
        if (gbaAuthRequest.getSecurityProtocol().length != 0) {
            if (gbaAuthRequest.getSecurityProtocol().length == 5) {
                byte[] securityProtocol = gbaAuthRequest.getSecurityProtocol();
                httpRequestParams.setCipherSuite(new byte[]{securityProtocol[3], securityProtocol[4]});
            } else {
                httpRequestParams.setCipherSuite(gbaAuthRequest.getSecurityProtocol());
            }
        }
        return getBtidAndGbaKey(httpRequestParams, nafUrl, null, iGbaCallback);
    }

    /* JADX WARN: Removed duplicated region for block: B:27:0x0072 A[Catch: all -> 0x012a, TryCatch #0 {, blocks: (B:4:0x0009, B:10:0x0015, B:12:0x0019, B:15:0x0023, B:17:0x0040, B:21:0x004e, B:25:0x0066, B:27:0x0072, B:28:0x0083, B:32:0x00a5, B:35:0x00c7, B:38:0x00dd, B:42:0x00f9, B:44:0x00ff, B:46:0x0105, B:47:0x010c, B:50:0x00e5, B:52:0x00eb, B:57:0x00cf, B:59:0x00d5, B:60:0x00c3, B:62:0x0125, B:65:0x007b), top: B:3:0x0009 }] */
    /* JADX WARN: Removed duplicated region for block: B:34:0x00c1  */
    /* JADX WARN: Removed duplicated region for block: B:40:0x00e3  */
    /* JADX WARN: Removed duplicated region for block: B:50:0x00e5 A[Catch: all -> 0x012a, TryCatch #0 {, blocks: (B:4:0x0009, B:10:0x0015, B:12:0x0019, B:15:0x0023, B:17:0x0040, B:21:0x004e, B:25:0x0066, B:27:0x0072, B:28:0x0083, B:32:0x00a5, B:35:0x00c7, B:38:0x00dd, B:42:0x00f9, B:44:0x00ff, B:46:0x0105, B:47:0x010c, B:50:0x00e5, B:52:0x00eb, B:57:0x00cf, B:59:0x00d5, B:60:0x00c3, B:62:0x0125, B:65:0x007b), top: B:3:0x0009 }] */
    /* JADX WARN: Removed duplicated region for block: B:60:0x00c3 A[Catch: all -> 0x012a, TryCatch #0 {, blocks: (B:4:0x0009, B:10:0x0015, B:12:0x0019, B:15:0x0023, B:17:0x0040, B:21:0x004e, B:25:0x0066, B:27:0x0072, B:28:0x0083, B:32:0x00a5, B:35:0x00c7, B:38:0x00dd, B:42:0x00f9, B:44:0x00ff, B:46:0x0105, B:47:0x010c, B:50:0x00e5, B:52:0x00eb, B:57:0x00cf, B:59:0x00d5, B:60:0x00c3, B:62:0x0125, B:65:0x007b), top: B:3:0x0009 }] */
    /* JADX WARN: Removed duplicated region for block: B:65:0x007b A[Catch: all -> 0x012a, TryCatch #0 {, blocks: (B:4:0x0009, B:10:0x0015, B:12:0x0019, B:15:0x0023, B:17:0x0040, B:21:0x004e, B:25:0x0066, B:27:0x0072, B:28:0x0083, B:32:0x00a5, B:35:0x00c7, B:38:0x00dd, B:42:0x00f9, B:44:0x00ff, B:46:0x0105, B:47:0x010c, B:50:0x00e5, B:52:0x00eb, B:57:0x00cf, B:59:0x00d5, B:60:0x00c3, B:62:0x0125, B:65:0x007b), top: B:3:0x0009 }] */
    @Override // com.sec.internal.interfaces.ims.gba.IGbaServiceModule
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public synchronized int getBtidAndGbaKey(com.sec.internal.helper.httpclient.HttpRequestParams r18, java.lang.String r19, com.sec.internal.helper.httpclient.HttpResponseParams r20, com.sec.internal.interfaces.ims.gba.IGbaCallback r21) {
        /*
            Method dump skipped, instructions count: 301
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.sec.internal.ims.gba.GbaServiceModule.getBtidAndGbaKey(com.sec.internal.helper.httpclient.HttpRequestParams, java.lang.String, com.sec.internal.helper.httpclient.HttpResponseParams, com.sec.internal.interfaces.ims.gba.IGbaCallback):int");
    }

    @Override // com.sec.internal.interfaces.ims.gba.IGbaServiceModule
    public GbaValue getGbaValue(int i, String str) {
        if (TextUtils.isEmpty(str)) {
            Log.d(LOG_TAG, "Invalid URI");
            return null;
        }
        return this.mGba.getGbaValue(str.getBytes(StandardCharsets.UTF_8), GBA_ME.getBytes(StandardCharsets.UTF_8), i);
    }

    @Override // com.sec.internal.interfaces.ims.gba.IGbaServiceModule
    public void resetGbaKey(String str, int i) {
        byte[] bytes;
        byte[] bytes2;
        String[] split = str.split("@");
        if (split.length <= 1) {
            Log.e(LOG_TAG, "realm does not have @. resetGbaKey can not process.");
            return;
        }
        if (split[1].contains(";")) {
            bytes = split[1].split(";")[0].getBytes(StandardCharsets.UTF_8);
        } else {
            bytes = split[1].getBytes(StandardCharsets.UTF_8);
        }
        if (str.contains("uicc") && this.mTelephonyManager.isGbaSupported(SimUtil.getSubId(i))) {
            bytes2 = GBA_UICC.getBytes(StandardCharsets.UTF_8);
        } else {
            bytes2 = GBA_ME.getBytes(StandardCharsets.UTF_8);
        }
        this.mGba.removeGbaKey(bytes, bytes2, i);
    }

    @Override // com.sec.internal.interfaces.ims.gba.IGbaServiceModule
    public String storeGbaDataAndGenerateKey(String str, String str2, String str3, byte[] bArr, byte[] bArr2, byte[] bArr3, GbaData gbaData, boolean z, int i) {
        String generateGbaKey = generateGbaKey(bArr2, bArr3, StrUtil.hexStringToBytes(splitRandAutn(str3)[0]), str, str2, bArr, gbaData, z, i);
        IMSLog.s(LOG_TAG, "storeGbaDataAndGenerateKey(): base64 gbaKey: " + generateGbaKey);
        return generateGbaKey;
    }

    private static String[] splitRandAutn(String str) {
        String bytesToHexString = StrUtil.bytesToHexString(Base64.decode(str.getBytes(), 2));
        IMSLog.s(LOG_TAG, "Decoded AKA Challenge: " + bytesToHexString + " length: " + bytesToHexString.length());
        if (bytesToHexString.length() < 64) {
            return new String[]{"", ""};
        }
        return new String[]{"10" + bytesToHexString.substring(0, 32), "10" + bytesToHexString.substring(32, 64)};
    }

    /* JADX WARN: Removed duplicated region for block: B:11:0x0085  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private java.lang.String generateGbaKey(byte[] r17, byte[] r18, byte[] r19, java.lang.String r20, java.lang.String r21, byte[] r22, com.sec.internal.ims.gba.params.GbaData r23, boolean r24, int r25) {
        /*
            r16 = this;
            r0 = r16
            r11 = r17
            r12 = r18
            r1 = r19
            com.sec.internal.helper.os.ITelephonyManager r2 = r0.mTelephonyManager
            r3 = 0
            if (r2 != 0) goto Le
            return r3
        Le:
            java.lang.String r2 = new java.lang.String
            r2.<init>(r11)
            java.lang.String r4 = com.sec.internal.ims.gba.GbaServiceModule.LOG_TAG
            java.lang.StringBuilder r5 = new java.lang.StringBuilder
            r5.<init>()
            java.lang.String r6 = "generateGbaKey(): gbaType: "
            r5.append(r6)
            java.lang.String r6 = new java.lang.String
            r6.<init>(r11)
            r5.append(r6)
            java.lang.String r6 = " nafId: "
            r5.append(r6)
            java.lang.String r6 = new java.lang.String
            r6.<init>(r12)
            r5.append(r6)
            java.lang.String r5 = r5.toString()
            com.sec.internal.log.IMSLog.s(r4, r5)
            java.lang.String r5 = "gba-u"
            boolean r2 = r5.equals(r2)
            r13 = 2
            if (r2 == 0) goto La3
            int r2 = com.sec.internal.helper.SimUtil.getSubId(r25)
            r14 = r20
            r15 = r21
            r0.storeGbaBootstrapParams(r2, r1, r14, r15)
            r10 = r22
            r9 = r24
            byte[] r1 = com.sec.internal.ims.gba.GbaUtility.getSecurityProtocolId(r12, r10, r9)
            java.lang.String r1 = com.sec.internal.helper.StrUtil.bytesToHexString(r1)
            int r2 = com.sec.internal.helper.SimUtil.getSubId(r25)
            java.lang.String r1 = r0.getGbaKeyResponse(r2, r1)
            java.lang.StringBuilder r2 = new java.lang.StringBuilder
            r2.<init>()
            java.lang.String r5 = "generateGbaKey(): response: "
            r2.append(r5)
            r2.append(r1)
            java.lang.String r2 = r2.toString()
            com.sec.internal.log.IMSLog.s(r4, r2)
            if (r1 == 0) goto L82
            char[] r1 = r1.toCharArray()     // Catch: org.apache.commons.codec.DecoderException -> L82
            byte[] r1 = org.apache.commons.codec.binary.Hex.decodeHex(r1)     // Catch: org.apache.commons.codec.DecoderException -> L82
            goto L83
        L82:
            r1 = r3
        L83:
            if (r1 == 0) goto L89
            java.lang.String r3 = r0.parseResKeyFromIsimResponse(r1)
        L89:
            r8 = r3
            com.sec.internal.ims.gba.Gba r0 = r0.mGba
            if (r0 == 0) goto Lf0
            if (r8 == 0) goto Lf0
            byte[] r3 = android.util.Base64.decode(r8, r13)
            r6 = 1
            r1 = r17
            r2 = r18
            r4 = r21
            r5 = r20
            r7 = r25
            r0.storeGbaKey(r1, r2, r3, r4, r5, r6, r7)
            goto Lf0
        La3:
            r14 = r20
            r15 = r21
            r10 = r22
            r9 = r24
            r2 = 1
            r3 = 17
            byte[] r4 = java.util.Arrays.copyOfRange(r1, r2, r3)
            r8 = r25
            java.lang.String r1 = r0.getImpi(r8)
            java.lang.String r2 = r23.getCipkey()
            byte[] r2 = com.sec.internal.helper.StrUtil.hexStringToBytes(r2)
            java.lang.String r3 = r23.getIntkey()
            byte[] r3 = com.sec.internal.helper.StrUtil.hexStringToBytes(r3)
            java.nio.charset.Charset r5 = java.nio.charset.StandardCharsets.UTF_8
            byte[] r5 = r1.getBytes(r5)
            r1 = r17
            r6 = r18
            r7 = r21
            r8 = r20
            java.lang.String r8 = com.sec.internal.ims.gba.GbaUtility.igenerateGbaMEKey(r1, r2, r3, r4, r5, r6, r7, r8, r9, r10)
            com.sec.internal.ims.gba.Gba r0 = r0.mGba
            if (r0 == 0) goto Lf0
            byte[] r3 = android.util.Base64.decode(r8, r13)
            r6 = 0
            r1 = r17
            r2 = r18
            r4 = r21
            r5 = r20
            r7 = r25
            r0.storeGbaKey(r1, r2, r3, r4, r5, r6, r7)
        Lf0:
            return r8
        */
        throw new UnsupportedOperationException("Method not decompiled: com.sec.internal.ims.gba.GbaServiceModule.generateGbaKey(byte[], byte[], byte[], java.lang.String, java.lang.String, byte[], com.sec.internal.ims.gba.params.GbaData, boolean, int):java.lang.String");
    }

    @Override // com.sec.internal.interfaces.ims.gba.IGbaServiceModule
    public GbaData getPassword(String str, boolean z, int i) {
        String isimAuthentication;
        byte[] bArr;
        String str2;
        String[] splitRandAutn = splitRandAutn(str);
        String str3 = splitRandAutn[0] + splitRandAutn[1];
        String str4 = null;
        if (z) {
            isimAuthentication = getIsimResponse(SimUtil.getSubId(i), str3);
        } else {
            ISimManager simManagerFromSimSlot = SimManagerFactory.getSimManagerFromSimSlot(i);
            isimAuthentication = simManagerFromSimSlot == null ? null : simManagerFromSimSlot.getIsimAuthentication(str3);
        }
        if (isimAuthentication == null) {
            return null;
        }
        if (isimAuthentication.toLowerCase().startsWith(IMS_AUTH_SYNC_FAIL)) {
            return new GbaData(isimAuthentication, "", "");
        }
        if (!isimAuthentication.toLowerCase().startsWith(IMS_AUTH_NO_ERR_STRING)) {
            Log.e(LOG_TAG, "getPassword(): wrong IsimResponse: " + isimAuthentication);
            return null;
        }
        try {
            bArr = StrUtil.hexStringToBytes(isimAuthentication);
        } catch (RuntimeException unused) {
            bArr = null;
        }
        if (bArr == null) {
            return null;
        }
        byte b = bArr[1];
        int i2 = 2 + b;
        String str5 = new String(Arrays.copyOfRange(bArr, 2, i2), Charset.forName("CP1252"));
        IMSLog.s(LOG_TAG, "getPassword(): password = " + str5);
        if (z) {
            str2 = null;
        } else {
            int i3 = i2 + 1;
            byte b2 = bArr[i2];
            int i4 = (b * 2) + 4 + 2;
            int i5 = (b2 * 2) + i4;
            String substring = isimAuthentication.substring(i4, i5);
            int i6 = bArr[i3 + b2];
            if (i6 < 0) {
                i6 = 256 - i6;
            }
            int i7 = i5 + 2;
            str2 = isimAuthentication.substring(i7, (i6 * 2) + i7);
            str4 = substring;
        }
        GbaData gbaData = new GbaData(str5, str4, str2);
        gbaData.setPhoneId(i);
        return gbaData;
    }

    private String getGbaKeyResponse(int i, String str) {
        if (this.mTelephonyManager == null) {
            return null;
        }
        String str2 = "";
        try {
            str2 = transmitLogicChannel(i, this.mTelephonyManager.getAidForAppType(i, 5), "DE" + Integer.toHexString(str.length() / 2) + str + "00", (r6.length() / 2) - 1);
            IMSLog.s(LOG_TAG, "getGbaKeyResponse response " + str2);
            return str2;
        } catch (RemoteException unused) {
            return str2;
        }
    }

    private String getIsimResponse(int i, String str) {
        if (this.mTelephonyManager == null) {
            return null;
        }
        String str2 = "";
        try {
            str2 = transmitLogicChannel(i, this.mTelephonyManager.getAidForAppType(i, 5), "DD" + str + "00", (r6.length() / 2) - 1);
            IMSLog.s(LOG_TAG, "getIsimResponse response " + str2);
            return str2;
        } catch (RemoteException unused) {
            return str2;
        }
    }

    private boolean isRealmFromUsername(int i) {
        Mno simMno = SimUtil.getSimMno(i);
        return simMno == Mno.KPN_NED || simMno == Mno.TELEFONICA_CZ || simMno == Mno.TELEFONICA_SLOVAKIA;
    }

    private int createRequestId() {
        if (mGbaIdCounter >= 255) {
            mGbaIdCounter = 0;
        }
        int i = mGbaIdCounter + 1;
        mGbaIdCounter = i;
        return i;
    }
}
