package androidx.transition;

import android.view.View;
import android.view.WindowId;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public final class WindowIdApi18 implements WindowIdImpl {
    public final WindowId mWindowId;

    public WindowIdApi18(View view) {
        this.mWindowId = view.getWindowId();
    }

    public final boolean equals(Object obj) {
        if ((obj instanceof WindowIdApi18) && ((WindowIdApi18) obj).mWindowId.equals(this.mWindowId)) {
            return true;
        }
        return false;
    }

    public final int hashCode() {
        return this.mWindowId.hashCode();
    }
}
