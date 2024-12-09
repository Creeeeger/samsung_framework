package com.sec.internal.ims.fcm.interfaces;

import android.content.Context;
import java.util.Map;

/* loaded from: classes.dex */
public interface IFcmEventListener {
    void onMessageReceived(Context context, String str, Map map);

    void onTokenRefresh(Context context);
}
