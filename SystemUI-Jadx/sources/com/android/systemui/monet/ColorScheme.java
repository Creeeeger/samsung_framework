package com.android.systemui.monet;

import android.app.WallpaperColors;
import androidx.activity.result.ActivityResultRegistry$$ExternalSyntheticOutline0;
import androidx.concurrent.futures.AbstractResolvableFuture$$ExternalSyntheticOutline0;
import androidx.constraintlayout.motion.widget.KeyAttributes$$ExternalSyntheticOutline0;
import com.android.internal.graphics.cam.Cam;
import com.android.internal.graphics.cam.CamUtils;
import com.android.systemui.appops.AppOpItem$$ExternalSyntheticOutline0;
import com.sec.ims.settings.ImsProfile;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import kotlin.collections.CollectionsKt__IterablesKt;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.math.MathKt__MathJVMKt;
import kotlin.text.StringsKt__StringsKt;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public final class ColorScheme {
    public static final Companion Companion = new Companion(null);
    public final TonalPalette accent1;
    public final TonalPalette accent2;
    public final TonalPalette accent3;
    public final boolean darkTheme;
    public final TonalPalette neutral1;
    public final TonalPalette neutral2;
    public final int seed;
    public final Style style;

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes.dex */
    public final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public static final String access$humanReadable(Companion companion, String str, List list) {
            companion.getClass();
            ArrayList arrayList = new ArrayList(CollectionsKt__IterablesKt.collectionSizeOrDefault(list, 10));
            Iterator it = ((ArrayList) list).iterator();
            while (it.hasNext()) {
                int intValue = ((Number) it.next()).intValue();
                ColorScheme.Companion.getClass();
                arrayList.add(stringForColor(intValue));
            }
            return AbstractResolvableFuture$$ExternalSyntheticOutline0.m(str, "\n", CollectionsKt___CollectionsKt.joinToString$default(arrayList, "\n", null, null, new Function1() { // from class: com.android.systemui.monet.ColorScheme$Companion$humanReadable$2
                @Override // kotlin.jvm.functions.Function1
                public final Object invoke(Object obj) {
                    return (String) obj;
                }
            }, 30));
        }

        /* JADX WARN: Code restructure failed: missing block: B:136:0x0380, code lost:
        
            if (r3 == 15) goto L146;
         */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct code enable 'Show inconsistent code' option in preferences
        */
        public static java.util.List getSeedColors(android.app.WallpaperColors r20, boolean r21) {
            /*
                Method dump skipped, instructions count: 924
                To view this dump change 'Code comments level' option to 'DEBUG'
            */
            throw new UnsupportedOperationException("Method not decompiled: com.android.systemui.monet.ColorScheme.Companion.getSeedColors(android.app.WallpaperColors, boolean):java.util.List");
        }

        public static String stringForColor(int i) {
            Cam fromInt = Cam.fromInt(i);
            return KeyAttributes$$ExternalSyntheticOutline0.m(ImsProfile.TIMER_NAME_H, StringsKt__StringsKt.padEnd$default(String.valueOf(MathKt__MathJVMKt.roundToInt(fromInt.getHue())))) + KeyAttributes$$ExternalSyntheticOutline0.m(ImsProfile.TIMER_NAME_C, StringsKt__StringsKt.padEnd$default(String.valueOf(MathKt__MathJVMKt.roundToInt(fromInt.getChroma())))) + KeyAttributes$$ExternalSyntheticOutline0.m("T", StringsKt__StringsKt.padEnd$default(String.valueOf(MathKt__MathJVMKt.roundToInt(CamUtils.lstarFromInt(i))))) + " = #" + StringsKt__StringsKt.padStart(Integer.toHexString(i & 16777215), 6).toUpperCase(Locale.ROOT);
        }

        public static double wrapDegreesDouble(double d) {
            if (d < 0.0d) {
                double d2 = 360;
                return (d % d2) + d2;
            }
            if (d >= 360.0d) {
                return d % 360;
            }
            return d;
        }
    }

    public ColorScheme(WallpaperColors wallpaperColors, boolean z) {
        this(wallpaperColors, z, (Style) null, 4, (DefaultConstructorMarker) null);
    }

    public final String toString() {
        Companion companion = Companion;
        companion.getClass();
        String stringForColor = Companion.stringForColor(this.seed);
        String access$humanReadable = Companion.access$humanReadable(companion, "PRIMARY", this.accent1.allShades);
        String access$humanReadable2 = Companion.access$humanReadable(companion, "SECONDARY", this.accent2.allShades);
        String access$humanReadable3 = Companion.access$humanReadable(companion, "TERTIARY", this.accent3.allShades);
        String access$humanReadable4 = Companion.access$humanReadable(companion, "NEUTRAL", this.neutral1.allShades);
        String access$humanReadable5 = Companion.access$humanReadable(companion, "NEUTRAL VARIANT", this.neutral2.allShades);
        StringBuilder m = ActivityResultRegistry$$ExternalSyntheticOutline0.m("ColorScheme {\n  seed color: ", stringForColor, "\n  style: ");
        m.append(this.style);
        m.append("\n  palettes: \n  ");
        m.append(access$humanReadable);
        m.append("\n  ");
        AppOpItem$$ExternalSyntheticOutline0.m(m, access$humanReadable2, "\n  ", access$humanReadable3, "\n  ");
        m.append(access$humanReadable4);
        m.append("\n  ");
        m.append(access$humanReadable5);
        m.append("\n}");
        return m.toString();
    }

    public ColorScheme(int i, boolean z, Style style) {
        this.seed = i;
        this.darkTheme = z;
        this.style = style;
        Cam fromInt = Cam.fromInt(i);
        if (i == 0 || (style != Style.CONTENT && fromInt.getChroma() < 5.0f)) {
            i = -14979341;
        }
        this.accent1 = new TonalPalette(style.getCoreSpec$frameworks__base__packages__SystemUI__monet__android_common__monet().a1, i);
        this.accent2 = new TonalPalette(style.getCoreSpec$frameworks__base__packages__SystemUI__monet__android_common__monet().a2, i);
        this.accent3 = new TonalPalette(style.getCoreSpec$frameworks__base__packages__SystemUI__monet__android_common__monet().a3, i);
        this.neutral1 = new TonalPalette(style.getCoreSpec$frameworks__base__packages__SystemUI__monet__android_common__monet().n1, i);
        this.neutral2 = new TonalPalette(style.getCoreSpec$frameworks__base__packages__SystemUI__monet__android_common__monet().n2, i);
    }

    public /* synthetic */ ColorScheme(int i, boolean z, Style style, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this(i, z, (i2 & 4) != 0 ? Style.TONAL_SPOT : style);
    }

    public ColorScheme(int i, boolean z) {
        this(i, z, Style.TONAL_SPOT);
    }

    public /* synthetic */ ColorScheme(WallpaperColors wallpaperColors, boolean z, Style style, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this(wallpaperColors, z, (i & 4) != 0 ? Style.TONAL_SPOT : style);
    }

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public ColorScheme(android.app.WallpaperColors r3, boolean r4, com.android.systemui.monet.Style r5) {
        /*
            r2 = this;
            com.android.systemui.monet.Style r0 = com.android.systemui.monet.Style.CONTENT
            if (r5 == r0) goto L6
            r0 = 1
            goto L7
        L6:
            r0 = 0
        L7:
            com.android.systemui.monet.ColorScheme$Companion r1 = com.android.systemui.monet.ColorScheme.Companion
            r1.getClass()
            java.util.List r3 = com.android.systemui.monet.ColorScheme.Companion.getSeedColors(r3, r0)
            java.lang.Object r3 = kotlin.collections.CollectionsKt___CollectionsKt.first(r3)
            java.lang.Number r3 = (java.lang.Number) r3
            int r3 = r3.intValue()
            r2.<init>(r3, r4, r5)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.systemui.monet.ColorScheme.<init>(android.app.WallpaperColors, boolean, com.android.systemui.monet.Style):void");
    }
}
