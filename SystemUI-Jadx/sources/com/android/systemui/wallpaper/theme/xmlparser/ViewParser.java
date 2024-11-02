package com.android.systemui.wallpaper.theme.xmlparser;

import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.text.TextUtils;
import android.util.Log;
import android.widget.ImageView;
import androidx.constraintlayout.motion.widget.MotionLayout$$ExternalSyntheticOutline0;
import androidx.picker3.widget.SeslColorSpectrumView$$ExternalSyntheticOutline0;
import com.android.keyguard.KeyguardCarrierPasswordViewController$$ExternalSyntheticOutline0;
import com.android.keyguard.logging.KeyguardUpdateMonitorLogger$logAssistantVisible$2$$ExternalSyntheticOutline0;
import com.android.systemui.wallpaper.WallpaperResultCallback;
import com.android.systemui.wallpaper.WallpaperUtils;
import com.android.systemui.wallpaper.theme.view.FrameImageView;
import com.android.systemui.wallpaper.view.KeyguardAnimatedWallpaper;
import org.xmlpull.v1.XmlPullParser;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final class ViewParser extends BaseParser {
    @Override // com.android.systemui.wallpaper.theme.xmlparser.BaseParser
    public final void parseAttribute(ParserData parserData) {
        XmlPullParser xmlPullParser;
        KeyguardAnimatedWallpaper keyguardAnimatedWallpaper;
        boolean z;
        XmlPullParser xmlPullParser2;
        int i;
        float devicePixelY;
        float devicePixelX;
        WallpaperResultCallback wallpaperResultCallback;
        Bitmap createBitmap;
        float f;
        if (parserData == null || (xmlPullParser = parserData.mXpp) == null) {
            return;
        }
        if (parserData.mIsStartTag) {
            FrameImageView frameImageView = new FrameImageView(parserData.mContext);
            parserData.mFrameImageView = frameImageView;
            int attributeCount = xmlPullParser.getAttributeCount();
            boolean z2 = parserData.mIsScaled;
            String lowerCase = xmlPullParser.getAttributeValue(3).toLowerCase();
            String lowerCase2 = xmlPullParser.getAttributeValue(4).toLowerCase();
            StringBuilder m = KeyguardUpdateMonitorLogger$logAssistantVisible$2$$ExternalSyntheticOutline0.m("parseAttribute: [", lowerCase, " , ", lowerCase2, "] , [");
            m.append(parserData.mPackageWidth);
            m.append(" , ");
            m.append(parserData.mPackageHeight);
            m.append("]");
            Log.d("ViewParser", m.toString());
            if (Math.abs(Float.parseFloat(lowerCase) - parserData.mPackageWidth) < 1.0f && Math.abs(Float.parseFloat(lowerCase2) - parserData.mPackageHeight) < 1.0f) {
                z = true;
            } else {
                z = false;
            }
            KeyguardCarrierPasswordViewController$$ExternalSyntheticOutline0.m("parseAttribute: isWallpaperView : ", z, "ViewParser");
            parserData.mIsWallpaper = z;
            int i2 = 0;
            while (i2 < attributeCount) {
                String attributeName = xmlPullParser.getAttributeName(i2);
                String lowerCase3 = xmlPullParser.getAttributeValue(i2).toLowerCase();
                if (!TextUtils.isEmpty(attributeName) && !TextUtils.isEmpty(lowerCase3)) {
                    Log.d("ViewParser", MotionLayout$$ExternalSyntheticOutline0.m("", attributeName, "=\"", lowerCase3, "\" "));
                    if (attributeName.equalsIgnoreCase("img")) {
                        String str = parserData.mPkgName;
                        Resources resources = parserData.mApkResources;
                        Drawable drawable = resources.getDrawable(resources.getIdentifier(lowerCase3, "drawable", str));
                        if (drawable != null) {
                            int intrinsicWidth = drawable.getIntrinsicWidth();
                            int intrinsicHeight = drawable.getIntrinsicHeight();
                            if (!z2 && z) {
                                float f2 = parserData.mDeviceWidth;
                                float f3 = parserData.mDeviceDensity;
                                float f4 = f2 * f3;
                                float f5 = parserData.mDeviceHeight * f3;
                                float f6 = intrinsicWidth;
                                float f7 = intrinsicHeight;
                                if (f6 * f5 > f4 * f7) {
                                    f = f5 / f7;
                                } else {
                                    f = f4 / f6;
                                }
                                float round = Math.round((f4 - (f6 * f)) * 0.5f);
                                float round2 = Math.round((f5 - (f7 * f)) * 0.5f);
                                parserData.mScaledRatio = f;
                                parserData.mScaledDx = round;
                                parserData.mScaledDy = round2;
                                xmlPullParser2 = xmlPullParser;
                                parserData.mIsScaled = true;
                                i = attributeCount;
                                Log.d("ViewParser", "drawableWidth = " + intrinsicWidth);
                                Log.d("ViewParser", "drawableHeight = " + intrinsicHeight);
                                Log.d("ViewParser", "viewWidth = " + f4);
                                Log.d("ViewParser", "viewHeight = " + f5);
                                Log.d("ViewParser", "scaledRatio = " + f);
                                Log.d("ViewParser", "scaledDx = " + round);
                                SeslColorSpectrumView$$ExternalSyntheticOutline0.m(new StringBuilder("scaledDy = "), round2, "ViewParser");
                            } else {
                                xmlPullParser2 = xmlPullParser;
                                i = attributeCount;
                            }
                            if (z) {
                                frameImageView.setScaleType(ImageView.ScaleType.CENTER_CROP);
                                if (!parserData.mIsPreview && !z2 && (wallpaperResultCallback = parserData.mWallpaperResultCallback) != null) {
                                    boolean z3 = WallpaperUtils.mIsEmergencyMode;
                                    if (drawable instanceof BitmapDrawable) {
                                        createBitmap = ((BitmapDrawable) drawable).getBitmap();
                                    } else {
                                        createBitmap = Bitmap.createBitmap(drawable.getIntrinsicWidth(), drawable.getIntrinsicHeight(), Bitmap.Config.ARGB_8888);
                                        Canvas canvas = new Canvas(createBitmap);
                                        drawable.setBounds(0, 0, canvas.getWidth(), canvas.getHeight());
                                        drawable.draw(canvas);
                                    }
                                    wallpaperResultCallback.onDelegateBitmapReady(createBitmap);
                                }
                            } else {
                                frameImageView.setScaleType(ImageView.ScaleType.FIT_XY);
                            }
                            frameImageView.setImageDrawable(drawable);
                        }
                    } else {
                        xmlPullParser2 = xmlPullParser;
                        i = attributeCount;
                        if (attributeName.equalsIgnoreCase("x")) {
                            frameImageView.setX(parserData.getDevicePixelX(Float.parseFloat(lowerCase3)) + parserData.mScaledDx);
                        } else if (attributeName.equalsIgnoreCase("y")) {
                            frameImageView.setY(parserData.getDevicePixelY(Float.parseFloat(lowerCase3)) + parserData.mScaledDy);
                        } else if (attributeName.equalsIgnoreCase("width")) {
                            parserData.mImageViewWidth = (int) parserData.getDevicePixelX(Float.parseFloat(lowerCase3));
                        } else if (attributeName.equalsIgnoreCase("height")) {
                            parserData.mImageViewHeight = (int) parserData.getDevicePixelY(Float.parseFloat(lowerCase3));
                        } else if (attributeName.equalsIgnoreCase("pivotX")) {
                            if (z) {
                                devicePixelX = parserData.getDevicePixelX(Float.parseFloat(lowerCase3)) + parserData.mScaledDx;
                            } else {
                                devicePixelX = parserData.getDevicePixelX(Float.parseFloat(lowerCase3));
                            }
                            frameImageView.setPivotX(devicePixelX);
                        } else if (attributeName.equalsIgnoreCase("pivotY")) {
                            if (z) {
                                devicePixelY = parserData.getDevicePixelY(Float.parseFloat(lowerCase3)) + parserData.mScaledDy;
                            } else {
                                devicePixelY = parserData.getDevicePixelY(Float.parseFloat(lowerCase3));
                            }
                            frameImageView.setPivotY(devicePixelY);
                        } else if (attributeName.equalsIgnoreCase("alpha")) {
                            frameImageView.setAlpha(Float.parseFloat(lowerCase3));
                        } else if (attributeName.equalsIgnoreCase("scaleX")) {
                            frameImageView.setScaleX(parserData.getDevicePixelX(Float.parseFloat(lowerCase3)));
                        } else if (attributeName.equalsIgnoreCase("scaleY")) {
                            frameImageView.setScaleY(parserData.getDevicePixelY(Float.parseFloat(lowerCase3)));
                        }
                    }
                    i2++;
                    attributeCount = i;
                    xmlPullParser = xmlPullParser2;
                }
                xmlPullParser2 = xmlPullParser;
                i = attributeCount;
                i2++;
                attributeCount = i;
                xmlPullParser = xmlPullParser2;
            }
            return;
        }
        FrameImageView frameImageView2 = parserData.mFrameImageView;
        if (frameImageView2 != null && (keyguardAnimatedWallpaper = parserData.mRootView) != null) {
            if (parserData.mIsWallpaper) {
                frameImageView2.setX(0.0f);
                frameImageView2.setY(0.0f);
                parserData.mImageViewWidth = -1;
                parserData.mImageViewHeight = -1;
            }
            keyguardAnimatedWallpaper.addView(frameImageView2, parserData.mImageViewWidth, parserData.mImageViewHeight);
            parserData.mImageViewWidth = -2;
            parserData.mImageViewHeight = -2;
        }
    }
}
