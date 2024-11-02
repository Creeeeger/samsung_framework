package androidx.mediarouter.media;

import android.os.Bundle;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.List;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public final class MediaRouteProviderDescriptor {
    public final List mRoutes;
    public final boolean mSupportsDynamicGroupRoute;

    public MediaRouteProviderDescriptor(List<MediaRouteDescriptor> list, boolean z) {
        this.mRoutes = list == null ? Collections.emptyList() : list;
        this.mSupportsDynamicGroupRoute = z;
    }

    public static MediaRouteProviderDescriptor fromBundle(Bundle bundle) {
        MediaRouteDescriptor mediaRouteDescriptor;
        ArrayList arrayList = null;
        if (bundle == null) {
            return null;
        }
        ArrayList parcelableArrayList = bundle.getParcelableArrayList("routes");
        if (parcelableArrayList != null && !parcelableArrayList.isEmpty()) {
            int size = parcelableArrayList.size();
            ArrayList arrayList2 = new ArrayList(size);
            for (int i = 0; i < size; i++) {
                Bundle bundle2 = (Bundle) parcelableArrayList.get(i);
                if (bundle2 != null) {
                    mediaRouteDescriptor = new MediaRouteDescriptor(bundle2);
                } else {
                    mediaRouteDescriptor = null;
                }
                arrayList2.add(mediaRouteDescriptor);
            }
            arrayList = arrayList2;
        }
        return new MediaRouteProviderDescriptor(arrayList, bundle.getBoolean("supportsDynamicGroupRoute", false));
    }

    public final boolean isValid() {
        List list = this.mRoutes;
        int size = list.size();
        for (int i = 0; i < size; i++) {
            MediaRouteDescriptor mediaRouteDescriptor = (MediaRouteDescriptor) list.get(i);
            if (mediaRouteDescriptor == null || !mediaRouteDescriptor.isValid()) {
                return false;
            }
        }
        return true;
    }

    public final String toString() {
        return "MediaRouteProviderDescriptor{ routes=" + Arrays.toString(this.mRoutes.toArray()) + ", isValid=" + isValid() + " }";
    }

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes.dex */
    public final class Builder {
        public List mRoutes;
        public boolean mSupportsDynamicGroupRoute;

        public Builder() {
            this.mSupportsDynamicGroupRoute = false;
        }

        public final void addRoute(MediaRouteDescriptor mediaRouteDescriptor) {
            if (mediaRouteDescriptor != null) {
                List list = this.mRoutes;
                if (list == null) {
                    this.mRoutes = new ArrayList();
                } else if (list.contains(mediaRouteDescriptor)) {
                    throw new IllegalArgumentException("route descriptor already added");
                }
                this.mRoutes.add(mediaRouteDescriptor);
                return;
            }
            throw new IllegalArgumentException("route must not be null");
        }

        public Builder(MediaRouteProviderDescriptor mediaRouteProviderDescriptor) {
            this.mSupportsDynamicGroupRoute = false;
            if (mediaRouteProviderDescriptor != null) {
                this.mRoutes = mediaRouteProviderDescriptor.mRoutes;
                this.mSupportsDynamicGroupRoute = mediaRouteProviderDescriptor.mSupportsDynamicGroupRoute;
                return;
            }
            throw new IllegalArgumentException("descriptor must not be null");
        }
    }
}
