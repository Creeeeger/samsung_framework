package com.android.settingslib.mobile;

import android.content.res.TypedArray;
import android.util.Log;
import com.android.systemui.R;
import java.util.LinkedHashMap;
import java.util.Map;
import kotlin.Pair;
import kotlin.collections.MapsKt__MapsJVMKt;
import kotlin.collections.MapsKt__MapsKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.ranges.IntProgression;
import kotlin.ranges.IntRange;
import kotlin.ranges.RangesKt___RangesKt;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public final class MobileIconCarrierIdOverridesImpl implements MobileIconCarrierIdOverrides {
    public static final Companion Companion = new Companion(null);
    public static final Map MAPPING = MapsKt__MapsJVMKt.mapOf(new Pair(2032, Integer.valueOf(R.array.carrierId_2032_iconOverrides)));

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes.dex */
    public final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final Map<String, Integer> parseNetworkIconOverrideTypedArray(TypedArray typedArray) {
            int i = 2;
            if (typedArray.length() % 2 != 0) {
                Log.w("MobileIconOverrides", "override must contain an even number of (key, value) entries. skipping");
                return MapsKt__MapsKt.emptyMap();
            }
            LinkedHashMap linkedHashMap = new LinkedHashMap();
            IntRange until = RangesKt___RangesKt.until(0, typedArray.length());
            IntProgression.Companion companion = IntProgression.Companion;
            int i2 = until.first;
            int i3 = until.last;
            if (until.step <= 0) {
                i = -2;
            }
            companion.getClass();
            IntProgression intProgression = new IntProgression(i2, i3, i);
            int i4 = intProgression.first;
            int i5 = intProgression.last;
            int i6 = intProgression.step;
            if ((i6 > 0 && i4 <= i5) || (i6 < 0 && i5 <= i4)) {
                while (true) {
                    String string = typedArray.getString(i4);
                    int resourceId = typedArray.getResourceId(i4 + 1, 0);
                    if (string != null && resourceId != 0) {
                        linkedHashMap.put(string, Integer.valueOf(resourceId));
                    } else {
                        Log.w("MobileIconOverrides", "Invalid override found. Skipping");
                    }
                    if (i4 == i5) {
                        break;
                    }
                    i4 += i6;
                }
            }
            return linkedHashMap;
        }
    }

    public static final Map<String, Integer> parseNetworkIconOverrideTypedArray(TypedArray typedArray) {
        return Companion.parseNetworkIconOverrideTypedArray(typedArray);
    }
}
