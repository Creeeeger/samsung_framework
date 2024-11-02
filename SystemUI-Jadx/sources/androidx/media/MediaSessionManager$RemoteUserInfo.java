package androidx.media;

import android.media.session.MediaSessionManager;
import android.text.TextUtils;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public final class MediaSessionManager$RemoteUserInfo {
    public final MediaSessionManagerImplApi28$RemoteUserInfoImplApi28 mImpl;

    public MediaSessionManager$RemoteUserInfo(String str, int i, int i2) {
        if (str != null) {
            if (!TextUtils.isEmpty(str)) {
                this.mImpl = new MediaSessionManagerImplApi28$RemoteUserInfoImplApi28(str, i, i2);
                return;
            }
            throw new IllegalArgumentException("packageName should be nonempty");
        }
        throw new NullPointerException("package shouldn't be null");
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof MediaSessionManager$RemoteUserInfo)) {
            return false;
        }
        return this.mImpl.equals(((MediaSessionManager$RemoteUserInfo) obj).mImpl);
    }

    public final int hashCode() {
        return this.mImpl.hashCode();
    }

    public MediaSessionManager$RemoteUserInfo(MediaSessionManager.RemoteUserInfo remoteUserInfo) {
        String packageName = remoteUserInfo.getPackageName();
        if (packageName != null) {
            if (!TextUtils.isEmpty(packageName)) {
                this.mImpl = new MediaSessionManagerImplApi28$RemoteUserInfoImplApi28(remoteUserInfo);
                return;
            }
            throw new IllegalArgumentException("packageName should be nonempty");
        }
        throw new NullPointerException("package shouldn't be null");
    }
}
