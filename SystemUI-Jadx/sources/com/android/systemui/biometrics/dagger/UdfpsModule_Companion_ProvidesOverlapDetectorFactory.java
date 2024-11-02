package com.android.systemui.biometrics.dagger;

import android.content.res.Resources;
import com.android.systemui.biometrics.EllipseOverlapDetectorParams;
import com.android.systemui.biometrics.udfps.BoundingBoxOverlapDetector;
import com.android.systemui.biometrics.udfps.EllipseOverlapDetector;
import com.android.systemui.biometrics.udfps.OverlapDetector;
import com.android.systemui.flags.FeatureFlags;
import com.android.systemui.flags.FeatureFlagsRelease;
import com.android.systemui.flags.Flags;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import javax.inject.Provider;
import kotlin.collections.CollectionsKt__IterablesKt;
import kotlin.text.StringsKt__StringsKt;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public final class UdfpsModule_Companion_ProvidesOverlapDetectorFactory implements Provider {
    public final Provider featureFlagsProvider;

    public UdfpsModule_Companion_ProvidesOverlapDetectorFactory(Provider provider) {
        this.featureFlagsProvider = provider;
    }

    public static OverlapDetector providesOverlapDetector(FeatureFlags featureFlags) {
        UdfpsModule.Companion.getClass();
        if (((FeatureFlagsRelease) featureFlags).isEnabled(Flags.UDFPS_ELLIPSE_DETECTION)) {
            boolean z = false;
            List split$default = StringsKt__StringsKt.split$default(Resources.getSystem().getStringArray(17236326)[Resources.getSystem().getInteger(17695002)], new String[]{","}, 0, 6);
            ArrayList arrayList = new ArrayList(CollectionsKt__IterablesKt.collectionSizeOrDefault(split$default, 10));
            Iterator it = split$default.iterator();
            while (it.hasNext()) {
                arrayList.add(Float.valueOf(Float.parseFloat((String) it.next())));
            }
            if (((Number) arrayList.get(0)).floatValue() == 1.0f) {
                z = true;
            }
            if (z) {
                return new EllipseOverlapDetector(new EllipseOverlapDetectorParams(((Number) arrayList.get(3)).floatValue(), ((Number) arrayList.get(2)).floatValue(), (int) ((Number) arrayList.get(4)).floatValue()));
            }
            return new BoundingBoxOverlapDetector();
        }
        return new BoundingBoxOverlapDetector();
    }

    @Override // javax.inject.Provider
    public final Object get() {
        return providesOverlapDetector((FeatureFlags) this.featureFlagsProvider.get());
    }
}
