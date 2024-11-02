package com.android.systemui.statusbar.pipeline.shared;

import android.support.v4.media.MediaBrowserCompat$MediaBrowserImplBase$$ExternalSyntheticOutline0;
import androidx.constraintlayout.motion.widget.KeyAttributes$$ExternalSyntheticOutline0;
import com.android.systemui.log.LogBuffer;
import com.android.systemui.log.LogLevel;
import com.android.systemui.log.LogMessage;
import com.android.systemui.statusbar.pipeline.shared.data.model.DefaultConnectionModel;
import kotlin.jvm.functions.Function1;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final class ConnectivityInputLogger {
    public final LogBuffer buffer;

    public ConnectivityInputLogger(LogBuffer logBuffer) {
        this.buffer = logBuffer;
    }

    public final void logDefaultConnectionsChanged(DefaultConnectionModel defaultConnectionModel) {
        LogLevel logLevel = LogLevel.DEBUG;
        ConnectivityInputLogger$logDefaultConnectionsChanged$2 connectivityInputLogger$logDefaultConnectionsChanged$2 = new ConnectivityInputLogger$logDefaultConnectionsChanged$2(defaultConnectionModel);
        LogBuffer logBuffer = this.buffer;
        LogMessage obtain = logBuffer.obtain("ConnectivityInputLogger", logLevel, connectivityInputLogger$logDefaultConnectionsChanged$2, null);
        obtain.setBool1(defaultConnectionModel.wifi.isDefault);
        obtain.setBool2(defaultConnectionModel.mobile.isDefault);
        obtain.setBool3(defaultConnectionModel.carrierMerged.isDefault);
        obtain.setBool4(defaultConnectionModel.ethernet.isDefault);
        obtain.setBool5(defaultConnectionModel.btTether.isDefault);
        obtain.setInt1(defaultConnectionModel.isValidated ? 1 : 0);
        logBuffer.commit(obtain);
    }

    public final void logTuningChanged(String str) {
        LogLevel logLevel = LogLevel.DEBUG;
        ConnectivityInputLogger$logTuningChanged$2 connectivityInputLogger$logTuningChanged$2 = new Function1() { // from class: com.android.systemui.statusbar.pipeline.shared.ConnectivityInputLogger$logTuningChanged$2
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return KeyAttributes$$ExternalSyntheticOutline0.m("onTuningChanged: ", ((LogMessage) obj).getStr1());
            }
        };
        LogBuffer logBuffer = this.buffer;
        LogMessage obtain = logBuffer.obtain("ConnectivityInputLogger", logLevel, connectivityInputLogger$logTuningChanged$2, null);
        obtain.setStr1(str);
        logBuffer.commit(obtain);
    }

    public final void logVcnSubscriptionId(int i) {
        LogLevel logLevel = LogLevel.DEBUG;
        ConnectivityInputLogger$logVcnSubscriptionId$2 connectivityInputLogger$logVcnSubscriptionId$2 = new Function1() { // from class: com.android.systemui.statusbar.pipeline.shared.ConnectivityInputLogger$logVcnSubscriptionId$2
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return MediaBrowserCompat$MediaBrowserImplBase$$ExternalSyntheticOutline0.m("vcnSubId changed: ", ((LogMessage) obj).getInt1());
            }
        };
        LogBuffer logBuffer = this.buffer;
        LogMessage obtain = logBuffer.obtain("ConnectivityInputLogger", logLevel, connectivityInputLogger$logVcnSubscriptionId$2, null);
        obtain.setInt1(i);
        logBuffer.commit(obtain);
    }
}
