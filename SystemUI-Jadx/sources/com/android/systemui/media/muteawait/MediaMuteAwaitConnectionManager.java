package com.android.systemui.media.muteawait;

import android.content.Context;
import android.graphics.drawable.Drawable;
import android.media.AudioDeviceAttributes;
import android.media.AudioManager;
import com.android.keyguard.KeyguardSecUpdateMonitorImpl$$ExternalSyntheticOutline0;
import com.android.keyguard.logging.KeyguardUpdateMonitorLogger$logAssistantVisible$2$$ExternalSyntheticOutline0;
import com.android.settingslib.media.DeviceIconUtil;
import com.android.settingslib.media.LocalMediaManager;
import com.android.systemui.R;
import com.android.systemui.log.LogBuffer;
import com.android.systemui.log.LogLevel;
import com.android.systemui.log.LogMessage;
import com.sec.ims.presence.ServiceTuple;
import java.util.HashMap;
import java.util.Iterator;
import java.util.concurrent.CopyOnWriteArrayList;
import java.util.concurrent.Executor;
import kotlin.collections.ArraysKt___ArraysKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public final class MediaMuteAwaitConnectionManager {
    public final AudioManager audioManager;
    public final Context context;
    public AudioDeviceAttributes currentMutedDevice;
    public final DeviceIconUtil deviceIconUtil;
    public final LocalMediaManager localMediaManager;
    public final MediaMuteAwaitLogger logger;
    public final Executor mainExecutor;
    public final MediaMuteAwaitConnectionManager$muteAwaitConnectionChangeListener$1 muteAwaitConnectionChangeListener = new AudioManager.MuteAwaitConnectionCallback() { // from class: com.android.systemui.media.muteawait.MediaMuteAwaitConnectionManager$muteAwaitConnectionChangeListener$1
        public final void onMutedUntilConnection(AudioDeviceAttributes audioDeviceAttributes, int[] iArr) {
            MediaMuteAwaitLogger mediaMuteAwaitLogger = MediaMuteAwaitConnectionManager.this.logger;
            String address = audioDeviceAttributes.getAddress();
            String name = audioDeviceAttributes.getName();
            MediaMuteAwaitConnectionManager.this.getClass();
            boolean contains = ArraysKt___ArraysKt.contains(1, iArr);
            mediaMuteAwaitLogger.getClass();
            LogLevel logLevel = LogLevel.DEBUG;
            MediaMuteAwaitLogger$logMutedDeviceAdded$2 mediaMuteAwaitLogger$logMutedDeviceAdded$2 = new Function1() { // from class: com.android.systemui.media.muteawait.MediaMuteAwaitLogger$logMutedDeviceAdded$2
                @Override // kotlin.jvm.functions.Function1
                public final Object invoke(Object obj) {
                    LogMessage logMessage = (LogMessage) obj;
                    String str1 = logMessage.getStr1();
                    String str2 = logMessage.getStr2();
                    boolean bool1 = logMessage.getBool1();
                    StringBuilder m = KeyguardUpdateMonitorLogger$logAssistantVisible$2$$ExternalSyntheticOutline0.m("Muted device added: address=", str1, " name=", str2, " hasMediaUsage=");
                    m.append(bool1);
                    return m.toString();
                }
            };
            LogBuffer logBuffer = mediaMuteAwaitLogger.buffer;
            LogMessage obtain = logBuffer.obtain("MediaMuteAwait", logLevel, mediaMuteAwaitLogger$logMutedDeviceAdded$2, null);
            obtain.setStr1(address);
            obtain.setStr2(name);
            obtain.setBool1(contains);
            logBuffer.commit(obtain);
            MediaMuteAwaitConnectionManager.this.getClass();
            if (ArraysKt___ArraysKt.contains(1, iArr)) {
                MediaMuteAwaitConnectionManager mediaMuteAwaitConnectionManager = MediaMuteAwaitConnectionManager.this;
                mediaMuteAwaitConnectionManager.currentMutedDevice = audioDeviceAttributes;
                String address2 = audioDeviceAttributes.getAddress();
                String name2 = audioDeviceAttributes.getName();
                Drawable icon = MediaMuteAwaitConnectionManager.this.getIcon(audioDeviceAttributes);
                Iterator it = ((CopyOnWriteArrayList) mediaMuteAwaitConnectionManager.localMediaManager.getCallbacks()).iterator();
                while (it.hasNext()) {
                    ((LocalMediaManager.DeviceCallback) it.next()).onAboutToConnectDeviceAdded(address2, icon, name2);
                }
            }
        }

        public final void onUnmutedEvent(int i, AudioDeviceAttributes audioDeviceAttributes, int[] iArr) {
            boolean areEqual = Intrinsics.areEqual(MediaMuteAwaitConnectionManager.this.currentMutedDevice, audioDeviceAttributes);
            MediaMuteAwaitLogger mediaMuteAwaitLogger = MediaMuteAwaitConnectionManager.this.logger;
            String address = audioDeviceAttributes.getAddress();
            String name = audioDeviceAttributes.getName();
            MediaMuteAwaitConnectionManager.this.getClass();
            boolean contains = ArraysKt___ArraysKt.contains(1, iArr);
            mediaMuteAwaitLogger.getClass();
            LogLevel logLevel = LogLevel.DEBUG;
            MediaMuteAwaitLogger$logMutedDeviceRemoved$2 mediaMuteAwaitLogger$logMutedDeviceRemoved$2 = new Function1() { // from class: com.android.systemui.media.muteawait.MediaMuteAwaitLogger$logMutedDeviceRemoved$2
                @Override // kotlin.jvm.functions.Function1
                public final Object invoke(Object obj) {
                    LogMessage logMessage = (LogMessage) obj;
                    String str1 = logMessage.getStr1();
                    String str2 = logMessage.getStr2();
                    return KeyguardSecUpdateMonitorImpl$$ExternalSyntheticOutline0.m(KeyguardUpdateMonitorLogger$logAssistantVisible$2$$ExternalSyntheticOutline0.m("Muted device removed: address=", str1, " name=", str2, " hasMediaUsage="), logMessage.getBool1(), " isMostRecentDevice=", logMessage.getBool2());
                }
            };
            LogBuffer logBuffer = mediaMuteAwaitLogger.buffer;
            LogMessage obtain = logBuffer.obtain("MediaMuteAwait", logLevel, mediaMuteAwaitLogger$logMutedDeviceRemoved$2, null);
            obtain.setStr1(address);
            obtain.setStr2(name);
            obtain.setBool1(contains);
            obtain.setBool2(areEqual);
            logBuffer.commit(obtain);
            if (areEqual) {
                MediaMuteAwaitConnectionManager.this.getClass();
                if (ArraysKt___ArraysKt.contains(1, iArr)) {
                    MediaMuteAwaitConnectionManager mediaMuteAwaitConnectionManager = MediaMuteAwaitConnectionManager.this;
                    mediaMuteAwaitConnectionManager.currentMutedDevice = null;
                    Iterator it = ((CopyOnWriteArrayList) mediaMuteAwaitConnectionManager.localMediaManager.getCallbacks()).iterator();
                    while (it.hasNext()) {
                        ((LocalMediaManager.DeviceCallback) it.next()).onAboutToConnectDeviceRemoved();
                    }
                }
            }
        }
    };

    /* JADX WARN: Type inference failed for: r1v4, types: [com.android.systemui.media.muteawait.MediaMuteAwaitConnectionManager$muteAwaitConnectionChangeListener$1] */
    public MediaMuteAwaitConnectionManager(Executor executor, LocalMediaManager localMediaManager, Context context, DeviceIconUtil deviceIconUtil, MediaMuteAwaitLogger mediaMuteAwaitLogger) {
        this.mainExecutor = executor;
        this.localMediaManager = localMediaManager;
        this.context = context;
        this.deviceIconUtil = deviceIconUtil;
        this.logger = mediaMuteAwaitLogger;
        this.audioManager = (AudioManager) context.getSystemService(ServiceTuple.MEDIA_CAP_AUDIO);
    }

    public final Drawable getIcon(AudioDeviceAttributes audioDeviceAttributes) {
        int i;
        int type = audioDeviceAttributes.getType();
        HashMap hashMap = (HashMap) this.deviceIconUtil.mAudioDeviceTypeToIconMap;
        if (hashMap.containsKey(Integer.valueOf(type))) {
            i = ((DeviceIconUtil.Device) hashMap.get(Integer.valueOf(type))).mIconDrawableRes;
        } else {
            i = R.drawable.ic_smartphone;
        }
        return this.context.getDrawable(i);
    }
}
