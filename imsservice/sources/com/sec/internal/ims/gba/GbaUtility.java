package com.sec.internal.ims.gba;

import android.net.Uri;
import android.text.TextUtils;
import android.util.Base64;
import android.util.Log;
import com.sec.internal.constants.ims.cmstore.utils.OMAGlobalVariables;
import com.sec.internal.helper.ByteArrayWriter;
import com.sec.internal.helper.SimUtil;
import com.sec.internal.ims.core.handler.secims.imsCommonStruc.ReqMsg;
import com.sec.internal.ims.gba.params.CipherSuite;
import java.net.URI;
import java.net.URISyntaxException;
import java.security.InvalidKeyException;
import java.security.NoSuchAlgorithmException;
import java.util.Arrays;
import javax.crypto.Mac;
import javax.crypto.spec.SecretKeySpec;

/* loaded from: classes.dex */
public class GbaUtility {
    private static final String ALGORITHM_HMAC_SHA_256 = "HmacSHA256";
    private static final String TAG = "GbaUtility";
    private static final int TRANSFER_BASE = 256;

    private static byte[] getByteArrayForLength(int i) {
        return new byte[]{(byte) (i / 256), (byte) (i % 256)};
    }

    public static byte[] convertCipherSuite(String str, boolean z) {
        Log.d(TAG, "ConvertCipherSuite Cipher Suite: " + str);
        return (TextUtils.isEmpty(str) || z) ? new byte[]{0, 47} : CipherSuite.forData(str);
    }

    public static synchronized String igenerateGbaMEKey(byte[] bArr, byte[] bArr2, byte[] bArr3, byte[] bArr4, byte[] bArr5, byte[] bArr6, String str, String str2, boolean z, byte[] bArr7) {
        String encodeToString;
        synchronized (GbaUtility.class) {
            if (bArr == null || bArr2 == null || bArr3 == null || bArr4 == null || bArr5 == null || bArr6 == null) {
                throw new IllegalArgumentException("GBA ME KEY Calculation - input cannot be null");
            }
            Log.i(TAG, "gbatype = " + Arrays.toString(bArr));
            Log.i(TAG, "ck = " + Arrays.toString(bArr2));
            Log.i(TAG, "ik = " + Arrays.toString(bArr3));
            Log.i(TAG, "rand = " + Arrays.toString(bArr4));
            Log.i(TAG, "fqdn for nafid = " + Arrays.toString(bArr6));
            byte[] bArr8 = {1};
            byte[] bArr9 = {ReqMsg.request_send_message_revoke_request, ReqMsg.request_send_text, ReqMsg.request_handle_dtmf, 45, ReqMsg.request_update_sim_info, ReqMsg.request_vsh_stop_session};
            byte[] byteArrayForLength = getByteArrayForLength(6);
            byte[] byteArrayForLength2 = getByteArrayForLength(bArr4.length);
            byte[] byteArrayForLength3 = getByteArrayForLength(bArr5.length);
            byte[] calculateKs = calculateKs(bArr2, bArr3);
            if (z) {
                Log.i(TAG, "cipherSuite tls = " + Arrays.toString(bArr7));
                byte[] calculateNafId = calculateNafId(bArr6, new byte[]{1, 0, 1, bArr7[0], bArr7[1]});
                encodeToString = Base64.encodeToString(calculate(calculateKs, calculateS(bArr8, bArr9, byteArrayForLength, bArr4, byteArrayForLength2, bArr5, byteArrayForLength3, calculateNafId, getByteArrayForLength(calculateNafId.length))), 2);
            } else {
                byte[] calculateNafId2 = calculateNafId(bArr6, new byte[]{1, 0, 0, 0, 2});
                encodeToString = Base64.encodeToString(calculate(calculateKs, calculateS(bArr8, bArr9, byteArrayForLength, bArr4, byteArrayForLength2, bArr5, byteArrayForLength3, calculateNafId2, getByteArrayForLength(calculateNafId2.length))), 2);
            }
            Log.i(TAG, "returning base64EncodedGbaKey [ " + encodeToString + " ]");
        }
        return encodeToString;
    }

    private static byte[] calculateNafId(byte[] bArr, byte[] bArr2) {
        ByteArrayWriter byteArrayWriter = new ByteArrayWriter(bArr.length + bArr2.length);
        byteArrayWriter.write(bArr);
        byteArrayWriter.write(bArr2);
        return byteArrayWriter.getResult();
    }

    private static byte[] calculateKs(byte[] bArr, byte[] bArr2) {
        ByteArrayWriter byteArrayWriter = new ByteArrayWriter(bArr.length + bArr2.length);
        byteArrayWriter.write(bArr);
        byteArrayWriter.write(bArr2);
        return byteArrayWriter.getResult();
    }

    private static byte[] calculateS(byte[] bArr, byte[] bArr2, byte[] bArr3, byte[] bArr4, byte[] bArr5, byte[] bArr6, byte[] bArr7, byte[] bArr8, byte[] bArr9) {
        ByteArrayWriter byteArrayWriter = new ByteArrayWriter(bArr.length + 0 + bArr2.length + bArr3.length + bArr4.length + bArr5.length + bArr6.length + bArr7.length + bArr8.length + bArr9.length);
        byteArrayWriter.write(bArr);
        byteArrayWriter.write(bArr2);
        byteArrayWriter.write(bArr3);
        byteArrayWriter.write(bArr4);
        byteArrayWriter.write(bArr5);
        byteArrayWriter.write(bArr6);
        byteArrayWriter.write(bArr7);
        byteArrayWriter.write(bArr8);
        byteArrayWriter.write(bArr9);
        return byteArrayWriter.getResult();
    }

    public static byte[] calculate(byte[] bArr, byte[] bArr2) {
        try {
            Mac mac = Mac.getInstance(ALGORITHM_HMAC_SHA_256);
            mac.init(new SecretKeySpec(bArr, mac.getAlgorithm()));
            mac.update(bArr2);
            return mac.doFinal();
        } catch (InvalidKeyException e) {
            e.printStackTrace();
            throw new IllegalArgumentException("GBA ME KEY Algo Calculation encountered an error");
        } catch (NoSuchAlgorithmException e2) {
            e2.printStackTrace();
            throw new IllegalArgumentException("GBA ME KEY Algo Calculation encountered an error");
        }
    }

    public static String getNafUrl(String str) {
        String str2;
        try {
            str2 = new URI(str).getHost();
        } catch (URISyntaxException e) {
            e.printStackTrace();
            str2 = null;
        }
        Log.d(TAG, "getNafUrl " + str2);
        return str2;
    }

    public static String getNafPath(String str) {
        String str2 = "/";
        try {
            String queryParameter = Uri.parse(str).getQueryParameter("path");
            if (!TextUtils.isEmpty(queryParameter)) {
                str = queryParameter;
            }
            URI uri = new URI(str);
            if (!TextUtils.isEmpty(uri.getPath())) {
                str2 = uri.getPath();
                if (uri.getQuery() != null) {
                    str2 = str2 + "?" + uri.getQuery();
                }
            }
        } catch (URISyntaxException e) {
            e.printStackTrace();
        }
        Log.d(TAG, "getPath " + str2);
        return str2;
    }

    public static String getNafId(String str) {
        String[] split = str.split("@");
        if (split.length <= 1) {
            return null;
        }
        if (split[1].contains(";")) {
            return split[1].split(";")[0];
        }
        return split[1];
    }

    public static boolean isTls(String str) {
        try {
            return OMAGlobalVariables.HTTPS.equals(new URI(str).getScheme());
        } catch (URISyntaxException e) {
            e.printStackTrace();
            return false;
        }
    }

    public static byte[] getSecurityProtocolId(byte[] bArr, byte[] bArr2, boolean z) {
        byte[] bArr3 = {1, 0, 1, bArr2[0], bArr2[1]};
        byte[] bArr4 = {1, 0, 1, 0, 47};
        if (z) {
            byte[] bArr5 = new byte[bArr.length + 5];
            System.arraycopy(bArr, 0, bArr5, 0, bArr.length);
            System.arraycopy(bArr3, 0, bArr5, bArr.length, 5);
            return bArr5;
        }
        byte[] bArr6 = new byte[bArr.length + 5];
        System.arraycopy(bArr, 0, bArr6, 0, bArr.length);
        System.arraycopy(bArr4, 0, bArr6, bArr.length, 5);
        return bArr6;
    }

    public static String generateLastAuthInfoKey(String str, int i) {
        return getNafUrl(str) + "-subId" + SimUtil.getSubId(i);
    }
}
