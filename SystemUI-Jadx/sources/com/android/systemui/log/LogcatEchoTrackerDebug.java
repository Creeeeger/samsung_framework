package com.android.systemui.log;

import android.content.ContentResolver;
import android.database.ContentObserver;
import android.net.Uri;
import android.os.Handler;
import android.os.Looper;
import android.os.Trace;
import android.provider.Settings;
import androidx.concurrent.futures.AbstractResolvableFuture$$ExternalSyntheticOutline0;
import java.util.LinkedHashMap;
import java.util.Locale;
import java.util.Map;
import kotlin.jvm.internal.DefaultConstructorMarker;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public final class LogcatEchoTrackerDebug implements LogcatEchoTracker {
    public static final Factory Factory = new Factory(null);
    private final Map<String, LogLevel> cachedBufferLevels;
    private final Map<String, LogLevel> cachedTagLevels;
    private final ContentResolver contentResolver;
    private final boolean logInBackgroundThread;

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes.dex */
    public final class Factory {
        private Factory() {
        }

        public /* synthetic */ Factory(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }
    }

    public /* synthetic */ LogcatEchoTrackerDebug(ContentResolver contentResolver, DefaultConstructorMarker defaultConstructorMarker) {
        this(contentResolver);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void attach(Looper looper) {
        Trace.beginSection("LogcatEchoTrackerDebug#attach");
        ContentResolver contentResolver = this.contentResolver;
        Uri uriFor = Settings.Global.getUriFor("systemui/buffer");
        final Handler handler = new Handler(looper);
        contentResolver.registerContentObserver(uriFor, true, new ContentObserver(handler) { // from class: com.android.systemui.log.LogcatEchoTrackerDebug$attach$1
            @Override // android.database.ContentObserver
            public final void onChange(boolean z, Uri uri) {
                super.onChange(z, uri);
                LogcatEchoTrackerDebug.this.clearCache();
            }
        });
        ContentResolver contentResolver2 = this.contentResolver;
        Uri uriFor2 = Settings.Global.getUriFor("systemui/tag");
        final Handler handler2 = new Handler(looper);
        contentResolver2.registerContentObserver(uriFor2, true, new ContentObserver(handler2) { // from class: com.android.systemui.log.LogcatEchoTrackerDebug$attach$2
            @Override // android.database.ContentObserver
            public final void onChange(boolean z, Uri uri) {
                super.onChange(z, uri);
                LogcatEchoTrackerDebug.this.clearCache();
            }
        });
        Trace.endSection();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void clearCache() {
        Trace.beginSection("LogcatEchoTrackerDebug#clearCache");
        this.cachedBufferLevels.clear();
        Trace.endSection();
    }

    public static final LogcatEchoTrackerDebug create(ContentResolver contentResolver, Looper looper) {
        Factory.getClass();
        LogcatEchoTrackerDebug logcatEchoTrackerDebug = new LogcatEchoTrackerDebug(contentResolver, null);
        logcatEchoTrackerDebug.attach(looper);
        return logcatEchoTrackerDebug;
    }

    private final LogLevel getLogLevel(String str, String str2, Map<String, LogLevel> map) {
        LogLevel logLevel = map.get(str);
        if (logLevel == null) {
            LogLevel readSetting = readSetting(AbstractResolvableFuture$$ExternalSyntheticOutline0.m(str2, "/", str));
            map.put(str, readSetting);
            return readSetting;
        }
        return logLevel;
    }

    private final LogLevel parseProp(String str) {
        String str2;
        if (str != null) {
            str2 = str.toLowerCase(Locale.ROOT);
        } else {
            str2 = null;
        }
        if (str2 != null) {
            switch (str2.hashCode()) {
                case -1408208058:
                    if (str2.equals("assert")) {
                        return LogLevel.WTF;
                    }
                    break;
                case 100:
                    if (str2.equals("d")) {
                        return LogLevel.DEBUG;
                    }
                    break;
                case 101:
                    if (str2.equals("e")) {
                        return LogLevel.ERROR;
                    }
                    break;
                case 105:
                    if (str2.equals("i")) {
                        return LogLevel.INFO;
                    }
                    break;
                case 118:
                    if (str2.equals("v")) {
                        return LogLevel.VERBOSE;
                    }
                    break;
                case 119:
                    if (str2.equals("w")) {
                        return LogLevel.WARNING;
                    }
                    break;
                case 118057:
                    if (str2.equals("wtf")) {
                        return LogLevel.WTF;
                    }
                    break;
                case 3237038:
                    if (str2.equals("info")) {
                        return LogLevel.INFO;
                    }
                    break;
                case 3641990:
                    if (str2.equals("warn")) {
                        return LogLevel.WARNING;
                    }
                    break;
                case 95458899:
                    if (str2.equals("debug")) {
                        return LogLevel.DEBUG;
                    }
                    break;
                case 96784904:
                    if (str2.equals("error")) {
                        return LogLevel.ERROR;
                    }
                    break;
                case 351107458:
                    if (str2.equals("verbose")) {
                        return LogLevel.VERBOSE;
                    }
                    break;
                case 1124446108:
                    if (str2.equals("warning")) {
                        return LogLevel.WARNING;
                    }
                    break;
            }
        }
        return LogcatEchoTrackerDebugKt.DEFAULT_LEVEL;
    }

    private final LogLevel readSetting(String str) {
        LogLevel logLevel;
        try {
            try {
                Trace.beginSection("LogcatEchoTrackerDebug#readSetting");
                logLevel = parseProp(Settings.Global.getString(this.contentResolver, str));
            } catch (Settings.SettingNotFoundException unused) {
                logLevel = LogcatEchoTrackerDebugKt.DEFAULT_LEVEL;
            }
            return logLevel;
        } finally {
            Trace.endSection();
        }
    }

    @Override // com.android.systemui.log.LogcatEchoTracker
    public boolean getLogInBackgroundThread() {
        return this.logInBackgroundThread;
    }

    @Override // com.android.systemui.log.LogcatEchoTracker
    public synchronized boolean isBufferLoggable(String str, LogLevel logLevel) {
        boolean z;
        if (logLevel.ordinal() >= getLogLevel(str, "systemui/buffer", this.cachedBufferLevels).ordinal()) {
            z = true;
        } else {
            z = false;
        }
        return z;
    }

    @Override // com.android.systemui.log.LogcatEchoTracker
    public synchronized boolean isTagLoggable(String str, LogLevel logLevel) {
        boolean z;
        if (logLevel.compareTo(getLogLevel(str, "systemui/tag", this.cachedTagLevels)) >= 0) {
            z = true;
        } else {
            z = false;
        }
        return z;
    }

    private LogcatEchoTrackerDebug(ContentResolver contentResolver) {
        this.contentResolver = contentResolver;
        this.cachedBufferLevels = new LinkedHashMap();
        this.cachedTagLevels = new LinkedHashMap();
        this.logInBackgroundThread = true;
    }
}
