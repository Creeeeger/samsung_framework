package com.sec.internal.ims.cmstore.utils;

import android.content.Context;
import android.database.Cursor;
import android.database.SQLException;
import android.database.sqlite.SQLiteDatabase;
import android.net.Uri;
import android.provider.Settings;
import android.telephony.TelephonyManager;
import android.text.TextUtils;
import android.util.Log;
import com.sec.ims.extensions.ReflectionUtils;
import com.sec.ims.util.ImsUri;
import com.sec.internal.constants.ims.MIMEContentType;
import com.sec.internal.constants.ims.VowifiConfig;
import com.sec.internal.constants.ims.cmstore.CloudMessageProviderContract;
import com.sec.internal.constants.ims.os.PhoneConstants;
import com.sec.internal.helper.FilePathGenerator;
import com.sec.internal.helper.HashManager;
import com.sec.internal.helper.SimUtil;
import com.sec.internal.helper.StringGenerator;
import com.sec.internal.helper.UriUtil;
import com.sec.internal.helper.header.AuthenticationHeaders;
import com.sec.internal.helper.header.WwwAuthenticateHeader;
import com.sec.internal.helper.httpclient.HttpResponseParams;
import com.sec.internal.ims.cmstore.MessageStoreClient;
import com.sec.internal.ims.core.cmc.CmcConstants;
import com.sec.internal.interfaces.ims.core.ISimManager;
import com.sec.internal.log.IMSLog;
import com.sec.internal.omanetapi.common.data.Link;
import com.sec.internal.omanetapi.nms.data.NmsEventList;
import com.sec.internal.omanetapi.nms.data.PayloadPartInfo;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.UnsupportedEncodingException;
import java.net.MalformedURLException;
import java.net.URI;
import java.net.URISyntaxException;
import java.net.URL;
import java.net.URLDecoder;
import java.net.URLEncoder;
import java.nio.charset.StandardCharsets;
import java.security.NoSuchAlgorithmException;
import java.sql.Timestamp;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Base64;
import java.util.Date;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.TimeZone;
import javax.mail.MessagingException;
import javax.mail.internet.MimeMultipart;

/* loaded from: classes.dex */
public class Util {
    protected static final int FILE_RENAME_HASHVALUE_LEN = 5;
    private static final String HTTP = "http:";
    private static final String HTTPS = "https:";
    protected static final int MAX_FILE_NAME_LEN = 50;
    private static final long MAX_NOT_SYNC_TIME = 259200000;
    protected static final String mMMSPartsDir = File.separatorChar + "MMS_files";
    protected static final String mRCSFilesDir = File.separatorChar + "RCS_files";
    private static final String LOG_TAG = Util.class.getSimpleName();

    protected static String getIncomingFileDestinationDir(Context context, boolean z) throws IOException {
        return getIncomingFileDestinationDir(context, z, 0);
    }

    protected static String getIncomingFileDestinationDir(Context context, boolean z, int i) throws IOException {
        String str;
        String str2;
        if (z) {
            str = mMMSPartsDir;
            if (i == 1) {
                str = str + "slot2";
            }
        } else {
            str = mRCSFilesDir;
            if (i == 1) {
                str = str + "slot2";
            }
        }
        if (context == null) {
            return null;
        }
        File externalFilesDir = context.getExternalFilesDir(null);
        String absolutePath = externalFilesDir != null ? externalFilesDir.getAbsolutePath() : null;
        if (absolutePath == null) {
            return null;
        }
        File file = new File(absolutePath + str);
        if (!file.exists()) {
            if (file.mkdir()) {
                str2 = absolutePath + str;
            } else {
                Log.e(LOG_TAG, "can not create dir");
                return null;
            }
        } else {
            str2 = absolutePath + str;
        }
        if (file.exists()) {
            File file2 = new File(str2 + File.separatorChar + ".nomedia");
            if (!file2.exists()) {
                try {
                    boolean createNewFile = file2.createNewFile();
                    String str3 = LOG_TAG;
                    StringBuilder sb = new StringBuilder();
                    sb.append("create .nomedia file in ");
                    sb.append(str2);
                    sb.append(" : ");
                    sb.append(createNewFile ? "successful" : "failed");
                    Log.d(str3, sb.toString());
                } catch (IOException e) {
                    Log.e(LOG_TAG, "makeDirectoryToCopyImage, cannot create .nomedia file");
                    e.printStackTrace();
                }
            }
        }
        return str2;
    }

    public static String generateUniqueFilePath(Context context, String str, boolean z) throws IOException {
        return generateUniqueFilePath(context, str, z, 0);
    }

    public static String generateUniqueFilePath(Context context, String str, boolean z, int i) throws IOException {
        if (TextUtils.isEmpty(str)) {
            throw new IOException();
        }
        return FilePathGenerator.generateUniqueFilePath(getIncomingFileDestinationDir(context, z, i), str, 50);
    }

    public static String getRandomFileName(String str) {
        if (TextUtils.isEmpty(str)) {
            return StringGenerator.generateString(5, 5);
        }
        return StringGenerator.generateString(5, 5) + "." + str;
    }

    /* JADX WARN: Code restructure failed: missing block: B:31:0x004e, code lost:
    
        if (0 == 0) goto L36;
     */
    /* JADX WARN: Code restructure failed: missing block: B:34:0x006f, code lost:
    
        if (0 == 0) goto L36;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static boolean saveFileToAppUri(android.content.Context r3, byte[] r4, java.lang.String r5) throws java.io.IOException {
        /*
            r0 = 0
            r1 = 0
            android.content.ContentResolver r3 = r3.getContentResolver()     // Catch: java.lang.Throwable -> L48 java.io.IOException -> L4a java.lang.SecurityException -> L54 java.lang.NullPointerException -> L63
            android.net.Uri r5 = android.net.Uri.parse(r5)     // Catch: java.lang.Throwable -> L48 java.io.IOException -> L4a java.lang.SecurityException -> L54 java.lang.NullPointerException -> L63
            java.lang.String r2 = "rwt"
            android.os.ParcelFileDescriptor r1 = r3.openFileDescriptor(r5, r2)     // Catch: java.lang.Throwable -> L48 java.io.IOException -> L4a java.lang.SecurityException -> L54 java.lang.NullPointerException -> L63
            if (r1 != 0) goto L21
            java.lang.String r3 = com.sec.internal.ims.cmstore.utils.Util.LOG_TAG     // Catch: java.lang.Throwable -> L48 java.io.IOException -> L4a java.lang.SecurityException -> L54 java.lang.NullPointerException -> L63
            java.lang.String r4 = "saveFileToAppUri fd is null"
            android.util.Log.e(r3, r4)     // Catch: java.lang.Throwable -> L48 java.io.IOException -> L4a java.lang.SecurityException -> L54 java.lang.NullPointerException -> L63
            if (r1 == 0) goto L20
            r1.close()
        L20:
            return r0
        L21:
            java.io.FileOutputStream r3 = new java.io.FileOutputStream     // Catch: java.io.IOException -> L3f java.lang.Throwable -> L48 java.lang.SecurityException -> L54 java.lang.NullPointerException -> L63
            java.io.FileDescriptor r5 = r1.getFileDescriptor()     // Catch: java.io.IOException -> L3f java.lang.Throwable -> L48 java.lang.SecurityException -> L54 java.lang.NullPointerException -> L63
            r3.<init>(r5)     // Catch: java.io.IOException -> L3f java.lang.Throwable -> L48 java.lang.SecurityException -> L54 java.lang.NullPointerException -> L63
            r3.write(r4)     // Catch: java.lang.Throwable -> L35
            r3.close()     // Catch: java.io.IOException -> L3f java.lang.Throwable -> L48 java.lang.SecurityException -> L54 java.lang.NullPointerException -> L63
            r1.close()
            r3 = 1
            return r3
        L35:
            r4 = move-exception
            r3.close()     // Catch: java.lang.Throwable -> L3a
            goto L3e
        L3a:
            r3 = move-exception
            r4.addSuppressed(r3)     // Catch: java.io.IOException -> L3f java.lang.Throwable -> L48 java.lang.SecurityException -> L54 java.lang.NullPointerException -> L63
        L3e:
            throw r4     // Catch: java.io.IOException -> L3f java.lang.Throwable -> L48 java.lang.SecurityException -> L54 java.lang.NullPointerException -> L63
        L3f:
            java.lang.String r3 = com.sec.internal.ims.cmstore.utils.Util.LOG_TAG     // Catch: java.lang.Throwable -> L48 java.io.IOException -> L4a java.lang.SecurityException -> L54 java.lang.NullPointerException -> L63
            java.lang.String r4 = "saveFileToAppUri: Error in getting Output Steam"
            android.util.Log.e(r3, r4)     // Catch: java.lang.Throwable -> L48 java.io.IOException -> L4a java.lang.SecurityException -> L54 java.lang.NullPointerException -> L63
            goto L50
        L48:
            r3 = move-exception
            goto L73
        L4a:
            r3 = move-exception
            r3.printStackTrace()     // Catch: java.lang.Throwable -> L48
            if (r1 == 0) goto L72
        L50:
            r1.close()
            goto L72
        L54:
            r3 = move-exception
            r3.printStackTrace()     // Catch: java.lang.Throwable -> L48
            java.lang.String r3 = com.sec.internal.ims.cmstore.utils.Util.LOG_TAG     // Catch: java.lang.Throwable -> L48
            java.lang.String r4 = "saveFileToAppUri: Security Exception"
            android.util.Log.e(r3, r4)     // Catch: java.lang.Throwable -> L48
            if (r1 == 0) goto L72
            goto L50
        L63:
            r3 = move-exception
            r3.printStackTrace()     // Catch: java.lang.Throwable -> L48
            java.lang.String r3 = com.sec.internal.ims.cmstore.utils.Util.LOG_TAG     // Catch: java.lang.Throwable -> L48
            java.lang.String r4 = "saveInputStreamtoAppUri: Null Pointer Exception"
            android.util.Log.e(r3, r4)     // Catch: java.lang.Throwable -> L48
            if (r1 == 0) goto L72
            goto L50
        L72:
            return r0
        L73:
            if (r1 == 0) goto L78
            r1.close()
        L78:
            throw r3
        */
        throw new UnsupportedOperationException("Method not decompiled: com.sec.internal.ims.cmstore.utils.Util.saveFileToAppUri(android.content.Context, byte[], java.lang.String):boolean");
    }

    /* JADX WARN: Code restructure failed: missing block: B:40:0x0093, code lost:
    
        if (0 == 0) goto L41;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static long saveInputStreamtoAppUri(android.content.Context r5, java.io.InputStream r6, java.lang.String r7) throws java.io.IOException {
        /*
            r0 = 0
            r2 = 0
            android.content.ContentResolver r5 = r5.getContentResolver()     // Catch: java.lang.Throwable -> L6f java.io.IOException -> L71 java.lang.SecurityException -> L78 java.lang.NullPointerException -> L87
            android.net.Uri r7 = android.net.Uri.parse(r7)     // Catch: java.lang.Throwable -> L6f java.io.IOException -> L71 java.lang.SecurityException -> L78 java.lang.NullPointerException -> L87
            java.lang.String r3 = "rwt"
            android.os.ParcelFileDescriptor r2 = r5.openFileDescriptor(r7, r3)     // Catch: java.lang.Throwable -> L6f java.io.IOException -> L71 java.lang.SecurityException -> L78 java.lang.NullPointerException -> L87
            if (r2 != 0) goto L24
            java.lang.String r5 = com.sec.internal.ims.cmstore.utils.Util.LOG_TAG     // Catch: java.lang.Throwable -> L6f java.io.IOException -> L71 java.lang.SecurityException -> L78 java.lang.NullPointerException -> L87
            java.lang.String r6 = "saveInputStreamtoAppUriFileToAppUri fd is null"
            android.util.Log.e(r5, r6)     // Catch: java.lang.Throwable -> L6f java.io.IOException -> L71 java.lang.SecurityException -> L78 java.lang.NullPointerException -> L87
            if (r2 == 0) goto L21
            r2.close()
        L21:
            r5 = -1
            return r5
        L24:
            java.io.FileOutputStream r5 = new java.io.FileOutputStream     // Catch: java.io.IOException -> L63 java.lang.Throwable -> L6f java.lang.SecurityException -> L78 java.lang.NullPointerException -> L87
            java.io.FileDescriptor r7 = r2.getFileDescriptor()     // Catch: java.io.IOException -> L63 java.lang.Throwable -> L6f java.lang.SecurityException -> L78 java.lang.NullPointerException -> L87
            r5.<init>(r7)     // Catch: java.io.IOException -> L63 java.lang.Throwable -> L6f java.lang.SecurityException -> L78 java.lang.NullPointerException -> L87
            r7 = 8192(0x2000, float:1.14794E-41)
            byte[] r7 = new byte[r7]     // Catch: java.lang.Throwable -> L59
        L31:
            int r3 = r6.read(r7)     // Catch: java.lang.Throwable -> L59
            if (r3 <= 0) goto L3e
            r4 = 0
            r5.write(r7, r4, r3)     // Catch: java.lang.Throwable -> L59
            long r3 = (long) r3     // Catch: java.lang.Throwable -> L59
            long r0 = r0 + r3
            goto L31
        L3e:
            java.lang.String r6 = com.sec.internal.ims.cmstore.utils.Util.LOG_TAG     // Catch: java.lang.Throwable -> L59
            java.lang.StringBuilder r7 = new java.lang.StringBuilder     // Catch: java.lang.Throwable -> L59
            r7.<init>()     // Catch: java.lang.Throwable -> L59
            java.lang.String r3 = "saveInputStreamtoAppUri() file written "
            r7.append(r3)     // Catch: java.lang.Throwable -> L59
            r7.append(r0)     // Catch: java.lang.Throwable -> L59
            java.lang.String r7 = r7.toString()     // Catch: java.lang.Throwable -> L59
            android.util.Log.i(r6, r7)     // Catch: java.lang.Throwable -> L59
            r5.close()     // Catch: java.io.IOException -> L63 java.lang.Throwable -> L6f java.lang.SecurityException -> L78 java.lang.NullPointerException -> L87
            goto L6b
        L59:
            r6 = move-exception
            r5.close()     // Catch: java.lang.Throwable -> L5e
            goto L62
        L5e:
            r5 = move-exception
            r6.addSuppressed(r5)     // Catch: java.io.IOException -> L63 java.lang.Throwable -> L6f java.lang.SecurityException -> L78 java.lang.NullPointerException -> L87
        L62:
            throw r6     // Catch: java.io.IOException -> L63 java.lang.Throwable -> L6f java.lang.SecurityException -> L78 java.lang.NullPointerException -> L87
        L63:
            java.lang.String r5 = com.sec.internal.ims.cmstore.utils.Util.LOG_TAG     // Catch: java.lang.Throwable -> L6f java.io.IOException -> L71 java.lang.SecurityException -> L78 java.lang.NullPointerException -> L87
            java.lang.String r6 = "saveInputSteamtoAppUri: error in getting OutputSteam"
            android.util.Log.e(r5, r6)     // Catch: java.lang.Throwable -> L6f java.io.IOException -> L71 java.lang.SecurityException -> L78 java.lang.NullPointerException -> L87
        L6b:
            r2.close()
            goto L96
        L6f:
            r5 = move-exception
            goto L97
        L71:
            r5 = move-exception
            r5.printStackTrace()     // Catch: java.lang.Throwable -> L6f
            if (r2 == 0) goto L96
            goto L6b
        L78:
            r5 = move-exception
            r5.printStackTrace()     // Catch: java.lang.Throwable -> L6f
            java.lang.String r5 = com.sec.internal.ims.cmstore.utils.Util.LOG_TAG     // Catch: java.lang.Throwable -> L6f
            java.lang.String r6 = "saveInputStreamtoAppUri: Security Exception"
            android.util.Log.e(r5, r6)     // Catch: java.lang.Throwable -> L6f
            if (r2 == 0) goto L96
            goto L6b
        L87:
            r5 = move-exception
            r5.printStackTrace()     // Catch: java.lang.Throwable -> L6f
            java.lang.String r5 = com.sec.internal.ims.cmstore.utils.Util.LOG_TAG     // Catch: java.lang.Throwable -> L6f
            java.lang.String r6 = "saveInputStreamtoAppUri: Null Pointer Exception"
            android.util.Log.e(r5, r6)     // Catch: java.lang.Throwable -> L6f
            if (r2 == 0) goto L96
            goto L6b
        L96:
            return r0
        L97:
            if (r2 == 0) goto L9c
            r2.close()
        L9c:
            throw r5
        */
        throw new UnsupportedOperationException("Method not decompiled: com.sec.internal.ims.cmstore.utils.Util.saveInputStreamtoAppUri(android.content.Context, java.io.InputStream, java.lang.String):long");
    }

    public static void saveFiletoPath(byte[] bArr, String str) throws IOException {
        FileOutputStream fileOutputStream;
        if (bArr == null || str == null) {
            return;
        }
        FileOutputStream fileOutputStream2 = null;
        try {
            fileOutputStream = new FileOutputStream(str);
        } catch (Throwable th) {
            th = th;
        }
        try {
            fileOutputStream.write(bArr);
            fileOutputStream.close();
        } catch (Throwable th2) {
            th = th2;
            fileOutputStream2 = fileOutputStream;
            if (fileOutputStream2 != null) {
                fileOutputStream2.close();
            }
            throw th;
        }
    }

    public static String convertStreamToString(InputStream inputStream) throws IOException {
        if (inputStream == null) {
            return "";
        }
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        try {
            byte[] bArr = new byte[2000];
            while (true) {
                int read = inputStream.read(bArr);
                if (read > 0) {
                    byteArrayOutputStream.write(bArr, 0, read);
                } else {
                    return new String(byteArrayOutputStream.toByteArray());
                }
            }
        } finally {
            byteArrayOutputStream.close();
        }
    }

    public static long saveInputStreamtoPath(InputStream inputStream, String str) throws IOException {
        FileOutputStream fileOutputStream;
        long j = 0;
        if (inputStream != null && str != null) {
            FileOutputStream fileOutputStream2 = null;
            try {
                fileOutputStream = new FileOutputStream(str);
            } catch (Throwable th) {
                th = th;
            }
            try {
                byte[] bArr = new byte[8192];
                while (true) {
                    int read = inputStream.read(bArr);
                    if (read <= 0) {
                        break;
                    }
                    fileOutputStream.write(bArr, 0, read);
                    j += read;
                }
                fileOutputStream.close();
            } catch (Throwable th2) {
                th = th2;
                fileOutputStream2 = fileOutputStream;
                if (fileOutputStream2 != null) {
                    fileOutputStream2.close();
                }
                throw th;
            }
        }
        return j;
    }

    public static long saveMimeBodyToPath(MimeMultipart mimeMultipart, String str) throws IOException, MessagingException {
        FileOutputStream fileOutputStream = new FileOutputStream(new File(str));
        try {
            mimeMultipart.writeTo(fileOutputStream);
        } catch (Throwable unused) {
        }
        fileOutputStream.close();
        return mimeMultipart.getCount();
    }

    public static String decodeUrlFromServer(String str) {
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        try {
            str = URLDecoder.decode(str, "UTF-8").replace(' ', '+');
        } catch (UnsupportedEncodingException e) {
            Log.e(LOG_TAG, "decodeUrlFromServer: " + e.getMessage());
            e.printStackTrace();
        }
        Log.d(LOG_TAG, "decodeUrlFromServer to: " + str);
        return str;
    }

    public static String getFileNamefromContentType(String str) {
        String[] split;
        String[] split2;
        String str2 = "download";
        if (TextUtils.isEmpty(str) || (split = str.split(AuthenticationHeaders.HEADER_PRARAM_SPERATOR)) == null || split.length < 2) {
            return "download";
        }
        String str3 = split[1];
        if (str3.contains(";") && (split2 = str3.split(";")) != null && split2.length > 1) {
            str3 = split2[0];
        }
        if (str3.contains(CmcConstants.E_NUM_STR_QUOTE)) {
            String[] split3 = str3.split(CmcConstants.E_NUM_STR_QUOTE);
            if (split3 != null && split3.length > 1) {
                str2 = split3[1];
            }
            str3 = str2;
        }
        Log.d(LOG_TAG, "getFileNamefromContentType: " + str + " to: " + str3);
        return str3;
    }

    public static boolean isPayloadExpired(String str) {
        if (TextUtils.isEmpty(str)) {
            return false;
        }
        try {
            String queryParameter = Uri.parse(str).getQueryParameter("e");
            if (TextUtils.isEmpty(queryParameter)) {
                return false;
            }
            long parseTimeStamp = parseTimeStamp(queryParameter);
            long currentTimeMillis = System.currentTimeMillis();
            Log.i(LOG_TAG, "isPayloadExpired payloadExpTime: " + parseTimeStamp + ", currTime: " + currentTimeMillis + ", expired: " + queryParameter);
            return parseTimeStamp != -1 && parseTimeStamp <= currentTimeMillis;
        } catch (UnsupportedOperationException e) {
            Log.e(LOG_TAG, "isPayloadExpired UnsupportedOperationException: " + e.getMessage());
            return false;
        }
    }

    public static String getFileNamefromContentDisposition(String str) {
        String[] split;
        String str2 = "";
        if (TextUtils.isEmpty(str) || (split = str.split(AuthenticationHeaders.HEADER_PRARAM_SPERATOR)) == null || split.length < 2) {
            return "";
        }
        String str3 = split[1];
        if (str3.contains(CmcConstants.E_NUM_STR_QUOTE)) {
            String[] split2 = str3.split(CmcConstants.E_NUM_STR_QUOTE);
            if (split2 != null && split2.length > 1) {
                str2 = split2[1];
            }
            str3 = str2;
        }
        Log.d(LOG_TAG, "getFileNamefromContentDisposition: " + str + " to: " + str3);
        return str3;
    }

    public static String findParaStr(String str, String str2) {
        String substring;
        Log.d(LOG_TAG, "findParaStr: " + str);
        if (!TextUtils.isEmpty(str) && !TextUtils.isEmpty(str2)) {
            for (String str3 : str.split(";")) {
                String[] split = str3.split(AuthenticationHeaders.HEADER_PRARAM_SPERATOR);
                if (split.length > 1 && split[0].trim().equalsIgnoreCase(str2)) {
                    String replaceAll = split[1].replaceAll(CmcConstants.E_NUM_STR_QUOTE, "");
                    if (str.lastIndexOf(".") < 0) {
                        Log.d(LOG_TAG, "no extension, to: " + replaceAll);
                        return replaceAll;
                    }
                    String substring2 = str.substring(str.lastIndexOf(".") + 1);
                    if (substring2.indexOf(CmcConstants.E_NUM_STR_QUOTE) > 0) {
                        substring = substring2.substring(0, substring2.indexOf(CmcConstants.E_NUM_STR_QUOTE));
                    } else {
                        substring = substring2.substring(0);
                    }
                    if (!replaceAll.endsWith(substring)) {
                        replaceAll = "file." + substring;
                    }
                    Log.d(LOG_TAG, "findParaStr, value to: " + replaceAll);
                    return replaceAll;
                }
            }
            Log.d(LOG_TAG, "findParaStr, to: ");
        }
        return "";
    }

    public static String generateLocationWithEncoding(PayloadPartInfo payloadPartInfo) {
        return encodedToIso8859(generateLocation(payloadPartInfo));
    }

    public static String generateLocation(PayloadPartInfo payloadPartInfo) {
        String fileNamefromContentType;
        Log.d(LOG_TAG, "contentType=" + payloadPartInfo.contentType + ", contentDisposition=" + payloadPartInfo.contentDisposition + ", contentLocation=" + payloadPartInfo.contentLocation + ", contentId=" + payloadPartInfo.contentId);
        if (!TextUtils.isEmpty(payloadPartInfo.contentType) && (fileNamefromContentType = getFileNamefromContentType(payloadPartInfo.contentType)) != null && !fileNamefromContentType.equals("download") && !fileNamefromContentType.equalsIgnoreCase("UTF-8")) {
            return fileNamefromContentType;
        }
        if (!TextUtils.isEmpty(payloadPartInfo.contentDisposition)) {
            String findParaStr = findParaStr(payloadPartInfo.contentDisposition, "filename");
            if (!TextUtils.isEmpty(findParaStr)) {
                return findParaStr;
            }
        }
        URI uri = payloadPartInfo.contentLocation;
        if (uri != null && !TextUtils.isEmpty(uri.getPath())) {
            return payloadPartInfo.contentLocation.getPath();
        }
        if (!TextUtils.isEmpty(payloadPartInfo.contentId)) {
            return payloadPartInfo.contentId;
        }
        return getRandomFileName(null);
    }

    public static String encodedToIso8859(String str) {
        return TextUtils.isEmpty(str) ? str : new String(str.getBytes(StandardCharsets.UTF_8), StandardCharsets.ISO_8859_1);
    }

    public static String generateUniqueFileName(PayloadPartInfo payloadPartInfo) {
        String str;
        String generateLocation = generateLocation(payloadPartInfo);
        try {
            generateLocation = URLDecoder.decode(generateLocation, "UTF-8");
        } catch (UnsupportedEncodingException | IllegalArgumentException e) {
            Log.e(LOG_TAG, "generateUniqueFileName - " + e.getMessage());
        }
        String[] split = generateLocation.split("\\.");
        if (split == null || split.length < 2) {
            str = "";
        } else {
            str = split[split.length - 1];
            generateLocation = generateLocation.substring(0, (generateLocation.length() - str.length()) - 1);
        }
        String str2 = generateLocation + "_" + StringGenerator.generateString(5, 5);
        if (!TextUtils.isEmpty(str)) {
            str2 = str2 + "." + str;
        }
        Log.d(LOG_TAG, "generateUniqueFileName() final originalFileName: " + str2 + "extension: " + str);
        return str2;
    }

    public static ImsUri getNormalizedTelUri(String str, String str2) {
        Log.i(LOG_TAG, "getNormalizedTelUri: " + IMSLog.checker(str));
        if (str == null || str.contains("#") || str.contains("*") || str.contains(",") || str.contains("N")) {
            return null;
        }
        return UriUtil.parseNumber(str, str2);
    }

    public static String getPhoneNum(String str) {
        if (str == null) {
            return null;
        }
        int indexOf = str.indexOf(58);
        if (indexOf > 0) {
            str = str.substring(indexOf + 1, str.length());
        }
        int indexOf2 = str.indexOf(64);
        return indexOf2 > 0 ? str.substring(0, indexOf2) : str;
    }

    public static String getTelUri(String str, String str2) {
        ImsUri parseNumber;
        String str3 = LOG_TAG;
        Log.i(str3, "getTelUri: " + IMSLog.checker(str) + " countryCode:" + str2);
        if (str == null) {
            return null;
        }
        if (str.startsWith("tel:")) {
            return str;
        }
        if (str.contains("#") || str.contains("*") || str.contains(",")) {
            return null;
        }
        ImsUri parse = ImsUri.parse(str);
        if (parse == null) {
            ImsUri normalizedTelUri = getNormalizedTelUri(str, str2);
            if (normalizedTelUri == null) {
                Log.d(str3, "getTelUri: parsing fail, return original number");
                return str;
            }
            return normalizedTelUri.toString();
        }
        String msisdnNumber = UriUtil.getMsisdnNumber(parse);
        return (TextUtils.isEmpty(msisdnNumber) || (parseNumber = UriUtil.parseNumber(msisdnNumber, str2)) == null) ? str : parseNumber.toString();
    }

    public static String getMsisdn(String str, String str2) {
        Log.d(LOG_TAG, "getMsisdn: " + IMSLog.checker(str));
        if (str == null || str.contains("#") || str.contains("*") || str.contains(",") || str.contains("N")) {
            return null;
        }
        ImsUri parse = ImsUri.parse(str);
        if (parse == null) {
            ImsUri normalizedTelUri = getNormalizedTelUri(str, str2);
            return normalizedTelUri == null ? str : normalizedTelUri.getMsisdn();
        }
        return parse.getMsisdn();
    }

    public static void deleteFilesinMmsBufferFolder(int i) {
        File file;
        String[] list;
        Log.i(LOG_TAG, "deleteFilesinMmsBufferFolder sim_slot: " + i);
        if (i == 1) {
            file = new File(mMMSPartsDir + "slot2");
        } else {
            file = new File(mMMSPartsDir);
        }
        if (file.exists() && file.isDirectory() && (list = file.list()) != null) {
            for (String str : list) {
                try {
                    new File(file, str).delete();
                } catch (SecurityException e) {
                    Log.e(LOG_TAG, "deleteFilesinMmsBufferFolder: " + e.getMessage());
                    e.printStackTrace();
                }
            }
        }
    }

    public static String getLineTelUriFromObjUrl(String str) {
        String decodeUrlFromServer = decodeUrlFromServer(str);
        Log.d(LOG_TAG, "getLineTelUriFromObjUrl: " + IMSLog.checker(decodeUrlFromServer));
        if (decodeUrlFromServer == null) {
            return str;
        }
        String[] split = decodeUrlFromServer.split("/");
        if (split == null) {
            return null;
        }
        for (int i = 0; i < split.length; i++) {
            if (split[i].contains("tel:+")) {
                return split[i];
            }
        }
        return null;
    }

    public static String extractObjIdFromResUrl(String str) {
        String decodeUrlFromServer = decodeUrlFromServer(str);
        if (decodeUrlFromServer == null) {
            return str;
        }
        String substring = decodeUrlFromServer.substring(decodeUrlFromServer.lastIndexOf(47) + 1);
        Log.d(LOG_TAG, "extractObjIdFromResUrl: " + IMSLog.checker(substring));
        return substring;
    }

    public static String generateHash() {
        try {
            return HashManager.generateHash(new Timestamp(new Date().getTime()).toString());
        } catch (NoSuchAlgorithmException e) {
            e.printStackTrace();
            return null;
        }
    }

    public static String replaceUrlPrefix(String str, String str2) {
        if (TextUtils.isEmpty(str) || TextUtils.isEmpty(str2) || str.startsWith(str2)) {
            return str;
        }
        if (str.startsWith(HTTPS)) {
            return str.replaceFirst(HTTPS, str2);
        }
        return str.startsWith(HTTP) ? str.replaceFirst(HTTP, str2) : str;
    }

    public static String replaceUrlPrefix(String str, MessageStoreClient messageStoreClient) {
        String str2 = messageStoreClient.getCloudMessageStrategyManager().getStrategy().getProtocol() + ":";
        Log.d(LOG_TAG, "replaceUrlPrefix with" + str2);
        return replaceUrlPrefix(str, str2);
    }

    public static String replaceHostOfURL(String str, String str2) {
        try {
            URL url = new URL(str2);
            return new URL(url.getProtocol(), str, url.getFile()).toString();
        } catch (MalformedURLException e) {
            Log.e(LOG_TAG, e.getMessage());
            e.printStackTrace();
            return null;
        }
    }

    public static String[] parseEmailOverSlm(ImsUri imsUri, String str) {
        if (imsUri != null && imsUri.getUser() != null && !couldBeEmailGateway(imsUri.getUser())) {
            return null;
        }
        String[] split = str.split("( /)|( )", 2);
        if (split.length < 2) {
            return null;
        }
        int length = str.length();
        int indexOf = str.indexOf(64);
        int lastIndexOf = str.lastIndexOf(64);
        int i = lastIndexOf + 1;
        int indexOf2 = str.indexOf(46, i);
        int lastIndexOf2 = str.lastIndexOf(46);
        if (indexOf <= 0 || indexOf != lastIndexOf || i >= indexOf2 || indexOf2 > lastIndexOf2 || lastIndexOf2 >= length - 1) {
            return null;
        }
        return split;
    }

    private static boolean couldBeEmailGateway(String str) {
        return str.length() <= 4;
    }

    public static boolean isSimExist(ISimManager iSimManager) {
        return (iSimManager == null || iSimManager.getSimState() == 1) ? false : true;
    }

    public static String getImei(MessageStoreClient messageStoreClient) {
        TelephonyManager telephonyManager = getTelephonyManager(messageStoreClient.getContext(), messageStoreClient.getClientID());
        if (telephonyManager == null) {
            return "";
        }
        try {
            return (String) ReflectionUtils.invoke2(TelephonyManager.class.getMethod("getImei", new Class[0]), telephonyManager, new Object[0]);
        } catch (IllegalStateException | NoSuchMethodException | SecurityException e) {
            e.printStackTrace();
            return "";
        }
    }

    public static boolean isWifiCallingEnabled(Context context) {
        if (Settings.Global.getInt(context.getContentResolver(), VowifiConfig.WIFI_CALL_ENABLE, 0) == 1 || Settings.System.getInt(context.getContentResolver(), "wifi_call_enable1", 0) == 1) {
            Log.d(LOG_TAG, "Wi-Fi Calling is Enabled");
            return true;
        }
        Log.d(LOG_TAG, "Wi-Fi Calling is Disabled");
        return false;
    }

    public static long parseTimeStamp(String str) {
        SimpleDateFormat[] simpleDateFormatArr = {new SimpleDateFormat("yyyy-MM-dd'T'HH:mm:ssZ", Locale.getDefault()), new SimpleDateFormat("yyyy-MM-dd'T'HH:mm:ss'Z'", Locale.getDefault()), new SimpleDateFormat("yyyy-MM-dd'T'HH:mm:ssZZZZZ", Locale.getDefault()), new SimpleDateFormat("yyyy-MM-dd'T'HH:mm:ss.SSSXXX", Locale.getDefault()), new SimpleDateFormat("EEE, dd MMM yyyy HH:mm:ss Z", Locale.getDefault()), new SimpleDateFormat("yyyyMMdd'T'HHmmss'Z'", Locale.getDefault())};
        for (int i = 0; i < 6; i++) {
            SimpleDateFormat simpleDateFormat = simpleDateFormatArr[i];
            simpleDateFormat.setTimeZone(TimeZone.getTimeZone("GMT"));
            try {
                Date parse = simpleDateFormat.parse(str);
                if (parse != null) {
                    return parse.getTime();
                }
                return System.currentTimeMillis();
            } catch (ParseException e) {
                Log.e(LOG_TAG, "ParseException: " + e.getMessage());
            }
        }
        return -1L;
    }

    public static boolean isDownloadObject(String str, MessageStoreClient messageStoreClient, int i) {
        if (!messageStoreClient.getCloudMessageStrategyManager().getStrategy().isSupportExpiredRule() || TextUtils.isEmpty(str)) {
            return false;
        }
        boolean isMcsSupported = CmsUtil.isMcsSupported(messageStoreClient.getContext(), messageStoreClient.getClientID());
        long parseTimeStamp = parseTimeStamp(str);
        if (isMcsSupported) {
            long currentTimeMillis = System.currentTimeMillis();
            long j = currentTimeMillis - parseTimeStamp;
            if (i == 1) {
                int cmsDataTtl = messageStoreClient.getPrerenceManager().getCmsDataTtl();
                String str2 = LOG_TAG;
                Log.i(str2, "msgRecTime " + parseTimeStamp + "  onLineTime " + currentTimeMillis + "  inter " + j + " ttl " + cmsDataTtl);
                if (currentTimeMillis != -1 && parseTimeStamp != -1 && j < cmsDataTtl * 1000) {
                    Log.d(str2, "under TTL hours");
                    return true;
                }
            } else {
                long mmsRevokeTtlSecs = messageStoreClient.getPrerenceManager().getMmsRevokeTtlSecs();
                if (i == 3) {
                    mmsRevokeTtlSecs = messageStoreClient.getPrerenceManager().getSmsRevokeTtlSecs();
                }
                if (currentTimeMillis != -1 && parseTimeStamp != -1 && j > mmsRevokeTtlSecs * 1000) {
                    Log.d(LOG_TAG, "over the legacy timer ");
                    return true;
                }
            }
        } else {
            long networkAvailableTime = messageStoreClient.getPrerenceManager().getNetworkAvailableTime();
            long j2 = networkAvailableTime - parseTimeStamp;
            if (networkAvailableTime != -1 && parseTimeStamp != -1 && j2 > MAX_NOT_SYNC_TIME) {
                Log.d(LOG_TAG, "over 72 hours");
                return true;
            }
        }
        return false;
    }

    public static boolean isMatchedSubscriptionID(NmsEventList nmsEventList, MessageStoreClient messageStoreClient) {
        URL url;
        String oMASubscriptionResUrl = messageStoreClient.getPrerenceManager().getOMASubscriptionResUrl();
        boolean z = false;
        if (TextUtils.isEmpty(oMASubscriptionResUrl) || nmsEventList.link == null) {
            Log.d(LOG_TAG, "isMatchedSubscriptionID false");
            return false;
        }
        String lastPathFromUrl = getLastPathFromUrl(oMASubscriptionResUrl);
        Log.d(LOG_TAG, "isMatchedSubscriptionID subscriptionID = " + lastPathFromUrl);
        Link[] linkArr = nmsEventList.link;
        int length = linkArr.length;
        int i = 0;
        while (true) {
            if (i >= length) {
                break;
            }
            Link link = linkArr[i];
            if ((PhoneConstants.SUBSCRIPTION_KEY.equalsIgnoreCase(link.rel) || "NmsSubscription".equalsIgnoreCase(link.rel)) && (url = link.href) != null && lastPathFromUrl.equalsIgnoreCase(getLastPathFromUrl(url.toString()))) {
                z = true;
                break;
            }
            i++;
        }
        Log.d(LOG_TAG, "isMatchedSubscriptionID " + z);
        return z;
    }

    public static String getLastPathFromUrl(String str) {
        return str.split("/")[r1.length - 1];
    }

    public static boolean hasChannelExpired(String str) {
        if (TextUtils.isEmpty(str)) {
            return false;
        }
        long parseTimeStamp = parseTimeStamp(str);
        long currentTimeMillis = System.currentTimeMillis();
        Log.i(LOG_TAG, "notiTime:" + parseTimeStamp + " curr:" + currentTimeMillis);
        return parseTimeStamp == -1 || currentTimeMillis >= parseTimeStamp;
    }

    public static String getChallengeFromHttpResponse(HttpResponseParams httpResponseParams) {
        String str;
        Iterator<Map.Entry<String, List<String>>> it = httpResponseParams.getHeaders().entrySet().iterator();
        while (true) {
            if (!it.hasNext()) {
                str = null;
                break;
            }
            Map.Entry<String, List<String>> next = it.next();
            if ("WWW-Authenticate".equalsIgnoreCase(next.getKey())) {
                str = next.getValue().toString();
                break;
            }
        }
        if (str == null) {
            return null;
        }
        if (str.startsWith("[") && str.endsWith("]")) {
            str = str.substring(1, str.length() - 1);
        }
        return (str.startsWith(WwwAuthenticateHeader.HEADER_PARAM_DIGEST_SCHEME) || str.startsWith("digest")) ? str.charAt(6) != ' ' ? new StringBuffer(str).insert(6, ' ').toString() : str : ((str.startsWith(WwwAuthenticateHeader.HEADER_PARAM_BASIC_SCHEME) || str.startsWith("basic")) && str.charAt(5) != ' ') ? new StringBuffer(str).insert(5, ' ').toString() : str;
    }

    public static String replaceUriOfAuth(String str, String str2) {
        int indexOf;
        if (!TextUtils.isEmpty(str) && !TextUtils.isEmpty(str2)) {
            for (String str3 : str.split(",")) {
                if (str3 != null && str3.length() > 1 && (indexOf = str3.indexOf(61)) > 0) {
                    String substring = str3.substring(0, indexOf);
                    String substring2 = str3.substring(indexOf + 1);
                    if ("uri".equalsIgnoreCase(substring.trim())) {
                        if (substring2.startsWith(CmcConstants.E_NUM_STR_QUOTE) && !str2.startsWith(CmcConstants.E_NUM_STR_QUOTE)) {
                            str2 = CmcConstants.E_NUM_STR_QUOTE + str2 + CmcConstants.E_NUM_STR_QUOTE;
                        }
                        if (str2.equals(substring2)) {
                            return str;
                        }
                        return str.replace(str3, substring + AuthenticationHeaders.HEADER_PRARAM_SPERATOR + str2);
                    }
                }
            }
        }
        return str;
    }

    public static String queryPathFromUrl(String str) {
        String str2 = "/";
        try {
            String queryParameter = Uri.parse(str).getQueryParameter("path");
            if (!TextUtils.isEmpty(queryParameter)) {
                str = queryParameter;
            }
            str2 = new URI(str).getPath();
            IMSLog.s(LOG_TAG, "path = " + str2);
            return str2;
        } catch (URISyntaxException e) {
            e.printStackTrace();
            return str2;
        }
    }

    public static boolean isColumnNotExists(SQLiteDatabase sQLiteDatabase, String str, String str2) {
        try {
            Cursor rawQuery = sQLiteDatabase.rawQuery("pragma table_info(" + str + ")", null);
            if (rawQuery != null) {
                try {
                    if (rawQuery.moveToFirst()) {
                        while (!str2.equalsIgnoreCase(rawQuery.getString(rawQuery.getColumnIndex("name")))) {
                            if (!rawQuery.moveToNext()) {
                            }
                        }
                        rawQuery.close();
                        return false;
                    }
                } finally {
                }
            }
            if (rawQuery == null) {
                return true;
            }
            rawQuery.close();
            return true;
        } catch (SQLException e) {
            Log.e(LOG_TAG, " exception:" + e.toString());
            return true;
        }
    }

    public static TelephonyManager getTelephonyManager(Context context, int i) {
        return ((TelephonyManager) context.getSystemService(PhoneConstants.PHONE_KEY)).createForSubscriptionId(SimUtil.getSubId(i));
    }

    public static String encodeRFC3986(String str) {
        try {
            return URLEncoder.encode(str, "utf-8").replace("+", "%20").replace("*", "%2A").replace("%7E", "~");
        } catch (UnsupportedEncodingException e) {
            IMSLog.i(LOG_TAG, e.toString());
            e.printStackTrace();
            return str;
        }
    }

    public static String getSimCountryCode(Context context, int i) {
        return getTelephonyManager(context, i).getSimCountryIso().toUpperCase(Locale.ENGLISH);
    }

    private static String decode(String str) {
        return new String(Base64.getUrlDecoder().decode(str), StandardCharsets.UTF_8);
    }

    /* JADX WARN: Removed duplicated region for block: B:14:0x007f  */
    /* JADX WARN: Removed duplicated region for block: B:20:0x0086 A[RETURN] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static long getIntegerPayloadFromToken(java.lang.String r11, java.lang.String r12) {
        /*
            java.lang.String r0 = "iat"
            java.lang.String r1 = "exp"
            boolean r2 = android.text.TextUtils.isEmpty(r11)     // Catch: org.json.JSONException -> L87
            if (r2 != 0) goto L91
            java.lang.String r2 = "\\."
            java.lang.String[] r11 = r11.split(r2)     // Catch: org.json.JSONException -> L87
            r2 = 1
            r11 = r11[r2]     // Catch: org.json.JSONException -> L87
            org.json.JSONObject r3 = new org.json.JSONObject     // Catch: org.json.JSONException -> L87
            java.lang.String r11 = decode(r11)     // Catch: org.json.JSONException -> L87
            r3.<init>(r11)     // Catch: org.json.JSONException -> L87
            long r4 = r3.getLong(r1)     // Catch: org.json.JSONException -> L87
            long r6 = r3.getLong(r0)     // Catch: org.json.JSONException -> L87
            long r8 = r4 - r6
            java.lang.String r11 = com.sec.internal.ims.cmstore.utils.Util.LOG_TAG     // Catch: org.json.JSONException -> L87
            java.lang.StringBuilder r3 = new java.lang.StringBuilder     // Catch: org.json.JSONException -> L87
            r3.<init>()     // Catch: org.json.JSONException -> L87
            java.lang.String r10 = "exp: "
            r3.append(r10)     // Catch: org.json.JSONException -> L87
            r3.append(r4)     // Catch: org.json.JSONException -> L87
            java.lang.String r10 = ", iat: "
            r3.append(r10)     // Catch: org.json.JSONException -> L87
            r3.append(r6)     // Catch: org.json.JSONException -> L87
            java.lang.String r10 = ", validity: "
            r3.append(r10)     // Catch: org.json.JSONException -> L87
            r3.append(r8)     // Catch: org.json.JSONException -> L87
            java.lang.String r3 = r3.toString()     // Catch: org.json.JSONException -> L87
            android.util.Log.d(r11, r3)     // Catch: org.json.JSONException -> L87
            int r11 = r12.hashCode()     // Catch: org.json.JSONException -> L87
            r3 = -1421265102(0xffffffffab493732, float:-7.1486144E-13)
            r10 = 2
            if (r11 == r3) goto L71
            r3 = 100893(0x18a1d, float:1.41381E-40)
            if (r11 == r3) goto L69
            r1 = 104028(0x1965c, float:1.45774E-40)
            if (r11 == r1) goto L61
            goto L7c
        L61:
            boolean r11 = r12.equals(r0)     // Catch: org.json.JSONException -> L87
            if (r11 == 0) goto L7c
            r11 = r2
            goto L7d
        L69:
            boolean r11 = r12.equals(r1)     // Catch: org.json.JSONException -> L87
            if (r11 == 0) goto L7c
            r11 = 0
            goto L7d
        L71:
            java.lang.String r11 = "validity"
            boolean r11 = r12.equals(r11)     // Catch: org.json.JSONException -> L87
            if (r11 == 0) goto L7c
            r11 = r10
            goto L7d
        L7c:
            r11 = -1
        L7d:
            if (r11 == 0) goto L86
            if (r11 == r2) goto L85
            if (r11 == r10) goto L84
            goto L91
        L84:
            return r8
        L85:
            return r6
        L86:
            return r4
        L87:
            r11 = move-exception
            java.lang.String r12 = com.sec.internal.ims.cmstore.utils.Util.LOG_TAG
            java.lang.String r11 = r11.getMessage()
            android.util.Log.e(r12, r11)
        L91:
            r11 = 0
            return r11
        */
        throw new UnsupportedOperationException("Method not decompiled: com.sec.internal.ims.cmstore.utils.Util.getIntegerPayloadFromToken(java.lang.String, java.lang.String):long");
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x005f A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:12:? A[RETURN, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static java.lang.String getStringPayloadFromToken(java.lang.String r4, java.lang.String r5) {
        /*
            java.lang.String r0 = "iss"
            boolean r1 = android.text.TextUtils.isEmpty(r4)     // Catch: java.lang.Exception -> L60
            if (r1 != 0) goto L6a
            java.lang.String r1 = com.sec.internal.ims.cmstore.utils.Util.LOG_TAG     // Catch: java.lang.Exception -> L60
            java.lang.StringBuilder r2 = new java.lang.StringBuilder     // Catch: java.lang.Exception -> L60
            r2.<init>()     // Catch: java.lang.Exception -> L60
            java.lang.String r3 = "token: "
            r2.append(r3)     // Catch: java.lang.Exception -> L60
            r2.append(r4)     // Catch: java.lang.Exception -> L60
            java.lang.String r2 = r2.toString()     // Catch: java.lang.Exception -> L60
            android.util.Log.d(r1, r2)     // Catch: java.lang.Exception -> L60
            java.lang.String r2 = "\\."
            java.lang.String[] r4 = r4.split(r2)     // Catch: java.lang.Exception -> L60
            r2 = 1
            r4 = r4[r2]     // Catch: java.lang.Exception -> L60
            org.json.JSONObject r2 = new org.json.JSONObject     // Catch: java.lang.Exception -> L60
            java.lang.String r4 = decode(r4)     // Catch: java.lang.Exception -> L60
            r2.<init>(r4)     // Catch: java.lang.Exception -> L60
            java.lang.String r4 = r2.getString(r0)     // Catch: java.lang.Exception -> L60
            java.lang.StringBuilder r2 = new java.lang.StringBuilder     // Catch: java.lang.Exception -> L60
            r2.<init>()     // Catch: java.lang.Exception -> L60
            java.lang.String r3 = "iss: "
            r2.append(r3)     // Catch: java.lang.Exception -> L60
            r2.append(r4)     // Catch: java.lang.Exception -> L60
            java.lang.String r2 = r2.toString()     // Catch: java.lang.Exception -> L60
            android.util.Log.d(r1, r2)     // Catch: java.lang.Exception -> L60
            int r1 = r5.hashCode()     // Catch: java.lang.Exception -> L60
            r2 = 104585(0x19889, float:1.46555E-40)
            if (r1 == r2) goto L53
            goto L5b
        L53:
            boolean r5 = r5.equals(r0)     // Catch: java.lang.Exception -> L60
            if (r5 == 0) goto L5b
            r5 = 0
            goto L5c
        L5b:
            r5 = -1
        L5c:
            if (r5 == 0) goto L5f
            goto L6a
        L5f:
            return r4
        L60:
            r4 = move-exception
            java.lang.String r5 = com.sec.internal.ims.cmstore.utils.Util.LOG_TAG
            java.lang.String r4 = r4.getMessage()
            android.util.Log.e(r5, r4)
        L6a:
            java.lang.String r4 = ""
            return r4
        */
        throw new UnsupportedOperationException("Method not decompiled: com.sec.internal.ims.cmstore.utils.Util.getStringPayloadFromToken(java.lang.String, java.lang.String):java.lang.String");
    }

    public static boolean isRegistrationCodeInvalid(String str) {
        if (TextUtils.isEmpty(str)) {
            return true;
        }
        long integerPayloadFromToken = getIntegerPayloadFromToken(str, CloudMessageProviderContract.BufferDBMMSpdu.EXP) - (System.currentTimeMillis() / 1000);
        Log.i(LOG_TAG, "isRegistrationCodeInvalid: remainValidity = " + integerPayloadFromToken);
        return integerPayloadFromToken <= 0;
    }

    public static boolean isAuthCodeInvalid(String str) {
        if (TextUtils.isEmpty(str)) {
            return true;
        }
        long integerPayloadFromToken = getIntegerPayloadFromToken(str, CloudMessageProviderContract.BufferDBMMSpdu.EXP) - (System.currentTimeMillis() / 1000);
        Log.i(LOG_TAG, "isAuthCodeInvalid: remainValidity = " + integerPayloadFromToken);
        return integerPayloadFromToken <= 0;
    }

    public static String buildUploadURL(String str, String str2) {
        Uri.Builder buildUpon = Uri.parse(str).buildUpon();
        buildUpon.appendPath("oapi").appendPath(str2).appendPath("file");
        String uri = buildUpon.build().toString();
        Log.i(LOG_TAG, "Build Upload URL  : " + IMSLog.checker(uri));
        return uri;
    }

    public static String getReactionReferenceValue(int i) {
        String[] strArr = {"+U+1F44D", "+U+2764", "+U+1F44C", "+U+1F604", "+U+1F914", "+U+1F62D", "+U+1F44E"};
        if (i < 0 || i >= 7) {
            i = 0;
        }
        return strArr[i];
    }

    public static boolean isLocationPushContentType(String str) {
        if (TextUtils.isEmpty(str)) {
            return false;
        }
        return str.toLowerCase().startsWith(MIMEContentType.LOCATION_PUSH);
    }

    public static boolean isBotMessageContentType(String str) {
        if (TextUtils.isEmpty(str)) {
            return false;
        }
        String lowerCase = str.toLowerCase();
        return lowerCase.startsWith(MIMEContentType.BOT_MESSAGE) || lowerCase.startsWith(MIMEContentType.XBOT_MESSAGE) || lowerCase.startsWith(MIMEContentType.OPEN_RICH_CARD);
    }

    public static boolean isBotResponseMessageContentType(String str) {
        if (TextUtils.isEmpty(str)) {
            return false;
        }
        String lowerCase = str.toLowerCase();
        return lowerCase.startsWith(MIMEContentType.BOT_SUGGESTION_RESPONSE) || lowerCase.startsWith(MIMEContentType.BOT_SHARED_CLIENT_DATA);
    }

    public static String decodeBase64(String str) {
        if (str != null) {
            try {
                return new String(android.util.Base64.decode(str, 2), StandardCharsets.UTF_8);
            } catch (IllegalArgumentException e) {
                Log.i(LOG_TAG, e.getMessage());
            }
        }
        return null;
    }
}
