package com.android.systemui.log;

import android.util.Log;
import androidx.concurrent.futures.AbstractResolvableFuture$$ExternalSyntheticOutline0;
import androidx.constraintlayout.motion.widget.MotionLayout$$ExternalSyntheticOutline0;
import androidx.core.graphics.PathParser$$ExternalSyntheticOutline0;
import androidx.core.os.LocaleListCompatWrapper$$ExternalSyntheticOutline0;
import androidx.exifinterface.media.ExifInterface$$ExternalSyntheticOutline0;
import com.android.keyguard.KeyguardKnoxDualDarInnerPasswordViewController$$ExternalSyntheticOutline0;
import com.android.keyguard.KeyguardSecPasswordViewController$$ExternalSyntheticOutline0;
import com.android.keyguard.logging.KeyguardUpdateMonitorLogger$logAssistantVisible$2$$ExternalSyntheticOutline0;
import com.android.systemui.CameraAvailabilityListener$cameraDeviceStateCallback$1$$ExternalSyntheticOutline0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public final class MediaLoggerImpl implements MediaLogger {
    public final MediaLogWriter writer;

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes.dex */
    public final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }
    }

    static {
        new Companion(null);
    }

    public MediaLoggerImpl(MediaLogWriter mediaLogWriter) {
        this.writer = mediaLogWriter;
    }

    public final void addPlayer(String str, boolean z) {
        MediaLogWriter mediaLogWriter = this.writer;
        mediaLogWriter.getClass();
        LogLevel logLevel = LogLevel.DEBUG;
        MediaLogWriter$logAddPlayer$2 mediaLogWriter$logAddPlayer$2 = new Function1() { // from class: com.android.systemui.log.MediaLogWriter$logAddPlayer$2
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                LogMessage logMessage = (LogMessage) obj;
                return " Media player added [" + logMessage.getStr1() + "] isPlaying[" + logMessage.getBool1() + "]";
            }
        };
        LogBuffer logBuffer = mediaLogWriter.buffer;
        LogMessage obtain = logBuffer.obtain("MediaLogger", logLevel, mediaLogWriter$logAddPlayer$2, null);
        obtain.setStr1(str);
        obtain.setBool1(z);
        logBuffer.commit(obtain);
        Log.d("MediaLogger", "Media player added [" + str + "] isPlaying[" + z + "]");
    }

    public final void onActionClicked(CharSequence charSequence, String str, int i) {
        String str2;
        if (charSequence != null) {
            str2 = charSequence.toString();
        } else {
            str2 = null;
        }
        MediaLogWriter mediaLogWriter = this.writer;
        mediaLogWriter.getClass();
        LogLevel logLevel = LogLevel.DEBUG;
        MediaLogWriter$logOnActionClicked$2 mediaLogWriter$logOnActionClicked$2 = new Function1() { // from class: com.android.systemui.log.MediaLogWriter$logOnActionClicked$2
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                LogMessage logMessage = (LogMessage) obj;
                String str1 = logMessage.getStr1();
                int int1 = logMessage.getInt1();
                return AbstractResolvableFuture$$ExternalSyntheticOutline0.m(CameraAvailabilityListener$cameraDeviceStateCallback$1$$ExternalSyntheticOutline0.m(" Media action clicked [", str1, "][", int1, "]["), logMessage.getStr2(), "]");
            }
        };
        LogBuffer logBuffer = mediaLogWriter.buffer;
        LogMessage obtain = logBuffer.obtain("MediaLogger", logLevel, mediaLogWriter$logOnActionClicked$2, null);
        obtain.setStr1(str);
        obtain.setInt1(i);
        obtain.setStr2(str2);
        logBuffer.commit(obtain);
        Log.d("MediaLogger", "Media action clicked [" + str + "][" + i + "][" + ((Object) charSequence) + "]");
    }

    public final void onConfigChanged(int i) {
        MediaLogWriter mediaLogWriter = this.writer;
        mediaLogWriter.getClass();
        LogLevel logLevel = LogLevel.DEBUG;
        MediaLogWriter$logOnConfigChanged$2 mediaLogWriter$logOnConfigChanged$2 = new Function1() { // from class: com.android.systemui.log.MediaLogWriter$logOnConfigChanged$2
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return LocaleListCompatWrapper$$ExternalSyntheticOutline0.m(" Media config changed data size is [", ((LogMessage) obj).getInt1(), "]");
            }
        };
        LogBuffer logBuffer = mediaLogWriter.buffer;
        LogMessage obtain = logBuffer.obtain("MediaLogger", logLevel, mediaLogWriter$logOnConfigChanged$2, null);
        obtain.setInt1(i);
        logBuffer.commit(obtain);
        KeyguardSecPasswordViewController$$ExternalSyntheticOutline0.m(new StringBuilder("Media config changed data size is ["), i, "]", "MediaLogger");
    }

    public final void onMediaDataLoaded(String str, String str2, CharSequence charSequence, boolean z, final String str3) {
        String str4;
        if (charSequence != null) {
            str4 = charSequence.toString();
        } else {
            str4 = null;
        }
        MediaLogWriter mediaLogWriter = this.writer;
        mediaLogWriter.getClass();
        LogLevel logLevel = LogLevel.DEBUG;
        Function1 function1 = new Function1() { // from class: com.android.systemui.log.MediaLogWriter$logOnMediaDataLoaded$2
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                LogMessage logMessage = (LogMessage) obj;
                String str1 = logMessage.getStr1();
                String str22 = logMessage.getStr2();
                String str32 = logMessage.getStr3();
                boolean bool1 = logMessage.getBool1();
                String str5 = str3;
                StringBuilder m = KeyguardUpdateMonitorLogger$logAssistantVisible$2$$ExternalSyntheticOutline0.m(" Media data loaded key[", str1, "] oldKey[", str22, "] title[");
                m.append(str32);
                m.append("] active?[");
                m.append(bool1);
                m.append("]\n callStack[");
                return AbstractResolvableFuture$$ExternalSyntheticOutline0.m(m, str5, "]");
            }
        };
        LogBuffer logBuffer = mediaLogWriter.buffer;
        LogMessage obtain = logBuffer.obtain("MediaLogger", logLevel, function1, null);
        obtain.setStr1(str);
        obtain.setStr2(str2);
        obtain.setStr3(str4);
        obtain.setBool1(z);
        logBuffer.commit(obtain);
        Log.d("MediaLogger", "Media data loaded key[" + str + "] oldKey[" + str2 + "] title[" + ((Object) charSequence) + "] isActive[" + z + "]");
    }

    public final void onMediaDataRemoved(String str, String str2) {
        MediaLogWriter mediaLogWriter = this.writer;
        mediaLogWriter.getClass();
        LogLevel logLevel = LogLevel.DEBUG;
        MediaLogWriter$logOnMediaDataRemoved$2 mediaLogWriter$logOnMediaDataRemoved$2 = new Function1() { // from class: com.android.systemui.log.MediaLogWriter$logOnMediaDataRemoved$2
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                LogMessage logMessage = (LogMessage) obj;
                return MotionLayout$$ExternalSyntheticOutline0.m(" Media data removed[", logMessage.getStr1(), "] \n callStack[", logMessage.getStr2(), "]");
            }
        };
        LogBuffer logBuffer = mediaLogWriter.buffer;
        LogMessage obtain = logBuffer.obtain("MediaLogger", logLevel, mediaLogWriter$logOnMediaDataRemoved$2, null);
        obtain.setStr1(str);
        obtain.setStr2(str2);
        logBuffer.commit(obtain);
        KeyguardKnoxDualDarInnerPasswordViewController$$ExternalSyntheticOutline0.m("Media data removed [", str, "]", "MediaLogger");
    }

    public final void onRemoveClicked(String str) {
        MediaLogWriter mediaLogWriter = this.writer;
        mediaLogWriter.getClass();
        LogLevel logLevel = LogLevel.DEBUG;
        MediaLogWriter$logOnRemoveClicked$2 mediaLogWriter$logOnRemoveClicked$2 = new Function1() { // from class: com.android.systemui.log.MediaLogWriter$logOnRemoveClicked$2
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return PathParser$$ExternalSyntheticOutline0.m(" Media remove clicked [", ((LogMessage) obj).getStr1(), "]");
            }
        };
        LogBuffer logBuffer = mediaLogWriter.buffer;
        LogMessage obtain = logBuffer.obtain("MediaLogger", logLevel, mediaLogWriter$logOnRemoveClicked$2, null);
        obtain.setStr1(str);
        logBuffer.commit(obtain);
        ExifInterface$$ExternalSyntheticOutline0.m(new StringBuilder("Media remove clicked ["), str, "]", "MediaLogger");
    }

    public final void removePausedPlayers(String str) {
        MediaLogWriter mediaLogWriter = this.writer;
        mediaLogWriter.getClass();
        LogLevel logLevel = LogLevel.DEBUG;
        MediaLogWriter$logOnRemovePausedPlayer$2 mediaLogWriter$logOnRemovePausedPlayer$2 = new Function1() { // from class: com.android.systemui.log.MediaLogWriter$logOnRemovePausedPlayer$2
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return PathParser$$ExternalSyntheticOutline0.m(" Media remove paused player [", ((LogMessage) obj).getStr1(), "]");
            }
        };
        LogBuffer logBuffer = mediaLogWriter.buffer;
        LogMessage obtain = logBuffer.obtain("MediaLogger", logLevel, mediaLogWriter$logOnRemovePausedPlayer$2, null);
        obtain.setStr1(str);
        logBuffer.commit(obtain);
        ExifInterface$$ExternalSyntheticOutline0.m(new StringBuilder("Media remove paused player ["), str, "]", "MediaLogger");
    }

    public final void removePlayer(String str) {
        MediaLogWriter mediaLogWriter = this.writer;
        mediaLogWriter.getClass();
        LogLevel logLevel = LogLevel.DEBUG;
        MediaLogWriter$logRemovePlayer$2 mediaLogWriter$logRemovePlayer$2 = new Function1() { // from class: com.android.systemui.log.MediaLogWriter$logRemovePlayer$2
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return PathParser$$ExternalSyntheticOutline0.m(" Media player removed [", ((LogMessage) obj).getStr1(), "]");
            }
        };
        LogBuffer logBuffer = mediaLogWriter.buffer;
        LogMessage obtain = logBuffer.obtain("MediaLogger", logLevel, mediaLogWriter$logRemovePlayer$2, null);
        obtain.setStr1(str);
        logBuffer.commit(obtain);
        ExifInterface$$ExternalSyntheticOutline0.m(new StringBuilder("Media player removed ["), str, "]", "MediaLogger");
    }

    public final void removePlayerError(String str) {
        MediaLogWriter mediaLogWriter = this.writer;
        mediaLogWriter.getClass();
        LogLevel logLevel = LogLevel.DEBUG;
        MediaLogWriter$logRemovePlayerError$2 mediaLogWriter$logRemovePlayerError$2 = new Function1() { // from class: com.android.systemui.log.MediaLogWriter$logRemovePlayerError$2
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return PathParser$$ExternalSyntheticOutline0.m(" Media player removed error [", ((LogMessage) obj).getStr1(), "]");
            }
        };
        LogBuffer logBuffer = mediaLogWriter.buffer;
        LogMessage obtain = logBuffer.obtain("MediaLogger", logLevel, mediaLogWriter$logRemovePlayerError$2, null);
        obtain.setStr1(str);
        logBuffer.commit(obtain);
        ExifInterface$$ExternalSyntheticOutline0.m(new StringBuilder("Media player removed error ["), str, "]", "MediaLogger");
    }

    public final void updatePlayer(String str, boolean z) {
        MediaLogWriter mediaLogWriter = this.writer;
        mediaLogWriter.getClass();
        LogLevel logLevel = LogLevel.DEBUG;
        MediaLogWriter$logUpdatePlayer$2 mediaLogWriter$logUpdatePlayer$2 = new Function1() { // from class: com.android.systemui.log.MediaLogWriter$logUpdatePlayer$2
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                LogMessage logMessage = (LogMessage) obj;
                return " Media player updated [" + logMessage.getStr1() + "] isPlaying[" + logMessage.getBool1() + "]";
            }
        };
        LogBuffer logBuffer = mediaLogWriter.buffer;
        LogMessage obtain = logBuffer.obtain("MediaLogger", logLevel, mediaLogWriter$logUpdatePlayer$2, null);
        obtain.setStr1(str);
        obtain.setBool1(z);
        logBuffer.commit(obtain);
        Log.d("MediaLogger", "Media player updated [" + str + "] isPlaying[" + z + "]");
    }
}
