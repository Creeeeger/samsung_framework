package com.android.systemui.animation;

import android.graphics.fonts.Font;
import android.graphics.fonts.FontVariationAxis;
import android.util.Log;
import android.util.LruCache;
import android.util.MathUtils;
import androidx.picker.model.viewdata.AppInfoViewData$$ExternalSyntheticOutline0;
import androidx.recyclerview.widget.GridLayoutManager$$ExternalSyntheticOutline0;
import com.android.systemui.animation.FontInterpolator;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Comparator;
import java.util.List;
import kotlin.collections.CollectionsKt__MutableCollectionsJVMKt;
import kotlin.comparisons.ComparisonsKt__ComparisonsKt;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.ranges.RangesKt___RangesKt;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public final class FontInterpolator {
    public static final Companion Companion = new Companion(null);
    public static final boolean DEBUG = Log.isLoggable("FontInterpolator", 3);
    public static final FontVariationAxis[] EMPTY_AXES = new FontVariationAxis[0];
    public final LruCache interpCache;
    public final InterpKey tmpInterpKey;
    public final VarFontKey tmpVarFontKey;
    public final LruCache verFontCache;

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes.dex */
    public final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public static boolean canInterpolate(Font font, Font font2) {
            if (font.getTtcIndex() == font2.getTtcIndex() && font.getSourceIdentifier() == font2.getSourceIdentifier()) {
                return true;
            }
            return false;
        }
    }

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes.dex */
    public final class InterpKey {
        public Font l;
        public float progress;
        public Font r;

        public InterpKey(Font font, Font font2, float f) {
            this.l = font;
            this.r = font2;
            this.progress = f;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof InterpKey)) {
                return false;
            }
            InterpKey interpKey = (InterpKey) obj;
            if (Intrinsics.areEqual(this.l, interpKey.l) && Intrinsics.areEqual(this.r, interpKey.r) && Float.compare(this.progress, interpKey.progress) == 0) {
                return true;
            }
            return false;
        }

        public final int hashCode() {
            int hashCode;
            Font font = this.l;
            int i = 0;
            if (font == null) {
                hashCode = 0;
            } else {
                hashCode = font.hashCode();
            }
            int i2 = hashCode * 31;
            Font font2 = this.r;
            if (font2 != null) {
                i = font2.hashCode();
            }
            return Float.hashCode(this.progress) + ((i2 + i) * 31);
        }

        public final String toString() {
            return "InterpKey(l=" + this.l + ", r=" + this.r + ", progress=" + this.progress + ")";
        }
    }

    public FontInterpolator() {
        this(null, 1, 0 == true ? 1 : 0);
    }

    public final Font lerp(Font font, Font font2, final float f) {
        boolean z;
        boolean z2;
        boolean z3;
        String str;
        String str2;
        int compareTo;
        int i;
        FontVariationAxis fontVariationAxis;
        boolean z4;
        final FontInterpolator fontInterpolator = this;
        Font font3 = font;
        if (f == 0.0f) {
            z = true;
        } else {
            z = false;
        }
        if (z) {
            return font3;
        }
        if (f == 1.0f) {
            z2 = true;
        } else {
            z2 = false;
        }
        if (z2) {
            return font2;
        }
        FontVariationAxis[] axes = font.getAxes();
        FontVariationAxis[] fontVariationAxisArr = EMPTY_AXES;
        if (axes == null) {
            axes = fontVariationAxisArr;
        }
        FontVariationAxis[] axes2 = font2.getAxes();
        if (axes2 != null) {
            fontVariationAxisArr = axes2;
        }
        if (axes.length == 0) {
            z3 = true;
        } else {
            z3 = false;
        }
        if (z3) {
            if (fontVariationAxisArr.length == 0) {
                z4 = true;
            } else {
                z4 = false;
            }
            if (z4) {
                return font3;
            }
        }
        InterpKey interpKey = fontInterpolator.tmpInterpKey;
        interpKey.l = font3;
        interpKey.r = font2;
        interpKey.progress = f;
        LruCache lruCache = fontInterpolator.interpCache;
        Font font4 = (Font) lruCache.get(interpKey);
        boolean z5 = DEBUG;
        if (font4 != null) {
            if (z5) {
                Log.d("FontInterpolator", "[" + f + "] Interp. cache hit for " + interpKey);
            }
            return font4;
        }
        Function3 function3 = new Function3() { // from class: com.android.systemui.animation.FontInterpolator$lerp$newAxes$1
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(3);
            }

            @Override // kotlin.jvm.functions.Function3
            public final Object invoke(Object obj, Object obj2, Object obj3) {
                boolean z6;
                float lerp;
                float f2;
                float f3;
                String str3 = (String) obj;
                Float f4 = (Float) obj2;
                Float f5 = (Float) obj3;
                if (Intrinsics.areEqual(str3, "wght")) {
                    float f6 = 400.0f;
                    if (f4 != null) {
                        f3 = f4.floatValue();
                    } else {
                        f3 = 400.0f;
                    }
                    if (f5 != null) {
                        f6 = f5.floatValue();
                    }
                    lerp = MathUtils.lerp(f3, f6, f);
                } else if (Intrinsics.areEqual(str3, "ital")) {
                    FontInterpolator fontInterpolator2 = fontInterpolator;
                    float f7 = 0.0f;
                    if (f4 != null) {
                        f2 = f4.floatValue();
                    } else {
                        f2 = 0.0f;
                    }
                    if (f5 != null) {
                        f7 = f5.floatValue();
                    }
                    float lerp2 = MathUtils.lerp(f2, f7, f);
                    FontInterpolator.Companion companion = FontInterpolator.Companion;
                    fontInterpolator2.getClass();
                    lerp = ((int) (RangesKt___RangesKt.coerceIn(lerp2) / 0.1f)) * 0.1f;
                } else {
                    if (f4 != null && f5 != null) {
                        z6 = true;
                    } else {
                        z6 = false;
                    }
                    if (z6) {
                        lerp = MathUtils.lerp(f4.floatValue(), f5.floatValue(), f);
                    } else {
                        throw new IllegalArgumentException("Unable to interpolate due to unknown default axes value : ".concat(str3).toString());
                    }
                }
                return Float.valueOf(lerp);
            }
        };
        if (axes.length > 1) {
            Comparator comparator = new Comparator() { // from class: com.android.systemui.animation.FontInterpolator$lerp$$inlined$sortBy$1
                @Override // java.util.Comparator
                public final int compare(Object obj, Object obj2) {
                    return ComparisonsKt__ComparisonsKt.compareValues(((FontVariationAxis) obj).getTag(), ((FontVariationAxis) obj2).getTag());
                }
            };
            if (axes.length > 1) {
                Arrays.sort(axes, comparator);
            }
        }
        if (fontVariationAxisArr.length > 1) {
            Comparator comparator2 = new Comparator() { // from class: com.android.systemui.animation.FontInterpolator$lerp$$inlined$sortBy$2
                @Override // java.util.Comparator
                public final int compare(Object obj, Object obj2) {
                    return ComparisonsKt__ComparisonsKt.compareValues(((FontVariationAxis) obj).getTag(), ((FontVariationAxis) obj2).getTag());
                }
            };
            if (fontVariationAxisArr.length > 1) {
                Arrays.sort(fontVariationAxisArr, comparator2);
            }
        }
        ArrayList arrayList = new ArrayList();
        int i2 = 0;
        int i3 = 0;
        while (true) {
            if (i3 >= axes.length && i2 >= fontVariationAxisArr.length) {
                break;
            }
            if (i3 < axes.length) {
                str = axes[i3].getTag();
            } else {
                str = null;
            }
            if (i2 < fontVariationAxisArr.length) {
                str2 = fontVariationAxisArr[i2].getTag();
            } else {
                str2 = null;
            }
            if (str == null) {
                compareTo = 1;
            } else if (str2 == null) {
                compareTo = -1;
            } else {
                compareTo = str.compareTo(str2);
            }
            if (compareTo == 0) {
                Intrinsics.checkNotNull(str);
                i = i3 + 1;
                fontVariationAxis = new FontVariationAxis(str, ((Number) function3.invoke(str, Float.valueOf(axes[i3].getStyleValue()), Float.valueOf(fontVariationAxisArr[i2].getStyleValue()))).floatValue());
                i2++;
            } else if (compareTo < 0) {
                Intrinsics.checkNotNull(str);
                int i4 = i3 + 1;
                fontVariationAxis = new FontVariationAxis(str, ((Number) function3.invoke(str, Float.valueOf(axes[i3].getStyleValue()), null)).floatValue());
                i = i4;
            } else {
                Intrinsics.checkNotNull(str2);
                int i5 = i2 + 1;
                FontVariationAxis fontVariationAxis2 = new FontVariationAxis(str2, ((Number) function3.invoke(str2, null, Float.valueOf(fontVariationAxisArr[i2].getStyleValue()))).floatValue());
                i = i3;
                fontVariationAxis = fontVariationAxis2;
                i2 = i5;
            }
            arrayList.add(fontVariationAxis);
            font3 = font;
            i3 = i;
            fontInterpolator = this;
        }
        VarFontKey varFontKey = fontInterpolator.tmpVarFontKey;
        varFontKey.getClass();
        varFontKey.sourceId = font.getSourceIdentifier();
        varFontKey.index = font.getTtcIndex();
        List list = varFontKey.sortedAxes;
        list.clear();
        list.addAll(arrayList);
        if (list.size() > 1) {
            CollectionsKt__MutableCollectionsJVMKt.sortWith(list, new Comparator() { // from class: com.android.systemui.animation.FontInterpolator$VarFontKey$set$$inlined$sortBy$1
                @Override // java.util.Comparator
                public final int compare(Object obj, Object obj2) {
                    return ComparisonsKt__ComparisonsKt.compareValues(((FontVariationAxis) obj).getTag(), ((FontVariationAxis) obj2).getTag());
                }
            });
        }
        LruCache lruCache2 = fontInterpolator.verFontCache;
        Font font5 = (Font) lruCache2.get(varFontKey);
        if (font5 != null) {
            lruCache.put(new InterpKey(font3, font2, f), font5);
            if (z5) {
                Log.d("FontInterpolator", "[" + f + "] Axis cache hit for " + varFontKey);
            }
            return font5;
        }
        Font build = new Font.Builder(font3).setFontVariationSettings((FontVariationAxis[]) arrayList.toArray(new FontVariationAxis[0])).build();
        lruCache.put(new InterpKey(font3, font2, f), build);
        lruCache2.put(new VarFontKey(font3, arrayList), build);
        Log.e("FontInterpolator", "[" + f + "] Cache MISS for " + interpKey + " / " + varFontKey);
        return build;
    }

    public FontInterpolator(Integer num) {
        int intValue = num != null ? num.intValue() * 2 : 10;
        this.interpCache = new LruCache(intValue);
        this.verFontCache = new LruCache(intValue);
        this.tmpInterpKey = new InterpKey(null, null, 0.0f);
        this.tmpVarFontKey = new VarFontKey(0, 0, new ArrayList());
    }

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes.dex */
    public final class VarFontKey {
        public int index;
        public final List sortedAxes;
        public int sourceId;

        public VarFontKey(int i, int i2, List<FontVariationAxis> list) {
            this.sourceId = i;
            this.index = i2;
            this.sortedAxes = list;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof VarFontKey)) {
                return false;
            }
            VarFontKey varFontKey = (VarFontKey) obj;
            if (this.sourceId == varFontKey.sourceId && this.index == varFontKey.index && Intrinsics.areEqual(this.sortedAxes, varFontKey.sortedAxes)) {
                return true;
            }
            return false;
        }

        public final int hashCode() {
            return this.sortedAxes.hashCode() + AppInfoViewData$$ExternalSyntheticOutline0.m(this.index, Integer.hashCode(this.sourceId) * 31, 31);
        }

        public final String toString() {
            StringBuilder m = GridLayoutManager$$ExternalSyntheticOutline0.m("VarFontKey(sourceId=", this.sourceId, ", index=", this.index, ", sortedAxes=");
            m.append(this.sortedAxes);
            m.append(")");
            return m.toString();
        }

        /* JADX WARN: Illegal instructions before constructor call */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct code enable 'Show inconsistent code' option in preferences
        */
        public VarFontKey(android.graphics.fonts.Font r4, java.util.List<android.graphics.fonts.FontVariationAxis> r5) {
            /*
                r3 = this;
                int r0 = r4.getSourceIdentifier()
                int r4 = r4.getTtcIndex()
                java.util.ArrayList r1 = new java.util.ArrayList
                r1.<init>(r5)
                int r5 = r1.size()
                r2 = 1
                if (r5 <= r2) goto L1c
                com.android.systemui.animation.FontInterpolator$VarFontKey$_init_$lambda$1$$inlined$sortBy$1 r5 = new com.android.systemui.animation.FontInterpolator$VarFontKey$_init_$lambda$1$$inlined$sortBy$1
                r5.<init>()
                kotlin.collections.CollectionsKt__MutableCollectionsJVMKt.sortWith(r1, r5)
            L1c:
                kotlin.Unit r5 = kotlin.Unit.INSTANCE
                r3.<init>(r0, r4, r1)
                return
            */
            throw new UnsupportedOperationException("Method not decompiled: com.android.systemui.animation.FontInterpolator.VarFontKey.<init>(android.graphics.fonts.Font, java.util.List):void");
        }
    }

    public /* synthetic */ FontInterpolator(Integer num, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this((i & 1) != 0 ? null : num);
    }
}
