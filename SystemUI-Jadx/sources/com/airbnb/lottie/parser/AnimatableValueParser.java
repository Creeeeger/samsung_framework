package com.airbnb.lottie.parser;

import com.airbnb.lottie.LottieComposition;
import com.airbnb.lottie.model.animatable.AnimatableColorValue;
import com.airbnb.lottie.model.animatable.AnimatableFloatValue;
import com.airbnb.lottie.model.animatable.AnimatableIntegerValue;
import com.airbnb.lottie.model.animatable.AnimatablePointValue;
import com.airbnb.lottie.parser.moshi.JsonReader;
import com.airbnb.lottie.parser.moshi.JsonUtf8Reader;
import com.airbnb.lottie.utils.Utils;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public final class AnimatableValueParser {
    private AnimatableValueParser() {
    }

    public static AnimatableColorValue parseColor(JsonUtf8Reader jsonUtf8Reader, LottieComposition lottieComposition) {
        return new AnimatableColorValue(KeyframesParser.parse(jsonUtf8Reader, lottieComposition, 1.0f, ColorParser.INSTANCE, false));
    }

    public static AnimatableFloatValue parseFloat(JsonReader jsonReader, LottieComposition lottieComposition, boolean z) {
        float f;
        if (z) {
            f = Utils.dpScale();
        } else {
            f = 1.0f;
        }
        return new AnimatableFloatValue(KeyframesParser.parse(jsonReader, lottieComposition, f, FloatParser.INSTANCE, false));
    }

    public static AnimatableIntegerValue parseInteger(JsonUtf8Reader jsonUtf8Reader, LottieComposition lottieComposition) {
        return new AnimatableIntegerValue(KeyframesParser.parse(jsonUtf8Reader, lottieComposition, 1.0f, IntegerParser.INSTANCE, false));
    }

    public static AnimatablePointValue parsePoint(JsonUtf8Reader jsonUtf8Reader, LottieComposition lottieComposition) {
        return new AnimatablePointValue(KeyframesParser.parse(jsonUtf8Reader, lottieComposition, Utils.dpScale(), PointFParser.INSTANCE, true));
    }
}
