package com.android.systemui.wallpaper.theme.xmlparser;

import android.text.TextUtils;
import java.util.HashMap;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final class ThemeParser {
    public final ParserData mParserData;
    public HashMap mParserMap;

    public ThemeParser(ParserData parserData) {
        this.mParserData = parserData;
    }

    public static String getAnimationTagName(String str) {
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        if (!str.equalsIgnoreCase("rotate") && !str.equalsIgnoreCase("parabola") && !str.equalsIgnoreCase("sinX") && !str.equalsIgnoreCase("sinY") && !str.equalsIgnoreCase("round") && !str.equalsIgnoreCase("ellipse") && !str.equalsIgnoreCase("alpha") && !str.equalsIgnoreCase("translateX") && !str.equalsIgnoreCase("translateY") && !str.equalsIgnoreCase("scaleX") && !str.equalsIgnoreCase("scaleY") && !str.equalsIgnoreCase("ImageResource")) {
            return null;
        }
        if (str.equals("rotate")) {
            return "rotation";
        }
        if (str.equals("translateX")) {
            return "x";
        }
        if (str.equals("translateY")) {
            return "y";
        }
        return str;
    }
}
