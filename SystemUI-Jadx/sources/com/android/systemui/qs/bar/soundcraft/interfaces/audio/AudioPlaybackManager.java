package com.android.systemui.qs.bar.soundcraft.interfaces.audio;

import android.content.Context;
import android.media.AudioManager;
import android.media.AudioPlaybackConfiguration;
import android.support.v4.media.MediaBrowserCompat$MediaBrowserImplBase$$ExternalSyntheticOutline0;
import android.util.Log;
import androidx.appcompat.widget.ListPopupWindow$$ExternalSyntheticOutline0;
import com.android.systemui.qs.bar.soundcraft.utils.PackageExt;
import com.android.systemui.qs.bar.soundcraft.utils.SystemServiceExtension;
import java.util.Iterator;
import kotlin.Result;
import kotlin.Unit;
import kotlin.jvm.internal.DefaultConstructorMarker;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final class AudioPlaybackManager {
    public final Context context;

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes2.dex */
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

    public AudioPlaybackManager(Context context) {
        this.context = context;
    }

    public final String getPlayingAppPackage() {
        Object obj;
        Object failure;
        boolean z;
        SystemServiceExtension.INSTANCE.getClass();
        Context context = this.context;
        Iterator<T> it = ((AudioManager) context.getSystemService(AudioManager.class)).getActivePlaybackConfigurations().iterator();
        while (true) {
            if (it.hasNext()) {
                obj = it.next();
                if (((AudioPlaybackConfiguration) obj).semGetPlayerState() == 2) {
                    z = true;
                } else {
                    z = false;
                }
                if (z) {
                    break;
                }
            } else {
                obj = null;
                break;
            }
        }
        AudioPlaybackConfiguration audioPlaybackConfiguration = (AudioPlaybackConfiguration) obj;
        if (audioPlaybackConfiguration != null) {
            PackageExt packageExt = PackageExt.INSTANCE;
            int semGetClientUid = audioPlaybackConfiguration.semGetClientUid();
            ListPopupWindow$$ExternalSyntheticOutline0.m("uid=", semGetClientUid, "SoundCraft.AudioPlaybackManager");
            Unit unit = Unit.INSTANCE;
            packageExt.getClass();
            try {
                int i = Result.$r8$clinit;
                Object[] packagesForUid = context.getPackageManager().getPackagesForUid(semGetClientUid);
                if (packagesForUid != null) {
                    failure = packagesForUid[0];
                } else {
                    failure = null;
                }
            } catch (Throwable th) {
                int i2 = Result.$r8$clinit;
                failure = new Result.Failure(th);
            }
            if (failure instanceof Result.Failure) {
                failure = null;
            }
            String str = (String) failure;
            MediaBrowserCompat$MediaBrowserImplBase$$ExternalSyntheticOutline0.m("packageName=", str, "SoundCraft.AudioPlaybackManager");
            if (str != null) {
                return str;
            }
        }
        Log.d("SoundCraft.AudioPlaybackManager", "package name is null");
        return null;
    }
}
