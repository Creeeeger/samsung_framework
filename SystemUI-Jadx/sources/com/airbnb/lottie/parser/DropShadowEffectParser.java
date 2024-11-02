package com.airbnb.lottie.parser;

import com.airbnb.lottie.model.animatable.AnimatableColorValue;
import com.airbnb.lottie.model.animatable.AnimatableFloatValue;
import com.airbnb.lottie.parser.moshi.JsonReader;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public final class DropShadowEffectParser {
    public static final JsonReader.Options DROP_SHADOW_EFFECT_NAMES = JsonReader.Options.of("ef");
    public static final JsonReader.Options INNER_EFFECT_NAMES = JsonReader.Options.of("nm", "v");
    public AnimatableColorValue color;
    public AnimatableFloatValue direction;
    public AnimatableFloatValue distance;
    public AnimatableFloatValue opacity;
    public AnimatableFloatValue radius;
}
