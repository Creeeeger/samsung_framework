package androidx.mediarouter.media;

import android.os.Bundle;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public final class MediaRouteSelector {
    public static final MediaRouteSelector EMPTY = new MediaRouteSelector(new Bundle(), null);
    public final Bundle mBundle;
    public List mControlCategories;

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes.dex */
    public final class Builder {
        public ArrayList mControlCategories;

        public final void addControlCategories(Collection collection) {
            ArrayList arrayList = (ArrayList) collection;
            if (!arrayList.isEmpty()) {
                Iterator it = arrayList.iterator();
                while (it.hasNext()) {
                    String str = (String) it.next();
                    if (str != null) {
                        if (this.mControlCategories == null) {
                            this.mControlCategories = new ArrayList();
                        }
                        if (!this.mControlCategories.contains(str)) {
                            this.mControlCategories.add(str);
                        }
                    } else {
                        throw new IllegalArgumentException("category must not be null");
                    }
                }
            }
        }

        public final MediaRouteSelector build() {
            if (this.mControlCategories == null) {
                return MediaRouteSelector.EMPTY;
            }
            Bundle bundle = new Bundle();
            bundle.putStringArrayList("controlCategories", this.mControlCategories);
            return new MediaRouteSelector(bundle, this.mControlCategories);
        }

        public Builder(MediaRouteSelector mediaRouteSelector) {
            if (mediaRouteSelector != null) {
                mediaRouteSelector.ensureControlCategories();
                if (mediaRouteSelector.mControlCategories.isEmpty()) {
                    return;
                }
                this.mControlCategories = new ArrayList(mediaRouteSelector.mControlCategories);
                return;
            }
            throw new IllegalArgumentException("selector must not be null");
        }
    }

    public MediaRouteSelector(Bundle bundle, List<String> list) {
        this.mBundle = bundle;
        this.mControlCategories = list;
    }

    public final void ensureControlCategories() {
        if (this.mControlCategories == null) {
            ArrayList<String> stringArrayList = this.mBundle.getStringArrayList("controlCategories");
            this.mControlCategories = stringArrayList;
            if (stringArrayList == null || stringArrayList.isEmpty()) {
                this.mControlCategories = Collections.emptyList();
            }
        }
    }

    public final boolean equals(Object obj) {
        if (obj instanceof MediaRouteSelector) {
            MediaRouteSelector mediaRouteSelector = (MediaRouteSelector) obj;
            ensureControlCategories();
            mediaRouteSelector.ensureControlCategories();
            return this.mControlCategories.equals(mediaRouteSelector.mControlCategories);
        }
        return false;
    }

    public final List getControlCategories() {
        ensureControlCategories();
        return new ArrayList(this.mControlCategories);
    }

    public final int hashCode() {
        ensureControlCategories();
        return this.mControlCategories.hashCode();
    }

    public final boolean isEmpty() {
        ensureControlCategories();
        return this.mControlCategories.isEmpty();
    }

    public final String toString() {
        return "MediaRouteSelector{ controlCategories=" + Arrays.toString(((ArrayList) getControlCategories()).toArray()) + " }";
    }
}
