package com.android.systemui.monet;

import com.android.internal.graphics.ColorUtils;
import com.android.internal.graphics.cam.Cam;
import com.android.internal.graphics.cam.CamUtils;
import com.samsung.android.knox.license.KnoxEnterpriseLicenseManager;
import com.sec.ims.volte2.data.VolteConstants;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.collections.MapsKt__MapsKt;
import kotlin.jvm.internal.DefaultConstructorMarker;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public final class TonalPalette {
    public static final List SHADE_KEYS;
    public final List allShades;
    public final Map allShadesMapped;
    public final Cam seedCam;
    public final TonalSpec spec;

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes.dex */
    public final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }
    }

    static {
        new Companion(null);
        SHADE_KEYS = CollectionsKt__CollectionsKt.listOf(10, 50, 100, 200, 300, 400, 500, Integer.valueOf(VolteConstants.ErrorCode.BUSY_EVERYWHERE), Integer.valueOf(KnoxEnterpriseLicenseManager.ERROR_LICENSE_DEACTIVATED), 800, 900, 1000);
    }

    public TonalPalette(TonalSpec tonalSpec, int i) {
        float f;
        this.spec = tonalSpec;
        Cam fromInt = Cam.fromInt(i);
        this.seedCam = fromInt;
        double d = tonalSpec.hue.get(fromInt);
        double d2 = tonalSpec.chroma.get(fromInt);
        float f2 = (float) d;
        float f3 = (float) d2;
        int[] iArr = new int[12];
        iArr[0] = ColorUtils.CAMToColor(f2, Math.min(40.0f, f3), 99.0f);
        iArr[1] = ColorUtils.CAMToColor(f2, Math.min(40.0f, f3), 95.0f);
        for (int i2 = 2; i2 < 12; i2++) {
            if (i2 == 6) {
                f = 49.6f;
            } else {
                f = 100 - ((i2 - 1) * 10);
            }
            iArr[i2] = ColorUtils.CAMToColor(f2, f3, f);
        }
        ArrayList arrayList = new ArrayList(12);
        for (int i3 = 0; i3 < 12; i3++) {
            arrayList.add(Integer.valueOf(iArr[i3]));
        }
        this.allShades = arrayList;
        this.allShadesMapped = MapsKt__MapsKt.toMap(CollectionsKt___CollectionsKt.zip(SHADE_KEYS, arrayList));
        ColorUtils.CAMToColor((float) this.spec.hue.get(this.seedCam), (float) this.spec.chroma.get(this.seedCam), CamUtils.lstarFromInt(i));
    }

    public final int getS100() {
        return ((Number) ((ArrayList) this.allShades).get(2)).intValue();
    }

    public final int getS500() {
        return ((Number) ((ArrayList) this.allShades).get(6)).intValue();
    }

    public final int getS700() {
        return ((Number) ((ArrayList) this.allShades).get(8)).intValue();
    }

    public final int getS800() {
        return ((Number) ((ArrayList) this.allShades).get(9)).intValue();
    }
}
