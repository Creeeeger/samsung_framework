package com.android.systemui.edgelighting.manager;

import android.content.ContentResolver;
import android.database.ContentObserver;
import android.os.Handler;
import android.provider.Settings;
import android.util.Slog;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public final class EdgeLightingSettingsObserver {
    public static EdgeLightingSettingsObserver sInstance;
    public final HashMap mGlobalObservers = new HashMap();
    public final HashMap mSystemObservers = new HashMap();

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes.dex */
    public final class ContentObserverWrapper extends ContentObserver {
        public final ArrayList mObservers;

        public ContentObserverWrapper(Handler handler) {
            super(handler);
            this.mObservers = new ArrayList();
        }

        @Override // android.database.ContentObserver
        public final void onChange(final boolean z) {
            Iterator it = this.mObservers.iterator();
            while (it.hasNext()) {
                final EdgeLightingObserver edgeLightingObserver = (EdgeLightingObserver) it.next();
                Handler handler = edgeLightingObserver.getHandler();
                if (handler != null) {
                    handler.post(new Runnable(this) { // from class: com.android.systemui.edgelighting.manager.EdgeLightingSettingsObserver.ContentObserverWrapper.1
                        @Override // java.lang.Runnable
                        public final void run() {
                            edgeLightingObserver.onChange();
                        }
                    });
                } else {
                    edgeLightingObserver.onChange();
                }
            }
        }
    }

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes.dex */
    public interface EdgeLightingObserver {
        Handler getHandler();

        void onChange();
    }

    public static synchronized EdgeLightingSettingsObserver getInstance() {
        EdgeLightingSettingsObserver edgeLightingSettingsObserver;
        synchronized (EdgeLightingSettingsObserver.class) {
            if (sInstance == null) {
                sInstance = new EdgeLightingSettingsObserver();
            }
            edgeLightingSettingsObserver = sInstance;
        }
        return edgeLightingSettingsObserver;
    }

    public final void unregisterContentObserver(ContentResolver contentResolver, Class cls, EdgeLightingObserver edgeLightingObserver) {
        HashMap hashMap;
        if (cls == Settings.System.class) {
            hashMap = this.mSystemObservers;
        } else if (cls == Settings.Global.class) {
            hashMap = this.mGlobalObservers;
        } else {
            Slog.e("EdgeLightingSettingsObserver", "unregisterContentObserver : wrong table");
            return;
        }
        ContentObserverWrapper contentObserverWrapper = (ContentObserverWrapper) hashMap.get("edge_lighting");
        if (contentObserverWrapper != null) {
            contentObserverWrapper.mObservers.remove(edgeLightingObserver);
            if (contentObserverWrapper.mObservers.size() == 0) {
                contentResolver.unregisterContentObserver(contentObserverWrapper);
                hashMap.remove("edge_lighting");
            }
        }
    }
}
