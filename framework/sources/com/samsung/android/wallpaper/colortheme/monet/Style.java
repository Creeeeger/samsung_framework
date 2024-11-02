package com.samsung.android.wallpaper.colortheme.monet;

import android.content.om.WallpaperThemeConstants;
import android.hardware.scontext.SContextConstants;
import android.util.Pair;
import com.android.internal.graphics.cam.Cam;
import java.util.Arrays;
import java.util.List;

/* loaded from: classes5.dex */
public final class Style extends Enum<Style> {
    private static final /* synthetic */ Style[] $VALUES;
    public static final Style CONTENT;
    public static final Style EXPRESSIVE;
    public static final Style FRUIT_SALAD;
    public static final Style RAINBOW;
    public static final Style SPRITZ;
    public static final Style TONAL_SPOT;
    public static final Style VIBRANT;
    private final CoreSpec coreSpec;

    private static /* synthetic */ Style[] $values() {
        return new Style[]{SPRITZ, TONAL_SPOT, VIBRANT, EXPRESSIVE, RAINBOW, FRUIT_SALAD, CONTENT};
    }

    public static Style valueOf(String name) {
        return (Style) Enum.valueOf(Style.class, name);
    }

    public static Style[] values() {
        return (Style[]) $VALUES.clone();
    }

    static {
        double d = 8.0d;
        double d2 = 16.0d;
        double d3 = 2.0d;
        SPRITZ = new Style("SPRITZ", 0, new CoreSpec(new TonalSpec(new Hue() { // from class: com.samsung.android.wallpaper.colortheme.monet.HueSource
            @Override // com.samsung.android.wallpaper.colortheme.monet.Hue
            public double get(Cam sourceColor) {
                return sourceColor.getHue();
            }
        }, new Chroma(12.0d) { // from class: com.samsung.android.wallpaper.colortheme.monet.ChromaConstant
            private final double chroma;

            @Override // com.samsung.android.wallpaper.colortheme.monet.Chroma
            public double get(Cam sourceColor) {
                return this.chroma;
            }

            public final double getChroma() {
                return this.chroma;
            }

            {
                this.chroma = d24;
            }
        }), new TonalSpec(new Hue() { // from class: com.samsung.android.wallpaper.colortheme.monet.HueSource
            @Override // com.samsung.android.wallpaper.colortheme.monet.Hue
            public double get(Cam sourceColor) {
                return sourceColor.getHue();
            }
        }, new Chroma(d) { // from class: com.samsung.android.wallpaper.colortheme.monet.ChromaConstant
            private final double chroma;

            @Override // com.samsung.android.wallpaper.colortheme.monet.Chroma
            public double get(Cam sourceColor) {
                return this.chroma;
            }

            public final double getChroma() {
                return this.chroma;
            }

            {
                this.chroma = d;
            }
        }), new TonalSpec(new Hue() { // from class: com.samsung.android.wallpaper.colortheme.monet.HueSource
            @Override // com.samsung.android.wallpaper.colortheme.monet.Hue
            public double get(Cam sourceColor) {
                return sourceColor.getHue();
            }
        }, new Chroma(d2) { // from class: com.samsung.android.wallpaper.colortheme.monet.ChromaConstant
            private final double chroma;

            @Override // com.samsung.android.wallpaper.colortheme.monet.Chroma
            public double get(Cam sourceColor) {
                return this.chroma;
            }

            public final double getChroma() {
                return this.chroma;
            }

            {
                this.chroma = d2;
            }
        }), new TonalSpec(new Hue() { // from class: com.samsung.android.wallpaper.colortheme.monet.HueSource
            @Override // com.samsung.android.wallpaper.colortheme.monet.Hue
            public double get(Cam sourceColor) {
                return sourceColor.getHue();
            }
        }, new Chroma(d3) { // from class: com.samsung.android.wallpaper.colortheme.monet.ChromaConstant
            private final double chroma;

            @Override // com.samsung.android.wallpaper.colortheme.monet.Chroma
            public double get(Cam sourceColor) {
                return this.chroma;
            }

            public final double getChroma() {
                return this.chroma;
            }

            {
                this.chroma = d3;
            }
        }), new TonalSpec(new Hue() { // from class: com.samsung.android.wallpaper.colortheme.monet.HueSource
            @Override // com.samsung.android.wallpaper.colortheme.monet.Hue
            public double get(Cam sourceColor) {
                return sourceColor.getHue();
            }
        }, new Chroma(d3) { // from class: com.samsung.android.wallpaper.colortheme.monet.ChromaConstant
            private final double chroma;

            @Override // com.samsung.android.wallpaper.colortheme.monet.Chroma
            public double get(Cam sourceColor) {
                return this.chroma;
            }

            public final double getChroma() {
                return this.chroma;
            }

            {
                this.chroma = d3;
            }
        })));
        double d4 = 24.0d;
        TONAL_SPOT = new Style(WallpaperThemeConstants.DYNAMIC_COLOR_THEME_STYLE_DEFAULT, 1, new CoreSpec(new TonalSpec(new Hue() { // from class: com.samsung.android.wallpaper.colortheme.monet.HueSource
            @Override // com.samsung.android.wallpaper.colortheme.monet.Hue
            public double get(Cam sourceColor) {
                return sourceColor.getHue();
            }
        }, new Chroma(36.0d) { // from class: com.samsung.android.wallpaper.colortheme.monet.ChromaConstant
            private final double chroma;

            @Override // com.samsung.android.wallpaper.colortheme.monet.Chroma
            public double get(Cam sourceColor) {
                return this.chroma;
            }

            public final double getChroma() {
                return this.chroma;
            }

            {
                this.chroma = d3;
            }
        }), new TonalSpec(new Hue() { // from class: com.samsung.android.wallpaper.colortheme.monet.HueSource
            @Override // com.samsung.android.wallpaper.colortheme.monet.Hue
            public double get(Cam sourceColor) {
                return sourceColor.getHue();
            }
        }, new Chroma(d2) { // from class: com.samsung.android.wallpaper.colortheme.monet.ChromaConstant
            private final double chroma;

            @Override // com.samsung.android.wallpaper.colortheme.monet.Chroma
            public double get(Cam sourceColor) {
                return this.chroma;
            }

            public final double getChroma() {
                return this.chroma;
            }

            {
                this.chroma = d2;
            }
        }), new TonalSpec(new Hue(60.0d) { // from class: com.samsung.android.wallpaper.colortheme.monet.HueAdd
            private final double amountDegrees;

            @Override // com.samsung.android.wallpaper.colortheme.monet.Hue
            public double get(Cam sourceColor) {
                return ColorScheme.wrapDegreesDouble(sourceColor.getHue() + this.amountDegrees);
            }

            public final double getAmountDegrees() {
                return this.amountDegrees;
            }

            {
                this.amountDegrees = d19;
            }
        }, new Chroma(d4) { // from class: com.samsung.android.wallpaper.colortheme.monet.ChromaConstant
            private final double chroma;

            @Override // com.samsung.android.wallpaper.colortheme.monet.Chroma
            public double get(Cam sourceColor) {
                return this.chroma;
            }

            public final double getChroma() {
                return this.chroma;
            }

            {
                this.chroma = d4;
            }
        }), new TonalSpec(new Hue() { // from class: com.samsung.android.wallpaper.colortheme.monet.HueSource
            @Override // com.samsung.android.wallpaper.colortheme.monet.Hue
            public double get(Cam sourceColor) {
                return sourceColor.getHue();
            }
        }, new Chroma(4.0d) { // from class: com.samsung.android.wallpaper.colortheme.monet.ChromaConstant
            private final double chroma;

            @Override // com.samsung.android.wallpaper.colortheme.monet.Chroma
            public double get(Cam sourceColor) {
                return this.chroma;
            }

            public final double getChroma() {
                return this.chroma;
            }

            {
                this.chroma = d4;
            }
        }), new TonalSpec(new Hue() { // from class: com.samsung.android.wallpaper.colortheme.monet.HueSource
            @Override // com.samsung.android.wallpaper.colortheme.monet.Hue
            public double get(Cam sourceColor) {
                return sourceColor.getHue();
            }
        }, new Chroma(d) { // from class: com.samsung.android.wallpaper.colortheme.monet.ChromaConstant
            private final double chroma;

            @Override // com.samsung.android.wallpaper.colortheme.monet.Chroma
            public double get(Cam sourceColor) {
                return this.chroma;
            }

            public final double getChroma() {
                return this.chroma;
            }

            {
                this.chroma = d;
            }
        })));
        double d5 = 32.0d;
        VIBRANT = new Style("VIBRANT", 2, new CoreSpec(new TonalSpec(new Hue() { // from class: com.samsung.android.wallpaper.colortheme.monet.HueSource
            @Override // com.samsung.android.wallpaper.colortheme.monet.Hue
            public double get(Cam sourceColor) {
                return sourceColor.getHue();
            }
        }, new Chroma() { // from class: com.samsung.android.wallpaper.colortheme.monet.ChromaMaxOut
            @Override // com.samsung.android.wallpaper.colortheme.monet.Chroma
            public double get(Cam sourceColor) {
                return 130.0d;
            }
        }), new TonalSpec(new Hue() { // from class: com.samsung.android.wallpaper.colortheme.monet.HueVibrantSecondary
            private final List<Pair> hueToRotations = Arrays.asList(new Pair(0, 18), new Pair(41, 15), new Pair(61, 10), new Pair(101, 12), new Pair(131, 15), new Pair(181, 18), new Pair(251, 15), new Pair(301, 12), new Pair(360, 12));

            public final List<Pair> getHueToRotations() {
                return this.hueToRotations;
            }

            @Override // com.samsung.android.wallpaper.colortheme.monet.Hue
            public double get(Cam sourceColor) {
                return getHueRotation(sourceColor.getHue(), this.hueToRotations);
            }
        }, new Chroma(d4) { // from class: com.samsung.android.wallpaper.colortheme.monet.ChromaConstant
            private final double chroma;

            @Override // com.samsung.android.wallpaper.colortheme.monet.Chroma
            public double get(Cam sourceColor) {
                return this.chroma;
            }

            public final double getChroma() {
                return this.chroma;
            }

            {
                this.chroma = d4;
            }
        }), new TonalSpec(new Hue() { // from class: com.samsung.android.wallpaper.colortheme.monet.HueVibrantTertiary
            private final List<Pair> hueToRotations = Arrays.asList(new Pair(0, 35), new Pair(41, 30), new Pair(61, 20), new Pair(101, 25), new Pair(131, 30), new Pair(181, 35), new Pair(251, 30), new Pair(301, 25), new Pair(360, 25));

            public final List<Pair> getHueToRotations() {
                return this.hueToRotations;
            }

            @Override // com.samsung.android.wallpaper.colortheme.monet.Hue
            public double get(Cam sourceColor) {
                return getHueRotation(sourceColor.getHue(), this.hueToRotations);
            }
        }, new Chroma(d5) { // from class: com.samsung.android.wallpaper.colortheme.monet.ChromaConstant
            private final double chroma;

            @Override // com.samsung.android.wallpaper.colortheme.monet.Chroma
            public double get(Cam sourceColor) {
                return this.chroma;
            }

            public final double getChroma() {
                return this.chroma;
            }

            {
                this.chroma = d5;
            }
        }), new TonalSpec(new Hue() { // from class: com.samsung.android.wallpaper.colortheme.monet.HueSource
            @Override // com.samsung.android.wallpaper.colortheme.monet.Hue
            public double get(Cam sourceColor) {
                return sourceColor.getHue();
            }
        }, new Chroma(10.0d) { // from class: com.samsung.android.wallpaper.colortheme.monet.ChromaConstant
            private final double chroma;

            @Override // com.samsung.android.wallpaper.colortheme.monet.Chroma
            public double get(Cam sourceColor) {
                return this.chroma;
            }

            public final double getChroma() {
                return this.chroma;
            }

            {
                this.chroma = d5;
            }
        }), new TonalSpec(new Hue() { // from class: com.samsung.android.wallpaper.colortheme.monet.HueSource
            @Override // com.samsung.android.wallpaper.colortheme.monet.Hue
            public double get(Cam sourceColor) {
                return sourceColor.getHue();
            }
        }, new Chroma(12.0d) { // from class: com.samsung.android.wallpaper.colortheme.monet.ChromaConstant
            private final double chroma;

            @Override // com.samsung.android.wallpaper.colortheme.monet.Chroma
            public double get(Cam sourceColor) {
                return this.chroma;
            }

            public final double getChroma() {
                return this.chroma;
            }

            {
                this.chroma = d5;
            }
        })));
        double d6 = 15.0d;
        EXPRESSIVE = new Style("EXPRESSIVE", 3, new CoreSpec(new TonalSpec(new Hue(240.0d) { // from class: com.samsung.android.wallpaper.colortheme.monet.HueAdd
            private final double amountDegrees;

            @Override // com.samsung.android.wallpaper.colortheme.monet.Hue
            public double get(Cam sourceColor) {
                return ColorScheme.wrapDegreesDouble(sourceColor.getHue() + this.amountDegrees);
            }

            public final double getAmountDegrees() {
                return this.amountDegrees;
            }

            {
                this.amountDegrees = d19;
            }
        }, new Chroma(40.0d) { // from class: com.samsung.android.wallpaper.colortheme.monet.ChromaConstant
            private final double chroma;

            @Override // com.samsung.android.wallpaper.colortheme.monet.Chroma
            public double get(Cam sourceColor) {
                return this.chroma;
            }

            public final double getChroma() {
                return this.chroma;
            }

            {
                this.chroma = d5;
            }
        }), new TonalSpec(new Hue() { // from class: com.samsung.android.wallpaper.colortheme.monet.HueExpressiveSecondary
            private final List<Pair> hueToRotations = Arrays.asList(new Pair(0, 45), new Pair(21, 95), new Pair(51, 45), new Pair(121, 20), new Pair(151, 45), new Pair(191, 90), new Pair(271, 45), new Pair(321, 45), new Pair(360, 45));

            public final List<Pair> getHueToRotations() {
                return this.hueToRotations;
            }

            @Override // com.samsung.android.wallpaper.colortheme.monet.Hue
            public double get(Cam sourceColor) {
                return getHueRotation(sourceColor.getHue(), this.hueToRotations);
            }
        }, new Chroma(d4) { // from class: com.samsung.android.wallpaper.colortheme.monet.ChromaConstant
            private final double chroma;

            @Override // com.samsung.android.wallpaper.colortheme.monet.Chroma
            public double get(Cam sourceColor) {
                return this.chroma;
            }

            public final double getChroma() {
                return this.chroma;
            }

            {
                this.chroma = d4;
            }
        }), new TonalSpec(new Hue() { // from class: com.samsung.android.wallpaper.colortheme.monet.HueExpressiveTertiary
            private final List<Pair> hueToRotations = Arrays.asList(new Pair(0, 120), new Pair(21, 120), new Pair(51, 20), new Pair(121, 45), new Pair(151, 20), new Pair(191, 15), new Pair(271, 20), new Pair(321, 120), new Pair(360, 120));

            public final List<Pair> getHueToRotations() {
                return this.hueToRotations;
            }

            @Override // com.samsung.android.wallpaper.colortheme.monet.Hue
            public double get(Cam sourceColor) {
                return getHueRotation(sourceColor.getHue(), this.hueToRotations);
            }
        }, new Chroma(d5) { // from class: com.samsung.android.wallpaper.colortheme.monet.ChromaConstant
            private final double chroma;

            @Override // com.samsung.android.wallpaper.colortheme.monet.Chroma
            public double get(Cam sourceColor) {
                return this.chroma;
            }

            public final double getChroma() {
                return this.chroma;
            }

            {
                this.chroma = d5;
            }
        }), new TonalSpec(new Hue(d6) { // from class: com.samsung.android.wallpaper.colortheme.monet.HueAdd
            private final double amountDegrees;

            @Override // com.samsung.android.wallpaper.colortheme.monet.Hue
            public double get(Cam sourceColor) {
                return ColorScheme.wrapDegreesDouble(sourceColor.getHue() + this.amountDegrees);
            }

            public final double getAmountDegrees() {
                return this.amountDegrees;
            }

            {
                this.amountDegrees = d6;
            }
        }, new Chroma(8.0d) { // from class: com.samsung.android.wallpaper.colortheme.monet.ChromaConstant
            private final double chroma;

            @Override // com.samsung.android.wallpaper.colortheme.monet.Chroma
            public double get(Cam sourceColor) {
                return this.chroma;
            }

            public final double getChroma() {
                return this.chroma;
            }

            {
                this.chroma = d5;
            }
        }), new TonalSpec(new Hue(d6) { // from class: com.samsung.android.wallpaper.colortheme.monet.HueAdd
            private final double amountDegrees;

            @Override // com.samsung.android.wallpaper.colortheme.monet.Hue
            public double get(Cam sourceColor) {
                return ColorScheme.wrapDegreesDouble(sourceColor.getHue() + this.amountDegrees);
            }

            public final double getAmountDegrees() {
                return this.amountDegrees;
            }

            {
                this.amountDegrees = d6;
            }
        }, new Chroma(12.0d) { // from class: com.samsung.android.wallpaper.colortheme.monet.ChromaConstant
            private final double chroma;

            @Override // com.samsung.android.wallpaper.colortheme.monet.Chroma
            public double get(Cam sourceColor) {
                return this.chroma;
            }

            public final double getChroma() {
                return this.chroma;
            }

            {
                this.chroma = d5;
            }
        })));
        double d7 = 48.0d;
        TonalSpec tonalSpec = new TonalSpec(new Hue() { // from class: com.samsung.android.wallpaper.colortheme.monet.HueSource
            @Override // com.samsung.android.wallpaper.colortheme.monet.Hue
            public double get(Cam sourceColor) {
                return sourceColor.getHue();
            }
        }, new Chroma(d7) { // from class: com.samsung.android.wallpaper.colortheme.monet.ChromaConstant
            private final double chroma;

            @Override // com.samsung.android.wallpaper.colortheme.monet.Chroma
            public double get(Cam sourceColor) {
                return this.chroma;
            }

            public final double getChroma() {
                return this.chroma;
            }

            {
                this.chroma = d7;
            }
        });
        TonalSpec tonalSpec2 = new TonalSpec(new Hue() { // from class: com.samsung.android.wallpaper.colortheme.monet.HueSource
            @Override // com.samsung.android.wallpaper.colortheme.monet.Hue
            public double get(Cam sourceColor) {
                return sourceColor.getHue();
            }
        }, new Chroma(16.0d) { // from class: com.samsung.android.wallpaper.colortheme.monet.ChromaConstant
            private final double chroma;

            @Override // com.samsung.android.wallpaper.colortheme.monet.Chroma
            public double get(Cam sourceColor) {
                return this.chroma;
            }

            public final double getChroma() {
                return this.chroma;
            }

            {
                this.chroma = d7;
            }
        });
        TonalSpec tonalSpec3 = new TonalSpec(new Hue(60.0d) { // from class: com.samsung.android.wallpaper.colortheme.monet.HueAdd
            private final double amountDegrees;

            @Override // com.samsung.android.wallpaper.colortheme.monet.Hue
            public double get(Cam sourceColor) {
                return ColorScheme.wrapDegreesDouble(sourceColor.getHue() + this.amountDegrees);
            }

            public final double getAmountDegrees() {
                return this.amountDegrees;
            }

            {
                this.amountDegrees = d6;
            }
        }, new Chroma(d4) { // from class: com.samsung.android.wallpaper.colortheme.monet.ChromaConstant
            private final double chroma;

            @Override // com.samsung.android.wallpaper.colortheme.monet.Chroma
            public double get(Cam sourceColor) {
                return this.chroma;
            }

            public final double getChroma() {
                return this.chroma;
            }

            {
                this.chroma = d4;
            }
        });
        Hue hue = new Hue() { // from class: com.samsung.android.wallpaper.colortheme.monet.HueSource
            @Override // com.samsung.android.wallpaper.colortheme.monet.Hue
            public double get(Cam sourceColor) {
                return sourceColor.getHue();
            }
        };
        double d8 = SContextConstants.ENVIRONMENT_VALUE_UNKNOWN;
        RAINBOW = new Style("RAINBOW", 4, new CoreSpec(tonalSpec, tonalSpec2, tonalSpec3, new TonalSpec(hue, new Chroma(d8) { // from class: com.samsung.android.wallpaper.colortheme.monet.ChromaConstant
            private final double chroma;

            @Override // com.samsung.android.wallpaper.colortheme.monet.Chroma
            public double get(Cam sourceColor) {
                return this.chroma;
            }

            public final double getChroma() {
                return this.chroma;
            }

            {
                this.chroma = d8;
            }
        }), new TonalSpec(new Hue() { // from class: com.samsung.android.wallpaper.colortheme.monet.HueSource
            @Override // com.samsung.android.wallpaper.colortheme.monet.Hue
            public double get(Cam sourceColor) {
                return sourceColor.getHue();
            }
        }, new Chroma(d8) { // from class: com.samsung.android.wallpaper.colortheme.monet.ChromaConstant
            private final double chroma;

            @Override // com.samsung.android.wallpaper.colortheme.monet.Chroma
            public double get(Cam sourceColor) {
                return this.chroma;
            }

            public final double getChroma() {
                return this.chroma;
            }

            {
                this.chroma = d8;
            }
        })));
        double d9 = 50.0d;
        double d10 = 36.0d;
        FRUIT_SALAD = new Style("FRUIT_SALAD", 5, new CoreSpec(new TonalSpec(new Hue(d9) { // from class: com.samsung.android.wallpaper.colortheme.monet.HueSubtract
            private final double amountDegrees;

            @Override // com.samsung.android.wallpaper.colortheme.monet.Hue
            public double get(Cam sourceColor) {
                return ColorScheme.wrapDegreesDouble(sourceColor.getHue() - this.amountDegrees);
            }

            public final double getAmountDegrees() {
                return this.amountDegrees;
            }

            {
                this.amountDegrees = d9;
            }
        }, new Chroma(d7) { // from class: com.samsung.android.wallpaper.colortheme.monet.ChromaConstant
            private final double chroma;

            @Override // com.samsung.android.wallpaper.colortheme.monet.Chroma
            public double get(Cam sourceColor) {
                return this.chroma;
            }

            public final double getChroma() {
                return this.chroma;
            }

            {
                this.chroma = d7;
            }
        }), new TonalSpec(new Hue(d9) { // from class: com.samsung.android.wallpaper.colortheme.monet.HueSubtract
            private final double amountDegrees;

            @Override // com.samsung.android.wallpaper.colortheme.monet.Hue
            public double get(Cam sourceColor) {
                return ColorScheme.wrapDegreesDouble(sourceColor.getHue() - this.amountDegrees);
            }

            public final double getAmountDegrees() {
                return this.amountDegrees;
            }

            {
                this.amountDegrees = d9;
            }
        }, new Chroma(d10) { // from class: com.samsung.android.wallpaper.colortheme.monet.ChromaConstant
            private final double chroma;

            @Override // com.samsung.android.wallpaper.colortheme.monet.Chroma
            public double get(Cam sourceColor) {
                return this.chroma;
            }

            public final double getChroma() {
                return this.chroma;
            }

            {
                this.chroma = d10;
            }
        }), new TonalSpec(new Hue() { // from class: com.samsung.android.wallpaper.colortheme.monet.HueSource
            @Override // com.samsung.android.wallpaper.colortheme.monet.Hue
            public double get(Cam sourceColor) {
                return sourceColor.getHue();
            }
        }, new Chroma(d10) { // from class: com.samsung.android.wallpaper.colortheme.monet.ChromaConstant
            private final double chroma;

            @Override // com.samsung.android.wallpaper.colortheme.monet.Chroma
            public double get(Cam sourceColor) {
                return this.chroma;
            }

            public final double getChroma() {
                return this.chroma;
            }

            {
                this.chroma = d10;
            }
        }), new TonalSpec(new Hue() { // from class: com.samsung.android.wallpaper.colortheme.monet.HueSource
            @Override // com.samsung.android.wallpaper.colortheme.monet.Hue
            public double get(Cam sourceColor) {
                return sourceColor.getHue();
            }
        }, new Chroma(10.0d) { // from class: com.samsung.android.wallpaper.colortheme.monet.ChromaConstant
            private final double chroma;

            @Override // com.samsung.android.wallpaper.colortheme.monet.Chroma
            public double get(Cam sourceColor) {
                return this.chroma;
            }

            public final double getChroma() {
                return this.chroma;
            }

            {
                this.chroma = d10;
            }
        }), new TonalSpec(new Hue() { // from class: com.samsung.android.wallpaper.colortheme.monet.HueSource
            @Override // com.samsung.android.wallpaper.colortheme.monet.Hue
            public double get(Cam sourceColor) {
                return sourceColor.getHue();
            }
        }, new Chroma(16.0d) { // from class: com.samsung.android.wallpaper.colortheme.monet.ChromaConstant
            private final double chroma;

            @Override // com.samsung.android.wallpaper.colortheme.monet.Chroma
            public double get(Cam sourceColor) {
                return this.chroma;
            }

            public final double getChroma() {
                return this.chroma;
            }

            {
                this.chroma = d10;
            }
        })));
        CONTENT = new Style("CONTENT", 6, new CoreSpec(new TonalSpec(new Hue() { // from class: com.samsung.android.wallpaper.colortheme.monet.HueSource
            @Override // com.samsung.android.wallpaper.colortheme.monet.Hue
            public double get(Cam sourceColor) {
                return sourceColor.getHue();
            }
        }, new Chroma() { // from class: com.samsung.android.wallpaper.colortheme.monet.ChromaSource
            @Override // com.samsung.android.wallpaper.colortheme.monet.Chroma
            public double get(Cam sourceColor) {
                return sourceColor.getChroma();
            }
        }), new TonalSpec(new Hue() { // from class: com.samsung.android.wallpaper.colortheme.monet.HueSource
            @Override // com.samsung.android.wallpaper.colortheme.monet.Hue
            public double get(Cam sourceColor) {
                return sourceColor.getHue();
            }
        }, new Chroma(0.33d) { // from class: com.samsung.android.wallpaper.colortheme.monet.ChromaMultiple
            private final double multiple;

            @Override // com.samsung.android.wallpaper.colortheme.monet.Chroma
            public double get(Cam sourceColor) {
                return sourceColor.getChroma() * this.multiple;
            }

            public final double getMultiple() {
                return this.multiple;
            }

            {
                this.multiple = d28;
            }
        }), new TonalSpec(new Hue() { // from class: com.samsung.android.wallpaper.colortheme.monet.HueSource
            @Override // com.samsung.android.wallpaper.colortheme.monet.Hue
            public double get(Cam sourceColor) {
                return sourceColor.getHue();
            }
        }, new Chroma(0.66d) { // from class: com.samsung.android.wallpaper.colortheme.monet.ChromaMultiple
            private final double multiple;

            @Override // com.samsung.android.wallpaper.colortheme.monet.Chroma
            public double get(Cam sourceColor) {
                return sourceColor.getChroma() * this.multiple;
            }

            public final double getMultiple() {
                return this.multiple;
            }

            {
                this.multiple = d28;
            }
        }), new TonalSpec(new Hue() { // from class: com.samsung.android.wallpaper.colortheme.monet.HueSource
            @Override // com.samsung.android.wallpaper.colortheme.monet.Hue
            public double get(Cam sourceColor) {
                return sourceColor.getHue();
            }
        }, new Chroma(0.0833d) { // from class: com.samsung.android.wallpaper.colortheme.monet.ChromaMultiple
            private final double multiple;

            @Override // com.samsung.android.wallpaper.colortheme.monet.Chroma
            public double get(Cam sourceColor) {
                return sourceColor.getChroma() * this.multiple;
            }

            public final double getMultiple() {
                return this.multiple;
            }

            {
                this.multiple = d28;
            }
        }), new TonalSpec(new Hue() { // from class: com.samsung.android.wallpaper.colortheme.monet.HueSource
            @Override // com.samsung.android.wallpaper.colortheme.monet.Hue
            public double get(Cam sourceColor) {
                return sourceColor.getHue();
            }
        }, new Chroma(0.1666d) { // from class: com.samsung.android.wallpaper.colortheme.monet.ChromaMultiple
            private final double multiple;

            @Override // com.samsung.android.wallpaper.colortheme.monet.Chroma
            public double get(Cam sourceColor) {
                return sourceColor.getChroma() * this.multiple;
            }

            public final double getMultiple() {
                return this.multiple;
            }

            {
                this.multiple = d28;
            }
        })));
        $VALUES = $values();
    }

    public final CoreSpec getCoreSpec() {
        return this.coreSpec;
    }

    private Style(String str, int i, CoreSpec coreSpec) {
        super(str, i);
        this.coreSpec = coreSpec;
    }
}
