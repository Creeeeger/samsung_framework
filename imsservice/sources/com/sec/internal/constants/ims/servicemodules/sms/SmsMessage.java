package com.sec.internal.constants.ims.servicemodules.sms;

import android.telephony.PhoneNumberUtils;
import android.util.Log;
import com.android.internal.telephony.GsmAlphabet;
import com.android.internal.util.BitwiseInputStream;
import com.android.internal.util.BitwiseOutputStream;
import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.DataInputStream;
import java.io.DataOutputStream;
import java.io.IOException;

/* loaded from: classes.dex */
public class SmsMessage {
    public static final int CDMA_NETWORK_TYPE = 1;
    private static final int CDMA_SMS_DIGIT_MODE_4_BIT = 0;
    private static final int CDMA_SMS_DIGIT_MODE_8_BIT = 1;
    public static final int DELIVER_MESSAGE_TYPE = 1;
    public static final int DIGIT_MODE_4BIT_DTMF = 4;
    public static final int DIGIT_MODE_8BIT_CHAR = 8;
    public static final int ENCODING_7BIT_ASCII = 2;
    public static final int ENCODING_GSM_7BIT_ALPHABET = 9;
    public static final int ENCODING_GSM_DCS = 10;
    public static final int ENCODING_IA5 = 3;
    public static final int ENCODING_IS91_EXTENDED_PROTOCOL = 1;
    public static final int ENCODING_KOREAN = 6;
    public static final int ENCODING_LATIN = 8;
    public static final int ENCODING_LATIN_HEBREW = 7;
    public static final int ENCODING_OCTET = 0;
    public static final int ENCODING_SHIFT_JIS = 5;
    public static final int ENCODING_UNICODE_16 = 4;
    public static final int ERROR_NONE = 0;
    public static final int ERROR_PERMANENT = 3;
    public static final int ERROR_TEMPORARY = 2;
    public static final int FAIL_CAUSE_ENCODING_PROBLEM = 96;
    public static final int FAIL_CAUSE_INVALID_TELESERVICE_ID = 4;
    public static final int FAIL_CAUSE_OTHER_TERMINAL_PROBLEM = 39;
    public static final int FAIL_CAUSE_RESOURCE_SHORTAGE = 35;
    public static final String FORMAT_3GPP = "3gpp";
    public static final String FORMAT_3GPP2 = "3gpp2";
    public static final int GSM_NETWORK_TYPE = 2;
    public static final int IPC_ADDRESS = 3;
    public static final int IPC_BEARER_DATA = 25;
    public static final int IPC_BEARER_REPLY = 5;
    public static final int IPC_SERVICE_CATEGORY = 2;
    public static final int IPC_SMS_FORMAT_PP = 1;
    public static final int IPC_SMS_FORMAT_SR = 2;
    public static final int IPC_SUBADDRESS = 4;
    public static final int IPC_TELESERVICE_ID = 1;
    public static final String LOG_TAG = "SmsMessage";
    public static final int MESSAGE_TYPE_CANCELLATION = 3;
    public static final int MESSAGE_TYPE_DELIVER = 1;
    public static final int MESSAGE_TYPE_DELIVERY_ACK = 4;
    public static final int MESSAGE_TYPE_DELIVER_REPORT = 7;
    public static final int MESSAGE_TYPE_READ_ACK = 6;
    public static final int MESSAGE_TYPE_SUBMIT = 2;
    public static final int MESSAGE_TYPE_SUBMIT_REPORT = 8;
    public static final int MESSAGE_TYPE_USER_ACK = 5;
    public static final int NUMBER_MODE_DATA_NETWORK = 1;
    public static final int NUMBER_MODE_NOT_DATA_NETWORK = 0;
    public static final int PARAM_ID_BEARER_DATA = 8;
    public static final int PARAM_ID_BEARER_REPLY_OPTION = 6;
    public static final int PARAM_ID_CAUSE_CODES = 7;
    public static final int PARAM_ID_DESTINATION_ADDRESS = 4;
    public static final int PARAM_ID_DESTINATION_SUB_ADDRESS = 5;
    public static final int PARAM_ID_ORIGINATING_ADDRESS = 2;
    public static final int PARAM_ID_ORIGINATING_SUB_ADDRESS = 3;
    public static final int PARAM_ID_SERVICE_CATEGORY = 1;
    public static final int PARAM_ID_TELESERVICE = 0;
    public static final int PARAM_LENGTH_TELESERVICE = 2;
    public static final int STATUS_REPORT_MESSAGE_TYPE = 2;
    private static final byte SUBPARAM_ALERT_ON_MESSAGE_DELIVERY = 12;
    private static final byte SUBPARAM_CALLBACK_NUMBER = 14;
    private static final byte SUBPARAM_DEFERRED_DELIVERY_TIME_ABSOLUTE = 6;
    private static final byte SUBPARAM_DEFERRED_DELIVERY_TIME_RELATIVE = 7;
    private static final byte SUBPARAM_ID_LAST_DEFINED = 23;
    private static final byte SUBPARAM_LANGUAGE_INDICATOR = 13;
    private static final byte SUBPARAM_MESSAGE_CENTER_TIME_STAMP = 3;
    private static final byte SUBPARAM_MESSAGE_DEPOSIT_INDEX = 17;
    private static final byte SUBPARAM_MESSAGE_DISPLAY_MODE = 15;
    private static final byte SUBPARAM_MESSAGE_IDENTIFIER = 0;
    private static final byte SUBPARAM_MESSAGE_STATUS = 20;
    private static final byte SUBPARAM_NUMBER_OF_MESSAGES = 11;
    private static final byte SUBPARAM_PRIORITY_INDICATOR = 8;
    private static final byte SUBPARAM_PRIVACY_INDICATOR = 9;
    private static final byte SUBPARAM_REPLY_OPTION = 10;
    private static final byte SUBPARAM_SERVICE_CATEGORY_PROGRAM_DATA = 18;
    private static final byte SUBPARAM_USER_DATA = 1;
    private static final byte SUBPARAM_USER_RESPONSE_CODE = 2;
    private static final byte SUBPARAM_VALIDITY_PERIOD_ABSOLUTE = 4;
    private static final byte SUBPARAM_VALIDITY_PERIOD_RELATIVE = 5;
    private byte[] mAddressByte;
    private int mBearerDataLength;
    private int mBearerReplyOptionValue;
    private int mCauseCode;
    private int mContentType;
    private String mDestAddress;
    private int mDigitMode;
    private int mErrorClass;
    private int mMessageRef;
    private int mMessageType;
    private int mMsgType;
    private int mNetworktype;
    private int mNoOfAddressDigit;
    private int mNumberMode;
    private int mNumberPlan;
    private int mReplySeqNo;
    private int mServiceCategory;
    private boolean mStatusReportRequested;
    private int mTeleServiceid;
    private byte[] mTpdu;
    private int mUserDataHeader;
    private int mCur = 0;
    private int mMsgId = 0;
    private String mScAddress = null;
    private byte[] mBearerData = new byte[0];

    public static byte convertDtmfToAscii(byte b) {
        switch (b) {
            case 0:
            case 10:
                return (byte) 48;
            case 1:
                return (byte) 49;
            case 2:
                return (byte) 50;
            case 3:
                return (byte) 51;
            case 4:
                return (byte) 52;
            case 5:
                return (byte) 53;
            case 6:
                return (byte) 54;
            case 7:
                return (byte) 55;
            case 8:
                return (byte) 56;
            case 9:
                return (byte) 57;
            case 11:
                return (byte) 42;
            case 12:
                return (byte) 35;
            case 13:
                return (byte) 65;
            case 14:
                return (byte) 66;
            case 15:
                return (byte) 67;
            default:
                return (byte) 32;
        }
    }

    private static int parseToDtmf(byte b) {
        if (b >= 49 && b <= 57) {
            return b - 48;
        }
        if (b == 48) {
            return 10;
        }
        if (b == 42) {
            return 11;
        }
        return b == 35 ? 12 : 0;
    }

    private static class CodingException extends Exception {
        public CodingException(String str) {
            super(str);
        }
    }

    public byte[] parseSubmitPdu(byte[] bArr, String str) {
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream(300);
        DataOutputStream dataOutputStream = new DataOutputStream(byteArrayOutputStream);
        try {
            if (str.equals(FORMAT_3GPP2)) {
                parseOutgoingCdmaSms(bArr);
                dataOutputStream.write(0);
                dataOutputStream.write(0);
                dataOutputStream.write(2);
                dataOutputStream.writeChar(this.mTeleServiceid);
                byte[] encodeCdmaAddress = encodeCdmaAddress(4);
                if (encodeCdmaAddress != null) {
                    dataOutputStream.write(encodeCdmaAddress);
                }
                dataOutputStream.write(8);
                dataOutputStream.write(this.mBearerDataLength);
                dataOutputStream.write(this.mBearerData);
                if (this.mBearerDataLength != 0) {
                    byte[] bArr2 = new byte[6];
                    DataInputStream dataInputStream = new DataInputStream(new ByteArrayInputStream(this.mBearerData));
                    if (dataInputStream.read(bArr2, 0, 6) < 0) {
                        Log.d(LOG_TAG, "parseSubmitPdu: messageId - the end of the stream has been reached.");
                    }
                    dataInputStream.close();
                    try {
                        decodeMessageId(new BitwiseInputStream(bArr2));
                    } catch (BitwiseInputStream.AccessException e) {
                        e.printStackTrace();
                    }
                }
                decodeBearerData(this.mBearerData);
                this.mTpdu = byteArrayOutputStream.toByteArray();
            } else {
                dataOutputStream.write(bArr);
                this.mTpdu = byteArrayOutputStream.toByteArray();
                parseOutgoingGsmSms();
            }
            dataOutputStream.close();
            return this.mTpdu;
        } catch (IOException e2) {
            Log.e(LOG_TAG, "createFromPdu: conversion from byte array to object failed: " + e2);
            try {
                dataOutputStream.close();
                return null;
            } catch (IOException e3) {
                e3.printStackTrace();
                return null;
            }
        }
    }

    public byte[] convertToFrameworkSmsFormat(byte[] bArr) {
        parseCdmaDeliverPdu(bArr);
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream(300);
        DataOutputStream dataOutputStream = new DataOutputStream(byteArrayOutputStream);
        try {
            dataOutputStream.writeInt(this.mMessageType);
            dataOutputStream.writeInt(this.mTeleServiceid);
            dataOutputStream.writeInt(this.mServiceCategory);
            dataOutputStream.write(this.mDigitMode);
            dataOutputStream.write(this.mNumberMode);
            dataOutputStream.write(this.mNetworktype);
            dataOutputStream.write(this.mNumberPlan);
            dataOutputStream.write(this.mNoOfAddressDigit);
            dataOutputStream.write(this.mAddressByte);
            dataOutputStream.writeInt(this.mBearerReplyOptionValue);
            dataOutputStream.write(this.mReplySeqNo);
            dataOutputStream.write(this.mErrorClass);
            dataOutputStream.write(this.mCauseCode);
            dataOutputStream.writeInt(this.mBearerDataLength);
            dataOutputStream.write(this.mBearerData);
            dataOutputStream.close();
            return byteArrayOutputStream.toByteArray();
        } catch (IOException e) {
            Log.e(LOG_TAG, "createFromPdu: conversion from byte array to object failed: " + e);
            try {
                dataOutputStream.close();
                return null;
            } catch (IOException e2) {
                e2.printStackTrace();
                return null;
            }
        }
    }

    public void parseCdmaDeliverPdu(byte[] bArr) {
        ByteArrayInputStream byteArrayInputStream = new ByteArrayInputStream(bArr);
        DataInputStream dataInputStream = new DataInputStream(byteArrayInputStream);
        try {
            this.mMessageType = dataInputStream.readByte();
        } catch (Exception e) {
            Log.e(LOG_TAG, "parseCdmaDeliverPdu: conversion from pdu to SmsMessage failed" + e);
            return;
        }
        while (dataInputStream.available() > 0) {
            byte readByte = dataInputStream.readByte();
            int readUnsignedByte = dataInputStream.readUnsignedByte();
            byte[] bArr2 = new byte[readUnsignedByte];
            Log.v(LOG_TAG, "parameterId = " + ((int) readByte));
            switch (readByte) {
                case 0:
                    this.mTeleServiceid = dataInputStream.readUnsignedShort();
                    continue;
                case 1:
                    this.mServiceCategory = dataInputStream.readUnsignedShort();
                    continue;
                case 2:
                case 4:
                    byte[] bArr3 = new byte[readUnsignedByte];
                    if (dataInputStream.read(bArr3) < 0) {
                        Log.v(LOG_TAG, "parseCdmaDeliverPdu: address - the end of the stream has been reached.");
                    }
                    parseCdmaAddress(bArr3);
                    continue;
                case 3:
                case 5:
                case 6:
                    if (dataInputStream.read(bArr2, 0, readUnsignedByte) < 0) {
                        Log.d(LOG_TAG, "parseOutgoingCdmaSms: parameterData - the end of the stream has been reached.");
                    }
                    this.mBearerReplyOptionValue = new BitwiseInputStream(bArr2).read(6);
                    continue;
                case 7:
                    if (dataInputStream.read(bArr2, 0, readUnsignedByte) < 0) {
                        Log.d(LOG_TAG, "parseOutgoingCdmaSms: parameterData - the end of the stream has been reached.");
                    }
                    BitwiseInputStream bitwiseInputStream = new BitwiseInputStream(bArr2);
                    this.mReplySeqNo = bitwiseInputStream.readByteArray(6)[0];
                    byte b = bitwiseInputStream.readByteArray(2)[0];
                    this.mErrorClass = b;
                    if (b != 0) {
                        this.mCauseCode = bitwiseInputStream.readByteArray(8)[0];
                    } else {
                        continue;
                    }
                case 8:
                    if (dataInputStream.read(bArr2, 0, readUnsignedByte) < 0) {
                        Log.d(LOG_TAG, "parseOutgoingCdmaSms: parameterData - the end of the stream has been reached.");
                    }
                    this.mBearerDataLength = readUnsignedByte;
                    this.mBearerData = bArr2;
                    if (readUnsignedByte != 0) {
                        byte[] bArr4 = new byte[6];
                        ByteArrayInputStream byteArrayInputStream2 = new ByteArrayInputStream(this.mBearerData);
                        DataInputStream dataInputStream2 = new DataInputStream(byteArrayInputStream2);
                        if (dataInputStream2.read(bArr4, 0, 6) < 0) {
                            Log.e(LOG_TAG, "parseCdmaDeliverPdu: messageId - the end of the stream has been reached.");
                        }
                        try {
                            decodeMessageId(new BitwiseInputStream(bArr4));
                        } catch (BitwiseInputStream.AccessException e2) {
                            e2.printStackTrace();
                        }
                        byteArrayInputStream2.close();
                        dataInputStream2.close();
                    }
                default:
                    throw new Exception("unsupported parameterId (" + ((int) readByte) + ")");
            }
            Log.e(LOG_TAG, "parseCdmaDeliverPdu: conversion from pdu to SmsMessage failed" + e);
            return;
        }
        byteArrayInputStream.close();
        dataInputStream.close();
    }

    public void parseOutgoingCdmaSms(byte[] bArr) {
        DataInputStream dataInputStream = new DataInputStream(new ByteArrayInputStream(bArr));
        int length = bArr.length;
        try {
            this.mTeleServiceid = dataInputStream.readInt();
            dataInputStream.readInt();
            this.mServiceCategory = dataInputStream.readInt();
            this.mDigitMode = dataInputStream.readByte();
            this.mNumberMode = dataInputStream.readByte();
            this.mNetworktype = dataInputStream.readByte();
            this.mNumberPlan = dataInputStream.readByte();
            byte readByte = dataInputStream.readByte();
            this.mNoOfAddressDigit = readByte;
            if (readByte > length) {
                throw new RuntimeException("createFromPdu: Invalid pdu, addr.numberOfDigits " + this.mNoOfAddressDigit + " > pdu len " + length);
            }
            byte[] bArr2 = new byte[length];
            if (dataInputStream.read(bArr2, 0, readByte) < 0) {
                Log.d(LOG_TAG, "parseOutgoingCdmaSms: parameterData - the end of the stream has been reached.");
            }
            BitwiseInputStream bitwiseInputStream = new BitwiseInputStream(bArr2);
            int i = this.mNoOfAddressDigit;
            byte[] bArr3 = new byte[i];
            this.mAddressByte = new byte[i];
            int i2 = this.mDigitMode;
            if (i2 == 0) {
                for (int i3 = 0; i3 < this.mNoOfAddressDigit; i3++) {
                    bitwiseInputStream.read(4);
                    bArr3[i3] = convertDtmfToAscii((byte) (bitwiseInputStream.read(4) & 15));
                }
            } else if (i2 == 1) {
                for (int i4 = 0; i4 < this.mNoOfAddressDigit; i4++) {
                    bArr3[i4] = (byte) (bitwiseInputStream.read(8) & 255);
                }
            }
            this.mAddressByte = bArr3;
            this.mDestAddress = new String(bArr3);
            dataInputStream.readByte();
            dataInputStream.readByte();
            dataInputStream.readByte();
            int readUnsignedByte = dataInputStream.readUnsignedByte();
            this.mBearerDataLength = readUnsignedByte;
            if (readUnsignedByte > length) {
                throw new RuntimeException("parseOutgoingCdmaSms: Invalid pdu, bearerDataLength " + this.mBearerDataLength + " > pdu len " + length);
            }
            byte[] bArr4 = new byte[readUnsignedByte];
            this.mBearerData = bArr4;
            if (dataInputStream.read(bArr4, 0, readUnsignedByte) < 0) {
                Log.d(LOG_TAG, "parseOutgoingCdmaSms: parameterData - the end of the stream has been reached.");
            }
            decodeBearerData(this.mBearerData);
            dataInputStream.close();
        } catch (IOException e) {
            throw new RuntimeException("parseOutgoingCdmaSms1: conversion from byte array to object failed: " + e, e);
        } catch (Exception e2) {
            Log.e(LOG_TAG, "parseOutgoingCdmaSms2: conversion from byte array to object failed: " + e2);
        }
    }

    public void parseOutgoingGsmSms() {
        this.mScAddress = getSCAddress();
        Log.d(LOG_TAG, "parseOutgoingGsmSms() : mScAddress " + this.mScAddress);
        int i = getByte();
        int i2 = i & 3;
        this.mStatusReportRequested = (i & 32) == 32;
        if (i2 != 1) {
            return;
        }
        this.mCur++;
        this.mDestAddress = getGsmAddress();
    }

    public int getMessageType() {
        return this.mMsgType;
    }

    public boolean getStatusReportRequested() {
        return this.mStatusReportRequested;
    }

    public void parseDeliverPdu(byte[] bArr, String str) {
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream(300);
        DataOutputStream dataOutputStream = new DataOutputStream(byteArrayOutputStream);
        try {
            dataOutputStream.write(bArr);
            this.mTpdu = byteArrayOutputStream.toByteArray();
            if (str.equals(FORMAT_3GPP)) {
                this.mScAddress = getSCAddress();
                int i = getByte() & 3;
                if (i != 0) {
                    if (i == 2) {
                        this.mMsgType = 2;
                        this.mMessageRef = getByte();
                        return;
                    } else if (i != 3) {
                        return;
                    }
                }
                this.mMsgType = 1;
                return;
            }
            this.mMessageRef = getByte();
        } catch (IOException e) {
            Log.e(LOG_TAG, "getMessageType: conversion from byte array to object failed: " + e);
            try {
                dataOutputStream.close();
            } catch (IOException e2) {
                e2.printStackTrace();
            }
        }
    }

    public int getMessageRef() {
        return this.mMessageRef;
    }

    private String getGsmAddress() {
        byte[] bArr = this.mTpdu;
        int i = this.mCur;
        int i2 = bArr[i] & 255;
        int i3 = ((i2 + 1) / 2) + 2;
        byte[] bArr2 = new byte[i3];
        System.arraycopy(bArr, i, bArr2, 0, i3);
        if ((bArr2[1] & 255) == 5) {
            return GsmAlphabet.gsm7BitPackedToString(bArr2, 2, (i2 * 4) / 7);
        }
        int i4 = i3 - 1;
        byte b = bArr2[i4];
        if ((i2 & 1) == 1) {
            bArr2[i4] = (byte) (b | 240);
        }
        String calledPartyBCDToString = PhoneNumberUtils.calledPartyBCDToString(bArr2, 1, i4, 1);
        bArr2[i4] = b;
        return calledPartyBCDToString;
    }

    private String getSCAddress() {
        int i = getByte();
        String str = null;
        if (i != 0) {
            try {
                str = PhoneNumberUtils.calledPartyBCDToString(this.mTpdu, this.mCur, i, 1);
            } catch (RuntimeException e) {
                Log.d(LOG_TAG, "invalid SC address: ", e);
            }
        }
        this.mCur += i;
        return str;
    }

    private int getByte() {
        byte[] bArr = this.mTpdu;
        int i = this.mCur;
        this.mCur = i + 1;
        return bArr[i] & 255;
    }

    private void parseCdmaAddress(byte[] bArr) {
        BitwiseInputStream bitwiseInputStream = new BitwiseInputStream(bArr);
        try {
            this.mDigitMode = bitwiseInputStream.read(1);
            this.mNumberMode = bitwiseInputStream.read(1);
            int i = this.mDigitMode;
            int i2 = i == 0 ? 4 : 8;
            if (i == 1) {
                this.mNetworktype = bitwiseInputStream.read(3);
            }
            if (this.mDigitMode == 1 && this.mNumberMode == 0) {
                this.mNumberPlan = bitwiseInputStream.read(4);
            }
            int read = bitwiseInputStream.read(8);
            this.mNoOfAddressDigit = read;
            this.mAddressByte = new byte[read];
            for (int i3 = 0; i3 < this.mNoOfAddressDigit; i3++) {
                if (this.mDigitMode == 0) {
                    this.mAddressByte[i3] = (byte) (bitwiseInputStream.read(i2) + 48);
                    byte[] bArr2 = this.mAddressByte;
                    if (bArr2[i3] == 58) {
                        bArr2[i3] = 48;
                    }
                } else {
                    this.mAddressByte[i3] = (byte) bitwiseInputStream.read(i2);
                }
            }
        } catch (BitwiseInputStream.AccessException unused) {
            Log.e(LOG_TAG, "bitwiseinputstream exception is thrown");
        }
    }

    private byte[] encodeCdmaAddress(int i) {
        BitwiseOutputStream bitwiseOutputStream = new BitwiseOutputStream(50);
        try {
            bitwiseOutputStream.write(8, i);
            bitwiseOutputStream.write(8, getAddressParameterLength());
            bitwiseOutputStream.write(1, this.mDigitMode);
            bitwiseOutputStream.write(1, this.mNumberMode);
            if (this.mDigitMode == 1) {
                bitwiseOutputStream.write(3, this.mNetworktype);
            }
            if (this.mDigitMode == 1 && this.mNumberMode == 0) {
                bitwiseOutputStream.write(4, this.mNumberPlan);
            }
            bitwiseOutputStream.write(8, this.mNoOfAddressDigit);
            int i2 = this.mDigitMode == 0 ? 4 : 8;
            for (int i3 = 0; i3 < this.mNoOfAddressDigit; i3++) {
                if (i2 == 4) {
                    bitwiseOutputStream.write(i2, parseToDtmf(this.mAddressByte[i3]));
                } else {
                    bitwiseOutputStream.write(i2, this.mAddressByte[i3]);
                }
            }
            return bitwiseOutputStream.toByteArray();
        } catch (BitwiseOutputStream.AccessException e) {
            Log.e(LOG_TAG, "bitwise exception is thrown");
            e.printStackTrace();
            return null;
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:16:0x0065, code lost:
    
        if (r7 == 1) goto L21;
     */
    /* JADX WARN: Code restructure failed: missing block: B:18:0x0069, code lost:
    
        if (r7 == 10) goto L20;
     */
    /* JADX WARN: Code restructure failed: missing block: B:19:0x006b, code lost:
    
        r6 = 0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:20:0x006c, code lost:
    
        if (r6 >= r8) goto L53;
     */
    /* JADX WARN: Code restructure failed: missing block: B:21:0x006e, code lost:
    
        r2.read(8);
        r6 = r6 + 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:32:0x0074, code lost:
    
        decodeReplyOption(r2);
     */
    /* JADX WARN: Code restructure failed: missing block: B:33:0x0078, code lost:
    
        r4 = 0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:34:0x0079, code lost:
    
        if (r4 >= r8) goto L54;
     */
    /* JADX WARN: Code restructure failed: missing block: B:35:0x007b, code lost:
    
        r2.read(8);
        r4 = r4 + 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:37:0x0081, code lost:
    
        r4 = r8;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public void decodeBearerData(byte[] r13) {
        /*
            r12 = this;
            java.lang.String r0 = "BearerData decode failed: "
            java.lang.String r1 = "SmsMessage"
            com.android.internal.util.BitwiseInputStream r2 = new com.android.internal.util.BitwiseInputStream     // Catch: com.sec.internal.constants.ims.servicemodules.sms.SmsMessage.CodingException -> Lab com.android.internal.util.BitwiseInputStream.AccessException -> Lbf
            r2.<init>(r13)     // Catch: com.sec.internal.constants.ims.servicemodules.sms.SmsMessage.CodingException -> Lab com.android.internal.util.BitwiseInputStream.AccessException -> Lbf
            r13 = 0
            r3 = r13
            r4 = r3
        Lc:
            int r5 = r2.available()     // Catch: com.sec.internal.constants.ims.servicemodules.sms.SmsMessage.CodingException -> Lab com.android.internal.util.BitwiseInputStream.AccessException -> Lbf
            r6 = 1
            if (r5 <= 0) goto L93
            r5 = 8
            int r7 = r2.read(r5)     // Catch: com.sec.internal.constants.ims.servicemodules.sms.SmsMessage.CodingException -> Lab com.android.internal.util.BitwiseInputStream.AccessException -> Lbf
            int r8 = r2.read(r5)     // Catch: com.sec.internal.constants.ims.servicemodules.sms.SmsMessage.CodingException -> Lab com.android.internal.util.BitwiseInputStream.AccessException -> Lbf
            int r9 = r6 << r7
            java.lang.StringBuilder r10 = new java.lang.StringBuilder     // Catch: com.sec.internal.constants.ims.servicemodules.sms.SmsMessage.CodingException -> Lab com.android.internal.util.BitwiseInputStream.AccessException -> Lbf
            r10.<init>()     // Catch: com.sec.internal.constants.ims.servicemodules.sms.SmsMessage.CodingException -> Lab com.android.internal.util.BitwiseInputStream.AccessException -> Lbf
            java.lang.String r11 = "subparamId = "
            r10.append(r11)     // Catch: com.sec.internal.constants.ims.servicemodules.sms.SmsMessage.CodingException -> Lab com.android.internal.util.BitwiseInputStream.AccessException -> Lbf
            r10.append(r7)     // Catch: com.sec.internal.constants.ims.servicemodules.sms.SmsMessage.CodingException -> Lab com.android.internal.util.BitwiseInputStream.AccessException -> Lbf
            java.lang.String r11 = " length = "
            r10.append(r11)     // Catch: com.sec.internal.constants.ims.servicemodules.sms.SmsMessage.CodingException -> Lab com.android.internal.util.BitwiseInputStream.AccessException -> Lbf
            r10.append(r8)     // Catch: com.sec.internal.constants.ims.servicemodules.sms.SmsMessage.CodingException -> Lab com.android.internal.util.BitwiseInputStream.AccessException -> Lbf
            java.lang.String r10 = r10.toString()     // Catch: com.sec.internal.constants.ims.servicemodules.sms.SmsMessage.CodingException -> Lab com.android.internal.util.BitwiseInputStream.AccessException -> Lbf
            android.util.Log.d(r1, r10)     // Catch: com.sec.internal.constants.ims.servicemodules.sms.SmsMessage.CodingException -> Lab com.android.internal.util.BitwiseInputStream.AccessException -> Lbf
            r10 = r3 & r9
            r11 = 23
            if (r10 == 0) goto L63
            if (r7 < 0) goto L63
            if (r7 <= r11) goto L47
            goto L63
        L47:
            com.sec.internal.constants.ims.servicemodules.sms.SmsMessage$CodingException r12 = new com.sec.internal.constants.ims.servicemodules.sms.SmsMessage$CodingException     // Catch: com.sec.internal.constants.ims.servicemodules.sms.SmsMessage.CodingException -> Lab com.android.internal.util.BitwiseInputStream.AccessException -> Lbf
            java.lang.StringBuilder r13 = new java.lang.StringBuilder     // Catch: com.sec.internal.constants.ims.servicemodules.sms.SmsMessage.CodingException -> Lab com.android.internal.util.BitwiseInputStream.AccessException -> Lbf
            r13.<init>()     // Catch: com.sec.internal.constants.ims.servicemodules.sms.SmsMessage.CodingException -> Lab com.android.internal.util.BitwiseInputStream.AccessException -> Lbf
            java.lang.String r2 = "illegal duplicate subparameter ("
            r13.append(r2)     // Catch: com.sec.internal.constants.ims.servicemodules.sms.SmsMessage.CodingException -> Lab com.android.internal.util.BitwiseInputStream.AccessException -> Lbf
            r13.append(r7)     // Catch: com.sec.internal.constants.ims.servicemodules.sms.SmsMessage.CodingException -> Lab com.android.internal.util.BitwiseInputStream.AccessException -> Lbf
            java.lang.String r2 = ")"
            r13.append(r2)     // Catch: com.sec.internal.constants.ims.servicemodules.sms.SmsMessage.CodingException -> Lab com.android.internal.util.BitwiseInputStream.AccessException -> Lbf
            java.lang.String r13 = r13.toString()     // Catch: com.sec.internal.constants.ims.servicemodules.sms.SmsMessage.CodingException -> Lab com.android.internal.util.BitwiseInputStream.AccessException -> Lbf
            r12.<init>(r13)     // Catch: com.sec.internal.constants.ims.servicemodules.sms.SmsMessage.CodingException -> Lab com.android.internal.util.BitwiseInputStream.AccessException -> Lbf
            throw r12     // Catch: com.sec.internal.constants.ims.servicemodules.sms.SmsMessage.CodingException -> Lab com.android.internal.util.BitwiseInputStream.AccessException -> Lbf
        L63:
            if (r7 == 0) goto L83
            if (r7 == r6) goto L78
            r6 = 10
            if (r7 == r6) goto L74
            r6 = r13
        L6c:
            if (r6 >= r8) goto L8c
            r2.read(r5)     // Catch: com.sec.internal.constants.ims.servicemodules.sms.SmsMessage.CodingException -> Lab com.android.internal.util.BitwiseInputStream.AccessException -> Lbf
            int r6 = r6 + 1
            goto L6c
        L74:
            r12.decodeReplyOption(r2)     // Catch: com.sec.internal.constants.ims.servicemodules.sms.SmsMessage.CodingException -> Lab com.android.internal.util.BitwiseInputStream.AccessException -> Lbf
            goto L8c
        L78:
            r4 = r13
        L79:
            if (r4 >= r8) goto L81
            r2.read(r5)     // Catch: com.sec.internal.constants.ims.servicemodules.sms.SmsMessage.CodingException -> Lab com.android.internal.util.BitwiseInputStream.AccessException -> Lbf
            int r4 = r4 + 1
            goto L79
        L81:
            r4 = r8
            goto L8c
        L83:
            r6 = r13
        L84:
            if (r6 >= r8) goto L8c
            r2.read(r5)     // Catch: com.sec.internal.constants.ims.servicemodules.sms.SmsMessage.CodingException -> Lab com.android.internal.util.BitwiseInputStream.AccessException -> Lbf
            int r6 = r6 + 1
            goto L84
        L8c:
            if (r7 < 0) goto Lc
            if (r7 > r11) goto Lc
            r3 = r3 | r9
            goto Lc
        L93:
            r13 = r3 & 1
            if (r13 == 0) goto La3
            if (r4 == 0) goto Ld2
            int r12 = r12.mUserDataHeader     // Catch: com.sec.internal.constants.ims.servicemodules.sms.SmsMessage.CodingException -> Lab com.android.internal.util.BitwiseInputStream.AccessException -> Lbf
            if (r12 != r6) goto Ld2
            java.lang.String r12 = "UserData has header"
            android.util.Log.e(r1, r12)     // Catch: com.sec.internal.constants.ims.servicemodules.sms.SmsMessage.CodingException -> Lab com.android.internal.util.BitwiseInputStream.AccessException -> Lbf
            goto Ld2
        La3:
            com.sec.internal.constants.ims.servicemodules.sms.SmsMessage$CodingException r12 = new com.sec.internal.constants.ims.servicemodules.sms.SmsMessage$CodingException     // Catch: com.sec.internal.constants.ims.servicemodules.sms.SmsMessage.CodingException -> Lab com.android.internal.util.BitwiseInputStream.AccessException -> Lbf
            java.lang.String r13 = "missing MESSAGE_IDENTIFIER subparam"
            r12.<init>(r13)     // Catch: com.sec.internal.constants.ims.servicemodules.sms.SmsMessage.CodingException -> Lab com.android.internal.util.BitwiseInputStream.AccessException -> Lbf
            throw r12     // Catch: com.sec.internal.constants.ims.servicemodules.sms.SmsMessage.CodingException -> Lab com.android.internal.util.BitwiseInputStream.AccessException -> Lbf
        Lab:
            r12 = move-exception
            java.lang.StringBuilder r13 = new java.lang.StringBuilder
            r13.<init>()
            r13.append(r0)
            r13.append(r12)
            java.lang.String r12 = r13.toString()
            android.util.Log.e(r1, r12)
            goto Ld2
        Lbf:
            r12 = move-exception
            java.lang.StringBuilder r13 = new java.lang.StringBuilder
            r13.<init>()
            r13.append(r0)
            r13.append(r12)
            java.lang.String r12 = r13.toString()
            android.util.Log.e(r1, r12)
        Ld2:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.sec.internal.constants.ims.servicemodules.sms.SmsMessage.decodeBearerData(byte[]):void");
    }

    private void decodeMessageId(BitwiseInputStream bitwiseInputStream) throws BitwiseInputStream.AccessException {
        bitwiseInputStream.skip(8);
        int read = bitwiseInputStream.read(8) * 8;
        if (read >= 24) {
            int i = read - 24;
            int read2 = bitwiseInputStream.read(4);
            int read3 = bitwiseInputStream.read(8) | (bitwiseInputStream.read(8) << 8);
            int read4 = bitwiseInputStream.read(4);
            this.mMsgId = read3;
            this.mMsgType = read2;
            this.mUserDataHeader = read4;
            if (i > 0) {
                Log.d(LOG_TAG, "MESSAGE_IDENTIFIER decode succeeded (extra bits = " + i + ")");
            }
            bitwiseInputStream.skip(i);
        }
    }

    private void decodeReplyOption(BitwiseInputStream bitwiseInputStream) throws BitwiseInputStream.AccessException {
        bitwiseInputStream.read(1);
        this.mStatusReportRequested = bitwiseInputStream.read(1) == 1;
        bitwiseInputStream.read(1);
        bitwiseInputStream.read(1);
        bitwiseInputStream.read(4);
    }

    private int getAddressParameterLength() {
        int i = this.mDigitMode;
        int i2 = i == 1 ? 5 : 2;
        if (i == 1 && this.mNumberMode == 0) {
            i2 += 4;
        }
        int length = i2 + 8 + ((i == 0 ? 4 : 8) * this.mAddressByte.length);
        if (length % 8 == 0) {
            return length / 8;
        }
        return (length / 8) + 1;
    }

    public String getDestinationAddress() {
        return this.mDestAddress;
    }

    public byte[] getAddressBytes() {
        return this.mAddressByte;
    }

    public int getMsgID() {
        return this.mMsgId;
    }

    public int getContentType() {
        return this.mContentType;
    }

    public byte[] getTpdu() {
        return this.mTpdu;
    }

    public int getErrorCause() {
        return this.mCauseCode;
    }

    public int getErrorClass() {
        return this.mErrorClass;
    }

    public String getServiceCenterAddress() {
        return this.mScAddress;
    }
}
