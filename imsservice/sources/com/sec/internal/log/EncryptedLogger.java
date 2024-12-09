package com.sec.internal.log;

import android.os.FileObserver;
import android.util.Log;
import com.sec.internal.constants.ims.entitilement.NSDSNamespaces;
import com.sec.internal.constants.ims.entitilement.SoftphoneNamespaces;
import com.sec.internal.helper.httpclient.HttpController;
import com.sec.internal.ims.core.RegistrationGovernor;
import com.sec.internal.ims.servicemodules.ss.UtStateMachine;
import com.sec.internal.ims.util.ConfigUtil;
import com.sec.internal.ims.util.ImsUtil;
import com.sec.internal.log.EncryptedLogger;
import java.nio.file.Files;
import java.nio.file.LinkOption;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.security.KeyFactory;
import java.security.PublicKey;
import java.security.spec.X509EncodedKeySpec;
import java.util.Base64;
import java.util.Optional;
import java.util.Timer;
import java.util.TimerTask;
import java.util.function.BinaryOperator;
import java.util.function.Predicate;
import javax.crypto.Cipher;
import javax.crypto.KeyGenerator;
import javax.crypto.SecretKey;

/* loaded from: classes.dex */
public class EncryptedLogger {
    private static final String B64PublicKey = "MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEA4HnSCdRy3WviYMvfRDtEcLAQU3Mi3et4f9W0ivmrMc1B+5LUEoWbrb6Rb5IKf7BI7qRflHKOfn1a9R1pYEBaBnrNrQHuIOhG4b3zYkAU+i093wKtE/dLvpa+NOEAfn/HMO0qVdRjdVs9FaJWYbjRNeiZC3PIX8bLFwqgOLwe70HOi9V7vcrrUyhJTMfXz77Zm1bbCMtU2R7UJUnI0b2fQyKdIhYgZiKChmfHH395939x2yQd8ZFYPGbmB+Zq4mCivEZSSaNZ6h9r6YYdoFSmgLVM1upBvt3kEpOE91TWbtIS4nLBWvLIfZTW4MA77BltW7mtkO61ZepLqkdj0eFoXQIDAQAB";
    private static int ENCRYPTED_LOGGER_ENTRY_MAX_PAYLOAD = (NSDSNamespaces.NSDSDefinedResponseCode.MANAGE_SERVICE_RENEW_GEN_FAILURE + 1) * 2;
    private static int ENCRYPTED_LOGGER_LINE_MAX_PAYLOAD = 1600;
    private static final String KEY_POSTFIX = "⁝❜";
    private static final String KEY_PREFIX = "❛⁝";
    private static final String LOG_MIDFIX = "══";
    private static final String LOG_POSTFIX = "═╝";
    private static final String LOG_PREFIX = "╔═";
    private static final String LOG_TAG = "EncryptedLogger";
    private static final String PublicKeyId = "R001";
    private static EncryptedLogger singleInstance;
    private SilentLogWatcher silentLogWatcher;
    private SecretKey secretKey = null;
    private byte[] iv = null;
    private Cipher cipher = null;

    public static synchronized EncryptedLogger getInstance() {
        synchronized (EncryptedLogger.class) {
            synchronized (EncryptedLogger.class) {
                if (singleInstance == null) {
                    singleInstance = new EncryptedLogger();
                }
            }
            return singleInstance;
        }
        return singleInstance;
    }

    private EncryptedLogger() {
        initCipher();
    }

    private void initCipher() {
        try {
            Log.d(LOG_TAG, "initCipher");
            KeyGenerator keyGenerator = KeyGenerator.getInstance(SoftphoneNamespaces.SoftphoneSettings.ENCRYPTION_ALGORITHM);
            keyGenerator.init(256, ImsUtil.getRandom());
            this.secretKey = keyGenerator.generateKey();
            Cipher cipher = Cipher.getInstance(ConfigUtil.TRANSFORMATION);
            this.cipher = cipher;
            cipher.init(1, this.secretKey);
            this.iv = this.cipher.getIV();
            writeSecretKeyToLogcat();
            startSilentLogWatcher();
        } catch (Exception e) {
            Log.e(LOG_TAG, e.getMessage(), e);
        }
    }

    public String getBase64EncodedSecretKey() {
        SecretKey secretKey = this.secretKey;
        if (secretKey == null) {
            return null;
        }
        return Base64.getEncoder().encodeToString(concatBytes(encryptRSA(concatBytes(secretKey.getEncoded(), this.iv)), PublicKeyId.getBytes()));
    }

    public String getBase64EncodedSecretKeyWithDelimiter() {
        if (this.secretKey == null) {
            return null;
        }
        return KEY_PREFIX + getBase64EncodedSecretKey() + KEY_POSTFIX;
    }

    public String doLog(String str, String str2, int i) {
        long nanoTime = System.nanoTime();
        String encodeToString = Base64.getMimeEncoder(ENCRYPTED_LOGGER_LINE_MAX_PAYLOAD, "\n".getBytes()).encodeToString(encryptAES(str2));
        long nanoTime2 = System.nanoTime() - nanoTime;
        int length = encodeToString.length();
        if (length > ENCRYPTED_LOGGER_ENTRY_MAX_PAYLOAD) {
            int i2 = 0;
            while (i2 < length) {
                int min = Math.min(ENCRYPTED_LOGGER_ENTRY_MAX_PAYLOAD, encodeToString.length() - i2) + i2;
                writeLog(str, makeEncryptMessagePackage(encodeToString.substring(i2, min), min < length, nanoTime2), i);
                i2 = min;
            }
            return makeEncryptMessagePackage(encodeToString, false, nanoTime2);
        }
        String makeEncryptMessagePackage = makeEncryptMessagePackage(encodeToString, false, nanoTime2);
        writeLog(str, makeEncryptMessagePackage, i);
        return makeEncryptMessagePackage;
    }

    private void writeLog(String str, String str2, int i) {
        if (i == 2) {
            Log.v(str, str2);
            return;
        }
        if (i == 3) {
            Log.d(str, str2);
            return;
        }
        if (i == 4) {
            Log.i(str, str2);
        } else if (i == 5) {
            Log.w(str, str2);
        } else {
            if (i != 6) {
                return;
            }
            Log.e(str, str2);
        }
    }

    private String makeEncryptMessagePackage(String str, boolean z, long j) {
        StringBuffer stringBuffer = new StringBuffer();
        stringBuffer.append("╔═ " + j);
        stringBuffer.append("\n");
        stringBuffer.append(str);
        stringBuffer.append(z ? "" : "\n");
        stringBuffer.append(z ? LOG_MIDFIX : LOG_POSTFIX);
        return stringBuffer.toString();
    }

    private byte[] encryptAES(String str) {
        try {
            return this.cipher.doFinal(str.getBytes("UTF-8"));
        } catch (Exception e) {
            Log.e(LOG_TAG, e.getMessage(), e);
            return new byte[]{0};
        }
    }

    private byte[] encryptRSA(byte[] bArr) {
        try {
            PublicKey transformPublicKey = transformPublicKey(B64PublicKey);
            Cipher cipher = Cipher.getInstance("RSA/ECB/PKCS1Padding");
            cipher.init(1, transformPublicKey);
            return cipher.doFinal(bArr);
        } catch (Exception e) {
            Log.e(LOG_TAG, e.getMessage(), e);
            return new byte[]{0};
        }
    }

    private PublicKey transformPublicKey(String str) {
        try {
            return KeyFactory.getInstance("RSA").generatePublic(new X509EncodedKeySpec(Base64.getDecoder().decode(str.getBytes())));
        } catch (Exception e) {
            Log.e(LOG_TAG, e.getMessage(), e);
            return null;
        }
    }

    private byte[] concatBytes(byte[] bArr, byte[] bArr2) {
        byte[] bArr3 = new byte[bArr.length + bArr2.length];
        System.arraycopy(bArr, 0, bArr3, 0, bArr.length);
        System.arraycopy(bArr2, 0, bArr3, bArr.length, bArr2.length);
        return bArr3;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void writeSecretKeyToLogcat() {
        Log.d(LOG_TAG, getBase64EncodedSecretKeyWithDelimiter());
    }

    public String _debug_GetSecretKeyInfo() {
        return "  " + Base64.getEncoder().encodeToString(this.secretKey.getEncoded()) + "\n  " + Base64.getEncoder().encodeToString(this.iv) + "\n";
    }

    public void startSilentLogWatcher() {
        new Thread() { // from class: com.sec.internal.log.EncryptedLogger.1
            @Override // java.lang.Thread, java.lang.Runnable
            public void run() {
                int i = 10;
                while (true) {
                    int i2 = i - 1;
                    if (i <= 0) {
                        return;
                    }
                    try {
                        if (Files.exists(Paths.get("/sdcard", new String[0]), new LinkOption[0])) {
                            EncryptedLogger encryptedLogger = EncryptedLogger.this;
                            encryptedLogger.silentLogWatcher = encryptedLogger.new SilentLogWatcher();
                            EncryptedLogger.this.silentLogWatcher.startWatch();
                            i = 0;
                        } else {
                            Log.d(EncryptedLogger.LOG_TAG, "/sdcard is not mounted yet");
                            Thread.sleep(RegistrationGovernor.RETRY_AFTER_PDNLOST_MS);
                            i = i2;
                        }
                    } catch (Exception e) {
                        Log.e(EncryptedLogger.LOG_TAG, e.getMessage(), e);
                        return;
                    }
                }
            }
        }.start();
    }

    /* JADX INFO: Access modifiers changed from: private */
    class SilentLogWatcher {
        int[] EVENT;
        String[] NAME;
        private final Path SILENT_LOG_HOME;
        FileObserver[] fileObservers;

        public SilentLogWatcher() {
            Path path = Paths.get("/sdcard/log/ap_silentlog", new String[0]);
            this.SILENT_LOG_HOME = path;
            this.fileObservers = new FileObserver[path.getNameCount()];
            this.EVENT = new int[]{1, 2, 4, 8, 16, 32, 64, 128, 256, 512, 1024, 2048, 4095};
            this.NAME = new String[]{"ACCESS", "MODIFY", "ATTRIB", "CLOSE_WRITE", "CLOSE_NOWRITE", "OPEN", "MOVED_FROM", "MOVED_TO", "CREATE", HttpController.METHOD_DELETE, "DELETE_SELF", "MOVE_SELF", "ALL_EVENTS"};
            final int i = 0;
            while (i < this.SILENT_LOG_HOME.getNameCount() - 1) {
                int i2 = i + 1;
                this.fileObservers[i] = new FileObserver(this.SILENT_LOG_HOME.getRoot().resolve(this.SILENT_LOG_HOME.subpath(0, i2)).toFile()) { // from class: com.sec.internal.log.EncryptedLogger.SilentLogWatcher.1
                    @Override // android.os.FileObserver
                    public void onEvent(int i3, String str) {
                        String path2 = SilentLogWatcher.this.SILENT_LOG_HOME.getName(i + 1).toString();
                        if (str == null || !path2.equals(str)) {
                            return;
                        }
                        if ((i3 & 256) == 256) {
                            SilentLogWatcher.this.fileObservers[i + 1].startWatching();
                        } else if ((i3 & 512) == 512) {
                            SilentLogWatcher.this.fileObservers[i + 1].stopWatching();
                        }
                    }

                    @Override // android.os.FileObserver
                    public void startWatching() {
                        super.startWatching();
                        if (Files.exists(SilentLogWatcher.this.SILENT_LOG_HOME.getRoot().resolve(SilentLogWatcher.this.SILENT_LOG_HOME.subpath(0, i + 2)), new LinkOption[0])) {
                            SilentLogWatcher.this.fileObservers[i + 1].startWatching();
                        }
                    }

                    @Override // android.os.FileObserver
                    public void stopWatching() {
                        super.stopWatching();
                        int i3 = i;
                        while (true) {
                            i3++;
                            FileObserver[] fileObserverArr = SilentLogWatcher.this.fileObservers;
                            if (i3 >= fileObserverArr.length) {
                                return;
                            } else {
                                fileObserverArr[i3].stopWatching();
                            }
                        }
                    }
                };
                i = i2;
            }
            this.fileObservers[i] = new SilentLogObserver(this.SILENT_LOG_HOME);
        }

        public void startWatch() {
            this.fileObservers[0].startWatching();
        }

        /* JADX INFO: Access modifiers changed from: private */
        class SilentLogObserver extends FileObserver {
            public static final String CHILD_PATH_REGEX = "20\\d{6}_\\d{6}";
            private long lastWriteTime;
            private Path mPath;
            private Timer timer;

            public SilentLogObserver(Path path) {
                super(path.toFile());
                this.timer = new Timer();
                this.mPath = path;
            }

            @Override // android.os.FileObserver
            public void startWatching() {
                super.startWatching();
                Log.d(EncryptedLogger.LOG_TAG, "startWatching : " + SilentLogWatcher.this.SILENT_LOG_HOME.getRoot() + SilentLogWatcher.this.SILENT_LOG_HOME.subpath(0, SilentLogWatcher.this.SILENT_LOG_HOME.getNameCount()));
                try {
                    this.timer.schedule(new AnonymousClass1(), 1000L);
                } catch (Exception e) {
                    Log.e(EncryptedLogger.LOG_TAG, e.getMessage(), e);
                }
            }

            /* renamed from: com.sec.internal.log.EncryptedLogger$SilentLogWatcher$SilentLogObserver$1, reason: invalid class name */
            class AnonymousClass1 extends TimerTask {
                AnonymousClass1() {
                }

                @Override // java.util.TimerTask, java.lang.Runnable
                public void run() {
                    try {
                        Optional<Path> reduce = Files.list(SilentLogObserver.this.mPath).reduce(new BinaryOperator() { // from class: com.sec.internal.log.EncryptedLogger$SilentLogWatcher$SilentLogObserver$1$$ExternalSyntheticLambda0
                            @Override // java.util.function.BiFunction
                            public final Object apply(Object obj, Object obj2) {
                                Path lambda$run$0;
                                lambda$run$0 = EncryptedLogger.SilentLogWatcher.SilentLogObserver.AnonymousClass1.lambda$run$0((Path) obj, (Path) obj2);
                                return lambda$run$0;
                            }
                        });
                        if (reduce.isPresent()) {
                            Path path = reduce.get();
                            if (Files.getLastModifiedTime(path, new LinkOption[0]).toMillis() + 10000 < System.currentTimeMillis() || !path.getFileName().toString().matches(SilentLogObserver.CHILD_PATH_REGEX)) {
                                return;
                            }
                            SilentLogObserver.this.timer.schedule(SilentLogObserver.this.new KeyTimerTask(path), 0L);
                        }
                    } catch (Exception e) {
                        Log.e(EncryptedLogger.LOG_TAG, e.getMessage(), e);
                    }
                }

                /* JADX INFO: Access modifiers changed from: private */
                public static /* synthetic */ Path lambda$run$0(Path path, Path path2) {
                    try {
                        return Files.getLastModifiedTime(path, new LinkOption[0]).compareTo(Files.getLastModifiedTime(path2, new LinkOption[0])) > 0 ? path : path2;
                    } catch (Exception e) {
                        throw new RuntimeException(e.getMessage());
                    }
                }
            }

            @Override // android.os.FileObserver
            public void stopWatching() {
                super.stopWatching();
                Log.d(EncryptedLogger.LOG_TAG, "stopWatching : " + SilentLogWatcher.this.SILENT_LOG_HOME.getRoot() + SilentLogWatcher.this.SILENT_LOG_HOME.subpath(0, SilentLogWatcher.this.SILENT_LOG_HOME.getNameCount()));
            }

            @Override // android.os.FileObserver
            public void onEvent(int i, String str) {
                if ((i & 256) != 256 || str == null) {
                    return;
                }
                try {
                    if (str.matches(CHILD_PATH_REGEX)) {
                        this.timer.schedule(new KeyTimerTask(this.mPath.resolve(str)), UtStateMachine.HTTP_READ_TIMEOUT_GCF);
                    }
                } catch (Exception e) {
                    Log.e(EncryptedLogger.LOG_TAG, e.getMessage());
                }
            }

            /* JADX INFO: Access modifiers changed from: private */
            class KeyTimerTask extends TimerTask {
                private Path mPath;

                public KeyTimerTask(Path path) {
                    this.mPath = path;
                }

                /* JADX INFO: Access modifiers changed from: private */
                public static /* synthetic */ boolean lambda$run$0(Path path) {
                    return path.toString().contains("main");
                }

                @Override // java.util.TimerTask, java.lang.Runnable
                public void run() {
                    try {
                        if (!Files.list(this.mPath).anyMatch(new Predicate() { // from class: com.sec.internal.log.EncryptedLogger$SilentLogWatcher$SilentLogObserver$KeyTimerTask$$ExternalSyntheticLambda0
                            @Override // java.util.function.Predicate
                            public final boolean test(Object obj) {
                                boolean lambda$run$0;
                                lambda$run$0 = EncryptedLogger.SilentLogWatcher.SilentLogObserver.KeyTimerTask.lambda$run$0((Path) obj);
                                return lambda$run$0;
                            }
                        }) || SilentLogObserver.this.lastWriteTime + 10000 >= System.currentTimeMillis()) {
                            return;
                        }
                        SilentLogObserver.this.lastWriteTime = System.currentTimeMillis();
                        EncryptedLogger.this.writeSecretKeyToLogcat();
                    } catch (Exception e) {
                        Log.e(EncryptedLogger.LOG_TAG, e.getMessage());
                    }
                }
            }
        }
    }
}
