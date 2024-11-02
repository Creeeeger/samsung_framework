package com.android.systemui.wallpaper.theme.xmlparser;

import android.text.TextUtils;
import com.android.systemui.wallpaper.theme.builder.AnimationBuilder;
import com.android.systemui.wallpaper.theme.view.FrameAnimationView;
import com.android.systemui.wallpaper.view.KeyguardAnimatedWallpaper;
import org.xmlpull.v1.XmlPullParser;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final class FrameParser extends BaseParser {
    @Override // com.android.systemui.wallpaper.theme.xmlparser.BaseParser
    public final void parseAttribute(ParserData parserData) {
        XmlPullParser xmlPullParser;
        if (parserData == null || (xmlPullParser = parserData.mXpp) == null) {
            return;
        }
        if (parserData.mIsStartTag) {
            AnimationBuilder animationBuilder = new AnimationBuilder();
            int attributeCount = xmlPullParser.getAttributeCount();
            for (int i = 0; i < attributeCount; i++) {
                String attributeName = xmlPullParser.getAttributeName(i);
                String attributeValue = xmlPullParser.getAttributeValue(i);
                if (!TextUtils.isEmpty(attributeName) && !TextUtils.isEmpty(attributeValue)) {
                    int parseInt = Integer.parseInt(attributeValue);
                    if (attributeName.equalsIgnoreCase("top")) {
                        parserData.mAnimationBuilder.top = parseInt;
                    } else if (attributeName.equalsIgnoreCase("minInterval")) {
                        parserData.mAnimationBuilder.minInterval = parseInt;
                    }
                }
            }
            parserData.mAnimationBuilder = animationBuilder;
            return;
        }
        AnimationBuilder animationBuilder2 = parserData.mAnimationBuilder;
        if (animationBuilder2 == null) {
            return;
        }
        FrameAnimationView frameAnimationView = new FrameAnimationView(parserData.mContext, parserData.mApkResources, animationBuilder2.backgroundId, animationBuilder2.imageViewSetId, animationBuilder2.frameSize, animationBuilder2.x, animationBuilder2.y, animationBuilder2.scale, animationBuilder2.startIndex);
        frameAnimationView.setTop(animationBuilder2.top);
        frameAnimationView.mMinInterval = animationBuilder2.minInterval;
        KeyguardAnimatedWallpaper keyguardAnimatedWallpaper = parserData.mRootView;
        if (keyguardAnimatedWallpaper != null && parserData.mComplexAnimationBuilder != null) {
            keyguardAnimatedWallpaper.addView(frameAnimationView, -2, -2);
            parserData.mComplexAnimationBuilder.mFestivalSpriteView = frameAnimationView;
        }
    }
}
