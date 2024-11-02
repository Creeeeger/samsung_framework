package com.android.systemui.wallpaper.theme.xmlparser;

import android.content.Context;
import android.text.TextUtils;
import com.android.systemui.wallpaper.theme.builder.ComplexAnimationBuilder;
import com.android.systemui.wallpaper.theme.view.FlowerView;
import com.android.systemui.wallpaper.theme.view.LeafView;
import com.android.systemui.wallpaper.theme.view.RainView;
import com.android.systemui.wallpaper.theme.view.SnowView;
import com.android.systemui.wallpaper.view.KeyguardAnimatedWallpaper;
import org.xmlpull.v1.XmlPullParser;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final class SceneParser extends BaseParser {
    @Override // com.android.systemui.wallpaper.theme.xmlparser.BaseParser
    public final void parseAttribute(ParserData parserData) {
        XmlPullParser xmlPullParser;
        ComplexAnimationBuilder complexAnimationBuilder;
        KeyguardAnimatedWallpaper keyguardAnimatedWallpaper;
        if (parserData != null && (xmlPullParser = parserData.mXpp) != null && (complexAnimationBuilder = parserData.mComplexAnimationBuilder) != null && (keyguardAnimatedWallpaper = parserData.mRootView) != null) {
            int attributeCount = xmlPullParser.getAttributeCount();
            for (int i = 0; i < attributeCount; i++) {
                String attributeName = xmlPullParser.getAttributeName(i);
                String attributeValue = xmlPullParser.getAttributeValue(i);
                if (!TextUtils.isEmpty(attributeName) && !TextUtils.isEmpty(attributeValue) && attributeName.equalsIgnoreCase("type")) {
                    boolean equals = attributeValue.equals("snow");
                    Context context = parserData.mContext;
                    if (equals) {
                        SnowView snowView = new SnowView(context);
                        complexAnimationBuilder.mLockscreenCallback = snowView;
                        keyguardAnimatedWallpaper.addView(snowView, -1, -1);
                    } else if (attributeValue.equals("rain")) {
                        RainView rainView = new RainView(context);
                        complexAnimationBuilder.mLockscreenCallback = rainView;
                        keyguardAnimatedWallpaper.addView(rainView, -1, -1);
                    } else if (attributeValue.equals("leaf")) {
                        LeafView leafView = new LeafView(context);
                        complexAnimationBuilder.mLockscreenCallback = leafView;
                        keyguardAnimatedWallpaper.addView(leafView, -1, -1);
                    } else if (attributeValue.equals("flower")) {
                        FlowerView flowerView = new FlowerView(context);
                        complexAnimationBuilder.mLockscreenCallback = flowerView;
                        keyguardAnimatedWallpaper.addView(flowerView, -1, -1);
                    }
                }
            }
        }
    }
}
