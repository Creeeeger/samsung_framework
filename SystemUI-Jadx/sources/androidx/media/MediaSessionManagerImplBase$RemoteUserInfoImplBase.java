package androidx.media;

import android.text.TextUtils;
import java.util.Objects;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public class MediaSessionManagerImplBase$RemoteUserInfoImplBase {
    public final String mPackageName;
    public final int mPid;
    public final int mUid;

    public MediaSessionManagerImplBase$RemoteUserInfoImplBase(String str, int i, int i2) {
        this.mPackageName = str;
        this.mPid = i;
        this.mUid = i2;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof MediaSessionManagerImplBase$RemoteUserInfoImplBase)) {
            return false;
        }
        MediaSessionManagerImplBase$RemoteUserInfoImplBase mediaSessionManagerImplBase$RemoteUserInfoImplBase = (MediaSessionManagerImplBase$RemoteUserInfoImplBase) obj;
        int i = this.mUid;
        String str = this.mPackageName;
        int i2 = this.mPid;
        if (i2 >= 0 && mediaSessionManagerImplBase$RemoteUserInfoImplBase.mPid >= 0) {
            if (TextUtils.equals(str, mediaSessionManagerImplBase$RemoteUserInfoImplBase.mPackageName) && i2 == mediaSessionManagerImplBase$RemoteUserInfoImplBase.mPid && i == mediaSessionManagerImplBase$RemoteUserInfoImplBase.mUid) {
                return true;
            }
            return false;
        }
        if (TextUtils.equals(str, mediaSessionManagerImplBase$RemoteUserInfoImplBase.mPackageName) && i == mediaSessionManagerImplBase$RemoteUserInfoImplBase.mUid) {
            return true;
        }
        return false;
    }

    public final int hashCode() {
        return Objects.hash(this.mPackageName, Integer.valueOf(this.mUid));
    }
}
