package com.sec.internal.ims.core.iil;

import com.sec.internal.log.IMSLog;
import java.nio.charset.Charset;

/* loaded from: classes.dex */
public class IilIpcMessage extends IpcMessage {
    private static final String LOG_TAG = "IilIpcMessage";
    private static final int MAX_IIL_REGISTRATION = 268;

    public IilIpcMessage() {
    }

    public IilIpcMessage(int i, int i2, int i3) {
        super(i, i2, i3);
    }

    public static IilIpcMessage encodeIilConnected() {
        IilIpcMessage iilIpcMessage = new IilIpcMessage(112, 18, 3);
        iilIpcMessage.mIpcBody = null;
        iilIpcMessage.createIpcMessage();
        return iilIpcMessage;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v1 */
    /* JADX WARN: Type inference failed for: r0v2 */
    /* JADX WARN: Type inference failed for: r0v26 */
    /* JADX WARN: Type inference failed for: r0v27 */
    /* JADX WARN: Type inference failed for: r0v28 */
    /* JADX WARN: Type inference failed for: r0v3 */
    /* JADX WARN: Type inference failed for: r0v34 */
    /* JADX WARN: Type inference failed for: r0v35 */
    /* JADX WARN: Type inference failed for: r0v4, types: [int] */
    public static IilIpcMessage encodeImsRegisgtrationInfo(int i, boolean z, boolean z2, boolean z3, boolean z4, boolean z5, int i2, int i3, int i4, int i5, int i6, int i7, String str, int i8) {
        byte[] bArr;
        int i9;
        boolean z6 = z;
        IilIpcMessage iilIpcMessage = new IilIpcMessage(112, 1, 3);
        if (str != null) {
            bArr = str.getBytes(Charset.forName("UTF-8"));
            i9 = bArr.length;
            if (i9 > 256) {
                i9 = 256;
            }
        } else {
            bArr = null;
            i9 = 0;
        }
        byte[] bArr2 = new byte[268];
        IMSLog.i(LOG_TAG, "rat=" + i8 + ", isVoLte=" + z6 + ", isSmsIp=" + z2 + ", isRcs=" + z3 + ", isPsVT=" + z4 + ", isCdpn=" + z5 + ", ecmp=" + i4);
        ?? r0 = z6;
        if (z2) {
            r0 = (z6 ? 1 : 0) | 2;
        }
        if (z3) {
            r0 = (r0 == true ? 1 : 0) | 4;
        }
        if (z4) {
            r0 = (r0 == true ? 1 : 0) | '\b';
        }
        if (z5) {
            r0 = (r0 == true ? 1 : 0) | ' ';
        }
        bArr2[0] = (byte) i;
        bArr2[1] = (byte) r0;
        bArr2[2] = (byte) i2;
        bArr2[3] = (byte) i3;
        bArr2[4] = (byte) i4;
        bArr2[5] = (byte) i5;
        bArr2[6] = (byte) (i6 >> 8);
        bArr2[7] = (byte) i6;
        bArr2[8] = (byte) (i7 >> 8);
        bArr2[9] = (byte) i7;
        bArr2[10] = (byte) i9;
        int i10 = 11;
        int i11 = 0;
        while (i11 < i9) {
            bArr2[i10] = bArr[i11];
            i11++;
            i10++;
        }
        while (i10 < 267) {
            bArr2[i10] = 0;
            i10++;
        }
        bArr2[267] = (byte) i8;
        iilIpcMessage.mIpcBody = bArr2;
        iilIpcMessage.createIpcMessage();
        return iilIpcMessage;
    }

    public static IilIpcMessage encodeImsPreferenceNoti(IilImsPreference iilImsPreference, int i) {
        IilIpcMessage iilIpcMessage = new IilIpcMessage(112, 6, 3);
        IMSLog.i(LOG_TAG, iilImsPreference.toString() + "NotiType : " + i);
        iilIpcMessage.mIpcBody = IilImsPreference.toByteArray(iilImsPreference, i);
        iilIpcMessage.createIpcMessage();
        return iilIpcMessage;
    }

    public static IilIpcMessage encodeImsPreferenceResp(IilImsPreference iilImsPreference) {
        IilIpcMessage iilIpcMessage = new IilIpcMessage(112, 6, 2);
        IMSLog.i(LOG_TAG, iilImsPreference.toString());
        iilIpcMessage.mIpcBody = IilImsPreference.toByteArray(iilImsPreference, 0);
        iilIpcMessage.createIpcMessage();
        return iilIpcMessage;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r6v1 */
    /* JADX WARN: Type inference failed for: r6v15 */
    /* JADX WARN: Type inference failed for: r6v16 */
    /* JADX WARN: Type inference failed for: r6v2 */
    /* JADX WARN: Type inference failed for: r6v3 */
    /* JADX WARN: Type inference failed for: r6v4, types: [int] */
    /* JADX WARN: Type inference failed for: r6v7 */
    /* JADX WARN: Type inference failed for: r6v8 */
    /* JADX WARN: Type inference failed for: r6v9 */
    public static IilIpcMessage encodeImsRetryOverNoti(int i, boolean z, boolean z2, boolean z3, boolean z4, boolean z5, int i2, int i3) {
        IilIpcMessage iilIpcMessage = new IilIpcMessage(112, 12, 3);
        byte[] bArr = new byte[4];
        IMSLog.i(LOG_TAG, "isVoLte " + z + " isSmsIp " + z2 + " isRcs " + z3 + " isPsVT " + z4 + " isCdpn " + z5 + " ecmp" + i3);
        ?? r6 = z;
        if (z2) {
            r6 = (z ? 1 : 0) | 2;
        }
        if (z3) {
            r6 = (r6 == true ? 1 : 0) | 4;
        }
        if (z4) {
            r6 = (r6 == true ? 1 : 0) | '\b';
        }
        if (z5) {
            r6 = (r6 == true ? 1 : 0) | ' ';
        }
        bArr[0] = (byte) i;
        bArr[1] = (byte) r6;
        bArr[2] = (byte) i2;
        bArr[3] = (byte) i3;
        iilIpcMessage.mIpcBody = bArr;
        iilIpcMessage.createIpcMessage();
        return iilIpcMessage;
    }

    public static IilIpcMessage ImsChangePreferredNetwork() {
        IilIpcMessage iilIpcMessage = new IilIpcMessage(112, 21, 3);
        IMSLog.i(LOG_TAG, "ImsChangePreferredNetwork()");
        iilIpcMessage.mIpcBody = null;
        iilIpcMessage.createIpcMessage();
        return iilIpcMessage;
    }
}
