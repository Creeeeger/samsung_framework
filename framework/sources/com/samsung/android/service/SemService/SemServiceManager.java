package com.samsung.android.service.SemService;

import android.content.Context;
import android.os.RemoteException;
import android.os.ServiceManager;
import android.os.SystemProperties;
import android.text.TextUtils;
import android.text.format.DateFormat;
import android.util.Log;
import com.android.internal.midi.MidiConstants;
import com.samsung.android.service.SemService.ISemService;
import java.util.ArrayList;
import java.util.Arrays;

/* loaded from: classes5.dex */
public final class SemServiceManager {
    public static final int ERROR = -1;
    public static final int ERROR_ADD_DEL_LIST = -16;
    public static final int ERROR_BOOT_DEACT = -17;
    public static final int ERROR_CLASS_NOT_FOUND = -2;
    public static final int ERROR_DATA = -13;
    public static final int ERROR_DEACTIVATION = -18;
    public static final int ERROR_EXCEPTION = -90;
    public static final int ERROR_FACTORY_ERROR = -10;
    public static final int ERROR_NOT_SUPPORTED = -10;
    public static final int ERROR_NO_PERMISSION = -91;
    public static final int ERROR_NO_SERVICE = -92;
    public static final int ERROR_SELECT_ERROR = -11;
    public static final int ERROR_SEND_ERROR = -12;
    public static final int ERROR_UNSAT_LINK = -3;
    public static final int ESESTATUS_BUSY = -200;
    public static final int ESESTATUS_NOT_SUPPORTED = -100;
    private static final int MAX_CAPDU_SIZE = 65545;
    private static final int MAX_RAPDU_SIZE = 65538;
    public static final int NO_ERROR = 0;
    public static final int NO_ERROR_SPI = 0;
    public static final int SSD_NOT_EXIST_APPLET_EXIST = 5;
    public static final int SSD_NOT_EXIST_APPLET_NOT_EXIST = 4;
    public static final int SSD_NOT_SELECTABLE_APPLET_EXIST = 2;
    public static final int SSD_NOT_SELECTABLE_APPLET_NOT_EXIST = 3;
    public static final int SSD_NOT_SELECTABLE_APPLET_NOT_IN_SSD = 6;
    public static final int SSD_SELECTABLE_APPLET_EXIST = 0;
    public static final int SSD_SELECTABLE_APPLET_NOT_EXIST = 1;
    private static final String TAG = "SEC_ESE_ServiceManager";
    public static final boolean isSupportSemService = true;
    private static final int normalSpi_Flag = 0;
    private static final int secureSpi_Flag = 1;
    private boolean isSupportEseChip;
    private Context mContext;
    private ISemService mSemService;
    public static final String ERROR_NO_PERMISSION_STRING = null;
    private static final char[] HEX_CHARS = {'0', '1', '2', '3', '4', '5', '6', '7', '8', '9', DateFormat.CAPITAL_AM_PM, 'B', 'C', 'D', DateFormat.DAY, 'F'};

    /* renamed from: -$$Nest$fgetmContext, reason: not valid java name */
    static /* bridge */ /* synthetic */ Context m8704$$Nest$fgetmContext(SemServiceManager semServiceManager) {
        return semServiceManager.mContext;
    }

    /* renamed from: -$$Nest$mAIDDeactivation, reason: not valid java name */
    static /* bridge */ /* synthetic */ int m8705$$Nest$mAIDDeactivation(SemServiceManager semServiceManager, ArrayList arrayList) {
        return semServiceManager.AIDDeactivation(arrayList);
    }

    /* renamed from: -$$Nest$mparseList, reason: not valid java name */
    static /* bridge */ /* synthetic */ ArrayList m8706$$Nest$mparseList(SemServiceManager semServiceManager, byte[] bArr, int i) {
        return semServiceManager.parseList(bArr, i);
    }

    public SemServiceManager(Context context) {
        boolean z = !"NXP".isEmpty();
        this.isSupportEseChip = z;
        this.mContext = context;
        if (!z) {
            Log.w(TAG, "SemService is not supported");
            return;
        }
        ISemService asInterface = ISemService.Stub.asInterface(ServiceManager.getService("SemService"));
        this.mSemService = asInterface;
        if (asInterface == null) {
            Log.w(TAG, this.mContext.getPackageName() + " connects to SemService is failed.");
        } else {
            Log.i(TAG, this.mContext.getPackageName() + " connects to SemService.");
        }
    }

    public boolean isConnected() {
        if (this.isSupportEseChip) {
            return this.mSemService != null;
        }
        Log.i(TAG, "SemService is not supported");
        return false;
    }

    public String get_ESEA() {
        Log.i(TAG, "get_ESEA() is called.");
        if (!this.isSupportEseChip) {
            Log.i(TAG, "SemService is not supported");
            return null;
        }
        try {
            return this.mSemService.get_ESEA();
        } catch (Exception e) {
            e.printStackTrace();
            return null;
        } catch (NoClassDefFoundError e2) {
            e2.printStackTrace();
            return null;
        } catch (NullPointerException npe) {
            Log.e(TAG, "Failed to connect service.");
            npe.printStackTrace();
            return null;
        } catch (UnsatisfiedLinkError e3) {
            e3.printStackTrace();
            return null;
        }
    }

    public String getCPLC14mode() {
        Log.i(TAG, "getCPLC14mode() is called.");
        if (!this.isSupportEseChip) {
            Log.i(TAG, "SemService is not supported");
            return null;
        }
        try {
            return this.mSemService.getCPLC14mode();
        } catch (Exception e) {
            e.printStackTrace();
            return null;
        } catch (NoClassDefFoundError e2) {
            e2.printStackTrace();
            return null;
        } catch (NullPointerException npe) {
            Log.e(TAG, "Failed to connect service.");
            npe.printStackTrace();
            return null;
        } catch (UnsatisfiedLinkError e3) {
            e3.printStackTrace();
            return null;
        }
    }

    public void semFactory() {
        Log.i(TAG, "semFactory() is called.");
        if (!this.isSupportEseChip) {
            Log.i(TAG, "SemService is not supported");
            return;
        }
        try {
            this.mSemService.sem_factory();
        } catch (Exception e) {
            e.printStackTrace();
        } catch (NoClassDefFoundError e2) {
            e2.printStackTrace();
        } catch (NullPointerException npe) {
            Log.e(TAG, "Failed to connect service.");
            npe.printStackTrace();
        } catch (UnsatisfiedLinkError e3) {
            e3.printStackTrace();
        }
    }

    private boolean isSupportEsek() {
        try {
            String propValue = SystemProperties.get("ro.security.ese.support_esek");
            if (!TextUtils.isEmpty(propValue)) {
                if (propValue.equals("1")) {
                    return true;
                }
            }
            return false;
        } catch (Exception e) {
            Log.e(TAG, "failed to get sysProp: ro.security.ese.support_esek");
            return false;
        }
    }

    public int esekCertificateCheck() {
        Log.i(TAG, "esekCertificateCheck() is called.");
        if (!isSupportEsek()) {
            Log.i(TAG, "eSEK is not supported");
            return -10;
        }
        if (!this.isSupportEseChip) {
            Log.i(TAG, "SemService is not supported");
            return -92;
        }
        try {
            return this.mSemService.esek_certificate_check();
        } catch (Exception e) {
            e.printStackTrace();
            return -90;
        } catch (NoClassDefFoundError e2) {
            e2.printStackTrace();
            return -90;
        } catch (NullPointerException npe) {
            Log.e(TAG, "Failed to connect service.");
            npe.printStackTrace();
            return -92;
        } catch (UnsatisfiedLinkError e3) {
            e3.printStackTrace();
            return -90;
        }
    }

    public int scp11CertificateCheck() {
        Log.i(TAG, "scp11CertificateCheck() is called.");
        if (!isSupportEsek()) {
            Log.i(TAG, "eSEK is not supported");
            return -10;
        }
        if (!this.isSupportEseChip) {
            Log.i(TAG, "SemService is not supported");
            return -92;
        }
        try {
            return this.mSemService.scp11_certificate_check();
        } catch (Exception e) {
            e.printStackTrace();
            return -90;
        } catch (NoClassDefFoundError e2) {
            e2.printStackTrace();
            return -90;
        } catch (NullPointerException npe) {
            Log.e(TAG, "Failed to connect service.");
            npe.printStackTrace();
            return -92;
        } catch (UnsatisfiedLinkError e3) {
            e3.printStackTrace();
            return -90;
        }
    }

    public int injectEsesmKeyset() {
        Log.i(TAG, "injectEsesmKeyset() is called.");
        if (!isSupportEsek()) {
            Log.i(TAG, "eSEK is not supported");
            return -10;
        }
        if (!this.isSupportEseChip) {
            Log.i(TAG, "SemService is not supported");
            return -92;
        }
        try {
            return this.mSemService.inject_esesm_keyset();
        } catch (Exception e) {
            e.printStackTrace();
            return -90;
        } catch (NoClassDefFoundError e2) {
            e2.printStackTrace();
            return -90;
        } catch (NullPointerException npe) {
            Log.e(TAG, "Failed to connect service.");
            npe.printStackTrace();
            return -92;
        } catch (UnsatisfiedLinkError e3) {
            e3.printStackTrace();
            return -90;
        }
    }

    public int verifyEsesmKeyset() {
        Log.i(TAG, "verifyEsesmKeyset() is called.");
        if (!isSupportEsek()) {
            Log.i(TAG, "eSEK is not supported");
            return -10;
        }
        if (!this.isSupportEseChip) {
            Log.i(TAG, "SemService is not supported");
            return -92;
        }
        try {
            return this.mSemService.verify_esesm_keyset();
        } catch (Exception e) {
            e.printStackTrace();
            return -90;
        } catch (NoClassDefFoundError e2) {
            e2.printStackTrace();
            return -90;
        } catch (NullPointerException npe) {
            Log.e(TAG, "Failed to connect service.");
            npe.printStackTrace();
            return -92;
        } catch (UnsatisfiedLinkError e3) {
            e3.printStackTrace();
            return -90;
        }
    }

    public String[] sem_handleCCM(byte[] ccmData, int ccmDataLen) {
        Log.i(TAG, "sem_handleCCM() is called.");
        if (!this.isSupportEseChip) {
            Log.i(TAG, "SemService is not supported");
            return null;
        }
        try {
            return this.mSemService.handle_CCM(ccmData, ccmDataLen);
        } catch (Exception e) {
            e.printStackTrace();
            return null;
        } catch (NoClassDefFoundError e2) {
            e2.printStackTrace();
            return null;
        } catch (NullPointerException npe) {
            Log.e(TAG, "Failed to connect service.");
            npe.printStackTrace();
            return null;
        } catch (UnsatisfiedLinkError e3) {
            e3.printStackTrace();
            return null;
        }
    }

    public String[] sem_handleCCMCB(byte[] ccmData, int ccmDataLen, byte[] respData, int respLen) {
        Log.i(TAG, "sem_handleCCMCB() is called.");
        if (!this.isSupportEseChip) {
            Log.i(TAG, "SemService is not supported");
            return null;
        }
        try {
            String[] ret = this.mSemService.handle_CCMCB(ccmData, ccmDataLen, respData, respLen);
            byte[] ccmData0103 = Arrays.copyOf(respData, respLen);
            Log.i(TAG, "ccmData : " + bytesToHex(ccmData0103));
            Log.i(TAG, "ccmDataLen : " + respLen);
            return ret;
        } catch (NoClassDefFoundError e) {
            e.printStackTrace();
            return null;
        } catch (NullPointerException npe) {
            Log.e(TAG, "Failed to connect service.");
            npe.printStackTrace();
            return null;
        } catch (Exception e2) {
            e2.printStackTrace();
            return null;
        } catch (UnsatisfiedLinkError e3) {
            e3.printStackTrace();
            return null;
        }
    }

    public int isLccmSwp() {
        if (!this.isSupportEseChip) {
            Log.i(TAG, "SemService is not supported");
            return -92;
        }
        try {
            return this.mSemService.isLccmSwp();
        } catch (NoClassDefFoundError e) {
            e.printStackTrace();
            return -90;
        } catch (NullPointerException npe) {
            Log.e(TAG, "Failed to connect service.");
            npe.printStackTrace();
            return -92;
        } catch (Exception e2) {
            e2.printStackTrace();
            return -90;
        } catch (UnsatisfiedLinkError e3) {
            e3.printStackTrace();
            return -90;
        }
    }

    public int getHQMMemory(byte[] hw_memory_data) {
        Log.i(TAG, "getHQMMemory() is called.");
        if (!this.isSupportEseChip) {
            Log.i(TAG, "SemService is not supported");
            return -92;
        }
        try {
            return this.mSemService.get_HQMMemory(hw_memory_data);
        } catch (NullPointerException npe) {
            Log.e(TAG, "Failed to connect service.");
            npe.printStackTrace();
            return -92;
        } catch (Exception e) {
            e.printStackTrace();
            return -90;
        } catch (NoClassDefFoundError e2) {
            e2.printStackTrace();
            return -90;
        } catch (UnsatisfiedLinkError e3) {
            e3.printStackTrace();
            return -90;
        }
    }

    public int deactivateCards(int RequestType, String[] package_name, int[] package_len, int arrayLen) {
        Log.i(TAG, "deactivateCards is called.");
        if (!this.isSupportEseChip) {
            Log.i(TAG, "SemService is not supported");
            return -92;
        }
        try {
            return this.mSemService.deactivate_Cards(RequestType, package_name, package_len, arrayLen);
        } catch (NullPointerException npe) {
            Log.e(TAG, "Failed to connect service.");
            npe.printStackTrace();
            return -92;
        } catch (Exception e) {
            e.printStackTrace();
            return -90;
        } catch (NoClassDefFoundError e2) {
            e2.printStackTrace();
            return -90;
        } catch (UnsatisfiedLinkError e3) {
            e3.printStackTrace();
            return -90;
        }
    }

    public int deactivateCardsAID(int RequestType, int bean, String[] package_name, int[] package_len, int arrayLen) {
        Log.i(TAG, "deactivateCardsAID is called.");
        if (!this.isSupportEseChip) {
            Log.i(TAG, "SemService is not supported");
            return -92;
        }
        try {
            return this.mSemService.deactivate_CardsAID(RequestType, bean, package_name, package_len, arrayLen);
        } catch (NoClassDefFoundError e) {
            e.printStackTrace();
            return -90;
        } catch (NullPointerException npe) {
            Log.e(TAG, "Failed to connect service.");
            npe.printStackTrace();
            return -92;
        } catch (Exception e2) {
            e2.printStackTrace();
            return -90;
        } catch (UnsatisfiedLinkError e3) {
            e3.printStackTrace();
            return -90;
        }
    }

    public int getSCRSVersion() {
        int ret;
        String factoryProp;
        byte[] selectSCRSCmd = {0, -92, 4, 0, 9, MidiConstants.STATUS_POLYPHONIC_AFTERTOUCH, 0, 0, 1, 81, 67, 82, 83, 0};
        byte[] getVersionCmd = {Byte.MIN_VALUE, -54, 0, -16, 0};
        String scrsVersion = null;
        boolean isOpen = false;
        if (!this.isSupportEseChip) {
            Log.i(TAG, "SemService is not supported");
            return -92;
        }
        try {
            factoryProp = SystemProperties.get("ro.factory.factory_binary");
        } catch (NullPointerException e) {
            Log.e(TAG, "Failed to connect service. " + e);
            ret = -90;
        } catch (Exception e2) {
            Log.e(TAG, "Exception " + e2);
            ret = -90;
        } catch (NoClassDefFoundError e3) {
            Log.e(TAG, "Failed to find class." + e3);
            ret = -90;
        } catch (UnsatisfiedLinkError e4) {
            Log.e(TAG, "Failed to link.");
            ret = -90;
        } catch (Error e5) {
            Log.e(TAG, "Error " + e5);
            ret = -90;
        }
        if (factoryProp != null && "factory".equals(factoryProp)) {
            Log.i(TAG, "FACTORY NOT SUPPORT");
            return -10;
        }
        int ret2 = open();
        if (ret2 != 0) {
            Log.e(TAG, "OPEN Error " + ret2);
            return ret2;
        }
        isOpen = true;
        byte[] baRsp = send(selectSCRSCmd);
        if (baRsp != null && baRsp.length >= 2) {
            int baRspLen = baRsp.length;
            Log.i(TAG, "Select SW : " + byteToHex(baRsp[baRspLen - 2]) + byteToHex(baRsp[baRspLen - 1]));
            if (baRspLen >= 2 && baRsp[baRspLen - 2] == -112 && baRsp[baRspLen - 1] == 0) {
                byte[] baRsp2 = send(getVersionCmd);
                if (baRsp2 != null && baRsp2.length >= 2) {
                    int baRspLen2 = baRsp2.length;
                    Log.i(TAG, "RSP SW : " + byteToHex(baRsp2[baRspLen2 - 2]) + byteToHex(baRsp2[baRspLen2 - 1]));
                    if (baRspLen2 > 3 && baRsp2[baRspLen2 - 2] == -112 && baRsp2[baRspLen2 - 1] == 0) {
                        String scrsVersion2 = byteToHex(baRsp2[2]);
                        scrsVersion = scrsVersion2 + byteToHex(baRsp2[3]);
                        if (scrsVersion != null) {
                            ret = Integer.parseInt(scrsVersion);
                        } else {
                            Log.e(TAG, "Parse Version Error");
                            ret = -13;
                        }
                    } else {
                        Log.e(TAG, "Send Fail " + bytesToHex(baRsp2));
                        ret = -12;
                    }
                    Log.i(TAG, "SCRS Version : " + scrsVersion);
                }
                Log.e(TAG, "Send Error");
                close();
                return -12;
            }
            Log.e(TAG, "Select Fail " + bytesToHex(baRsp));
            ret = -11;
            if (isOpen) {
                close();
            }
            return ret;
        }
        Log.e(TAG, "Select Error");
        close();
        return -11;
    }

    /*  JADX ERROR: Types fix failed
        java.lang.NullPointerException: Cannot invoke "jadx.core.dex.instructions.args.InsnArg.getType()" because "changeArg" is null
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.moveListener(TypeUpdate.java:439)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:232)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:212)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:183)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:112)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.apply(TypeUpdate.java:83)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.apply(TypeUpdate.java:56)
        	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryPossibleTypes(FixTypesVisitor.java:183)
        	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.deduceType(FixTypesVisitor.java:242)
        	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryDeduceTypes(FixTypesVisitor.java:221)
        	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:91)
        */
    /* JADX WARN: Failed to apply debug info
    java.lang.NullPointerException: Cannot invoke "jadx.core.dex.instructions.args.InsnArg.getType()" because "changeArg" is null
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.moveListener(TypeUpdate.java:439)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:232)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:212)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:183)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:112)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.apply(TypeUpdate.java:83)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.applyWithWiderIgnoreUnknown(TypeUpdate.java:74)
    	at jadx.core.dex.visitors.debuginfo.DebugInfoApplyVisitor.applyDebugInfo(DebugInfoApplyVisitor.java:137)
    	at jadx.core.dex.visitors.debuginfo.DebugInfoApplyVisitor.applyDebugInfo(DebugInfoApplyVisitor.java:133)
    	at jadx.core.dex.visitors.debuginfo.DebugInfoApplyVisitor.searchAndApplyVarDebugInfo(DebugInfoApplyVisitor.java:75)
    	at jadx.core.dex.visitors.debuginfo.DebugInfoApplyVisitor.lambda$applyDebugInfo$0(DebugInfoApplyVisitor.java:68)
    	at java.base/java.util.ArrayList.forEach(Unknown Source)
    	at jadx.core.dex.visitors.debuginfo.DebugInfoApplyVisitor.applyDebugInfo(DebugInfoApplyVisitor.java:68)
    	at jadx.core.dex.visitors.debuginfo.DebugInfoApplyVisitor.visit(DebugInfoApplyVisitor.java:55)
     */
    /* JADX WARN: Not initialized variable reg: 17, insn: 0x01f0: MOVE (r4 I:??[int, float, boolean, short, byte, char, OBJECT, ARRAY]) = (r17 I:??[int, float, boolean, short, byte, char, OBJECT, ARRAY] A[D('ret' int)]), block:B:80:0x01ef */
    /* JADX WARN: Not initialized variable reg: 17, insn: 0x01f5: MOVE (r4 I:??[int, float, boolean, short, byte, char, OBJECT, ARRAY]) = (r17 I:??[int, float, boolean, short, byte, char, OBJECT, ARRAY] A[D('ret' int)]), block:B:71:0x01f4 */
    /* JADX WARN: Not initialized variable reg: 17, insn: 0x01fa: MOVE (r4 I:??[int, float, boolean, short, byte, char, OBJECT, ARRAY]) = (r17 I:??[int, float, boolean, short, byte, char, OBJECT, ARRAY] A[D('ret' int)]), block:B:77:0x01f9 */
    /* JADX WARN: Not initialized variable reg: 17, insn: 0x0200: MOVE (r4 I:??[int, float, boolean, short, byte, char, OBJECT, ARRAY]) = (r17 I:??[int, float, boolean, short, byte, char, OBJECT, ARRAY] A[D('ret' int)]), block:B:74:0x01ff */
    /* JADX WARN: Not initialized variable reg: 17, insn: 0x0206: MOVE (r4 I:??[int, float, boolean, short, byte, char, OBJECT, ARRAY]) = (r17 I:??[int, float, boolean, short, byte, char, OBJECT, ARRAY] A[D('ret' int)]), block:B:68:0x0205 */
    public int addSCRSList(java.lang.String r21, java.util.ArrayList<java.lang.String> r22) {
        /*
            Method dump skipped, instructions count: 709
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.samsung.android.service.SemService.SemServiceManager.addSCRSList(java.lang.String, java.util.ArrayList):int");
    }

    public int deactivateSCRSList(final String inputFlag, final ArrayList<String> inputAid) {
        if (!this.isSupportEseChip) {
            Log.i(TAG, "SemService is not supported");
            return -92;
        }
        new Thread(new Runnable() { // from class: com.samsung.android.service.SemService.SemServiceManager.1
            /*  JADX ERROR: Types fix failed
                java.lang.NullPointerException: Cannot invoke "jadx.core.dex.instructions.args.InsnArg.getType()" because "changeArg" is null
                	at jadx.core.dex.visitors.typeinference.TypeUpdate.moveListener(TypeUpdate.java:439)
                	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:232)
                	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:212)
                	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:183)
                	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:112)
                	at jadx.core.dex.visitors.typeinference.TypeUpdate.apply(TypeUpdate.java:83)
                	at jadx.core.dex.visitors.typeinference.TypeUpdate.apply(TypeUpdate.java:56)
                	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryPossibleTypes(FixTypesVisitor.java:183)
                	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.deduceType(FixTypesVisitor.java:242)
                	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryDeduceTypes(FixTypesVisitor.java:221)
                	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:91)
                */
            /* JADX WARN: Failed to apply debug info
            java.lang.NullPointerException: Cannot invoke "jadx.core.dex.instructions.args.InsnArg.getType()" because "changeArg" is null
            	at jadx.core.dex.visitors.typeinference.TypeUpdate.moveListener(TypeUpdate.java:439)
            	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:232)
            	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:212)
            	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:183)
            	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:112)
            	at jadx.core.dex.visitors.typeinference.TypeUpdate.apply(TypeUpdate.java:83)
            	at jadx.core.dex.visitors.typeinference.TypeUpdate.applyWithWiderIgnoreUnknown(TypeUpdate.java:74)
            	at jadx.core.dex.visitors.debuginfo.DebugInfoApplyVisitor.applyDebugInfo(DebugInfoApplyVisitor.java:137)
            	at jadx.core.dex.visitors.debuginfo.DebugInfoApplyVisitor.applyDebugInfo(DebugInfoApplyVisitor.java:133)
            	at jadx.core.dex.visitors.debuginfo.DebugInfoApplyVisitor.searchAndApplyVarDebugInfo(DebugInfoApplyVisitor.java:75)
            	at jadx.core.dex.visitors.debuginfo.DebugInfoApplyVisitor.lambda$applyDebugInfo$0(DebugInfoApplyVisitor.java:68)
            	at java.base/java.util.ArrayList.forEach(Unknown Source)
            	at jadx.core.dex.visitors.debuginfo.DebugInfoApplyVisitor.applyDebugInfo(DebugInfoApplyVisitor.java:68)
            	at jadx.core.dex.visitors.debuginfo.DebugInfoApplyVisitor.visit(DebugInfoApplyVisitor.java:55)
             */
            /* JADX WARN: Not initialized variable reg: 23, insn: 0x0c09: MOVE (r10 I:??[int, float, boolean, short, byte, char, OBJECT, ARRAY]) = (r23 I:??[int, float, boolean, short, byte, char, OBJECT, ARRAY] A[D('aidListByteDataLen' int)]), block:B:514:0x0c08 */
            /* JADX WARN: Not initialized variable reg: 23, insn: 0x0c15: MOVE (r10 I:??[int, float, boolean, short, byte, char, OBJECT, ARRAY]) = (r23 I:??[int, float, boolean, short, byte, char, OBJECT, ARRAY] A[D('aidListByteDataLen' int)]), block:B:516:0x0c14 */
            /* JADX WARN: Not initialized variable reg: 23, insn: 0x0c21: MOVE (r10 I:??[int, float, boolean, short, byte, char, OBJECT, ARRAY]) = (r23 I:??[int, float, boolean, short, byte, char, OBJECT, ARRAY] A[D('aidListByteDataLen' int)]), block:B:512:0x0c20 */
            /* JADX WARN: Not initialized variable reg: 23, insn: 0x0c2d: MOVE (r10 I:??[int, float, boolean, short, byte, char, OBJECT, ARRAY]) = (r23 I:??[int, float, boolean, short, byte, char, OBJECT, ARRAY] A[D('aidListByteDataLen' int)]), block:B:518:0x0c2c */
            /* JADX WARN: Not initialized variable reg: 23, insn: 0x0c39: MOVE (r10 I:??[int, float, boolean, short, byte, char, OBJECT, ARRAY]) = (r23 I:??[int, float, boolean, short, byte, char, OBJECT, ARRAY] A[D('aidListByteDataLen' int)]), block:B:510:0x0c38 */
            /* JADX WARN: Not initialized variable reg: 23, insn: 0x0d20: MOVE (r10 I:??[int, float, boolean, short, byte, char, OBJECT, ARRAY]) = (r23 I:??[int, float, boolean, short, byte, char, OBJECT, ARRAY] A[D('aidListByteDataLen' int)]), block:B:569:0x0d1f */
            /* JADX WARN: Not initialized variable reg: 23, insn: 0x0d27: MOVE (r10 I:??[int, float, boolean, short, byte, char, OBJECT, ARRAY]) = (r23 I:??[int, float, boolean, short, byte, char, OBJECT, ARRAY] A[D('aidListByteDataLen' int)]), block:B:573:0x0d26 */
            /* JADX WARN: Not initialized variable reg: 23, insn: 0x0d2e: MOVE (r10 I:??[int, float, boolean, short, byte, char, OBJECT, ARRAY]) = (r23 I:??[int, float, boolean, short, byte, char, OBJECT, ARRAY] A[D('aidListByteDataLen' int)]), block:B:577:0x0d2d */
            /* JADX WARN: Not initialized variable reg: 23, insn: 0x0d36: MOVE (r10 I:??[int, float, boolean, short, byte, char, OBJECT, ARRAY]) = (r23 I:??[int, float, boolean, short, byte, char, OBJECT, ARRAY] A[D('aidListByteDataLen' int)]), block:B:575:0x0d35 */
            /* JADX WARN: Not initialized variable reg: 23, insn: 0x0d3e: MOVE (r10 I:??[int, float, boolean, short, byte, char, OBJECT, ARRAY]) = (r23 I:??[int, float, boolean, short, byte, char, OBJECT, ARRAY] A[D('aidListByteDataLen' int)]), block:B:571:0x0d3d */
            /* JADX WARN: Not initialized variable reg: 25, insn: 0x0c0b: MOVE (r14 I:??[int, float, boolean, short, byte, char, OBJECT, ARRAY]) = (r25 I:??[int, float, boolean, short, byte, char, OBJECT, ARRAY] A[D('isOpen' boolean)]), block:B:514:0x0c08 */
            /* JADX WARN: Not initialized variable reg: 25, insn: 0x0c17: MOVE (r14 I:??[int, float, boolean, short, byte, char, OBJECT, ARRAY]) = (r25 I:??[int, float, boolean, short, byte, char, OBJECT, ARRAY] A[D('isOpen' boolean)]), block:B:516:0x0c14 */
            /* JADX WARN: Not initialized variable reg: 25, insn: 0x0c23: MOVE (r14 I:??[int, float, boolean, short, byte, char, OBJECT, ARRAY]) = (r25 I:??[int, float, boolean, short, byte, char, OBJECT, ARRAY] A[D('isOpen' boolean)]), block:B:512:0x0c20 */
            /* JADX WARN: Not initialized variable reg: 25, insn: 0x0c2f: MOVE (r14 I:??[int, float, boolean, short, byte, char, OBJECT, ARRAY]) = (r25 I:??[int, float, boolean, short, byte, char, OBJECT, ARRAY] A[D('isOpen' boolean)]), block:B:518:0x0c2c */
            /* JADX WARN: Not initialized variable reg: 25, insn: 0x0c3b: MOVE (r14 I:??[int, float, boolean, short, byte, char, OBJECT, ARRAY]) = (r25 I:??[int, float, boolean, short, byte, char, OBJECT, ARRAY] A[D('isOpen' boolean)]), block:B:510:0x0c38 */
            /* JADX WARN: Not initialized variable reg: 26, insn: 0x0c0d: MOVE (r15 I:??[int, float, boolean, short, byte, char, OBJECT, ARRAY]) = (r26 I:??[int, float, boolean, short, byte, char, OBJECT, ARRAY] A[D('isMoreData' boolean)]), block:B:514:0x0c08 */
            /* JADX WARN: Not initialized variable reg: 26, insn: 0x0c19: MOVE (r15 I:??[int, float, boolean, short, byte, char, OBJECT, ARRAY]) = (r26 I:??[int, float, boolean, short, byte, char, OBJECT, ARRAY] A[D('isMoreData' boolean)]), block:B:516:0x0c14 */
            /* JADX WARN: Not initialized variable reg: 26, insn: 0x0c25: MOVE (r15 I:??[int, float, boolean, short, byte, char, OBJECT, ARRAY]) = (r26 I:??[int, float, boolean, short, byte, char, OBJECT, ARRAY] A[D('isMoreData' boolean)]), block:B:512:0x0c20 */
            /* JADX WARN: Not initialized variable reg: 26, insn: 0x0c31: MOVE (r15 I:??[int, float, boolean, short, byte, char, OBJECT, ARRAY]) = (r26 I:??[int, float, boolean, short, byte, char, OBJECT, ARRAY] A[D('isMoreData' boolean)]), block:B:518:0x0c2c */
            /* JADX WARN: Not initialized variable reg: 26, insn: 0x0c3d: MOVE (r15 I:??[int, float, boolean, short, byte, char, OBJECT, ARRAY]) = (r26 I:??[int, float, boolean, short, byte, char, OBJECT, ARRAY] A[D('isMoreData' boolean)]), block:B:510:0x0c38 */
            /* JADX WARN: Not initialized variable reg: 26, insn: 0x0d22: MOVE (r15 I:??[int, float, boolean, short, byte, char, OBJECT, ARRAY]) = (r26 I:??[int, float, boolean, short, byte, char, OBJECT, ARRAY] A[D('isMoreData' boolean)]), block:B:569:0x0d1f */
            /* JADX WARN: Not initialized variable reg: 26, insn: 0x0d29: MOVE (r15 I:??[int, float, boolean, short, byte, char, OBJECT, ARRAY]) = (r26 I:??[int, float, boolean, short, byte, char, OBJECT, ARRAY] A[D('isMoreData' boolean)]), block:B:573:0x0d26 */
            /* JADX WARN: Not initialized variable reg: 26, insn: 0x0d30: MOVE (r15 I:??[int, float, boolean, short, byte, char, OBJECT, ARRAY]) = (r26 I:??[int, float, boolean, short, byte, char, OBJECT, ARRAY] A[D('isMoreData' boolean)]), block:B:577:0x0d2d */
            /* JADX WARN: Not initialized variable reg: 26, insn: 0x0d38: MOVE (r15 I:??[int, float, boolean, short, byte, char, OBJECT, ARRAY]) = (r26 I:??[int, float, boolean, short, byte, char, OBJECT, ARRAY] A[D('isMoreData' boolean)]), block:B:575:0x0d35 */
            /* JADX WARN: Not initialized variable reg: 26, insn: 0x0d40: MOVE (r15 I:??[int, float, boolean, short, byte, char, OBJECT, ARRAY]) = (r26 I:??[int, float, boolean, short, byte, char, OBJECT, ARRAY] A[D('isMoreData' boolean)]), block:B:571:0x0d3d */
            /* JADX WARN: Not initialized variable reg: 27, insn: 0x0c0f: MOVE (r5 I:??[int, float, boolean, short, byte, char, OBJECT, ARRAY]) = (r27 I:??[int, float, boolean, short, byte, char, OBJECT, ARRAY] A[D('ret' int)]), block:B:514:0x0c08 */
            /* JADX WARN: Not initialized variable reg: 27, insn: 0x0c1b: MOVE (r5 I:??[int, float, boolean, short, byte, char, OBJECT, ARRAY]) = (r27 I:??[int, float, boolean, short, byte, char, OBJECT, ARRAY] A[D('ret' int)]), block:B:516:0x0c14 */
            /* JADX WARN: Not initialized variable reg: 27, insn: 0x0c27: MOVE (r5 I:??[int, float, boolean, short, byte, char, OBJECT, ARRAY]) = (r27 I:??[int, float, boolean, short, byte, char, OBJECT, ARRAY] A[D('ret' int)]), block:B:512:0x0c20 */
            /* JADX WARN: Not initialized variable reg: 27, insn: 0x0c33: MOVE (r5 I:??[int, float, boolean, short, byte, char, OBJECT, ARRAY]) = (r27 I:??[int, float, boolean, short, byte, char, OBJECT, ARRAY] A[D('ret' int)]), block:B:518:0x0c2c */
            /* JADX WARN: Not initialized variable reg: 27, insn: 0x0c3f: MOVE (r5 I:??[int, float, boolean, short, byte, char, OBJECT, ARRAY]) = (r27 I:??[int, float, boolean, short, byte, char, OBJECT, ARRAY] A[D('ret' int)]), block:B:510:0x0c38 */
            @Override // java.lang.Runnable
            public void run() {
                /*
                    Method dump skipped, instructions count: 3753
                    To view this dump change 'Code comments level' option to 'DEBUG'
                */
                throw new UnsupportedOperationException("Method not decompiled: com.samsung.android.service.SemService.SemServiceManager.AnonymousClass1.run():void");
            }
        }).start();
        return 0;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public int AIDDeactivation(ArrayList<String> AID) {
        int failFlag = 0;
        if (!this.isSupportEseChip) {
            Log.i(TAG, "SemService is not supported");
            return -92;
        }
        for (int i = 0; i < AID.size(); i++) {
            if (AID.get(i) == null) {
                Log.e(TAG, "AID Null Error");
            } else {
                String appletAID = AID.get(i);
                int tempLen = appletAID.length() / 2;
                String aidlen = String.format("%02x", Integer.valueOf(tempLen));
                String strDeactivationListCmd = "80F80002" + String.format("%02x", Integer.valueOf(tempLen + 1));
                byte[] deactivationListCmd = hexToBytes(((strDeactivationListCmd + aidlen) + appletAID) + "00");
                byte[] baRsp = send(deactivationListCmd);
                if (baRsp == null || baRsp.length < 2) {
                    Log.e(TAG, "Aid Deactivation Error");
                    failFlag++;
                } else {
                    int baRspLen = baRsp.length;
                    Log.i(TAG, "DEAID SW : " + byteToHex(baRsp[baRspLen - 2]) + byteToHex(baRsp[baRspLen - 1]));
                    if (baRspLen >= 2 && ((baRsp[baRspLen - 2] == -112 && baRsp[baRspLen - 1] == 0) || (baRsp[baRspLen - 2] == 99 && baRsp[baRspLen - 1] == 8))) {
                        Log.i(TAG, "deactivate list success");
                    } else {
                        Log.e(TAG, "deactivate list fail");
                        failFlag++;
                    }
                }
            }
        }
        return failFlag;
    }

    public int eSEFactoryReset() {
        Log.i(TAG, "eSEFactoryReset() is called.");
        if (!this.isSupportEseChip) {
            Log.i(TAG, "SemService is not supported");
            return -92;
        }
        try {
            return this.mSemService.eSE_FactoryReset();
        } catch (NullPointerException npe) {
            Log.e(TAG, "Failed to connect service.");
            npe.printStackTrace();
            return -92;
        } catch (Exception e) {
            e.printStackTrace();
            return -90;
        } catch (NoClassDefFoundError e2) {
            e2.printStackTrace();
            return -90;
        } catch (UnsatisfiedLinkError e3) {
            e3.printStackTrace();
            return -90;
        }
    }

    public int eSELowFactoryReset() {
        Log.i(TAG, "eSELowFactoryReset() is called.");
        if (!this.isSupportEseChip) {
            Log.i(TAG, "SemService is not supported");
            return -92;
        }
        try {
            return this.mSemService.eSE_LowFactoryReset();
        } catch (NullPointerException npe) {
            Log.e(TAG, "Failed to connect service.");
            npe.printStackTrace();
            return -92;
        } catch (Exception e) {
            e.printStackTrace();
            return -90;
        } catch (NoClassDefFoundError e2) {
            e2.printStackTrace();
            return -90;
        } catch (UnsatisfiedLinkError e3) {
            e3.printStackTrace();
            return -90;
        }
    }

    public int eSEFullFactoryReset() {
        Log.i(TAG, "eSEFullFactoryReset() is called.");
        if (!this.isSupportEseChip) {
            Log.i(TAG, "SemService is not supported");
            return -92;
        }
        try {
            return this.mSemService.eSE_FullFactoryReset();
        } catch (NullPointerException npe) {
            Log.e(TAG, "Failed to connect service.");
            npe.printStackTrace();
            return -92;
        } catch (Exception e) {
            e.printStackTrace();
            return -90;
        } catch (NoClassDefFoundError e2) {
            e2.printStackTrace();
            return -90;
        } catch (UnsatisfiedLinkError e3) {
            e3.printStackTrace();
            return -90;
        }
    }

    public void checkFRANetwork(int type) {
        Log.i(TAG, "checkFRANetwork() is called. " + type);
        if (!this.isSupportEseChip) {
            Log.i(TAG, "SemService is not supported");
            return;
        }
        try {
            this.mSemService.check_Network(type);
        } catch (Exception e) {
            e.printStackTrace();
        } catch (NoClassDefFoundError e2) {
            e2.printStackTrace();
        } catch (NullPointerException npe) {
            Log.e(TAG, "Failed to connect service.");
            npe.printStackTrace();
        } catch (UnsatisfiedLinkError e3) {
            e3.printStackTrace();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public ArrayList<String> parseList(byte[] bArr, int respAidLen) {
        if (bArr == 0) {
            Log.e(TAG, "parse list aid null error");
            return null;
        }
        int offset = 0;
        ArrayList<String> tempStr = new ArrayList<>();
        if (!this.isSupportEseChip) {
            Log.i(TAG, "SemService is not supported");
            return null;
        }
        int i = 0;
        while (i < respAidLen) {
            int i2 = bArr[i];
            if (i2 > 0) {
                int i3 = i + 1;
                byte[] bArr2 = new byte[i2];
                byte[] tempData = Arrays.copyOfRange(bArr, i3, i3 + i2);
                i = i3 + (i2 - 1);
                tempStr.add(bytesToHex(tempData));
                Log.d(TAG, offset + " : " + i + " : " + tempStr.get(offset));
                offset++;
            }
            i++;
        }
        return tempStr;
    }

    public int jniICD() {
        if (!this.isSupportEseChip) {
            Log.i(TAG, "SemService is not supported");
            return -92;
        }
        try {
            int icdResult = this.mSemService.ICD();
            return icdResult;
        } catch (RemoteException e) {
            Log.e(TAG, "RE Exception : " + e);
            return -999;
        } catch (Exception e2) {
            Log.e(TAG, "Exception : " + e2);
            return -999;
        } catch (NoClassDefFoundError e3) {
            Log.e(TAG, "NCDF Exception : " + e3);
            return -999;
        } catch (UnsatisfiedLinkError e1) {
            Log.e(TAG, "USLE Exception : " + e1);
            return -999;
        }
    }

    public int startattestation(byte[] drRsp, int drLen, byte[] svRsp, int svLen) {
        Log.i(TAG, "startattestation() is called.");
        if (!this.isSupportEseChip) {
            Log.i(TAG, "SemService is not supported");
            return -92;
        }
        try {
            sercureLog("StartAttestation");
            return this.mSemService.start_attestation(drRsp, drLen, svRsp, svLen);
        } catch (NullPointerException npe) {
            Log.e(TAG, "Failed to connect service.");
            npe.printStackTrace();
            return -92;
        } catch (Exception e) {
            e.printStackTrace();
            return -90;
        } catch (NoClassDefFoundError e2) {
            e2.printStackTrace();
            return -92;
        } catch (UnsatisfiedLinkError e3) {
            e3.printStackTrace();
            return -92;
        }
    }

    public int continueattestation(String data, int dataLen, byte[] rspData) {
        Log.i(TAG, "continueattestation() is called.");
        if (!this.isSupportEseChip) {
            Log.i(TAG, "SemService is not supported");
            return -92;
        }
        try {
            sercureLog("ContinueAttestation");
            return this.mSemService.continue_attestation(data, dataLen, rspData);
        } catch (NullPointerException npe) {
            Log.e(TAG, "Failed to connect service.");
            npe.printStackTrace();
            return -92;
        } catch (Exception e) {
            e.printStackTrace();
            return -90;
        } catch (NoClassDefFoundError e2) {
            e2.printStackTrace();
            return -92;
        } catch (UnsatisfiedLinkError e3) {
            e3.printStackTrace();
            return -92;
        }
    }

    public int getPK(byte[] rspData) {
        Log.i(TAG, "getPK() is called.");
        return 0;
    }

    public void sercureLog(String msg) {
        Log.i(TAG, "SecureLog() is called.");
        if (!this.isSupportEseChip) {
            Log.i(TAG, "SemService is not supported");
            return;
        }
        try {
            this.mSemService.secureLog(msg);
        } catch (NoClassDefFoundError e) {
            Log.e(TAG, "SL-NCDFE");
        } catch (Error e2) {
            Log.e(TAG, "SL-ER");
        } catch (NullPointerException e3) {
            Log.e(TAG, "Failed to connect service.");
        } catch (Exception e4) {
            Log.e(TAG, "SL-EX");
        } catch (UnsatisfiedLinkError e5) {
            Log.e(TAG, "SL-ULE");
        }
    }

    public void startSLOG() {
        Log.i(TAG, "START SLOG is called.");
        if (!this.isSupportEseChip) {
            Log.i(TAG, "SemService is not supported");
            return;
        }
        try {
            this.mSemService.start_SLOG();
        } catch (NoClassDefFoundError e) {
            Log.e(TAG, "S_SL-NCDFE");
        } catch (Error e2) {
            Log.e(TAG, "S_SL-ER");
        } catch (NullPointerException e3) {
            Log.e(TAG, "Failed to connect service.");
        } catch (Exception e4) {
            Log.e(TAG, "S_SL-EX");
        } catch (UnsatisfiedLinkError e5) {
            Log.e(TAG, "S_SL-ULE");
        }
    }

    public void stopSLOG() {
        Log.i(TAG, "STOP SLOG is called.");
        if (!this.isSupportEseChip) {
            Log.i(TAG, "SemService is not supported");
            return;
        }
        try {
            this.mSemService.stop_SLOG();
        } catch (NoClassDefFoundError e) {
            Log.e(TAG, "ST_SL-NCDFE");
        } catch (Error e2) {
            Log.e(TAG, "S_SL-ER");
        } catch (NullPointerException e3) {
            Log.e(TAG, "Failed to connect service.");
        } catch (Exception e4) {
            Log.e(TAG, "ST_SL-EX");
        } catch (UnsatisfiedLinkError e5) {
            Log.e(TAG, "ST_SL-ULE");
        }
    }

    public int getAtr() {
        Log.i(TAG, "getAtr() is called.");
        if (!this.isSupportEseChip) {
            Log.i(TAG, "SemService is not supported");
            return -92;
        }
        try {
            return this.mSemService.getAtr_Spi();
        } catch (NullPointerException npe) {
            Log.e(TAG, "Failed to connect service.");
            npe.printStackTrace();
            return -92;
        } catch (Exception e) {
            e.printStackTrace();
            return -90;
        } catch (NoClassDefFoundError e2) {
            e2.printStackTrace();
            return -90;
        } catch (UnsatisfiedLinkError e3) {
            e3.printStackTrace();
            return -90;
        }
    }

    public int accessControlForCOSU(int type) {
        return 0;
    }

    public int resetForCOSU(int type) {
        Log.i(TAG, "resetForCOSU is called. " + type);
        int result = -1;
        if (!this.isSupportEseChip) {
            Log.i(TAG, "SemService is not supported");
            return -92;
        }
        ISemService iSemService = this.mSemService;
        if (iSemService == null) {
            Log.e(TAG, "SemService is not connected");
            return -1;
        }
        try {
            result = iSemService.resetForCOSU();
            Log.i(TAG, "resetForCOSU : " + result);
            return result;
        } catch (Exception e) {
            Log.e(TAG, "Call resetForCOSU Exception " + e);
            return result;
        }
    }

    public int open() {
        Log.i(TAG, "open() is called.");
        if (!this.isSupportEseChip) {
            Log.i(TAG, "SemService is not supported");
            return -92;
        }
        return openSpi(0);
    }

    public int close() {
        Log.i(TAG, "close() is called.");
        if (!this.isSupportEseChip) {
            Log.i(TAG, "SemService is not supported");
            return -92;
        }
        return closeSpi(0);
    }

    public boolean isOpened() {
        Log.d(TAG, "isOpened() is called.");
        if (!this.isSupportEseChip) {
            Log.i(TAG, "SemService is not supported");
            return true;
        }
        try {
            int result = openSpi(0);
            try {
                if (result == -200) {
                    Log.d(TAG, "eSE is busy now");
                    return true;
                }
                if (result == 0) {
                    Log.d(TAG, "eSE is NOT busy");
                    closeSpi(0);
                } else {
                    Log.e(TAG, "eSE returned error value : " + result);
                    closeSpi(0);
                }
                return false;
            } catch (Exception e) {
                Log.e(TAG, "isOpened close Exception! : " + e);
                closeSpi(0);
                return false;
            }
        } catch (Exception e2) {
            Log.e(TAG, "isOpened openSpi Error : " + e2);
            return false;
        }
    }

    public byte[] send(byte[] baCmd) {
        Log.i(TAG, "send() for SE API is called.");
        if (!this.isSupportEseChip) {
            Log.i(TAG, "SemService is not supported");
            return null;
        }
        byte[] baRsp = new byte[65538];
        int cLen = 0;
        if (baCmd != null) {
            cLen = baCmd.length;
            Log.d(TAG, "Len : " + cLen);
        }
        try {
            int baRspLen = this.mSemService.send_Data(baCmd, cLen, baRsp, 0);
            if (baRspLen < 1) {
                Log.e(TAG, "RSP is null");
                return null;
            }
            byte[] baRsp2 = Arrays.copyOf(baRsp, baRspLen);
            Log.d(TAG, "baRsp : " + bytesToHex(baRsp2));
            return baRsp2;
        } catch (RemoteException e) {
            e.printStackTrace();
            Log.e(TAG, "send exception " + e);
            return null;
        } catch (Exception e2) {
            Log.e(TAG, "Exception : " + e2);
            return null;
        } catch (NoClassDefFoundError e3) {
            Log.e(TAG, "NCDF Exception : " + e3);
            return null;
        } catch (UnsatisfiedLinkError e1) {
            Log.e(TAG, "USLE Exception : " + e1);
            return null;
        }
    }

    public int open(int flag) {
        Log.i(TAG, "open() is called.");
        if (!this.isSupportEseChip) {
            Log.i(TAG, "SemService is not supported");
            return -92;
        }
        return openSpi(flag);
    }

    public int close(int flag) {
        Log.i(TAG, "close() is called.");
        if (!this.isSupportEseChip) {
            Log.i(TAG, "SemService is not supported");
            return -92;
        }
        return closeSpi(flag);
    }

    public byte[] send(byte[] baCmd, int flag) {
        Log.i(TAG, "send() for normal/secure SPI is called.");
        if (!this.isSupportEseChip) {
            Log.i(TAG, "SemService is not supported");
            return null;
        }
        byte[] baRsp = new byte[65538];
        int cLen = 0;
        if (baCmd != null) {
            cLen = baCmd.length;
            Log.d(TAG, "Len : " + cLen);
        }
        try {
            int baRspLen = this.mSemService.send_Data(baCmd, cLen, baRsp, flag);
            if (baRspLen < 1) {
                Log.e(TAG, "RSP is null");
                return null;
            }
            byte[] baRsp2 = Arrays.copyOf(baRsp, baRspLen);
            Log.d(TAG, "baRsp : " + bytesToHex(baRsp2));
            return baRsp2;
        } catch (RemoteException e) {
            e.printStackTrace();
            Log.e(TAG, "send exception " + e);
            return null;
        } catch (Exception e2) {
            Log.e(TAG, "Exception : " + e2);
            return null;
        } catch (NoClassDefFoundError e3) {
            Log.e(TAG, "NCDF Exception : " + e3);
            return null;
        } catch (UnsatisfiedLinkError e1) {
            Log.e(TAG, "USLE Exception : " + e1);
            return null;
        }
    }

    public int checkSeState(byte[] appletAid, byte[] associatedAid) {
        Log.i(TAG, "checkSeState() is called.");
        if (!this.isSupportEseChip) {
            Log.i(TAG, "SemService is not supported");
            return -92;
        }
        try {
            return this.mSemService.check_SeState(appletAid, associatedAid);
        } catch (NullPointerException npe) {
            Log.e(TAG, "Failed to connect service.");
            npe.printStackTrace();
            return -92;
        } catch (Exception e) {
            e.printStackTrace();
            return -90;
        } catch (NoClassDefFoundError e2) {
            e2.printStackTrace();
            return -90;
        } catch (UnsatisfiedLinkError e3) {
            e3.printStackTrace();
            return -90;
        }
    }

    public int startRequestCredentials(byte[] appletAid, byte[] associatedAid, String serviceName, byte[] key_blob) {
        Log.i(TAG, "startRequestCredentials() is called.");
        if (!this.isSupportEseChip) {
            Log.i(TAG, "SemService is not supported");
            return -92;
        }
        try {
            return this.mSemService.start_request_credentials(appletAid, associatedAid, serviceName, key_blob);
        } catch (NullPointerException npe) {
            Log.e(TAG, "Failed to connect service.");
            npe.printStackTrace();
            return -92;
        } catch (Exception e) {
            e.printStackTrace();
            return -90;
        } catch (NoClassDefFoundError e2) {
            e2.printStackTrace();
            return -90;
        } catch (UnsatisfiedLinkError e3) {
            e3.printStackTrace();
            return -90;
        }
    }

    public void stopRequestCredentials() {
        Log.i(TAG, "stopRequestCredentials() is called.");
        if (!this.isSupportEseChip) {
            Log.i(TAG, "SemService is not supported");
            return;
        }
        try {
            this.mSemService.stop_request_credentials();
        } catch (Exception e) {
            e.printStackTrace();
        } catch (NoClassDefFoundError e2) {
            e2.printStackTrace();
        } catch (NullPointerException npe) {
            Log.e(TAG, "Failed to connect service.");
            npe.printStackTrace();
        } catch (UnsatisfiedLinkError e3) {
            e3.printStackTrace();
        }
    }

    public int grdmGetSession() {
        Log.i(TAG, "grdmGetSession() is called.");
        if (!this.isSupportEseChip) {
            Log.i(TAG, "SemService is not supported");
            return -92;
        }
        try {
            return this.mSemService.grdm_get_session();
        } catch (NullPointerException npe) {
            Log.e(TAG, "Failed to connect service.");
            npe.printStackTrace();
            return -90;
        } catch (Exception e) {
            e.printStackTrace();
            return -90;
        } catch (NoClassDefFoundError e2) {
            e2.printStackTrace();
            return -90;
        } catch (UnsatisfiedLinkError e3) {
            e3.printStackTrace();
            return -90;
        }
    }

    public int grdmRequestKey(int domainIndex, byte[] key_blob) {
        Log.i(TAG, "grdmRequestKey() is called.");
        if (!this.isSupportEseChip) {
            Log.i(TAG, "SemService is not supported");
            return -92;
        }
        try {
            return this.mSemService.grdm_request_key(domainIndex, key_blob);
        } catch (NullPointerException npe) {
            Log.e(TAG, "Failed to connect service.");
            npe.printStackTrace();
            return -90;
        } catch (Exception e) {
            e.printStackTrace();
            return -90;
        } catch (NoClassDefFoundError e2) {
            e2.printStackTrace();
            return -90;
        } catch (UnsatisfiedLinkError e3) {
            e3.printStackTrace();
            return -90;
        }
    }

    public int grdmReleaseSession() {
        Log.i(TAG, "grdmReleaseSession() is called.");
        if (!this.isSupportEseChip) {
            Log.i(TAG, "SemService is not supported");
            return -92;
        }
        try {
            return this.mSemService.grdm_release_session();
        } catch (NullPointerException npe) {
            Log.e(TAG, "Failed to connect service.");
            npe.printStackTrace();
            return -90;
        } catch (Exception e) {
            e.printStackTrace();
            return -90;
        } catch (NoClassDefFoundError e2) {
            e2.printStackTrace();
            return -90;
        } catch (UnsatisfiedLinkError e3) {
            e3.printStackTrace();
            return -90;
        }
    }

    public int grdmGetAttesCert(int index, byte[] rspData) {
        Log.i(TAG, "grdmGetAttesCert() is called.");
        if (!this.isSupportEseChip) {
            Log.i(TAG, "SemService is not supported");
            return -92;
        }
        try {
            return this.mSemService.grdm_get_attes_cert(index, rspData);
        } catch (NullPointerException npe) {
            Log.e(TAG, "Failed to connect service.");
            npe.printStackTrace();
            return -90;
        } catch (Exception e) {
            e.printStackTrace();
            return -90;
        } catch (NoClassDefFoundError e2) {
            e2.printStackTrace();
            return -90;
        } catch (UnsatisfiedLinkError e3) {
            e3.printStackTrace();
            return -90;
        }
    }

    public String grdmCheckRestrictedMode() {
        Log.i(TAG, "grdmCheckRestrictedMode() is called.");
        if (!this.isSupportEseChip) {
            Log.i(TAG, "SemService is not supported");
            return null;
        }
        try {
            return this.mSemService.grdm_check_restricted_mode();
        } catch (Exception e) {
            e.printStackTrace();
            return null;
        } catch (NoClassDefFoundError e2) {
            e2.printStackTrace();
            return null;
        } catch (NullPointerException npe) {
            Log.e(TAG, "Failed to connect service.");
            npe.printStackTrace();
            return null;
        } catch (UnsatisfiedLinkError e3) {
            e3.printStackTrace();
            return null;
        }
    }

    public int grdmCheckStatus() {
        Log.i(TAG, "grdmCheckStatus() is called.");
        if (!this.isSupportEseChip) {
            Log.i(TAG, "SemService is not supported");
            return -92;
        }
        try {
            return this.mSemService.grdm_Check_Status();
        } catch (NullPointerException npe) {
            Log.e(TAG, "Failed to connect service.");
            npe.printStackTrace();
            return -90;
        } catch (Exception e) {
            e.printStackTrace();
            return -90;
        } catch (NoClassDefFoundError e2) {
            e2.printStackTrace();
            return -90;
        } catch (UnsatisfiedLinkError e3) {
            e3.printStackTrace();
            return -90;
        }
    }

    public static String bytesToHex(byte[] data) {
        if (data == null || data.length < 1) {
            return null;
        }
        char[] chars = new char[data.length * 2];
        for (int i = 0; i < data.length; i++) {
            char[] cArr = HEX_CHARS;
            chars[i * 2] = cArr[(data[i] & 240) >>> 4];
            chars[(i * 2) + 1] = cArr[data[i] & 15];
        }
        return new String(chars);
    }

    public static String byteToHex(byte data) {
        char[] cArr = HEX_CHARS;
        char[] array = {cArr[(data >> 4) & 15], cArr[data & 15]};
        return new String(array);
    }

    public static byte[] hexToBytes(String str) {
        if (str == null || str.length() < 2) {
            return null;
        }
        int len = str.length() / 2;
        byte[] buffer = new byte[len];
        for (int i = 0; i < len; i++) {
            buffer[i] = (byte) Integer.parseInt(str.substring(i * 2, (i * 2) + 2), 16);
        }
        return buffer;
    }

    public boolean isEseSupported() {
        Log.i(TAG, "isEseSupported() is called.");
        if (!this.isSupportEseChip) {
            Log.i(TAG, "SemService is not supported");
            return false;
        }
        try {
            if (this.mSemService.openSpiDriver() == -100) {
                return false;
            }
            this.mSemService.closeSpiDriver();
            return true;
        } catch (NoClassDefFoundError e) {
            e.printStackTrace();
            return false;
        } catch (NullPointerException npe) {
            Log.e(TAG, "Failed to connect service.");
            npe.printStackTrace();
            return false;
        } catch (Exception e2) {
            e2.printStackTrace();
            return false;
        } catch (UnsatisfiedLinkError e3) {
            e3.printStackTrace();
            return false;
        }
    }

    public int openSpi(int flag) {
        Log.i(TAG, "openSpi() is called.");
        if (!this.isSupportEseChip) {
            Log.i(TAG, "SemService is not supported");
            return -92;
        }
        try {
            return this.mSemService.open_Spi(flag);
        } catch (NullPointerException npe) {
            Log.e(TAG, "Failed to connect service.");
            npe.printStackTrace();
            return -92;
        } catch (Exception e) {
            e.printStackTrace();
            return -90;
        } catch (NoClassDefFoundError e2) {
            e2.printStackTrace();
            return -90;
        } catch (UnsatisfiedLinkError e3) {
            e3.printStackTrace();
            return -90;
        }
    }

    public int closeSpi(int flag) {
        Log.i(TAG, "closeSpi() is called.");
        if (!this.isSupportEseChip) {
            Log.i(TAG, "SemService is not supported");
            return -92;
        }
        try {
            return this.mSemService.close_Spi(flag);
        } catch (NullPointerException npe) {
            Log.e(TAG, "Failed to connect service.");
            npe.printStackTrace();
            return -92;
        } catch (Exception e) {
            e.printStackTrace();
            return -90;
        } catch (NoClassDefFoundError e2) {
            e2.printStackTrace();
            return -90;
        } catch (UnsatisfiedLinkError e3) {
            e3.printStackTrace();
            return -90;
        }
    }

    public int sendData(byte[] baCmd, int cLen, byte[] baRsp, int flag) {
        Log.i(TAG, "sendData() is called.");
        if (!this.isSupportEseChip) {
            Log.i(TAG, "SemService is not supported");
            return -92;
        }
        try {
            return this.mSemService.send_Data(baCmd, cLen, baRsp, flag);
        } catch (NullPointerException npe) {
            Log.e(TAG, "Failed to connect service.");
            npe.printStackTrace();
            return -92;
        } catch (Exception e) {
            e.printStackTrace();
            return -90;
        } catch (NoClassDefFoundError e2) {
            e2.printStackTrace();
            return -90;
        } catch (UnsatisfiedLinkError e3) {
            e3.printStackTrace();
            return -90;
        }
    }

    public int sendData(byte[] baCmd, int cLen, byte[] baRsp) {
        Log.i(TAG, "sendData() is called.");
        if (!this.isSupportEseChip) {
            Log.i(TAG, "SemService is not supported");
            return -92;
        }
        try {
            return this.mSemService.send_Data(baCmd, cLen, baRsp, 0);
        } catch (NullPointerException npe) {
            Log.e(TAG, "Failed to connect service.");
            npe.printStackTrace();
            return -92;
        } catch (Exception e) {
            e.printStackTrace();
            return -90;
        } catch (NoClassDefFoundError e2) {
            e2.printStackTrace();
            return -90;
        } catch (UnsatisfiedLinkError e3) {
            e3.printStackTrace();
            return -90;
        }
    }

    public int COSSPIAccessControl(int type) {
        Log.i(TAG, "COSSPIAccessControl() is called.");
        if (!this.isSupportEseChip) {
            Log.i(TAG, "SemService is not supported");
            return -92;
        }
        try {
            if (type == 1) {
                Log.i(TAG, "SPIAC SPI Open");
                return this.mSemService.openSpiDriver();
            }
            if (type == 0) {
                Log.i(TAG, "SPIAC SPI Close");
                return this.mSemService.closeSpiDriver();
            }
            Log.e(TAG, "SPIAC Type Error");
            return -90;
        } catch (NullPointerException npe) {
            Log.e(TAG, "Failed to connect service.");
            npe.printStackTrace();
            return -92;
        } catch (Exception e) {
            e.printStackTrace();
            return -90;
        } catch (NoClassDefFoundError e2) {
            e2.printStackTrace();
            return -90;
        } catch (UnsatisfiedLinkError e3) {
            e3.printStackTrace();
            return -90;
        }
    }
}
