package com.sec.internal.ims.servicemodules.sms;

import android.content.Context;
import android.os.Binder;
import android.telephony.PhoneNumberUtils;
import android.telephony.TelephonyManager;
import android.text.TextUtils;
import android.util.Log;
import com.sec.ims.ImsRegistration;
import com.sec.ims.extensions.TelephonyManagerExt;
import com.sec.internal.constants.Mno;
import com.sec.internal.helper.SimUtil;
import com.sec.internal.helper.StrUtil;
import com.sec.internal.helper.os.DeviceUtil;
import com.sec.internal.ims.core.cmc.CmcConstants;
import com.sec.internal.ims.core.handler.secims.imsCommonStruc.ReqMsg;
import com.sec.internal.ims.settings.DmProfileLoader;
import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.DataInputStream;
import java.io.DataOutputStream;
import java.io.IOException;
import java.nio.charset.Charset;

/* loaded from: classes.dex */
public class GsmSmsUtil {
    public static final int BIT_TP_DCS_CLASS2_SIM_MSG = 2;
    public static final int BIT_TP_PID_SIM_DATA_DOWNLOAD = 63;
    public static final String CONTENT_TYPE_3GPP = "application/vnd.3gpp.sms";
    private static final int IPC_ERR_MEM_CAP_EXCEED = 32790;
    private static final int IPC_ERR_SMS_ME_FULL = 32896;
    private static final int IPC_ERR_SMS_SIM_FULL = 32897;
    private static final String LOG_TAG = SmsServiceModule.class.getSimpleName();
    public static final int MAX_DATA_LEN = 255;
    private static final int NANP_LENGTH = 10;
    private static final String PREFIX_NUMBER_PLUS = "011";
    public static final int RIL_CODE_RP_ERROR = 32768;
    public static final int RIL_CODE_SMS_OK_ = 0;
    public static final int RP_ACK_N_MS = 3;
    public static final int RP_DATA_MS_N = 0;
    public static final int RP_DATA_N_MS = 1;
    public static final int RP_ERROR_N_MS = 5;
    public static final int RP_ERR_INVALID_MSG = 95;
    public static final int RP_SMMA = 6;
    public static final int TP_PID_SIM_DATA_DOWNLOAD = 127;

    private static byte getRPErrCause(int i) {
        switch (i) {
            case IPC_ERR_MEM_CAP_EXCEED /* 32790 */:
            case IPC_ERR_SMS_ME_FULL /* 32896 */:
                return (byte) 22;
            case IPC_ERR_SMS_SIM_FULL /* 32897 */:
                return ReqMsg.request_x509_cert_verify_result;
            default:
                return (byte) (i & 255);
        }
    }

    public static int getRilRPErrCode(int i) {
        return i + 32768;
    }

    public static byte[] getRpSMMAPdu(int i) {
        return new byte[]{6, (byte) (i & 255)};
    }

    private static byte getTPErrCause(int i) {
        switch (i) {
            case IPC_ERR_MEM_CAP_EXCEED /* 32790 */:
            case IPC_ERR_SMS_SIM_FULL /* 32897 */:
                return (byte) -48;
            case IPC_ERR_SMS_ME_FULL /* 32896 */:
                return (byte) -45;
            default:
                return (byte) 0;
        }
    }

    public static boolean isISODigit(char c) {
        return c >= '0' && c <= '9';
    }

    public static boolean isRPErrorForRetransmission(int i) {
        return i == 41 || i == 42 || i == 47 || i == 98 || i == 111;
    }

    private static boolean isTwoToNine(char c) {
        return c >= '2' && c <= '9';
    }

    public static byte[] get3gppPduFromTpdu(byte[] bArr, int i, String str, String str2) {
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream(255);
        DataOutputStream dataOutputStream = new DataOutputStream(byteArrayOutputStream);
        DataInputStream dataInputStream = new DataInputStream(new ByteArrayInputStream(bArr));
        try {
            int i2 = bArr[0] + 1;
            if (dataInputStream.read(new byte[i2]) < i2) {
                throw new RuntimeException("Exception : Fail to Read Sca from PDU");
            }
            int length = bArr.length - i2;
            byte[] bArr2 = new byte[length];
            if (dataInputStream.read(bArr2) < 0) {
                throw new RuntimeException("Exception : Fail to Read TPDU from PDU");
            }
            byte b = (byte) length;
            dataOutputStream.write(0);
            dataOutputStream.write(i);
            if (TextUtils.isEmpty(str2)) {
                dataOutputStream.write(0);
            } else {
                byte[] numberToCalledPartyBCD = PhoneNumberUtils.numberToCalledPartyBCD(str2, 1);
                if (numberToCalledPartyBCD == null) {
                    throw new RuntimeException("rp_oa is null");
                }
                dataOutputStream.write(numberToCalledPartyBCD.length);
                dataOutputStream.write(numberToCalledPartyBCD);
            }
            byte[] numberToCalledPartyBCD2 = PhoneNumberUtils.numberToCalledPartyBCD(str, 1);
            if (numberToCalledPartyBCD2 == null) {
                throw new RuntimeException("smsc is null");
            }
            dataOutputStream.write(numberToCalledPartyBCD2.length);
            dataOutputStream.write(numberToCalledPartyBCD2);
            dataOutputStream.write(b);
            dataOutputStream.write(bArr2);
            dataInputStream.close();
            dataOutputStream.close();
            return byteArrayOutputStream.toByteArray();
        } catch (IOException e) {
            try {
                dataInputStream.close();
                dataOutputStream.close();
            } catch (IOException e2) {
                e2.printStackTrace();
            }
            e.printStackTrace();
            return null;
        }
    }

    public static String getSCAFromPdu(byte[] bArr) {
        int i;
        if (bArr == null || (i = bArr[0] & 255) <= 0 || bArr.length < i) {
            return "";
        }
        String calledPartyBCDToString = PhoneNumberUtils.calledPartyBCDToString(bArr, 1, i, 1);
        if (calledPartyBCDToString != null) {
            return calledPartyBCDToString;
        }
        throw new RuntimeException("[getSCAFromPdu] Exception : sca is null");
    }

    public static int get3gppRPError(String str, byte[] bArr) {
        if (str == null || !str.equals(CONTENT_TYPE_3GPP) || bArr == null || bArr.length < 4) {
            return -1;
        }
        if (5 == bArr[0]) {
            return bArr[3] & ReqMsg.request_update_sign_digest_response;
        }
        return 0;
    }

    public static boolean isAck(String str, byte[] bArr) {
        if (str == null && bArr == null) {
            return true;
        }
        if (str == null) {
            throw new RuntimeException("contentType is null");
        }
        if (bArr == null || bArr.length == 0) {
            return true;
        }
        Log.i(LOG_TAG, "isAck: contentType=" + str + " data[0]=" + ((int) bArr[0]));
        return str.equals(CONTENT_TYPE_3GPP) && 3 == bArr[0];
    }

    public static byte[] get3gppTpduFromPdu(byte[] bArr) {
        if (bArr.length < 4) {
            return null;
        }
        return get3gppTpdu(bArr);
    }

    private static byte[] get3gppTpdu(byte[] bArr) {
        byte b;
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream(255);
        DataOutputStream dataOutputStream = new DataOutputStream(byteArrayOutputStream);
        DataInputStream dataInputStream = new DataInputStream(new ByteArrayInputStream(bArr));
        try {
        } catch (IOException e) {
            e.printStackTrace();
        }
        try {
            try {
                b = bArr[0];
            } catch (IOException e2) {
                e2.printStackTrace();
                dataInputStream.close();
                dataOutputStream.close();
            } catch (RuntimeException e3) {
                e3.printStackTrace();
                dataInputStream.close();
                dataOutputStream.close();
            }
            if (3 == b) {
                dataInputStream.readByte();
                dataInputStream.readByte();
                dataInputStream.readByte();
                int readByte = dataInputStream.readByte() & 255;
                if (dataInputStream.available() < readByte) {
                    return null;
                }
                byte[] bArr2 = new byte[readByte];
                if (dataInputStream.read(bArr2) < 0) {
                    throw new RuntimeException("Fail to read TPDU from PDU");
                }
                dataOutputStream.write(bArr2);
                byte[] byteArray = byteArrayOutputStream.toByteArray();
                try {
                    dataInputStream.close();
                    dataOutputStream.close();
                } catch (IOException e4) {
                    e4.printStackTrace();
                }
                return byteArray;
            }
            if (1 != b) {
                if (5 != b) {
                    dataInputStream.close();
                    dataOutputStream.close();
                    return null;
                }
                dataInputStream.readByte();
                dataInputStream.readByte();
                int readByte2 = dataInputStream.readByte() & 255;
                if (dataInputStream.available() < readByte2) {
                    try {
                        dataInputStream.close();
                        dataOutputStream.close();
                    } catch (IOException e5) {
                        e5.printStackTrace();
                    }
                    return null;
                }
                for (int i = 0; i < readByte2; i++) {
                    dataInputStream.readByte();
                }
                int available = dataInputStream.available();
                if (available > 0) {
                    byte[] bArr3 = new byte[available];
                    if (dataInputStream.read(bArr3) < 0) {
                        throw new RuntimeException("Exception : Reading TPDU from RIL PDU");
                    }
                    dataOutputStream.write(bArr3);
                }
                byte[] byteArray2 = byteArrayOutputStream.toByteArray();
                try {
                    dataInputStream.close();
                    dataOutputStream.close();
                } catch (IOException e6) {
                    e6.printStackTrace();
                }
                return byteArray2;
            }
            dataInputStream.readByte();
            dataInputStream.readByte();
            byte readByte3 = dataInputStream.readByte();
            int i2 = readByte3 & 255;
            if (dataInputStream.available() < i2) {
                try {
                    dataInputStream.close();
                    dataOutputStream.close();
                } catch (IOException e7) {
                    e7.printStackTrace();
                }
                return null;
            }
            byte[] bArr4 = new byte[i2 + 1];
            if (dataInputStream.read(bArr4, 1, readByte3) < 0) {
                try {
                    dataInputStream.close();
                    dataOutputStream.close();
                } catch (IOException e8) {
                    e8.printStackTrace();
                }
                return null;
            }
            bArr4[0] = readByte3;
            if (dataInputStream.available() <= 0) {
                throw new RuntimeException("EOF RPDU. before reading RP-DA len");
            }
            int readByte4 = dataInputStream.readByte() & 255;
            if (readByte4 > 0) {
                if (dataInputStream.available() < readByte4) {
                    try {
                        dataInputStream.close();
                        dataOutputStream.close();
                    } catch (IOException e9) {
                        e9.printStackTrace();
                    }
                    return null;
                }
                dataInputStream.skipBytes(readByte4);
            }
            if (dataInputStream.available() <= 0) {
                try {
                    dataInputStream.close();
                    dataOutputStream.close();
                } catch (IOException e10) {
                    e10.printStackTrace();
                }
                return null;
            }
            int readByte5 = dataInputStream.readByte() & 255;
            if (dataInputStream.available() < readByte5) {
                try {
                    dataInputStream.close();
                    dataOutputStream.close();
                } catch (IOException e11) {
                    e11.printStackTrace();
                }
                return null;
            }
            byte[] bArr5 = new byte[readByte5];
            if (dataInputStream.read(bArr5) < 0) {
                throw new RuntimeException("Exception : fail to read tpdu");
            }
            dataOutputStream.write(bArr4);
            dataOutputStream.write(bArr5);
            byte[] byteArray3 = byteArrayOutputStream.toByteArray();
            try {
                dataInputStream.close();
                dataOutputStream.close();
            } catch (IOException e12) {
                e12.printStackTrace();
            }
            return byteArray3;
        } finally {
            try {
                dataInputStream.close();
                dataOutputStream.close();
            } catch (IOException e13) {
                e13.printStackTrace();
            }
        }
    }

    public static byte[] makeRPErrorPdu(byte[] bArr) {
        int i = bArr.length >= 2 ? bArr[1] & 255 : 255;
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream(255);
        DataOutputStream dataOutputStream = new DataOutputStream(byteArrayOutputStream);
        try {
            try {
                dataOutputStream.writeByte(5);
                dataOutputStream.writeByte(i);
                dataOutputStream.writeByte(1);
                dataOutputStream.writeByte(95);
                return byteArrayOutputStream.toByteArray();
            } catch (IOException e) {
                e.printStackTrace();
                try {
                    dataOutputStream.close();
                    return null;
                } catch (IOException e2) {
                    e2.printStackTrace();
                    return null;
                }
            }
        } finally {
            try {
                dataOutputStream.close();
            } catch (IOException e3) {
                e3.printStackTrace();
            }
        }
    }

    public static String trimSipAddr(String str) {
        if (str == null) {
            return null;
        }
        if (str.startsWith("<")) {
            str = str.substring(1);
        }
        return str.endsWith(">") ? str.substring(0, str.length() - 1) : str;
    }

    public static int getTPMRFromPdu(byte[] bArr) {
        if (bArr == null) {
            return -1;
        }
        int i = (bArr[0] & 255) + 2;
        if (bArr.length < i) {
            return -1;
        }
        return bArr[i] & 255;
    }

    public static String removeSipPrefix(String str) {
        if (str == null) {
            return null;
        }
        return str.length() <= 4 ? str : (str.startsWith("sip:") || str.startsWith("tel:")) ? str.substring(4) : str;
    }

    public static String removeDisplayName(String str) {
        int indexOf;
        if (str == null) {
            return null;
        }
        String trim = str.trim();
        return trim.length() <= 1 ? str : (trim.startsWith("sip") || trim.startsWith("<sip") || trim.startsWith("tel") || trim.startsWith("<tel")) ? trim : !trim.startsWith(CmcConstants.E_NUM_STR_QUOTE) ? str : ((trim.indexOf("sip:") >= 0 || trim.indexOf("tel:") >= 0) && -1 != (indexOf = trim.indexOf(CmcConstants.E_NUM_STR_QUOTE, 1)) && indexOf < trim.length() + 1) ? trim.substring(indexOf + 1).trim() : str;
    }

    public static boolean isStatusReport(byte[] bArr) {
        byte b;
        int i;
        return bArr != null && bArr.length != 0 && (b = bArr[0]) >= 0 && bArr.length > (i = b + 1) && (bArr[i] & 2) == 2;
    }

    public static void set3gppTPRD(byte[] bArr) {
        int i;
        if (bArr.length >= 4 && bArr.length >= (i = bArr[2] + 3)) {
            int i2 = i + 1 + bArr[i];
            if (bArr.length < i2) {
                return;
            }
            int i3 = i2 + 1;
            bArr[i3] = (byte) (4 | bArr[i3]);
        }
    }

    public static byte[] getDeliverReportFromPdu(int i, int i2, byte[] bArr, int i3, int i4) {
        if (bArr != null && bArr.length >= 4) {
            int i5 = ((bArr[1] & 255) * 256) + (bArr[0] & 255);
            Log.i(LOG_TAG, "getDeliverReportFromPdu - reason : " + i5);
            ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream(255);
            DataOutputStream dataOutputStream = new DataOutputStream(byteArrayOutputStream);
            int i6 = 3;
            try {
                if (i5 == 0 || i5 < 32768) {
                    dataOutputStream.write(2);
                    dataOutputStream.write((byte) i2);
                    dataOutputStream.write(65);
                    byte b = bArr[3];
                    if (b > 0 && bArr.length >= b) {
                        dataOutputStream.write(bArr, 3, bArr.length - 3);
                    } else {
                        if (i5 != 0) {
                            dataOutputStream.write(3);
                        } else {
                            if (i3 == 0) {
                                i6 = 2;
                            }
                            if (i4 != 0) {
                                i6++;
                            }
                            dataOutputStream.write((byte) i6);
                        }
                        dataOutputStream.write(0);
                        if (i5 != 0) {
                            dataOutputStream.write(i5 & 255);
                        }
                        byte b2 = i3 != 0 ? (byte) 1 : (byte) 0;
                        if (i4 != 0) {
                            b2 = (byte) (b2 | 2);
                        }
                        dataOutputStream.write(b2);
                        if (i3 != 0) {
                            dataOutputStream.write((byte) i3);
                        }
                        if (i4 != 0) {
                            dataOutputStream.write((byte) i4);
                        }
                    }
                } else if (i5 > 32768) {
                    dataOutputStream.write(4);
                    dataOutputStream.write((byte) i2);
                    dataOutputStream.write(1);
                    dataOutputStream.write(getRPErrCause(i5));
                    Mno simMno = SimUtil.getSimMno(i);
                    if (simMno == Mno.DOCOMO) {
                        dataOutputStream.write(65);
                        dataOutputStream.write(3);
                        dataOutputStream.write(0);
                        dataOutputStream.write(getTPErrCause(i5));
                        dataOutputStream.write(0);
                    } else if (!simMno.isEur()) {
                        dataOutputStream.write(0);
                    }
                }
                dataOutputStream.close();
                return byteArrayOutputStream.toByteArray();
            } catch (IOException e) {
                try {
                    dataOutputStream.close();
                } catch (IOException e2) {
                    e2.printStackTrace();
                }
                e.printStackTrace();
            }
        }
        return null;
    }

    public static byte[] getTPPidDcsFromPdu(byte[] bArr) {
        int read;
        if (bArr == null) {
            return null;
        }
        byte[] bArr2 = {0, 0};
        DataInputStream dataInputStream = new DataInputStream(new ByteArrayInputStream(bArr));
        try {
            try {
                try {
                    read = dataInputStream.read() & 255;
                } finally {
                    try {
                        dataInputStream.close();
                    } catch (IOException e) {
                        e.printStackTrace();
                    }
                }
            } catch (IOException e2) {
                e2.printStackTrace();
                dataInputStream.close();
            }
        } catch (IOException e3) {
            e3.printStackTrace();
        }
        if (bArr.length < read + 2) {
            return null;
        }
        dataInputStream.skipBytes(read);
        dataInputStream.skipBytes(1);
        int read2 = (((dataInputStream.read() & 255) + 1) / 2) + 1;
        if (dataInputStream.available() < read2 + 2) {
            try {
                dataInputStream.close();
            } catch (IOException e4) {
                e4.printStackTrace();
            }
            return bArr2;
        }
        dataInputStream.skip(read2);
        bArr2[0] = dataInputStream.readByte();
        bArr2[1] = dataInputStream.readByte();
        dataInputStream.close();
        return bArr2;
    }

    public static boolean is911FromPdu(byte[] bArr) {
        int read;
        if (bArr == null) {
            return false;
        }
        DataInputStream dataInputStream = new DataInputStream(new ByteArrayInputStream(bArr));
        try {
            try {
                try {
                    read = dataInputStream.read() & 255;
                } catch (IOException e) {
                    e.printStackTrace();
                    dataInputStream.close();
                }
            } catch (IOException e2) {
                e2.printStackTrace();
            }
            if (bArr.length < read + 2) {
                return false;
            }
            dataInputStream.skipBytes(read);
            dataInputStream.skipBytes(1);
            int readByte = (((dataInputStream.readByte() & 255) + 1) / 2) + 1;
            if (dataInputStream.available() < readByte + 2) {
                try {
                    dataInputStream.close();
                } catch (IOException e3) {
                    e3.printStackTrace();
                }
                return false;
            }
            byte[] bArr2 = new byte[readByte];
            if (dataInputStream.read(bArr2, 0, readByte) < 0) {
                try {
                    dataInputStream.close();
                } catch (IOException e4) {
                    e4.printStackTrace();
                }
                return false;
            }
            String bytesToHexString = StrUtil.bytesToHexString(bArr2);
            if (readByte != 3 || bytesToHexString == null || !bytesToHexString.matches("(.*)19f1")) {
                dataInputStream.close();
                return false;
            }
            Log.i(LOG_TAG, "Incoming 911");
            try {
                dataInputStream.close();
            } catch (IOException e5) {
                e5.printStackTrace();
            }
            return true;
        } finally {
            try {
                dataInputStream.close();
            } catch (IOException e6) {
                e6.printStackTrace();
            }
        }
    }

    public static boolean isNanp(String str) {
        if (str == null || str.length() != 10 || !isTwoToNine(str.charAt(0)) || !isTwoToNine(str.charAt(3))) {
            return false;
        }
        for (int i = 1; i < 10; i++) {
            if (!isISODigit(str.charAt(i))) {
                return false;
            }
        }
        return true;
    }

    public static boolean isAdminMsg(byte[] bArr) {
        byte[] tPPidDcsFromPdu = getTPPidDcsFromPdu(bArr);
        return tPPidDcsFromPdu != null && tPPidDcsFromPdu[0] == Byte.MAX_VALUE;
    }

    protected static String getScaForRpDa(boolean z, byte[] bArr, String str, Mno mno) {
        if (!z) {
            str = getSCAFromPdu(bArr);
        }
        if (TextUtils.isEmpty(str)) {
            if (mno != Mno.RJIL && mno != Mno.CTC && mno != Mno.CTCMO) {
                Log.e(LOG_TAG, "pdu is malformed. no SCA");
                return "noSCA";
            }
            str = "7";
        }
        Log.i(LOG_TAG, "sendSMSOverIMS: SmscAddr FromPdu=" + str);
        return str;
    }

    protected static String getSca(String str, String str2, Mno mno, ImsRegistration imsRegistration) {
        if (mno == Mno.VZW) {
            if (str2 == null || str2.length() <= 3 || !str2.startsWith(PREFIX_NUMBER_PLUS)) {
                return str2 != null ? str2 : str;
            }
            return "+" + str2.substring(3);
        }
        if (!DeviceUtil.getGcfMode()) {
            return str;
        }
        if (imsRegistration != null) {
            str = imsRegistration.getImsProfile().getSmscSet();
        }
        return str == null ? "4444" : str;
    }

    protected static String getScaFromPsismscPSI(Context context, String str, Mno mno, TelephonyManager telephonyManager, int i, ImsRegistration imsRegistration) {
        long clearCallingIdentity = Binder.clearCallingIdentity();
        try {
            if (mno != Mno.ATT && mno != Mno.VZW && mno != Mno.KDDI && mno != Mno.SPRINT) {
                if (mno == Mno.LGU) {
                    str = DmProfileLoader.getProfile(context, imsRegistration.getImsProfile(), i).getSmsPsi();
                    if (str == null || "".equalsIgnoreCase(str)) {
                        Log.e(LOG_TAG, "there is no SMS_PSI");
                        return "noPSI";
                    }
                } else if (mno == Mno.KT) {
                    byte[] psismsc = TelephonyManagerExt.getPsismsc(telephonyManager, i);
                    if (psismsc == null) {
                        Log.e(LOG_TAG, "there is no PSISMSC");
                    } else {
                        String str2 = new String(psismsc, Charset.defaultCharset());
                        if (str2.length() > 0 && str2.indexOf(";") > 0) {
                            str2 = str2.substring(0, str2.indexOf(";"));
                        }
                        if (str2.length() > 0) {
                            Log.d(LOG_TAG, "PSISMSC: " + str2);
                            str = str2;
                        }
                    }
                }
                return str;
            }
            byte[] psismsc2 = TelephonyManagerExt.getPsismsc(telephonyManager, i);
            if (psismsc2 != null) {
                str = new String(psismsc2, Charset.defaultCharset());
                Log.d(LOG_TAG, "PSISMSC: " + str);
            } else if (mno == Mno.SPRINT) {
                String smsPsi = DmProfileLoader.getProfile(context, imsRegistration.getImsProfile(), i).getSmsPsi();
                if (smsPsi != null && !"".equalsIgnoreCase(smsPsi)) {
                    str = smsPsi;
                }
                Log.e(LOG_TAG, "there is no SMS_PSI");
            }
            return str;
        } finally {
            Binder.restoreCallingIdentity(clearCallingIdentity);
        }
    }
}
