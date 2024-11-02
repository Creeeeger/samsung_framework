package androidx.transition;

import android.support.v4.media.MediaBrowserCompat$MediaBrowserImplBase$$ExternalSyntheticOutline0;
import android.view.View;
import androidx.concurrent.futures.AbstractResolvableFuture$$ExternalSyntheticOutline0;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public final class TransitionValues {
    public final View view;
    public final Map values = new HashMap();
    public final ArrayList mTargetedTransitions = new ArrayList();

    @Deprecated
    public TransitionValues() {
    }

    public final boolean equals(Object obj) {
        if (obj instanceof TransitionValues) {
            TransitionValues transitionValues = (TransitionValues) obj;
            if (this.view == transitionValues.view && this.values.equals(transitionValues.values)) {
                return true;
            }
            return false;
        }
        return false;
    }

    public final int hashCode() {
        return this.values.hashCode() + (this.view.hashCode() * 31);
    }

    public final String toString() {
        StringBuilder m = MediaBrowserCompat$MediaBrowserImplBase$$ExternalSyntheticOutline0.m("TransitionValues@" + Integer.toHexString(hashCode()) + ":\n", "    view = ");
        m.append(this.view);
        m.append("\n");
        String m2 = AbstractResolvableFuture$$ExternalSyntheticOutline0.m(m.toString(), "    values:");
        Map map = this.values;
        for (String str : ((HashMap) map).keySet()) {
            m2 = m2 + "    " + str + ": " + ((HashMap) map).get(str) + "\n";
        }
        return m2;
    }

    public TransitionValues(View view) {
        this.view = view;
    }
}
