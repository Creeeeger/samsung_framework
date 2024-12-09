package com.sec.internal.log;

import android.content.Context;
import android.os.SemSystemProperties;
import android.os.SystemClock;
import android.os.storage.StorageManager;
import android.text.TextUtils;
import android.util.Log;
import com.sec.ims.util.ImsUri;
import com.sec.internal.constants.ims.cmstore.CloudMessageProviderContract;
import com.sec.internal.constants.ims.config.ConfigConstants;
import com.sec.internal.helper.OmcCode;
import com.sec.internal.helper.os.DeviceUtil;
import com.sec.internal.ims.entitlement.util.EncryptionHelper;
import com.sec.internal.ims.settings.ImsAutoUpdate$$ExternalSyntheticLambda0;
import com.sec.internal.ims.settings.ImsAutoUpdate$$ExternalSyntheticLambda1;
import com.sec.internal.ims.util.ConfigUtil;
import com.sec.internal.interfaces.ims.core.IRegisterTask;
import java.io.File;
import java.io.FileFilter;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.PrintWriter;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.nio.channels.FileChannel;
import java.nio.charset.StandardCharsets;
import java.text.SimpleDateFormat;
import java.util.Collection;
import java.util.Date;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Locale;
import java.util.Map;
import java.util.Optional;
import java.util.concurrent.ConcurrentHashMap;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

/* loaded from: classes.dex */
public class IMSLog {
    static boolean DEBUG_MODE = false;
    private static final String INDENT = "  ";
    static boolean IS_UT = false;
    private static final int MAX_DUMP_LEN = 1024;
    static boolean PRIVACY_INSPECTION_MODE = false;
    static String REAL_NUMBER = null;
    static String SALES_CODE = null;
    static boolean SHIP_BUILD = false;
    private static final String TAG = "IMSLog";
    private static EncryptedLogger encryptedLogger;
    private static boolean mIsEmTokenAuthorized;
    private static HashSet<String> mShowSLogInShipBuildSet;
    private static ByteBuffer sByteBuffer;
    private static long sDumpStartTime;
    private static FileChannel sFileChannel;
    private static Map<String, String> sIndent;
    private static PrintWriter sPw;
    private static final String EOL = System.getProperty("line.separator", "\n");
    static boolean ENG_MODE = SemSystemProperties.get("ro.build.type", "user").equals("eng");

    public enum LAZER_TYPE {
        CALL,
        REGI
    }

    static {
        DEBUG_MODE = SemSystemProperties.getInt("ro.debuggable", 0) == 1;
        SHIP_BUILD = CloudMessageProviderContract.JsonData.TRUE.equals(SemSystemProperties.get("ro.product_ship", ConfigConstants.VALUE.INFO_COMPLETED));
        PRIVACY_INSPECTION_MODE = CloudMessageProviderContract.JsonData.TRUE.equals(SemSystemProperties.get("persist.cpsol.privacy.inspection", ConfigConstants.VALUE.INFO_COMPLETED));
        IS_UT = false;
        REAL_NUMBER = "[0-9]+[.]*[0-9]*";
        String str = SemSystemProperties.get(OmcCode.PERSIST_OMC_CODE_PROPERTY, "");
        SALES_CODE = str;
        if (TextUtils.isEmpty(str)) {
            SALES_CODE = SemSystemProperties.get(OmcCode.OMC_CODE_PROPERTY, "");
        }
        HashSet<String> hashSet = new HashSet<>();
        mShowSLogInShipBuildSet = hashSet;
        hashSet.add("ATX");
        mShowSLogInShipBuildSet.add("OMX");
        mShowSLogInShipBuildSet.add("VDR");
        mShowSLogInShipBuildSet.add("VDP");
        mShowSLogInShipBuildSet.add("VOP");
        sFileChannel = null;
        sByteBuffer = null;
        sPw = null;
        sDumpStartTime = 0L;
        mIsEmTokenAuthorized = false;
        sIndent = new ConcurrentHashMap();
        encryptedLogger = EncryptedLogger.getInstance();
    }

    public static String appendSessionIdToLogTag(String str, int i) {
        return str.split("\\(")[0] + "(" + i + ")";
    }

    public static void setIsUt(boolean z) {
        IS_UT = z;
    }

    private static String getImsDumpPath(Context context) {
        String str = (String) Optional.ofNullable((StorageManager) context.getSystemService(StorageManager.class)).map(new ImsAutoUpdate$$ExternalSyntheticLambda0()).map(new ImsAutoUpdate$$ExternalSyntheticLambda1()).orElse("");
        if (TextUtils.isEmpty(str)) {
            return "";
        }
        try {
            File file = new File(str.concat("/log/ims_logs/"));
            String str2 = null;
            if (file.exists()) {
                long j = -1;
                for (File file2 : file.listFiles(new FileFilter() { // from class: com.sec.internal.log.IMSLog.1
                    @Override // java.io.FileFilter
                    public boolean accept(File file3) {
                        return file3.isDirectory();
                    }
                })) {
                    boolean z = false;
                    for (File file3 : file2.listFiles()) {
                        String name = file3.getName();
                        int lastIndexOf = name.lastIndexOf(".");
                        if (file3.isFile() && lastIndexOf > 0) {
                            if (file2.getName().endsWith(name.substring(0, lastIndexOf))) {
                                z = true;
                            }
                        }
                    }
                    if (z && j < file2.lastModified()) {
                        str2 = file2.getAbsolutePath();
                        j = file2.lastModified();
                    }
                }
            }
            return str2;
        } catch (NullPointerException | SecurityException e) {
            e.printStackTrace();
            return "";
        }
    }

    private static void dumpToFile(String str) {
        if (sFileChannel != null) {
            synchronized (IMSLog.class) {
                if (sFileChannel != null) {
                    try {
                        byte[] bytes = str.getBytes(StandardCharsets.UTF_8);
                        int i = 0;
                        while (i < bytes.length) {
                            int min = Math.min(1024, bytes.length - i);
                            sByteBuffer.put(bytes, i, min);
                            i += min;
                            sByteBuffer.flip();
                            sFileChannel.write(sByteBuffer);
                            sByteBuffer.clear();
                        }
                        sByteBuffer.put(EOL.getBytes(StandardCharsets.UTF_8));
                        sByteBuffer.flip();
                        sFileChannel.write(sByteBuffer);
                        sByteBuffer.clear();
                    } catch (IOException | RuntimeException unused) {
                    }
                }
            }
        }
    }

    public static void increaseIndent(String str) {
        if (!sIndent.containsKey(str)) {
            sIndent.put(str, "");
        }
        Map<String, String> map = sIndent;
        map.put(str, map.get(str).concat(INDENT));
    }

    public static void decreaseIndent(String str) {
        if (sIndent.containsKey(str)) {
            Map<String, String> map = sIndent;
            map.put(str, map.get(str).replaceFirst(INDENT, ""));
        }
    }

    public static void prepareDump(Context context, PrintWriter printWriter) {
        if (sFileChannel == null) {
            synchronized (IMSLog.class) {
                if (sFileChannel == null) {
                    sPw = printWriter;
                    String imsDumpPath = getImsDumpPath(context);
                    if (!TextUtils.isEmpty(imsDumpPath)) {
                        try {
                            sFileChannel = new FileOutputStream(new File(imsDumpPath.concat("/ims_dump.log")), true).getChannel();
                            sByteBuffer = ByteBuffer.allocateDirect(1024).order(ByteOrder.nativeOrder());
                            SimpleDateFormat simpleDateFormat = new SimpleDateFormat("MM/dd/yyyy HH:mm:ss.SSS", Locale.US);
                            sDumpStartTime = SystemClock.elapsedRealtime();
                            dump(TAG, "dump started at " + simpleDateFormat.format(new Date()));
                        } catch (Exception e) {
                            e.printStackTrace();
                            postDump(printWriter);
                        }
                    } else {
                        postDump(printWriter);
                    }
                }
            }
        }
        mIsEmTokenAuthorized = DeviceUtil.isKeyStringActivated();
    }

    public static void postDump(PrintWriter printWriter) {
        if (sFileChannel != null) {
            synchronized (IMSLog.class) {
                if (sFileChannel != null) {
                    SimpleDateFormat simpleDateFormat = new SimpleDateFormat("MM/dd/yyyy HH:mm:ss.SSS", Locale.US);
                    String str = TAG;
                    dump(str, "dump finished at " + simpleDateFormat.format(new Date()));
                    if (sDumpStartTime > 0) {
                        dump(str, "elapsed time: " + (SystemClock.elapsedRealtime() - sDumpStartTime) + "msecs");
                    }
                    sDumpStartTime = 0L;
                    try {
                        try {
                            sFileChannel.close();
                        } catch (IOException e) {
                            e.printStackTrace();
                        }
                        if (printWriter != null) {
                            printWriter.close();
                        }
                        sPw = null;
                    } finally {
                        sFileChannel = null;
                    }
                }
                ByteBuffer byteBuffer = sByteBuffer;
                if (byteBuffer != null) {
                    byteBuffer.clear();
                    sByteBuffer = null;
                }
            }
        }
        mIsEmTokenAuthorized = false;
    }

    public static void dump(String str, String str2) {
        dump(str, 0, str2, true);
    }

    public static void dump(String str, int i, String str2) {
        dump(str, i, str2, true);
    }

    public static void dump(String str, String str2, boolean z) {
        dump(str, 0, str2, z);
    }

    public static void dumpEncryptedACS(String str, String str2) {
        String str3 = sIndent.get(str);
        if (str3 != null) {
            str2 = str3 + str2;
        }
        String encryptAcs = EncryptionHelper.getInstance(ConfigUtil.TRANSFORMATION).encryptAcs(filterLog(str2, false));
        if (encryptAcs != null) {
            dumpToFile(encryptAcs);
            PrintWriter printWriter = sPw;
            if (printWriter != null) {
                printWriter.println(encryptAcs);
            }
        }
    }

    public static void dump(String str, int i, String str2, boolean z) {
        String str3 = sIndent.get(str);
        if (str3 != null) {
            str2 = str3 + str2;
        }
        String filterLog = filterLog(str2, z);
        dumpToFile(filterLog);
        PrintWriter printWriter = sPw;
        if (printWriter != null) {
            printWriter.println(filterLog);
        }
    }

    public static void d(String str, String str2) {
        Log.d(str, str2);
    }

    public static void d(String str, int i, String str2) {
        Log.d(str + "<" + i + ">", str2);
    }

    public static void d(String str, int i, IRegisterTask iRegisterTask, String str2) {
        Log.d(str + "<" + i + ">", "[" + iRegisterTask.getProfile().getName() + "|" + iRegisterTask.getState() + "] " + str2);
    }

    public static void i(String str, String str2) {
        Log.i(str, str2);
    }

    public static void i(String str, int i, String str2) {
        Log.i(str + "<" + i + ">", str2);
    }

    public static void i(String str, int i, IRegisterTask iRegisterTask, String str2) {
        Log.i(str + "<" + i + ">", "[" + iRegisterTask.getProfile().getName() + "|" + iRegisterTask.getState() + "] " + str2);
    }

    public static void e(String str, String str2) {
        Log.e(str, str2);
    }

    public static void e(String str, int i, String str2) {
        Log.e(str + "<" + i + ">", str2);
    }

    public static void e(String str, int i, IRegisterTask iRegisterTask, String str2) {
        Log.e(str + "<" + i + ">", "[" + iRegisterTask.getProfile().getName() + "|" + iRegisterTask.getState() + "] " + str2);
    }

    public static void s(String str, String str2) {
        if (isShipBuild()) {
            return;
        }
        Log.d(str, str2);
    }

    public static void s(String str, int i, String str2) {
        if (isShipBuild()) {
            return;
        }
        Log.d(str + "<" + i + ">", str2);
    }

    public static void s(String str, int i, IRegisterTask iRegisterTask, String str2) {
        if (isShipBuild()) {
            return;
        }
        Log.d(str + "<" + i + ">", "[" + iRegisterTask.getProfile().getName() + "|" + iRegisterTask.getState() + "] " + str2);
    }

    public static void g(String str, String str2) {
        Log.i(str, str2);
    }

    public static String checker(Object obj) {
        return checker(obj, false);
    }

    public static String checker(Object obj, boolean z) {
        if (obj == null) {
            return null;
        }
        if (isShipBuild() && (!z || !IS_UT)) {
            return "xxxxx";
        }
        return "" + obj;
    }

    public static String numberChecker(String str) {
        return numberChecker(str, false);
    }

    public static String numberChecker(String str, boolean z) {
        if (str == null) {
            return null;
        }
        return isShipBuild() ? (z && IS_UT) ? str : str.replaceAll("\\d(?=\\d{3})", "*") : str;
    }

    public static String numberChecker(ImsUri imsUri) {
        if (imsUri == null) {
            return null;
        }
        return numberChecker(imsUri.toString());
    }

    public static String numberChecker(Collection<ImsUri> collection) {
        if (collection == null || collection.isEmpty()) {
            return null;
        }
        if (isShipBuild()) {
            StringBuilder sb = new StringBuilder();
            Iterator<ImsUri> it = collection.iterator();
            while (it.hasNext()) {
                sb.append(numberChecker(it.next().toString()));
                sb.append(", ");
            }
            return sb.toString();
        }
        return "" + collection;
    }

    public static String realNumberMasker(String str) {
        return numberMasker(REAL_NUMBER, 1, 0, str);
    }

    public static String numberMasker(String str, int i, int i2, String str2) {
        if (str2 == null) {
            return null;
        }
        if (!isShipBuild() || IS_UT) {
            return str2;
        }
        try {
            Matcher matcher = Pattern.compile(str).matcher(str2);
            StringBuffer stringBuffer = new StringBuffer();
            while (matcher.find()) {
                StringBuffer stringBuffer2 = new StringBuffer();
                if (matcher.group().length() < i + i2 + 2) {
                    stringBuffer2.append("x".repeat(matcher.group().length()));
                } else {
                    stringBuffer2.append(matcher.group());
                    stringBuffer2.replace(i, stringBuffer2.length() - i2, "x".repeat((stringBuffer2.length() - i) - i2));
                }
                matcher.appendReplacement(stringBuffer, stringBuffer2.toString());
            }
            matcher.appendTail(stringBuffer);
            return stringBuffer.toString();
        } catch (Error | Exception e) {
            e(TAG, e.getMessage());
            return "x".repeat(str2.length());
        }
    }

    public static boolean isShipBuild() {
        if (PRIVACY_INSPECTION_MODE) {
            return true;
        }
        return SHIP_BUILD && !mShowSLogInShipBuildSet.contains(SALES_CODE);
    }

    public static boolean isShipBuild(boolean z) {
        if (PRIVACY_INSPECTION_MODE) {
            return true;
        }
        if (!isShipBuild()) {
            return false;
        }
        if (z) {
            return !IS_UT;
        }
        return true;
    }

    public static boolean isEngMode() {
        return ENG_MODE;
    }

    public static void lazer(LAZER_TYPE lazer_type, String str) {
        if (lazer_type == LAZER_TYPE.CALL) {
            e("#IMSCALL", str);
        } else if (lazer_type == LAZER_TYPE.REGI) {
            e("#IMSREGI", str);
        }
    }

    public static void lazer(IRegisterTask iRegisterTask, String str) {
        e("#IMSREGI", "(" + iRegisterTask.getPhoneId() + ", " + iRegisterTask.getProfile().getName() + ") " + str);
    }

    private static String filterLog(String str, boolean z) {
        return !mIsEmTokenAuthorized && z && isShipBuild() ? str.replaceAll("\\d(?=\\d{3})", "*") : str;
    }

    public static void c(int i) {
        c(i, null);
    }

    public static void c(int i, String str) {
        c(i, str, false);
    }

    public static void c(int i, String str, boolean z) {
        CriticalLogger.getInstance().write(i, str);
        if (z) {
            CriticalLogger.getInstance().flush();
        }
    }

    public static String vx(String str, String str2) {
        return x(str, str2, null, 2);
    }

    public static String dx(String str, String str2) {
        return x(str, str2, null, 3);
    }

    public static String ex(String str, String str2, Throwable th) {
        return x(str, str2, th, 6);
    }

    private static String x(String str, String str2, Throwable th, int i) {
        if (th != null) {
            StackTraceElement[] stackTrace = th.getStackTrace();
            StringBuffer stringBuffer = new StringBuffer();
            stringBuffer.append(str2);
            if (th.getMessage() != null) {
                stringBuffer.append("\n");
                stringBuffer.append(th.getMessage());
            }
            if (stackTrace.length > 0) {
                stringBuffer.append("\n");
                for (StackTraceElement stackTraceElement : stackTrace) {
                    stringBuffer.append(stackTraceElement.toString());
                    stringBuffer.append("\n");
                }
                stringBuffer.append("\n");
            }
            str2 = stringBuffer.toString();
        }
        return encryptedLogger.doLog(str, str2, i);
    }

    public static void assertUnreachable(String str, String str2) {
        e(str, str2);
        if (!SHIP_BUILD) {
            throw new RuntimeException(str2);
        }
    }

    public static void assertFalse(String str, int i, String str2, boolean z) {
        if (z) {
            e(str, i, str2);
            if (!SHIP_BUILD) {
                throw new RuntimeException(str2);
            }
        }
    }

    public static void dumpSecretKey(String str) {
        String base64EncodedSecretKey = encryptedLogger.getBase64EncodedSecretKey();
        if (DEBUG_MODE) {
            base64EncodedSecretKey = base64EncodedSecretKey + "\n" + encryptedLogger._debug_GetSecretKeyInfo();
        }
        if (base64EncodedSecretKey != null) {
            dump(str, base64EncodedSecretKey, false);
        } else {
            dump(str, "Secret key is not ready");
        }
    }
}
