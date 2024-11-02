package com.samsung.systemui.splugins.volume;

import android.content.Context;
import com.samsung.systemui.splugins.SPlugin;
import com.samsung.systemui.splugins.annotations.ProvidesInterface;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
@ProvidesInterface(action = "com.samsung.systemui.volume.PLUGIN", version = 3000)
/* loaded from: classes3.dex */
public interface VolumeStar extends SPlugin {
    public static final String ACTION = "com.samsung.systemui.volume.PLUGIN";
    public static final Companion Companion = Companion.$$INSTANCE;
    public static final int MAJOR_VERSION = 3;
    public static final int MINOR_VERSION = 0;
    public static final int VERSION = 3000;

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes3.dex */
    public static final class Companion {
        static final /* synthetic */ Companion $$INSTANCE = new Companion();
        public static final String ACTION = "com.samsung.systemui.volume.PLUGIN";
        public static final int MAJOR_VERSION = 3;
        public static final int MINOR_VERSION = 0;
        public static final int VERSION = 3000;

        private Companion() {
        }
    }

    void init(Context context, Context context2, VolumeStarDependency volumeStarDependency);

    void start();

    void stop();
}
